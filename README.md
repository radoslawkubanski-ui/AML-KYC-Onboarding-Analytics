# AML-KYC Onboarding Analytics

### Select Language / Seleccione Idioma

- [🇬🇧 English](#english-version)
- [🇪🇸 Español](#version-español)

---

# ONBOARDING KPI DASHBOARD / DASHBOARD KPI DE ONBOARDING

<a id="english-version"></a>

## English

### Project Overview

This project was developed as the Final Integrative Project for the Data Analytics Bootcamp.

The objective is to analyze a fintech onboarding process and identify the factors that influence onboarding duration, risk levels, documentation quality, and final outcomes.

The project combines SQL, Power BI, Python, and Machine Learning techniques to simulate a real-world KYC (Know Your Customer) onboarding environment.

---

### Business Problem

Financial institutions must balance customer experience with regulatory compliance.

A slow onboarding process may reduce customer satisfaction, while insufficient verification may increase compliance and fraud risks.

This project aims to answer the following business questions:

* Which factors increase onboarding time?
* Does documentation quality affect onboarding performance?
* Are high-risk customers processed differently?
* Is automated verification faster than manual verification?
* Which variables contribute most to onboarding delays?

---

### Dataset

The project uses a simulated onboarding dataset inspired by real KYC and AML processes.

Main entities:

* Customers
* Onboarding Events
* Risk Levels
* Verification Types
* Channels
* Onboarding Stages
* Calendar Dimension

Dataset characteristics:

* 1,194 onboarding events
* January – June 2026
* Star Schema data model
* PostgreSQL database

---

### Data Preparation

Data preparation included:

* Data validation
* Date consistency checks
* Creation of a calendar dimension (dim_fecha)
* Relationship validation
* Data quality controls
* Risk score generation
* Manual verification time adjustment to better reflect real onboarding scenarios

---

### SQL Data Model

The project uses a Star Schema consisting of:

Fact Table:

* fact_onboarding_eventos

Dimension Tables:

* dim_cliente
* dim_canal
* dim_etapa
* dim_fecha
* dim_riesgo

Implemented SQL concepts:

* SELECT
* JOIN
* GROUP BY
* Aggregations
* Subqueries
* Foreign Keys

---

### Dashboard

The Power BI dashboard includes:

KPIs:

* Total Cases
* Average Onboarding Hours
* Total Events

Interactive filters:

* Month
* Risk Level
* Verification Type

Visualizations:

* Risk Distribution
* Documentation Status Analysis
* Average Processing Time
* Onboarding Performance Indicators

---

### Risk Scoring Methodology

To simulate a real-world onboarding environment, a numerical risk score was introduced.

Risk categories:

* Low Risk: 0 – 24
* Medium Risk: 25 – 49
* High Risk: 50 – 75

The score was generated using business rules inspired by real onboarding risk assessment methodologies.

This variable is later used as an input feature for Machine Learning models.

---

### Machine Learning

A Decision Tree model was implemented to analyze onboarding outcomes and identify the most influential variables.

Potential predictors include:

* Risk Score
* Risk Level
* Verification Type
* Documentation Status
* AML Indicators

The goal is to support operational decision-making and improve onboarding efficiency.

---

### Key Findings

* Manual verification cases require more processing time.
* Documentation quality significantly impacts onboarding duration.
* Higher risk profiles tend to require additional review.
* Risk scoring can support prioritization and automation strategies.

---

### Tools Used

* PostgreSQL
* DBeaver
* Power BI
* Python
* Pandas
* Scikit-learn
* GitHub

---

<a id="version-español"></a>

## Español

### Resumen del Proyecto

Este proyecto fue desarrollado como Proyecto Integrador Final del Bootcamp de Data Analytics.

El objetivo es analizar el proceso de onboarding de una entidad financiera y comprender los factores que afectan la duración del proceso, el riesgo, la calidad documental y los resultados finales.

El proyecto combina SQL, Power BI, Python y técnicas de Machine Learning para simular un entorno real de onboarding KYC.

---

### Problema de Negocio

Las entidades financieras deben equilibrar la experiencia del cliente con el cumplimiento regulatorio.

Este proyecto busca responder:

* ¿Qué factores aumentan el tiempo de onboarding?
* ¿La calidad documental genera retrasos?
* ¿Los clientes de alto riesgo requieren más revisión?
* ¿La verificación automática es más eficiente que la manual?
* ¿Qué variables impactan más en la duración del proceso?

---

### Dataset

Dataset sintético inspirado en procesos reales de KYC y AML.

Características principales:

* 1.194 eventos de onboarding
* Enero – Junio 2026
* Modelo Estrella (Star Schema)
* Base de datos PostgreSQL

---

### Preparación de Datos

Se realizaron:

* Validación de datos
* Control de consistencia de fechas
* Creación de la dimensión calendario (dim_fecha)
* Validación de relaciones
* Controles de calidad
* Generación de un sistema de puntuación de riesgo
* Ajustes en tiempos de casos manuales para reflejar procesos reales

---

### Modelo SQL

Tabla de hechos:

* fact_onboarding_eventos

Tablas de dimensiones:

* dim_cliente
* dim_canal
* dim_etapa
* dim_fecha
* dim_riesgo

Se utilizaron:

* SELECT
* JOIN
* GROUP BY
* Agregaciones
* Subconsultas
* Claves foráneas

---

### Dashboard

El dashboard incluye:

KPIs:

* Total Cases
* Avg Hours
* Total Events

Filtros interactivos:

* Mes
* Nivel de Riesgo
* Tipo de Verificación

Visualizaciones:

* Distribución de Riesgo
* Estado de Documentación
* Tiempo Promedio de Onboarding
* Indicadores Operativos

---

### Metodología de Scoring de Riesgo

Se incorporó una puntuación numérica de riesgo para simular procesos reales de evaluación.

Categorías:

* Low Risk: 0 – 24
* Medium Risk: 25 – 49
* High Risk: 50 – 75

Esta variable será utilizada posteriormente como entrada para el modelo de Árbol de Decisión.

---

### Machine Learning

Se implementará un modelo de Árbol de Decisión para identificar las variables con mayor impacto en los resultados del onboarding.

Variables potenciales:

* Risk Score
* Risk Level
* Verification Type
* Documentation Status
* AML Indicators

---

### Principales Hallazgos

* Los casos manuales requieren más tiempo de procesamiento.
* La calidad documental impacta significativamente en la duración del onboarding.
* Los clientes de mayor riesgo requieren revisiones adicionales.
* El scoring de riesgo puede apoyar estrategias de automatización y priorización.

---

### Herramientas Utilizadas

* PostgreSQL
* DBeaver
* Power BI
* Python
* Pandas
* Scikit-learn
* GitHub
