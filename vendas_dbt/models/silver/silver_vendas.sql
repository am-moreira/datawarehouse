{{ config(materialized='view') }}

WITH cleaned_data AS (
    SELECT
        email,
        data_venda,
        valor,
        quantidade,
        produto
    FROM
        {{ ref('bronze_vendas') }}
    WHERE
        valor > 0
        AND valor < 8000
        AND data_venda <= CURRENT_DATE
)

SELECT * FROM cleaned_data
