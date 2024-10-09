{{ config(materialized='view') }}

WITH vendas_7_dias_vendedor AS (
    SELECT
        email AS vendedor,
        data_venda,
        SUM(valor) AS valor_total,
        SUM(quantidade) AS quantidade_total,
        COUNT(*) AS total_vendas
    FROM {{ ref('silver_vendas') }}
    WHERE data_venda >= NOW() - INTERVAL '6 days'
    GROUP BY email, data_venda
)

SELECT
    vendedor,
    data_venda,
    valor_total,
    quantidade_total,
    total_vendas
FROM vendas_7_dias_vendedor
ORDER BY data_venda ASC, vendedor ASC
