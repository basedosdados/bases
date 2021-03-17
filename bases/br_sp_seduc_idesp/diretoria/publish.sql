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

CREATE VIEW basedosdados-dev.br_sp_seduc_idesp.diretoria AS
SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(codigo_diretoria AS INT64) codigo_diretoria,
SAFE_CAST(diretoria AS STRING) diretoria,
SAFE_CAST(nivel_ensino AS STRING) nivel_ensino,
SAFE_CAST(nota_idesp AS FLOAT64) nota_idesp

from basedosdados-dev.br_sp_seduc_idesp_staging.diretoria as t