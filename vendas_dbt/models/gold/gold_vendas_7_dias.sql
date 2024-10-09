{{ config(materialized='view') }}

WITH vendas_7_dias AS (
    SELECT
        data_venda,
        produto,
        SUM(valor) AS valor_total,
        SUM(quantidade) AS quantidade_total,
        COUNT(*) AS total_vendas
    FROM
        {{ ref('silver_vendas') }}
    WHERE
        data_venda >= CURRENT_DATE - INTERVAL '6 days'
    GROUP BY
        data_venda, produto
)

SELECT
    data_venda,
    produto,
    valor_total,
    quantidade_total,
    total_vendas
FROM
    vendas_7_dias
ORDER BY
    data_venda ASC
