# AML-KYC Onboarding Analytics

### Select Language / Seleccione Idioma

- [🇬🇧 English](#english-version)
- [🇪🇸 Español](#version-español)

---

# ONBOARDING KPI DASHBOARD / DASHBOARD KPI DE ONBOARDING

<a id="english-version"></a>

# 🇬🇧 English

## Project Overview

This project was developed as the Final Integrative Project for the Data Analytics Bootcamp.

The objective is to analyze a fintech onboarding process and identify the factors that influence onboarding duration, risk levels, documentation quality, operational efficiency, and final onboarding outcomes.

The project combines SQL, Power BI, Python, and Machine Learning techniques to simulate a realistic KYC (Know Your Customer) and AML (Anti-Money Laundering) onboarding environment.

---

## Business Problem

Financial institutions must balance customer experience with regulatory compliance.

A slow onboarding process may reduce customer satisfaction, while insufficient verification may increase compliance, fraud, and financial crime risks.

This project aims to answer the following business questions:

* Which factors increase onboarding time?
* Does documentation quality affect onboarding performance?
* Are high-risk customers processed differently?
* Does an integrated workflow improve onboarding efficiency compared to a manual workflow?
* Which variables contribute most to onboarding delays and outcomes?

---

## Dataset

The project uses a synthetic onboarding dataset inspired by real KYC and AML processes.

### Main Entities

* Customers
* Onboarding Events
* Risk Levels
* Workflow Types
* Channels
* Onboarding Stages
* Calendar Dimension

### Dataset Characteristics

* 1,194 onboarding events
* January – June 2026
* Star Schema data model
* PostgreSQL database

---

## Data Preparation

Data preparation included:

* Data validation
* Date consistency checks
* Creation of a calendar dimension (dim_fecha)
* Relationship validation
* Data quality controls
* Risk score generation
* Workflow time adjustments to better reflect realistic onboarding scenarios

---

## SQL Data Model

The project uses a Star Schema consisting of:

### Fact Table

* fact_onboarding_eventos

### Dimension Tables

* dim_cliente
* dim_canal
* dim_etapa
* dim_fecha
* dim_riesgo

### Implemented SQL Concepts

* SELECT
* JOIN
* GROUP BY
* Aggregations
* Subqueries
* Foreign Keys

---

## Dashboard

The Power BI dashboard includes:

### KPIs

* Total Cases
* Average Onboarding Hours
* Total Events

### Interactive Filters

* Month
* Risk Level
* Workflow Type

### Visualizations

* Risk Distribution
* Documentation Status Analysis
* Workflow Performance Comparison
* Average Processing Time
* Onboarding Performance Indicators

---

## Risk Scoring Methodology

To simulate a realistic onboarding environment, a numerical Risk Score was introduced.

### Risk Categories

* Low Risk: 0 – 24
* Medium Risk: 25 – 49
* High Risk: 50 – 75

The score was generated using business rules inspired by real onboarding risk assessment methodologies.

This variable was later incorporated into onboarding records and used as an input feature for Machine Learning analysis.

---

## Machine Learning

A Decision Tree Classifier was implemented to analyze onboarding outcomes and identify the most influential variables.

The model achieved approximately **85% accuracy**.

The most influential variables identified by the model were:

* Documentation Status
* Risk Score

The results confirmed the findings obtained through SQL analysis and Power BI visualization.

The goal was to support operational decision-making and identify opportunities to improve onboarding efficiency.

---

## Key Findings

* Integrated workflows improve operational efficiency and reduce onboarding processing times.
* Documentation quality is the main factor influencing onboarding duration and outcomes.
* High-risk customers require additional reviews and greater operational effort.
* The Decision Tree model confirmed that Documentation Status and Risk Score are the most influential variables.
* Technology improves onboarding efficiency, but final compliance decisions remain primarily driven by documentation quality and customer risk.

---

## Business Conclusion

An efficient onboarding process does not mean weaker compliance controls.

The combination of integrated compliance tools, strong document quality controls, and risk-based assessment can significantly improve onboarding efficiency while maintaining AML/KYC standards.

---

## Tools Used

* PostgreSQL
* DBeaver
* Power BI
* Python
* Pandas
* Scikit-learn
* GitHub



<a id="spanish-version"></a>


# 🇪🇸 Español

## Resumen del Proyecto

Este proyecto fue desarrollado como Proyecto Integrador Final del Bootcamp de Data Analytics.

El objetivo es analizar un proceso de onboarding fintech e identificar los factores que influyen en la duración del proceso, los niveles de riesgo, la calidad documental, la eficiencia operativa y los resultados finales del onboarding.

El proyecto combina SQL, Power BI, Python y técnicas de Machine Learning para simular un entorno realista de onboarding KYC (Know Your Customer) y AML (Anti-Money Laundering).

---

## Problema de Negocio

Las entidades financieras deben equilibrar la experiencia del cliente con el cumplimiento regulatorio.

Un proceso de onboarding lento puede reducir la satisfacción del cliente, mientras que verificaciones insuficientes pueden aumentar los riesgos de fraude, cumplimiento y delitos financieros.

Este proyecto busca responder:

* ¿Qué factores aumentan el tiempo de onboarding?
* ¿La calidad documental afecta el rendimiento del proceso?
* ¿Los clientes de alto riesgo requieren un tratamiento diferente?
* ¿Un workflow integrado mejora la eficiencia frente a un workflow manual?
* ¿Qué variables influyen más en los retrasos y resultados del onboarding?

---

## Dataset

Dataset sintético inspirado en procesos reales de KYC y AML.

### Entidades Principales

* Clientes
* Eventos de Onboarding
* Niveles de Riesgo
* Tipos de Workflow
* Canales
* Etapas del Onboarding
* Dimensión Calendario

### Características del Dataset

* 1.194 eventos de onboarding
* Enero – Junio 2026
* Modelo Estrella (Star Schema)
* Base de datos PostgreSQL

---

## Preparación de Datos

Se realizaron:

* Validación de datos
* Control de consistencia de fechas
* Creación de la dimensión calendario (dim_fecha)
* Validación de relaciones
* Controles de calidad
* Generación de puntuación de riesgo
* Ajustes de tiempos de workflow para reflejar escenarios reales de onboarding

---

## Modelo SQL

### Tabla de Hechos

* fact_onboarding_eventos

### Tablas de Dimensiones

* dim_cliente
* dim_canal
* dim_etapa
* dim_fecha
* dim_riesgo

### Conceptos SQL Utilizados

* SELECT
* JOIN
* GROUP BY
* Agregaciones
* Subconsultas
* Claves Foráneas

---

## Dashboard

El dashboard de Power BI incluye:

### KPIs

* Total Cases
* Average Onboarding Hours
* Total Events

### Filtros Interactivos

* Mes
* Nivel de Riesgo
* Tipo de Workflow

### Visualizaciones

* Distribución de Riesgo
* Análisis del Estado Documental
* Comparación de Rendimiento entre Workflows
* Tiempo Promedio de Procesamiento
* Indicadores de Rendimiento del Onboarding

---

## Metodología de Scoring de Riesgo

Para simular un entorno realista de onboarding se incorporó una puntuación numérica de riesgo.

### Categorías

* Low Risk: 0 – 24
* Medium Risk: 25 – 49
* High Risk: 50 – 75

La puntuación fue generada mediante reglas de negocio inspiradas en metodologías reales de evaluación de riesgo.

Posteriormente fue incorporada al dataset y utilizada como variable de entrada para el análisis de Machine Learning.

---

## Machine Learning

Se implementó un modelo Decision Tree Classifier para analizar los resultados del onboarding e identificar las variables más influyentes.

El modelo alcanzó aproximadamente un **85% de precisión**.

Las variables más relevantes identificadas fueron:

* Documentation Status
* Risk Score

Los resultados confirmaron los hallazgos obtenidos mediante el análisis SQL y la visualización en Power BI.

El objetivo fue apoyar la toma de decisiones operativas e identificar oportunidades para mejorar la eficiencia del onboarding.

---

## Principales Hallazgos

* Los workflows integrados mejoran la eficiencia operativa y reducen los tiempos de procesamiento.
* La calidad documental es el principal factor que influye en la duración y el resultado del onboarding.
* Los clientes de alto riesgo requieren revisiones adicionales y un mayor esfuerzo operativo.
* El modelo Decision Tree confirmó que Documentation Status y Risk Score son las variables más influyentes.
* La tecnología mejora la eficiencia operativa, pero las decisiones finales continúan dependiendo principalmente de la calidad documental y del nivel de riesgo.

---

## Conclusión de Negocio

Un proceso de onboarding más eficiente no implica controles de cumplimiento más débiles.

La combinación de herramientas integradas de compliance, controles documentales sólidos y una evaluación basada en riesgo permite mejorar significativamente la eficiencia operativa manteniendo los estándares AML/KYC.

---

## Herramientas Utilizadas

* PostgreSQL
* DBeaver
* Power BI
* Python
* Pandas
* Scikit-learn
* GitHub
