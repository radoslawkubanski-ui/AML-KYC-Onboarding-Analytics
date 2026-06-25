==========================================================
 STEP 2 - CREATE RELATIONSHIPS

 Purpose:
 Define the relationships between the Fact Table and the
 Dimension Tables using Primary Keys and Foreign Keys.
==========================================================
-- Relationship with Customer Dimension

ALTER TABLE fact_onboarding_eventos
ADD CONSTRAINT fk_cliente
FOREIGN KEY (cliente_id)
REFERENCES dim_cliente(cliente_id);

-- Relationship with Stage Dimension
ALTER TABLE fact_onboarding_eventos
ADD CONSTRAINT fk_etapa
FOREIGN KEY (etapa_id)
REFERENCES dim_etapa(etapa_id);

-- Relationship with Stage Dimension
ALTER TABLE fact_onboarding_eventos
ADD CONSTRAINT fk_etapa
FOREIGN KEY (etapa_id)
REFERENCES dim_etapa(etapa_id);

-- Relationship with Risk Dimension
ALTER TABLE fact_onboarding_eventos
ADD CONSTRAINT fk_riesgo
FOREIGN KEY (risk_id)
REFERENCES dim_riesgo(risk_id);

-- Relationship with Date Dimension
ALTER TABLE fact_onboarding_eventos
ADD CONSTRAINT fk_fecha
FOREIGN KEY (fecha_id)
REFERENCES dim_fecha(fecha_id);

==========================================================
 End of Step 2
 The Star Schema is now fully connected and ready for
 data preparation and analytical queries.
==========================================================