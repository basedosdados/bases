/*

Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types

*/

CREATE VIEW basedosdados-dev.br_ibge_ppm.producao_aquicultura AS
SELECT 
SAFE_CAST(id_municipio AS STRING) id_municipio,
SAFE_CAST(ano AS STRING) ano,
SAFE_CAST(tipo_produto AS STRING) tipo_produto,
SAFE_CAST(producao AS STRING) producao,
SAFE_CAST(valor_producao AS STRING) valor_producao,
SAFE_CAST(prop_valor_producao AS STRING) prop_valor_producao,
SAFE_CAST(moeda AS STRING) moeda
from basedosdados-dev.br_ibge_ppm_staging.producao_aquicultura as t