==========================================================
 STEP 4 - DATA VALIDATION

 Purpose:
 Validate the dataset by checking missing values,
 duplicate records, date consistency and referential
 integrity before the analytical phase.
==========================================================

-- ========================================================
-- Check for Missing Values
-- ========================================================

SELECT *
FROM fact_onboarding_eventos
WHERE
    cliente_id IS NULL
    OR etapa_id IS NULL
    OR canal_id IS NULL
    OR risk_id IS NULL
    OR fecha_inicio IS NULL
    OR fecha_fin IS NULL;

-- ========================================================
-- Check for Duplicate Cases
-- ========================================================

SELECT
    numero_caso,
    COUNT(*)
FROM fact_onboarding_eventos
GROUP BY numero_caso
HAVING COUNT(*) > 1;

-- ========================================================
-- Verify Date Relationships
-- ========================================================

SELECT COUNT(*)
FROM fact_onboarding_eventos f
LEFT JOIN dim_fecha d
ON DATE(f.fecha_inicio) = d.fecha
WHERE d.fecha IS NULL;

-- ========================================================
-- Validate Calendar Dimension
-- ========================================================

SELECT
    MIN(fecha) AS min_fecha,
    MAX(fecha) AS max_fecha,
    COUNT(*) AS total_dias
FROM dim_fecha;

-- ========================================================
-- Verify Risk Score Distribution
-- ========================================================

SELECT
    risk_id,
    MIN(risk_score) AS min_score,
    MAX(risk_score) AS max_score
FROM fact_onboarding_eventos
GROUP BY risk_id
ORDER BY risk_id;