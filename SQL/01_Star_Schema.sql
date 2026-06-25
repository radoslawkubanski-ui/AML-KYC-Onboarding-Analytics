SQL_Data_Preparation_and_Analysis.sql

==========================================================
 AML / KYC ONBOARDING ANALYTICS PROJECT
 Final Project - Data Analytics Bootcamp

 Author: Radek Kubanski
 Database: PostgreSQL

==========================================================
 STEP 1 - CREATE STAR SCHEMA

 Purpose:
 Create the analytical data model composed of one Fact Table
 and five Dimension Tables.
==========================================================-- ============================
-- Dimension: Customer
-- ============================

CREATE TABLE dim_cliente (

    cliente_id INTEGER PRIMARY KEY,
    tipo_cliente VARCHAR(30),
    pais VARCHAR(50)

);
-- ============================
-- Dimension: Channel
-- ============================

CREATE TABLE dim_canal (

    canal_id INTEGER PRIMARY KEY,
    canal VARCHAR(30)

);
-- ============================
-- Dimension: Onboarding Stage
-- ============================

CREATE TABLE dim_etapa (

    etapa_id INTEGER PRIMARY KEY,
    nombre_etapa VARCHAR(50)

);
-- ============================
-- Dimension: Risk Level
-- ============================

CREATE TABLE dim_riesgo (

    risk_id INTEGER PRIMARY KEY,
    risk_level VARCHAR(20)

);
-- ============================
-- Dimension: Calendar
-- ============================

CREATE TABLE dim_fecha (

    fecha_id INTEGER PRIMARY KEY,
    fecha DATE,
    anio INTEGER,
    mes INTEGER,
    dia INTEGER,
    nombre_mes VARCHAR(20),
    dia_semana VARCHAR(20)

);
==========================================================
 STEP 2 - CREATE FACT TABLE

 Purpose:
 Store every onboarding event and connect it to the
 corresponding dimensions.
==========================================================
CREATE TABLE fact_onboarding_eventos (

  id_evento INTEGER PRIMARY KEY,

    numero_caso INTEGER,

    cliente_id INTEGER,

    etapa_id INTEGER,

    canal_id INTEGER,

    tipo_verificacion VARCHAR(30),

    estado_documentacion VARCHAR(30),

    aml_risk_score BOOLEAN,

    fecha_inicio TIMESTAMP,

    fecha_fin TIMESTAMP,

    tiempo_horas NUMERIC(10,2),

    estado_evento VARCHAR(30),

    risk_id INTEGER,

    fecha_id INTEGER,

    risk_score INTEGER

);