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
    - Para modificar tipos de colunas, basta substituir STRNG por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types

*/

CREATE VIEW basedosdados-dev.br_inep_indicadores_educacionais.brasil AS
SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(localizacao AS STRING) localizacao,
SAFE_CAST(rede AS STRING) rede,
SAFE_CAST(atu_educacao_infantil AS FLOAT64) atu_educacao_infantil,
SAFE_CAST(atu_educacao_infantil_creche AS FLOAT64) atu_educacao_infantil_creche,
SAFE_CAST(atu_educacao_infantil_pre_escola AS FLOAT64) atu_educacao_infantil_pre_escola,
SAFE_CAST(atu_ensino_fund AS FLOAT64) atu_ensino_fund,
SAFE_CAST(atu_ensino_fund_anos_iniciais AS FLOAT64) atu_ensino_fund_anos_iniciais,
SAFE_CAST(atu_ensino_fund_anos_finais AS FLOAT64) atu_ensino_fund_anos_finais,
SAFE_CAST(atu_ensino_fund_1_ano AS FLOAT64) atu_ensino_fund_1_ano,
SAFE_CAST(atu_ensino_fund_2_ano AS FLOAT64) atu_ensino_fund_2_ano,
SAFE_CAST(atu_ensino_fund_3_ano AS FLOAT64) atu_ensino_fund_3_ano,
SAFE_CAST(atu_ensino_fund_4_ano AS FLOAT64) atu_ensino_fund_4_ano,
SAFE_CAST(atu_ensino_fund_5_ano AS FLOAT64) atu_ensino_fund_5_ano,
SAFE_CAST(atu_ensino_fund_6_ano AS FLOAT64) atu_ensino_fund_6_ano,
SAFE_CAST(atu_ensino_fund_7_ano AS FLOAT64) atu_ensino_fund_7_ano,
SAFE_CAST(atu_ensino_fund_8_ano AS FLOAT64) atu_ensino_fund_8_ano,
SAFE_CAST(atu_ensino_fund_9_ano AS FLOAT64) atu_ensino_fund_9_ano,
SAFE_CAST(atu_ensino_fund_turmas_unif_multi_fluxo AS FLOAT64) atu_ensino_fund_turmas_unif_multi_fluxo,
SAFE_CAST(atu_ensino_medio AS FLOAT64) atu_ensino_medio,
SAFE_CAST(atu_ensino_medio_1_ano AS FLOAT64) atu_ensino_medio_1_ano,
SAFE_CAST(atu_ensino_medio_2_ano AS FLOAT64) atu_ensino_medio_2_ano,
SAFE_CAST(atu_ensino_medio_3_ano AS FLOAT64) atu_ensino_medio_3_ano,
SAFE_CAST(atu_ensino_medio_4_ano AS FLOAT64) atu_ensino_medio_4_ano,
SAFE_CAST(atu_ensino_medio_nao_seriado AS FLOAT64) atu_ensino_medio_nao_seriado,
SAFE_CAST(had_educacao_infantil AS FLOAT64) had_educacao_infantil,
SAFE_CAST(had_educacao_infantil_creche AS FLOAT64) had_educacao_infantil_creche,
SAFE_CAST(had_educacao_infantil_pre_escola AS FLOAT64) had_educacao_infantil_pre_escola,
SAFE_CAST(had_ensino_fund AS FLOAT64) had_ensino_fund,
SAFE_CAST(had_ensino_fund_anos_iniciais AS FLOAT64) had_ensino_fund_anos_iniciais,
SAFE_CAST(had_ensino_fund_anos_finais AS FLOAT64) had_ensino_fund_anos_finais,
SAFE_CAST(had_ensino_fund_1_ano AS FLOAT64) had_ensino_fund_1_ano,
SAFE_CAST(had_ensino_fund_2_ano AS FLOAT64) had_ensino_fund_2_ano,
SAFE_CAST(had_ensino_fund_3_ano AS FLOAT64) had_ensino_fund_3_ano,
SAFE_CAST(had_ensino_fund_4_ano AS FLOAT64) had_ensino_fund_4_ano,
SAFE_CAST(had_ensino_fund_5_ano AS FLOAT64) had_ensino_fund_5_ano,
SAFE_CAST(had_ensino_fund_6_ano AS FLOAT64) had_ensino_fund_6_ano,
SAFE_CAST(had_ensino_fund_7_ano AS FLOAT64) had_ensino_fund_7_ano,
SAFE_CAST(had_ensino_fund_8_ano AS FLOAT64) had_ensino_fund_8_ano,
SAFE_CAST(had_ensino_fund_9_ano AS FLOAT64) had_ensino_fund_9_ano,
SAFE_CAST(had_ensino_medio AS FLOAT64) had_ensino_medio,
SAFE_CAST(had_ensino_medio_1_ano AS FLOAT64) had_ensino_medio_1_ano,
SAFE_CAST(had_ensino_medio_2_ano AS FLOAT64) had_ensino_medio_2_ano,
SAFE_CAST(had_ensino_medio_3_ano AS FLOAT64) had_ensino_medio_3_ano,
SAFE_CAST(had_ensino_medio_4_ano AS FLOAT64) had_ensino_medio_4_ano,
SAFE_CAST(had_ensino_medio_nao_seriado AS FLOAT64) had_ensino_medio_nao_seriado,
SAFE_CAST(tdi_ensino_fund AS FLOAT64) tdi_ensino_fund,
SAFE_CAST(tdi_ensino_fund_anos_iniciais AS FLOAT64) tdi_ensino_fund_anos_iniciais,
SAFE_CAST(tdi_ensino_fund_anos_finais AS FLOAT64) tdi_ensino_fund_anos_finais,
SAFE_CAST(tdi_ensino_fund_1_ano AS FLOAT64) tdi_ensino_fund_1_ano,
SAFE_CAST(tdi_ensino_fund_2_ano AS FLOAT64) tdi_ensino_fund_2_ano,
SAFE_CAST(tdi_ensino_fund_3_ano AS FLOAT64) tdi_ensino_fund_3_ano,
SAFE_CAST(tdi_ensino_fund_4_ano AS FLOAT64) tdi_ensino_fund_4_ano,
SAFE_CAST(tdi_ensino_fund_5_ano AS FLOAT64) tdi_ensino_fund_5_ano,
SAFE_CAST(tdi_ensino_fund_6_ano AS FLOAT64) tdi_ensino_fund_6_ano,
SAFE_CAST(tdi_ensino_fund_7_ano AS FLOAT64) tdi_ensino_fund_7_ano,
SAFE_CAST(tdi_ensino_fund_8_ano AS FLOAT64) tdi_ensino_fund_8_ano,
SAFE_CAST(tdi_ensino_fund_9_ano AS FLOAT64) tdi_ensino_fund_9_ano,
SAFE_CAST(tdi_ensino_medio AS FLOAT64) tdi_ensino_medio,
SAFE_CAST(tdi_ensino_medio_1_ano AS FLOAT64) tdi_ensino_medio_1_ano,
SAFE_CAST(tdi_ensino_medio_2_ano AS FLOAT64) tdi_ensino_medio_2_ano,
SAFE_CAST(tdi_ensino_medio_3_ano AS FLOAT64) tdi_ensino_medio_3_ano,
SAFE_CAST(tdi_ensino_medio_4_ano AS FLOAT64) tdi_ensino_medio_4_ano,
SAFE_CAST(taxa_aprov_ensino_fund AS FLOAT64) taxa_aprov_ensino_fund,
SAFE_CAST(taxa_aprov_ensino_fund_anos_iniciais AS FLOAT64) taxa_aprov_ensino_fund_anos_iniciais,
SAFE_CAST(taxa_aprov_ensino_fund_anos_finais AS FLOAT64) taxa_aprov_ensino_fund_anos_finais,
SAFE_CAST(taxa_aprov_ensino_fund_1_ano AS FLOAT64) taxa_aprov_ensino_fund_1_ano,
SAFE_CAST(taxa_aprov_ensino_fund_2_ano AS FLOAT64) taxa_aprov_ensino_fund_2_ano,
SAFE_CAST(taxa_aprov_ensino_fund_3_ano AS FLOAT64) taxa_aprov_ensino_fund_3_ano,
SAFE_CAST(taxa_aprov_ensino_fund_4_ano AS FLOAT64) taxa_aprov_ensino_fund_4_ano,
SAFE_CAST(taxa_aprov_ensino_fund_5_ano AS FLOAT64) taxa_aprov_ensino_fund_5_ano,
SAFE_CAST(taxa_aprov_ensino_fund_6_ano AS FLOAT64) taxa_aprov_ensino_fund_6_ano,
SAFE_CAST(taxa_aprov_ensino_fund_7_ano AS FLOAT64) taxa_aprov_ensino_fund_7_ano,
SAFE_CAST(taxa_aprov_ensino_fund_8_ano AS FLOAT64) taxa_aprov_ensino_fund_8_ano,
SAFE_CAST(taxa_aprov_ensino_fund_9_ano AS FLOAT64) taxa_aprov_ensino_fund_9_ano,
SAFE_CAST(taxa_aprov_ensino_medio AS FLOAT64) taxa_aprov_ensino_medio,
SAFE_CAST(taxa_aprov_ensino_medio_1_ano AS FLOAT64) taxa_aprov_ensino_medio_1_ano,
SAFE_CAST(taxa_aprov_ensino_medio_2_ano AS FLOAT64) taxa_aprov_ensino_medio_2_ano,
SAFE_CAST(taxa_aprov_ensino_medio_3_ano AS FLOAT64) taxa_aprov_ensino_medio_3_ano,
SAFE_CAST(taxa_aprov_ensino_medio_4_ano AS FLOAT64) taxa_aprov_ensino_medio_4_ano,
SAFE_CAST(taxa_aprov_ensino_medio_nao_seriado AS FLOAT64) taxa_aprov_ensino_medio_nao_seriado,
SAFE_CAST(taxa_reprov_ensino_fund AS FLOAT64) taxa_reprov_ensino_fund,
SAFE_CAST(taxa_reprov_ensino_fund_anos_iniciais AS FLOAT64) taxa_reprov_ensino_fund_anos_iniciais,
SAFE_CAST(taxa_reprov_ensino_fund_anos_finais AS FLOAT64) taxa_reprov_ensino_fund_anos_finais,
SAFE_CAST(taxa_reprov_ensino_fund_1_ano AS FLOAT64) taxa_reprov_ensino_fund_1_ano,
SAFE_CAST(taxa_reprov_ensino_fund_2_ano AS FLOAT64) taxa_reprov_ensino_fund_2_ano,
SAFE_CAST(taxa_reprov_ensino_fund_3_ano AS FLOAT64) taxa_reprov_ensino_fund_3_ano,
SAFE_CAST(taxa_reprov_ensino_fund_4_ano AS FLOAT64) taxa_reprov_ensino_fund_4_ano,
SAFE_CAST(taxa_reprov_ensino_fund_5_ano AS FLOAT64) taxa_reprov_ensino_fund_5_ano,
SAFE_CAST(taxa_reprov_ensino_fund_6_ano AS FLOAT64) taxa_reprov_ensino_fund_6_ano,
SAFE_CAST(taxa_reprov_ensino_fund_7_ano AS FLOAT64) taxa_reprov_ensino_fund_7_ano,
SAFE_CAST(taxa_reprov_ensino_fund_8_ano AS FLOAT64) taxa_reprov_ensino_fund_8_ano,
SAFE_CAST(taxa_reprov_ensino_fund_9_ano AS FLOAT64) taxa_reprov_ensino_fund_9_ano,
SAFE_CAST(taxa_reprov_ensino_medio AS FLOAT64) taxa_reprov_ensino_medio,
SAFE_CAST(taxa_reprov_ensino_medio_1_ano AS FLOAT64) taxa_reprov_ensino_medio_1_ano,
SAFE_CAST(taxa_reprov_ensino_medio_2_ano AS FLOAT64) taxa_reprov_ensino_medio_2_ano,
SAFE_CAST(taxa_reprov_ensino_medio_3_ano AS FLOAT64) taxa_reprov_ensino_medio_3_ano,
SAFE_CAST(taxa_reprov_ensino_medio_4_ano AS FLOAT64) taxa_reprov_ensino_medio_4_ano,
SAFE_CAST(taxa_reprov_ensino_medio_nao_seriado AS FLOAT64) taxa_reprov_ensino_medio_nao_seriado,
SAFE_CAST(taxa_aband_ensino_fund AS FLOAT64) taxa_aband_ensino_fund,
SAFE_CAST(taxa_aband_ensino_fund_anos_iniciais AS FLOAT64) taxa_aband_ensino_fund_anos_iniciais,
SAFE_CAST(taxa_aband_ensino_fund_anos_finais AS FLOAT64) taxa_aband_ensino_fund_anos_finais,
SAFE_CAST(taxa_aband_ensino_fund_1_ano AS FLOAT64) taxa_aband_ensino_fund_1_ano,
SAFE_CAST(taxa_aband_ensino_fund_2_ano AS FLOAT64) taxa_aband_ensino_fund_2_ano,
SAFE_CAST(taxa_aband_ensino_fund_3_ano AS FLOAT64) taxa_aband_ensino_fund_3_ano,
SAFE_CAST(taxa_aband_ensino_fund_4_ano AS FLOAT64) taxa_aband_ensino_fund_4_ano,
SAFE_CAST(taxa_aband_ensino_fund_5_ano AS FLOAT64) taxa_aband_ensino_fund_5_ano,
SAFE_CAST(taxa_aband_ensino_fund_6_ano AS FLOAT64) taxa_aband_ensino_fund_6_ano,
SAFE_CAST(taxa_aband_ensino_fund_7_ano AS FLOAT64) taxa_aband_ensino_fund_7_ano,
SAFE_CAST(taxa_aband_ensino_fund_8_ano AS FLOAT64) taxa_aband_ensino_fund_8_ano,
SAFE_CAST(taxa_aband_ensino_fund_9_ano AS FLOAT64) taxa_aband_ensino_fund_9_ano,
SAFE_CAST(taxa_aband_ensino_medio AS FLOAT64) taxa_aband_ensino_medio,
SAFE_CAST(taxa_aband_ensino_medio_1_ano AS FLOAT64) taxa_aband_ensino_medio_1_ano,
SAFE_CAST(taxa_aband_ensino_medio_2_ano AS FLOAT64) taxa_aband_ensino_medio_2_ano,
SAFE_CAST(taxa_aband_ensino_medio_3_ano AS FLOAT64) taxa_aband_ensino_medio_3_ano,
SAFE_CAST(taxa_aband_ensino_medio_4_ano AS FLOAT64) taxa_aband_ensino_medio_4_ano,
SAFE_CAST(taxa_aband_ensino_medio_nao_seriado AS FLOAT64) taxa_aband_ensino_medio_nao_seriado,
SAFE_CAST(tnr_ensino_fund AS FLOAT64) tnr_ensino_fund,
SAFE_CAST(tnr_ensino_fund_anos_iniciais AS FLOAT64) tnr_ensino_fund_anos_iniciais,
SAFE_CAST(tnr_ensino_fund_anos_finais AS FLOAT64) tnr_ensino_fund_anos_finais,
SAFE_CAST(tnr_ensino_fund_1_ano AS FLOAT64) tnr_ensino_fund_1_ano,
SAFE_CAST(tnr_ensino_fund_2_ano AS FLOAT64) tnr_ensino_fund_2_ano,
SAFE_CAST(tnr_ensino_fund_3_ano AS FLOAT64) tnr_ensino_fund_3_ano,
SAFE_CAST(tnr_ensino_fund_4_ano AS FLOAT64) tnr_ensino_fund_4_ano,
SAFE_CAST(tnr_ensino_fund_5_ano AS FLOAT64) tnr_ensino_fund_5_ano,
SAFE_CAST(tnr_ensino_fund_6_ano AS FLOAT64) tnr_ensino_fund_6_ano,
SAFE_CAST(tnr_ensino_fund_7_ano AS FLOAT64) tnr_ensino_fund_7_ano,
SAFE_CAST(tnr_ensino_fund_8_ano AS FLOAT64) tnr_ensino_fund_8_ano,
SAFE_CAST(tnr_ensino_fund_9_ano AS FLOAT64) tnr_ensino_fund_9_ano,
SAFE_CAST(tnr_ensino_medio AS FLOAT64) tnr_ensino_medio,
SAFE_CAST(tnr_ensino_medio_1_ano AS FLOAT64) tnr_ensino_medio_1_ano,
SAFE_CAST(tnr_ensino_medio_2_ano AS FLOAT64) tnr_ensino_medio_2_ano,
SAFE_CAST(tnr_ensino_medio_3_ano AS FLOAT64) tnr_ensino_medio_3_ano,
SAFE_CAST(tnr_ensino_medio_4_ano AS FLOAT64) tnr_ensino_medio_4_ano,
SAFE_CAST(tnr_ensino_medio_nao_seriado AS FLOAT64) tnr_ensino_medio_nao_seriado,
SAFE_CAST(dsu_educ_infantil AS FLOAT64) dsu_educ_infantil,
SAFE_CAST(dsu_educ_infantil_creche AS FLOAT64) dsu_educ_infantil_creche,
SAFE_CAST(dsu_educ_infantil_pre_escola AS FLOAT64) dsu_educ_infantil_pre_escola,
SAFE_CAST(dsu_ensino_fund AS FLOAT64) dsu_ensino_fund,
SAFE_CAST(dsu_ensino_fund_anos_iniciais AS FLOAT64) dsu_ensino_fund_anos_iniciais,
SAFE_CAST(dsu_ensino_fund_anos_finais AS FLOAT64) dsu_ensino_fund_anos_finais,
SAFE_CAST(dsu_ensino_medio AS FLOAT64) dsu_ensino_medio,
SAFE_CAST(dsu_educacao_profissional AS FLOAT64) dsu_educacao_profissional,
SAFE_CAST(dsu_educacao_jovens_adultos AS FLOAT64) dsu_educacao_jovens_adultos,
SAFE_CAST(dsu_educacao_especial AS FLOAT64) dsu_educacao_especial,
SAFE_CAST(afd_educacao_infantil_grupo_1 AS FLOAT64) afd_educacao_infantil_grupo_1,
SAFE_CAST(afd_educacao_infantil_grupo_2 AS FLOAT64) afd_educacao_infantil_grupo_2,
SAFE_CAST(afd_educacao_infantil_grupo_3 AS FLOAT64) afd_educacao_infantil_grupo_3,
SAFE_CAST(afd_educacao_infantil_grupo_4 AS FLOAT64) afd_educacao_infantil_grupo_4,
SAFE_CAST(afd_educacao_infantil_grupo_5 AS FLOAT64) afd_educacao_infantil_grupo_5,
SAFE_CAST(afd_ensino_fund_grupo_1 AS FLOAT64) afd_ensino_fund_grupo_1,
SAFE_CAST(afd_ensino_fund_grupo_2 AS FLOAT64) afd_ensino_fund_grupo_2,
SAFE_CAST(afd_ensino_fund_grupo_3 AS FLOAT64) afd_ensino_fund_grupo_3,
SAFE_CAST(afd_ensino_fund_grupo_4 AS FLOAT64) afd_ensino_fund_grupo_4,
SAFE_CAST(afd_ensino_fund_grupo_5 AS FLOAT64) afd_ensino_fund_grupo_5,
SAFE_CAST(afd_ensino_fund_anos_iniciais_grupo_1 AS FLOAT64) afd_ensino_fund_anos_iniciais_grupo_1,
SAFE_CAST(afd_ensino_fund_anos_iniciais_grupo_2 AS FLOAT64) afd_ensino_fund_anos_iniciais_grupo_2,
SAFE_CAST(afd_ensino_fund_anos_iniciais_grupo_3 AS FLOAT64) afd_ensino_fund_anos_iniciais_grupo_3,
SAFE_CAST(afd_ensino_fund_anos_iniciais_grupo_4 AS FLOAT64) afd_ensino_fund_anos_iniciais_grupo_4,
SAFE_CAST(afd_ensino_fund_anos_iniciais_grupo_5 AS FLOAT64) afd_ensino_fund_anos_iniciais_grupo_5,
SAFE_CAST(afd_ensino_fund_anos_finais_grupo_1 AS FLOAT64) afd_ensino_fund_anos_finais_grupo_1,
SAFE_CAST(afd_ensino_fund_anos_finais_grupo_2 AS FLOAT64) afd_ensino_fund_anos_finais_grupo_2,
SAFE_CAST(afd_ensino_fund_anos_finais_grupo_3 AS FLOAT64) afd_ensino_fund_anos_finais_grupo_3,
SAFE_CAST(afd_ensino_fund_anos_finais_grupo_4 AS FLOAT64) afd_ensino_fund_anos_finais_grupo_4,
SAFE_CAST(afd_ensino_fund_anos_finais_grupo_5 AS FLOAT64) afd_ensino_fund_anos_finais_grupo_5,
SAFE_CAST(afd_ensino_medio_grupo_1 AS FLOAT64) afd_ensino_medio_grupo_1,
SAFE_CAST(afd_ensino_medio_grupo_2 AS FLOAT64) afd_ensino_medio_grupo_2,
SAFE_CAST(afd_ensino_medio_grupo_3 AS FLOAT64) afd_ensino_medio_grupo_3,
SAFE_CAST(afd_ensino_medio_grupo_4 AS FLOAT64) afd_ensino_medio_grupo_4,
SAFE_CAST(afd_ensino_medio_grupo_5 AS FLOAT64) afd_ensino_medio_grupo_5,
SAFE_CAST(afd_eja_fundamental_grupo_1 AS FLOAT64) afd_eja_fundamental_grupo_1,
SAFE_CAST(afd_eja_fundamental_grupo_2 AS FLOAT64) afd_eja_fundamental_grupo_2,
SAFE_CAST(afd_eja_fundamental_grupo_3 AS FLOAT64) afd_eja_fundamental_grupo_3,
SAFE_CAST(afd_eja_fundamental_grupo_4 AS FLOAT64) afd_eja_fundamental_grupo_4,
SAFE_CAST(afd_eja_fundamental_grupo_5 AS FLOAT64) afd_eja_fundamental_grupo_5,
SAFE_CAST(afd_eja_medio_grupo_1 AS FLOAT64) afd_eja_medio_grupo_1,
SAFE_CAST(afd_eja_medio_grupo_2 AS FLOAT64) afd_eja_medio_grupo_2,
SAFE_CAST(afd_eja_medio_grupo_3 AS FLOAT64) afd_eja_medio_grupo_3,
SAFE_CAST(afd_eja_medio_grupo_4 AS FLOAT64) afd_eja_medio_grupo_4,
SAFE_CAST(afd_eja_medio_grupo_5 AS FLOAT64) afd_eja_medio_grupo_5,
SAFE_CAST(ird_baixa_regularidade AS FLOAT64) ird_baixa_regularidade,
SAFE_CAST(ird_media_baixa AS FLOAT64) ird_media_baixa,
SAFE_CAST(ird_media_alta AS FLOAT64) ird_media_alta,
SAFE_CAST(ird_alta AS FLOAT64) ird_alta,
SAFE_CAST(ied_ensino_fund_nivel_1 AS FLOAT64) ied_ensino_fund_nivel_1,
SAFE_CAST(ied_ensino_fund_nivel_2 AS FLOAT64) ied_ensino_fund_nivel_2,
SAFE_CAST(ied_ensino_fund_nivel_3 AS FLOAT64) ied_ensino_fund_nivel_3,
SAFE_CAST(ied_ensino_fund_nivel_4 AS FLOAT64) ied_ensino_fund_nivel_4,
SAFE_CAST(ied_ensino_fund_nivel_5 AS FLOAT64) ied_ensino_fund_nivel_5,
SAFE_CAST(ied_ensino_fund_nivel_6 AS FLOAT64) ied_ensino_fund_nivel_6,
SAFE_CAST(ied_ensino_fund_anos_iniciais_nivel_1 AS FLOAT64) ied_ensino_fund_anos_iniciais_nivel_1,
SAFE_CAST(ied_ensino_fund_anos_iniciais_nivel_2 AS FLOAT64) ied_ensino_fund_anos_iniciais_nivel_2,
SAFE_CAST(ied_ensino_fund_anos_iniciais_nivel_3 AS FLOAT64) ied_ensino_fund_anos_iniciais_nivel_3,
SAFE_CAST(ied_ensino_fund_anos_iniciais_nivel_4 AS FLOAT64) ied_ensino_fund_anos_iniciais_nivel_4,
SAFE_CAST(ied_ensino_fund_anos_iniciais_nivel_5 AS FLOAT64) ied_ensino_fund_anos_iniciais_nivel_5,
SAFE_CAST(ied_ensino_fund_anos_iniciais_nivel_6 AS FLOAT64) ied_ensino_fund_anos_iniciais_nivel_6,
SAFE_CAST(ied_ensino_fund_anos_finais_nivel_1 AS FLOAT64) ied_ensino_fund_anos_finais_nivel_1,
SAFE_CAST(ied_ensino_fund_anos_finais_nivel_2 AS FLOAT64) ied_ensino_fund_anos_finais_nivel_2,
SAFE_CAST(ied_ensino_fund_anos_finais_nivel_3 AS FLOAT64) ied_ensino_fund_anos_finais_nivel_3,
SAFE_CAST(ied_ensino_fund_anos_finais_nivel_4 AS FLOAT64) ied_ensino_fund_anos_finais_nivel_4,
SAFE_CAST(ied_ensino_fund_anos_finais_nivel_5 AS FLOAT64) ied_ensino_fund_anos_finais_nivel_5,
SAFE_CAST(ied_ensino_fund_anos_finais_nivel_6 AS FLOAT64) ied_ensino_fund_anos_finais_nivel_6,
SAFE_CAST(ied_ensino_medio_nivel_1 AS FLOAT64) ied_ensino_medio_nivel_1,
SAFE_CAST(ied_ensino_medio_nivel_2 AS FLOAT64) ied_ensino_medio_nivel_2,
SAFE_CAST(ied_ensino_medio_nivel_3 AS FLOAT64) ied_ensino_medio_nivel_3,
SAFE_CAST(ied_ensino_medio_nivel_4 AS FLOAT64) ied_ensino_medio_nivel_4,
SAFE_CAST(ied_ensino_medio_nivel_5 AS FLOAT64) ied_ensino_medio_nivel_5,
SAFE_CAST(ied_ensino_medio_nivel_6 AS FLOAT64) ied_ensino_medio_nivel_6,
SAFE_CAST(icg_nivel_1 AS FLOAT64) icg_nivel_1,
SAFE_CAST(icg_nivel_2 AS FLOAT64) icg_nivel_2,
SAFE_CAST(icg_nivel_3 AS FLOAT64) icg_nivel_3,
SAFE_CAST(icg_nivel_4 AS FLOAT64) icg_nivel_4,
SAFE_CAST(icg_nivel_5 AS FLOAT64) icg_nivel_5,
SAFE_CAST(icg_nivel_6 AS FLOAT64) icg_nivel_6
from basedosdados-dev.br_inep_indicadores_educacionais_staging.brasil as t