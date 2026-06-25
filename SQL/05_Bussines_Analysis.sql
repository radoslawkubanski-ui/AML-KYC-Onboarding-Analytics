==========================================================
 STEP 5 - BUSINESS ANALYSIS

 Purpose:
 Analyze the onboarding process using SQL queries to
 support the Power BI dashboard and identify key
 business insights.
==========================================================

-- ========================================================
-- Total Number of Onboarding Cases
-- ========================================================

SELECT COUNT(DISTINCT numero_caso) AS total_cases
FROM fact_onboarding_eventos;

-- ========================================================
-- Average Onboarding Processing Time
-- ========================================================

SELECT
    ROUND(AVG(tiempo_horas),2) AS average_hours
FROM fact_onboarding_eventos;

-- ========================================================
-- Approval Rate
-- ========================================================

SELECT
    estado_evento,
    COUNT(*) AS total_cases
FROM fact_onboarding_eventos
GROUP BY estado_evento
ORDER BY total_cases DESC;

-- ========================================================
-- Documentation Status Distribution
-- ========================================================

SELECT
    estado_documentacion,
    COUNT(*) AS total_cases
FROM fact_onboarding_eventos
GROUP BY estado_documentacion
ORDER BY total_cases DESC;

-- ========================================================
-- Manual vs Automatic Verification
-- ========================================================

SELECT
    tipo_verificacion,
    ROUND(AVG(tiempo_horas),2) AS average_time
FROM fact_onboarding_eventos
GROUP BY tipo_verificacion;

-- ========================================================
-- Average Processing Time by Stage
-- ========================================================

SELECT
    e.nombre_etapa,
    ROUND(AVG(f.tiempo_horas),2) AS average_time
FROM fact_onboarding_eventos f
JOIN dim_etapa e
ON f.etapa_id = e.etapa_id
GROUP BY e.nombre_etapa
ORDER BY average_time DESC;

-- ========================================================
-- Risk Level Distribution
-- ========================================================

SELECT
    r.risk_level,
    COUNT(*) AS total_cases
FROM fact_onboarding_eventos f
JOIN dim_riesgo r
ON f.risk_id = r.risk_id
GROUP BY r.risk_level
ORDER BY total_cases DESC;

-- ========================================================
-- Monthly Onboarding Trend
-- ========================================================

SELECT
    d.nombre_mes,
    COUNT(DISTINCT f.numero_caso) AS total_cases
FROM fact_onboarding_eventos f
JOIN dim_fecha d
ON f.fecha_id = d.fecha_id
GROUP BY d.nombre_mes, d.mes
ORDER BY d.mes;