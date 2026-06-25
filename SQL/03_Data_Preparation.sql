==========================================================
 STEP 3 - DATA PREPARATION

 Purpose:
 Prepare the dataset for analysis by generating the calendar
 dimension, calculating analytical fields and assigning
 risk categories.
==========================================================

INSERT INTO dim_fecha (
    fecha_id,
    fecha,
    anio,
    mes,
    dia,
    nombre_mes,
    dia_semana
)
SELECT
    TO_CHAR(fecha, 'YYYYMMDD')::INT,
    fecha,
    EXTRACT(YEAR FROM fecha)::INT,
    EXTRACT(MONTH FROM fecha)::INT,
    EXTRACT(DAY FROM fecha)::INT,
    TRIM(TO_CHAR(fecha,'Month')),
    TRIM(TO_CHAR(fecha,'Day'))
FROM generate_series(
    '2026-01-01'::DATE,
    '2026-06-30'::DATE,
    INTERVAL '1 day'
) AS fecha;

-- ========================================================
-- Update the Date Key in the Fact Table
-- ========================================================

UPDATE fact_onboarding_eventos
SET fecha_id = TO_CHAR(fecha_inicio, 'YYYYMMDD')::INT;

-- ========================================================
-- Calculate the Onboarding Processing Time (Hours)
-- ========================================================

UPDATE fact_onboarding_eventos
SET tiempo_horas =
ROUND(
    EXTRACT(EPOCH FROM (fecha_fin - fecha_inicio)) / 3600,
    2
);


-- ========================================================
-- Generate a Numerical Risk Score
-- Create a numerical feature for the Decision Tree model
-- ========================================================

UPDATE fact_onboarding_eventos
SET risk_score =
CASE
    WHEN risk_id = 1 THEN FLOOR(RANDOM() * 25)::INT
    WHEN risk_id = 2 THEN FLOOR(RANDOM() * 25 + 25)::INT
    WHEN risk_id = 3 THEN FLOOR(RANDOM() * 26 + 50)::INT
END;

-- ========================================================
-- Verify Date Range
-- ========================================================

SELECT
    MIN(fecha_inicio) AS min_fecha,
    MAX(fecha_fin) AS max_fecha
FROM fact_onboarding_eventos;==============================================
-- Verify Date Range
-- ========================================================

SELECT
    MIN(fecha_inicio) AS min_fecha,
    MAX(fecha_fin) AS max_fecha
FROM fact_onboarding_eventos;

-- ========================================================
-- Verify Calendar Dimension
-- ========================================================

SELECT
    MIN(fecha) AS min_fecha,
    MAX(fecha) AS max_fecha,
    COUNT(*) AS total_dias
FROM dim_fecha;
