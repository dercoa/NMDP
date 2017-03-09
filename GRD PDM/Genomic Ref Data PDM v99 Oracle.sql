/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2/21/2017 10:44:27 PM                        */
/*==============================================================*/


/*==============================================================*/
/* Following Code allows for quotes in and lengthy comments     */
/*==============================================================*/
set echo on
set define off 
set SQLBLANKLINES ON
set serveroutput on size 400000
set lines 200 trimspool on


alter table GENOMIC_REF_DATA.ALLELE
   drop constraint FK_ALLELE_01
/

alter table GENOMIC_REF_DATA.ALLELE
   drop constraint FK_ALLELE_02
/

alter table GENOMIC_REF_DATA.ALLELE
   drop constraint FK_ALLELE_03
/

alter table GENOMIC_REF_DATA.ALLELE
   drop constraint FK_ALLELE_04
/

alter table GENOMIC_REF_DATA.ALLELE
   drop constraint FK_ALLELE_05
/

alter table GENOMIC_REF_DATA.ALLELE
   drop constraint FK_ALLELE_06
/

alter table GENOMIC_REF_DATA.ALLELE_CODE
   drop constraint FK_ALLELE_CODE_01
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION
   drop constraint FK_ALLELE_CODE_DESIGNATION_01
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION
   drop constraint FK_ALLELE_CODE_DESIGNATION_03
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION
   drop constraint FK_ALLELE_CODE_DESIGNATION_04
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER
   drop constraint FK_ALLELE_CODE_DESGNTN_MBR_01
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER
   drop constraint FK_ALLELE_CODE_DESGNTN_MBR_02
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT
   drop constraint FK_ALLELE_CODE_DESGNTN_RELT_01
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT
   drop constraint FK_ALLELE_CODE_DESGNTN_RELT_02
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT
   drop constraint FK_ALLELE_CODE_DESGNTN_RELT_03
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION
   drop constraint FK_ALLELE_CODE_EXPANSION_01
/

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED
   drop constraint FK_ALLELE_COMMON_WELL_DOC_01
/

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED
   drop constraint FK_ALLELE_COMMON_WELL_DOC_02
/

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG
   drop constraint FK_ALLELE_CWD_STG_01
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP
   drop constraint FK_ALLELE_GROUP_01
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP
   drop constraint FK_ALLELE_GROUP_02
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER
   drop constraint FK_ALLELE_GROUP_MEMBER_01
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER
   drop constraint FK_ALLELE_GROUP_MEMBER_02
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP_TYPE
   drop constraint FK_ALLELE_GROUP_TYPE_01
/

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE
   drop constraint FK_ALLELE_NUCLEOTIDE_SEQ_01
/

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG
   drop constraint FK_ALLELE_NUCL_SEQ_STG_01
/

alter table GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG
   drop constraint FK_ALLELE_REJECT_REASON_STG_01
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP
   drop constraint FK_ALLELE_RELATIONSHIP_01
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP
   drop constraint FK_ALLELE_RELATIONSHIP_02
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP
   drop constraint FK_ALLELE_RELATIONSHIP_03
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG
   drop constraint FK_ALLELE_RELATIONSHIP_STG_01
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG
   drop constraint FK_ALLELE_RELATIONSHIP_STG_02
/

alter table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT
   drop constraint FK_ALLELE_SRCH_DTRM_01
/

alter table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT
   drop constraint FK_ALLELE_SRCH_DTRM_02
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   drop constraint FK_ALLELE_SEROLOGY_01
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   drop constraint FK_ALLELE_SEROLOGY_02
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   drop constraint FK_ALLELE_SEROLOGY_03
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   drop constraint FK_ALLELE_SEROLOGY_04
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   drop constraint FK_ALLELE_SEROLOGY_STG_01
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   drop constraint FK_ALLELE_SEROLOGY_STG_02
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   drop constraint FK_ALLELE_SEROLOGY_STG_03
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   drop constraint FK_ALLELE_SEROLOGY_STG_04
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_01
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_02
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_03
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_04
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_05
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_06
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_07
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_08
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   drop constraint FK_ALLELE_STG_09
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME
   drop constraint FK_BEHVR_ALLELE_EXPAN_NAME_01
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP
   drop constraint FK_BEHAVIOR_ALLELE_GROUP_01
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP
   drop constraint FK_BEHAVIOR_ALLELE_GROUP_02
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP
   drop constraint FK_BEHAVIOR_ALLELE_GROUP_03
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN
   drop constraint FK_BEHVR_ALLELE_GROUP_VER_01
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN
   drop constraint FK_BEHVR_ALLELE_GROUP_VER_02
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN
   drop constraint FK_BEHVR_GRP_VER_EXPAN_02
/

alter table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS
   drop constraint FK_BEHVR_CATG_GENE_FAMILY_01
/

alter table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS
   drop constraint FK_BEHVR_CATG_GENE_FAMILY_02
/

alter table GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION
   drop constraint FK_BROAD_XX_GRP_EXPNSN_01
/

alter table GENOMIC_REF_DATA.CURATOR_DATA
   drop constraint FK_CURATOR_DATA_01
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION
   drop constraint FK_DATA_NOTIFICATION_01
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION
   drop constraint FK_DATA_NOTIFICATION_02
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION
   drop constraint FK_DATA_NOTIFICATION_03
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_RELEASE
   drop constraint FK_CURATOR__FK_CURATO_CURATOR_
/

alter table GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP
   drop constraint FK_DESGNTN_BROAD_XX_GRP_01
/

alter table GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP
   drop constraint FK_DESGNTN_BROAD_XX_GRP_02
/

alter table GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP
   drop constraint FK_DESGNTN_PUBL_ALLELE_GRP_01
/

alter table GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP
   drop constraint FK_DESGNTN_PUBL_ALLELE_GRP_02
/

alter table GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM
   drop constraint FK_DESIGNATION_SEARCH_DTRM_01
/

alter table GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM
   drop constraint FK_DESIGNATION_SEARCH_DTRM_02
/

alter table GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP
   drop constraint FK_DESGNTN_TEST_RESULT_GRP_01
/

alter table GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP
   drop constraint FK_DESGNTN_TEST_RESULT_GRP_02
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET
   drop constraint FK_EXPR_CHAR_SET_01
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET
   drop constraint FK_EXPR_CHAR_SET_02
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER
   drop constraint FK_EXPR_CHAR_SET_VER_02
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER
   drop constraint FK_EXPR_CHAR_SET_VER_MBR_01
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER
   drop constraint FK_EXPR_CHAR_SET_VER_MEMBER_02
/

alter table GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE
   drop constraint FK_GENE_FAMILY_OBJECT_TYPE_01
/

alter table GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE
   drop constraint FK_GENE_FAMILY_OBJECT_TYPE_02
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   drop constraint FK_GENE_LOCUS_01
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   drop constraint FK_GENE_LOCUS_02
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   drop constraint FK_GENE_LOCUS_03
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   drop constraint FK_GENE_LOCUS_04
/

alter table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION
   drop constraint FK_GENOME_DATABASE_VERSION_01
/

alter table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT
   drop constraint FK_GENOMIC_REFERENCE_OBJECT_01
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION
   drop constraint FK_GENOMIC_REF_DATA_CONFIG_01
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION
   drop constraint FK_GENOMIC_REF_DATA_CONFIG_02
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF
   drop constraint FK_GEN_REF_OBJ_LGCY_XREF_01
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF
   drop constraint FK_GEN_REF_OBJ_LGCY_XREF_02
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF
   drop constraint FK_GEN_REF_OBJ_LGCY_XREF_03
/

alter table GENOMIC_REF_DATA.GENOTYPE
   drop constraint FK_GENOTYPE_01
/

alter table GENOMIC_REF_DATA.GENOTYPE
   drop constraint FK_GENOTYPE_02
/

alter table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE
   drop constraint FK_GENOTYPE_LIST_GENOTYPE_01
/

alter table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE
   drop constraint FK_GENOTYPE_LIST_GENOTYPE_02
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   drop constraint FK_GROUP_MISMATCH_01
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   drop constraint FK_GROUP_MISMATCH_02
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   drop constraint FK_GROUP_MISMATCH_03
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   drop constraint FK_GROUP_MISMATCH_04
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER
   drop constraint FK_GROUP_MISMATCH_MEMBER_01
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER
   drop constraint FK_GROUP_MISMATCH_MEMBER_02
/

alter table GENOMIC_REF_DATA.HAPLOTYPE_MEMBER
   drop constraint FK_HAPLOTYPE_MEMBER_01
/

alter table GENOMIC_REF_DATA.HAPLOTYPE_MEMBER
   drop constraint FK_HAPLOTYPE_MEMBER_02
/

alter table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION
   drop constraint FK_NOMENCLATURE_FORMAT_VER_01
/

alter table GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG
   drop constraint FK_NOM_FILE_GROUP_MBR_STG_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY
   drop constraint FK_PUBL_ALLELE_ETHNICITY_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG
   drop constraint FK_PUBL_ALLELE_ETHN_STG_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE
   drop constraint FK_PUBLISHED_ALLELE_FEATURE_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG
   drop constraint FK_PUBL_ALLELE_FEATURE_STG_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP
   drop constraint FK_PUBL_ALLELE_GRP_02
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP
   drop constraint FK_PUBL_ALLELE_GROUP_02
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG
   drop constraint FK_PUBL_ALLELE_GROUP_STG_02
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG
   drop constraint FK_PUBL_ALLELE_GROUP_STG_03
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE
   drop constraint FK_PUBLISHED_ALLELE_SAMPLE_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG
   drop constraint FK_PUBL_ALLELE_SAMPLE_STG_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF
   drop constraint FK_PUBL_ALLELE_SOURCE_XREF_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL
   drop constraint FK_PUBL_ALLELE_SRC_MATERIAL_01
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG
   drop constraint FK_PUBL_ALLELE_SRC_XREF_STG_01
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION
   drop constraint FK_PUBL_ALLELE_GROUP_VER_01
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION
   drop constraint FK_PUBL_ALLELE_GROUP_VER_02
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION
   drop constraint FK_PUBL_ALLELE_GROUP_VER_03
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG
   drop constraint FK_PUBL_GRP_VER_MBR_STG_01
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG
   drop constraint FK_PUBL_GRP_VER_MBR_STG_02
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER
   drop constraint FK_PUBL_ALLELE_GRP_VER_MBR_01
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER
   drop constraint FK_PUBL_ALLELE_GRP_VER_MBR_02
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG
   drop constraint FK_PUBL_ALLELE_GRP_VER_STG_01
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG
   drop constraint FK_PUBL_ALLELE_GRP_VER_STG_02
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG
   drop constraint FK_PUBL_ALLELE_SRC_MATL_STG_01
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT
   drop constraint FK_SEARCH_DETERMINANT_01
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP
   drop constraint FK_SEARCH_DETERMINANT_RELT_01
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP
   drop constraint FK_SEARCH_DETERMINANT_RELT_02
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP
   drop constraint FK_SEARCH_DETERMINANT_RELT_03
/

alter table GENOMIC_REF_DATA.SEROLOGY
   drop constraint FK_SEROLOGY_FK_SEROLO_SEROLOGY
/

alter table GENOMIC_REF_DATA.SEROLOGY
   drop constraint FK_SEROLOGY_02
/

alter table GENOMIC_REF_DATA.SEROLOGY
   drop constraint FK_SEROLOGY_03
/

alter table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT
   drop constraint FK_SEROLOGY_SRCH_DTRM_01
/

alter table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT
   drop constraint FK_SEROLOGY_SRCH_DTRM_02
/

alter table GENOMIC_REF_DATA.SEROLOGY_STG
   drop constraint FK_SEROLOGY_STG_01
/

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP
   drop constraint FK_TEST_RESULT_ALLELE_GROUP_01
/

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP
   drop constraint FK_TEST_RESULT_ALLELE_GROUP_02
/

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP
   drop constraint FK_TEST_RESULT_ALLELE_GROUP_03
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP
   drop constraint FK_XX_ALLELE_GROUP_01
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP
   drop constraint FK_XX_ALLELE_GROUP_02
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM
   drop constraint FK_XX_ALLELE_GRP_SRCH_DTRM_01
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM
   drop constraint FK_XX_ALLELE_GRP_SRCH_DTRM_02
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_AUD cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_CODE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_CODE_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_GROUP_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_REJECTION_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_SEROLOGY cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.ALLELE_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.BLOOD_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.CONFIGURATION_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.CURATOR_DATA cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.CURATOR_DATA_RELEASE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.EXPR_CHAR_SET cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENE_FAMILY cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENE_LOCUS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOTYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOTYPE_LIST cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GROUP_MISMATCH cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.GROUP_REVIEW_STATUS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.HAPLOTYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.HAPLOTYPE_MEMBER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.MHC_CLASSIFICATION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.NOM_FILE_GROUP_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.NOTIFICATION_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.RH_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.SEARCH_DETERMINANT cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.SEROLOGY cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.SEROLOGY_CONTEXT cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.SEROLOGY_STG cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.USERS cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.XX_ALLELE_GROUP cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_AUD');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_CODE_DESGNTN_AUD');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_CODE_DESGNTN_RELT');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_CODE_DESIGNATION');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_GROUP');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_NUCLEOTIDE_SEQ');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_NUCLEOTIDE_SEQ_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_REJECTION_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_REJECT_REASON');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_RELATIONSHIP');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_RELATIONSHIP_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_ALLELE_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_BEHAVIOR_ALLELE_GROUP');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_BEHVR_ALLELE_EXPAN_NAME');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_BEHVR_ALLELE_GRP_VER_EXPAN');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_CURATED_DATA');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_CURATED_DATA_NOTIFICATION');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_CURATED_DATA_RELEASE');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_EXPR_CHAR_SET');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_EXPR_CHAR_SET_VER_MBR');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GENOME_DATABASE_VERSION');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GENOME_DATABASE_VER_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GENOTYPE');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GENOTYPE_LIST');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GEN_REF_DATA_CONFIG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GEN_REF_OBJ_LGCY_XREF');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GROUP_MISMATCH');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_GROUP_MISMATCH_MBR');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_HAPLOTYPE');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_NOMENCLATURE_MISMATCH');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_NOM_FILE_GROUP_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_NOM_FILE_GRP_MBR_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBLISHED_ALLELE_FEATURE');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBLISHED_ALLELE_GROUP');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_CITATION');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_CITATION_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_FEATURE_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_GROUP_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_GRP_VER_MBR');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SOURCE_XREF');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SRC_MATERIAL');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SRC_MATRL_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SRC_XREF_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_GRP_VER_MBR_AUD');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_PUBL_GRP_VER_MBR_STG');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_SEARCH_DETERMINANT');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_SEROLOGY');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_SRCH_DTRM_RELATIONSHIP');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_TEST_RESULT_ALLELE_GRP');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_USERS');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop sequence GENOMIC_REF_DATA.SEQ_XX_ALLELE_GROUP');
Exception when others then
If sqlcode = -2289 then
     Null;
   Else
    Raise;
   End If;
  End;
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_AUD
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_CODE_DESGNTN_AUD
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_CODE_DESGNTN_RELT
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_CODE_DESIGNATION
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_GROUP
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_NUCLEOTIDE_SEQ
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_NUCLEOTIDE_SEQ_STG
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_REJECTION_STG
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_REJECT_REASON
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_RELATIONSHIP
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_RELATIONSHIP_STG
/

create sequence GENOMIC_REF_DATA.SEQ_ALLELE_STG
/

create sequence GENOMIC_REF_DATA.SEQ_BEHAVIOR_ALLELE_GROUP
/

create sequence GENOMIC_REF_DATA.SEQ_BEHVR_ALLELE_EXPAN_NAME
/

create sequence GENOMIC_REF_DATA.SEQ_BEHVR_ALLELE_GRP_VER_EXPAN
/

create sequence GENOMIC_REF_DATA.SEQ_CURATED_DATA
/

create sequence GENOMIC_REF_DATA.SEQ_CURATED_DATA_NOTIFICATION
/

create sequence GENOMIC_REF_DATA.SEQ_CURATED_DATA_RELEASE
/

create sequence GENOMIC_REF_DATA.SEQ_EXPR_CHAR_SET
/

create sequence GENOMIC_REF_DATA.SEQ_EXPR_CHAR_SET_VER_MBR
/

create sequence GENOMIC_REF_DATA.SEQ_GENOME_DATABASE_VERSION
/

create sequence GENOMIC_REF_DATA.SEQ_GENOME_DATABASE_VER_STG
/

create sequence GENOMIC_REF_DATA.SEQ_GENOTYPE
/

create sequence GENOMIC_REF_DATA.SEQ_GENOTYPE_LIST
/

create sequence GENOMIC_REF_DATA.SEQ_GEN_REF_DATA_CONFIG
/

create sequence GENOMIC_REF_DATA.SEQ_GEN_REF_OBJ_LGCY_XREF
/

create sequence GENOMIC_REF_DATA.SEQ_GROUP_MISMATCH
/

create sequence GENOMIC_REF_DATA.SEQ_GROUP_MISMATCH_MBR
/

create sequence GENOMIC_REF_DATA.SEQ_HAPLOTYPE
/

create sequence GENOMIC_REF_DATA.SEQ_NOMENCLATURE_MISMATCH
/

create sequence GENOMIC_REF_DATA.SEQ_NOM_FILE_GROUP_STG
/

create sequence GENOMIC_REF_DATA.SEQ_NOM_FILE_GRP_MBR_STG
/

create sequence GENOMIC_REF_DATA.SEQ_PUBLISHED_ALLELE_FEATURE
/

create sequence GENOMIC_REF_DATA.SEQ_PUBLISHED_ALLELE_GROUP
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_CITATION
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_CITATION_STG
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_FEATURE_STG
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_GROUP_STG
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_GRP_VER_MBR
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SOURCE_XREF
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SRC_MATERIAL
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SRC_MATRL_STG
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_ALLELE_SRC_XREF_STG
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_GRP_VER_MBR_AUD
/

create sequence GENOMIC_REF_DATA.SEQ_PUBL_GRP_VER_MBR_STG
/

create sequence GENOMIC_REF_DATA.SEQ_SEARCH_DETERMINANT
/

create sequence GENOMIC_REF_DATA.SEQ_SEROLOGY
/

create sequence GENOMIC_REF_DATA.SEQ_SRCH_DTRM_RELATIONSHIP
/

create sequence GENOMIC_REF_DATA.SEQ_TEST_RESULT_ALLELE_GRP
/

create sequence GENOMIC_REF_DATA.SEQ_USERS
/

create sequence GENOMIC_REF_DATA.SEQ_XX_ALLELE_GROUP
/

/*==============================================================*/
/* Table: ALLELE                                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE 
(
   ALLELE_IID           NUMBER(9)            not null,
   ACCESSION_NUM        VARCHAR2(20),
   GENOME_DATABASE_VER_IID NUMBER(9),
   ALLELE_FIRST_RELEASE_VER_NUM VARCHAR2(10),
   ALLELE_PUBLISHED_DTE TIMESTAMP(0),
   ALLELE_LAST_UPDATE_VER_NUM VARCHAR2(10),
   DB_VER_ALLELE_REL_STATUS_TXT VARCHAR2(500),
   GENE_LOCUS_IID       NUMBER(9)            not null,
   ALLELE_NOMENCLATURE_TYPE_CDE VARCHAR2(10)         not null,
   NOMENCLATURE_FORMAT_VER_CDE VARCHAR2(10),
   LONG_FORMAT_NME      VARCHAR2(50)         not null,
   SHORT_FORMAT_NME     VARCHAR2(20),
   HLA_EXPRESSION_CHARACTER_CDE VARCHAR2(1),
   ALLELE_STATUS_CDE    VARCHAR2(10)         not null,
   CONFIRMED_IND        VARCHAR2(1)          not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_ALLELE primary key (ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE is
'A specific variation of a particular gene locus.'
/

comment on column GENOMIC_REF_DATA.ALLELE.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE.ACCESSION_NUM is
'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.'
/

comment on column GENOMIC_REF_DATA.ALLELE.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE.ALLELE_FIRST_RELEASE_VER_NUM is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.ALLELE.ALLELE_PUBLISHED_DTE is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.ALLELE.ALLELE_LAST_UPDATE_VER_NUM is
'The date that the allele tied to the accession number was updated.  This could be an expansion of the definition or a renaming, etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE.DB_VER_ALLELE_REL_STATUS_TXT is
'A short textual ''label'' or name that provides the allele status a specific database version release. Values include things like ''sequence modified'', ''new allele'', ''sequence unchanged'', etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE.ALLELE_NOMENCLATURE_TYPE_CDE is
'A valid value to represent a particular kind or type of allele nomenclature.  For the HLA family, the values are WHO and GFE.  Currently, NMDP is only persisting records with WHO nomenclature type.'
/

comment on column GENOMIC_REF_DATA.ALLELE.NOMENCLATURE_FORMAT_VER_CDE is
'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are V2 = V2 format, V3 = V3 format'
/

comment on column GENOMIC_REF_DATA.ALLELE.LONG_FORMAT_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).'
/

comment on column GENOMIC_REF_DATA.ALLELE.SHORT_FORMAT_NME is
'A short textual ''label'' or name (that corresponds to a valid ID) by which an Allele is known/can be recognized.  This is used for HLA Alleles, unlike the long format name which may extend to all 4 fields within the nomenclature - the short name specifically represents ONLY to field 2 and is used for legacy search purposes.  In other words, multiple long format names share the same short format name. '
/

comment on column GENOMIC_REF_DATA.ALLELE.HLA_EXPRESSION_CHARACTER_CDE is
'A single character code used as an optional suffix on HLA alleles.  Values are N = null, L = Low Cell Surface, S = Soluable, C = Cytoplasm Present,  A = Aberrant, Q = Questionable'
/

comment on column GENOMIC_REF_DATA.ALLELE.ALLELE_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.ALLELE.CONFIRMED_IND is
'Indicates if the allele has been defined as confirmed by the source/curator.  Values are Y and N'
/

comment on column GENOMIC_REF_DATA.ALLELE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_AUD                                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_AUD 
(
   ALLELE_AUD_IID       NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CHANGE_TS            TIMESTAMP(6)         not null,
   ACCESSION_NUM        VARCHAR2(20),
   GENOME_DATABASE_VER_IID NUMBER(9),
   ALLELE_FIRST_RELEASE_VER_NUM VARCHAR2(10),
   ALLELE_PUBLISHED_DTE TIMESTAMP(0),
   ALLELE_LAST_UPDATE_VER_NUM VARCHAR2(10),
   DB_VER_ALLELE_REL_STATUS_TXT VARCHAR2(500),
   GENE_LOCUS_IID       NUMBER(9)            not null,
   ALLELE_NOMENCLATURE_TYPE_CDE VARCHAR2(10)         not null,
   NOMENCLATURE_FORMAT_VER_CDE VARCHAR2(10),
   LONG_FORMAT_NME      VARCHAR2(50)         not null,
   SHORT_FORMAT_NME     VARCHAR2(20),
   HLA_EXPRESSION_CHARACTER_CDE VARCHAR2(1),
   ALLELE_STATUS_CDE    VARCHAR2(10)         not null,
   CONFIRMED_IND        VARCHAR2(1)          not null,
   CHANGE_TYPE_CDE      VARCHAR2(10)         not null,
   CHANGE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_AUD primary key (ALLELE_AUD_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_AUD unique (ALLELE_IID, CHANGE_TS)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_AUD is
'A variation of a particular gene locus, this representation is a historical snapshot of an allele.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ALLELE_AUD_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele audit record within the Enterprise.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.CHANGE_TS is
'The timestamp for the record change.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ACCESSION_NUM is
'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ALLELE_FIRST_RELEASE_VER_NUM is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ALLELE_PUBLISHED_DTE is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ALLELE_LAST_UPDATE_VER_NUM is
'The date that the allele tied to the accession number was updated.  This could be an expansion of the definition or a renaming, etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.DB_VER_ALLELE_REL_STATUS_TXT is
'A short textual ''label'' or name that provides the allele status a specific database version release. Values include things like ''sequence modified'', ''new allele'', ''sequence unchanged'', etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ALLELE_NOMENCLATURE_TYPE_CDE is
'A valid value to represent a particular kind or type of allele nomenclature.  For the HLA family, the values are WHO and GFE.  Currently, NMDP is only persisting records with WHO nomenclature type.'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.NOMENCLATURE_FORMAT_VER_CDE is
'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are V2 = V2 format, V3 = V3 format'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.LONG_FORMAT_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.SHORT_FORMAT_NME is
'A short textual ''label'' or name (that corresponds to a valid ID) by which an Allele is known/can be recognized.  This is used for HLA Alleles, unlike the long format name which may extend to all 4 fields within the nomenclature - the short name specifically represents ONLY to field 2 and is used for legacy search purposes.  In other words, multiple long format names share the same short format name. '
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.HLA_EXPRESSION_CHARACTER_CDE is
'A single character code used as an optional suffix on HLA alleles.  Values are N = null, L = Low Cell Surface, S = Soluable, C = Cytoplasm Present,  A = Aberrant, Q = Questionable'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.ALLELE_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.CONFIRMED_IND is
'Indicates if the allele has been defined as confirmed by the source/curator.  Values are Y and N'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.CHANGE_TYPE_CDE is
'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis'
/

comment on column GENOMIC_REF_DATA.ALLELE_AUD.CHANGE_BY_ID is
'The user id / unique id of the person / program changed the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_AUD to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_AUD to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_CODE                                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE 
(
   ALLELE_CDE           VARCHAR2(10)         not null,
   ALLELE_CODE_TYPE_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_CODE primary key (ALLELE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_CODE is
'A specific alpha code (2-5 characters) defined to represent a consisent collection of alleles.  This code (depending upon its type) can be leveraged across multiple gene locus.'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE.ALLELE_CDE is
'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE.ALLELE_CODE_TYPE_CDE is
'A valid value to represent a particular kind or type of Allele Code Designation.  Values represent G = ''generic'' and AS = ''allele specific''.  Generic defines ONLY the allele family (i.e. field 1 of the nomenclature); these can be used/leveraged across mutlipel gene locus.  Allele specific defines the allele family and protein (i.e. fields 1 & 2 nomenclature) ; these are likely used for a specific gene locus.'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_CODE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_CODE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_CODE_DESIGNATION                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION 
(
   ALLELE_CODE_DESIGNATION_IID NUMBER(9)            not null,
   ALLELE_CODE_DESIGNATION_NME VARCHAR2(50)         not null,
   ALLELE_CDE           VARCHAR2(10)         not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   ALLELE_CODE_DESGNTN_STATUS_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_CODE_DESIGNATION primary key (ALLELE_CODE_DESIGNATION_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_CODE_DESIGNATION unique (ALLELE_CODE_DESIGNATION_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION is
'A representation of a specific ''usage'' for an Allele Code that is for a specific HLA Gene Locus and Allele Family (i.e. first field in the HLA gene nomenclature).  Allele Codes are 2-4 alpha characters defined to represent specific collections of Alleles and represent a level of ambiguoty (i.e. that an allele in said group could be any of the alleles in same group); Allele Codes are generic and can be reused for many Gene Loci and Allele Families.  Allele Code Designations are applicable ONLY to the HLA gene familly and long term will be eliminated with the implementation of GLString or direct representation of published groupings like P and G Groups.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.ALLELE_CODE_DESIGNATION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.ALLELE_CODE_DESIGNATION_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Code Designation is known/can be recognized  This name is a concatenation of Gene Family, Gene Locus, Allele Family and Allele Code.  HLA-A*02:AB (generic) or HLA-A*02:AAK (allele specific)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.ALLELE_CDE is
'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.ALLELE_CODE_DESGNTN_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_CODE_DESIGNATION_AUD                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD 
(
   ALLELE_CODE_DESGNTN_AUD_IID NUMBER(9)            not null,
   ALLELE_CODE_DESIGNATION_IID NUMBER(9)            not null,
   CHANGE_TS            TIMESTAMP(6)         not null,
   ALLELE_CODE_DESIGNATION_NME VARCHAR2(50)         not null,
   ALLELE_CDE           VARCHAR2(10)         not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   ALLELE_CODE_DESGNTN_STATUS_CDE VARCHAR2(10)         not null,
   CHANGE_TYPE_CDE      VARCHAR2(10)         not null,
   CHANGE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_CODE_DESIGNATION_AUD primary key (ALLELE_CODE_DESGNTN_AUD_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_CODE_DESIGNATION_AUD unique (ALLELE_CODE_DESIGNATION_IID, CHANGE_TS)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD is
'A representation of a specific ''usage'' for an Allele Code that is for a specific HLA Gene Locus and Allele Family (i.e. first field in the HLA gene nomenclature).  Allele Codes are 2-4 alpha characters defined to represent specific collections of Alleles and represent a level of ambiguoty (i.e. that an allele in said group could be any of the alleles in same group); Allele Codes are generic and can be reused for many Gene Loci and Allele Families.  Allele Code Designations are applicable ONLY to the HLA gene familly and long term will be eliminated with the implementation of GLString or direct representation of published groupings like P and G Groups.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.ALLELE_CODE_DESGNTN_AUD_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation Audit record within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.ALLELE_CODE_DESIGNATION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.CHANGE_TS is
'The timestamp for the record change.'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.ALLELE_CODE_DESIGNATION_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Code Designation is known/can be recognized  This name is a concatenation of Gene Family, Gene Locus, Allele Family and Allele Code.  HLA-A*02:AB (generic) or HLA-A*02:AAK (allele specific)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.ALLELE_CDE is
'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.ALLELE_CODE_DESGNTN_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.CHANGE_TYPE_CDE is
'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD.CHANGE_BY_ID is
'The user id / unique id of the person / program changed the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_CODE_DESIGNATION_MEMBER                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER 
(
   ALLELE_CODE_DESIGNATION_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_CODE_DESGNTN_MBR primary key (ALLELE_CODE_DESIGNATION_IID, ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER is
'The allele membership of an MAC (Allele Code) Designation'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER.ALLELE_CODE_DESIGNATION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_CODE_DESIGNATION_RELT                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT 
(
   ALLELE_CODE_DESGNTN_RELT_IID NUMBER(9)            not null,
   ALLELE_CODE_DESGNTN_1_IID NUMBER(9)            not null,
   ALLELE_CODE_DESGNTN_2_IID NUMBER(9)            not null,
   DESGNTN_RELATIONSHIP_TYPE_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_CODE_DESIGNATION_REL primary key (ALLELE_CODE_DESGNTN_RELT_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_ALLELE_CODE_DES_ALLELE_C unique (ALLELE_CODE_DESGNTN_1_IID, ALLELE_CODE_DESGNTN_2_IID, DESGNTN_RELATIONSHIP_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT is
'The relationship of one MAC (Allele Code) Designation to another MAC (Allele Code) Designation.  This, in the past, has represented the context of ''renamed'' or ''preferred'' MAC (Allele Code) Designations relationship.'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.ALLELE_CODE_DESGNTN_RELT_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation Relationship within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.ALLELE_CODE_DESGNTN_1_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.ALLELE_CODE_DESGNTN_2_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.DESGNTN_RELATIONSHIP_TYPE_CDE is
'A valid value to represent a particular type or classification of relationship between 2 Allele Code (MAC) designations.  Values are RENAME, PREFRPT (preferred to report) and VERSION (v2 TO v3 formatting)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,SELECT,UPDATE,DELETE on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_CODE_EXPANSION                                 */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION 
(
   ALLELE_CDE           VARCHAR2(10)         not null,
   ALLELE_EXPANSION_NME VARCHAR2(20)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_CODE_EXPANSION primary key (ALLELE_CDE, ALLELE_EXPANSION_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION is
'The short names (typically represented in F1 and F2 of the HLA nomenclature) that are applicable to a specific Allele Code (MAC); this in commonely referred to as encoding'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION.ALLELE_CDE is
'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION.ALLELE_EXPANSION_NME is
'A portion of an allele name that is applicable to a specific allele code; the level of detail is dependent upon the allele code type.  For example of the allele code is generic (G), the expansion allele names would be things like 01, 02 (representing the first field of the normenclature); when the allele code is allele specific, the expansioin allele names would be things like 01:01, 01:02 (representing first and second fields of the allele nomenclature)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_CODE_TYPE                                      */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_TYPE 
(
   ALLELE_CODE_TYPE_CDE VARCHAR2(10)         not null,
   ALLELE_CODE_TYPE_NME VARCHAR2(50)         not null,
   ALLELE_CODE_TYPE_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_CODE_DESGNTN_TYPE primary key (ALLELE_CODE_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_CODE_TYPE unique (ALLELE_CODE_TYPE_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_CODE_TYPE is
'A classification for Allele Code that defines the specificity by which Alleles are represented. Generic which identifies ONLY the protein (Field 2 of nomenclature) and  Allele Specific which identifies both allele family and protein (fField 1 and 2 of nomenclature)'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_TYPE.ALLELE_CODE_TYPE_CDE is
'A valid value to represent a particular kind or type of Allele Code Designation.  Values represent G = ''generic'' and AS = ''allele specific''.  Generic defines ONLY the allele family (i.e. field 1 of the nomenclature); these can be used/leveraged across mutlipel gene locus.  Allele specific defines the allele family and protein (i.e. fields 1 & 2 nomenclature) ; these are likely used for a specific gene locus.'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_TYPE.ALLELE_CODE_TYPE_NME is
'A name or label that provides insight into what a specific code represents for an Allele Code Designation Type.  A valid value to represent a particular kind or type of Allele Code Designation.  (e.g. G = Generic, AS = Allele Specific).  The codes represented in example are G and AS; the names are Generic and Allele Specific respectively'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_TYPE.ALLELE_CODE_TYPE_TXT is
'A textual description that can provide additional context or explanation for each code/name (name/value pair).  Allele Specific includes the allele family and protein (fields 1 and 2 of nomenclature) where Generic ONLY includes the protien (field 2) making them more universal.'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_CODE_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_CODE_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_CODE_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_COMMON_WELL_DOCUMENTED                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED 
(
   ALLELE_IID           NUMBER(9)            not null,
   COMMON_WELL_DOC_STATUS_CDE VARCHAR2(10)         not null,
   COMMON_WELL_DOC_VER_NUM VARCHAR2(10)         not null,
   COMMON_WELL_DOC_REF_URL VARCHAR2(256)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_COMMON_WELL_DOCUMENT primary key (ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED is
'A collection of attributes that supports the Common Well Documented status and documentation (manifest and version) of an Allele.'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.COMMON_WELL_DOC_STATUS_CDE is
'A valid value to represent a particular status for Common/Well Documented Alleles  Values include COMMON = Common, WELLDOC = Well Documented, and NOTCWD = Not common/well documented'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.COMMON_WELL_DOC_VER_NUM is
'A particular version of the decision/manifest that declared an allele to be common/well documented'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.COMMON_WELL_DOC_REF_URL is
'The URL location for the manifest publishing common well documented alleles'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_COMMON_WELL_DOC_STG                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG 
(
   ALLELE_IID           NUMBER(9)            not null,
   COMMON_WELL_DOC_STATUS_CDE VARCHAR2(20)         not null,
   COMMON_WELL_DOC_VER_NUM VARCHAR2(10)         not null,
   COMMON_WELL_DOC_REF_URL VARCHAR2(256)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_COMMON_WELL_DOC_STG primary key (ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG is
'A collection of attributes that supports the Common Well Documented status and documentation (manifest and version) of an Allele.'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.COMMON_WELL_DOC_STATUS_CDE is
'A valid value to represent a specific status for a common well documented allele (applicable to HLA gene locus).  Examples are COMMON, WELLDOC, and NOTCWD
'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.COMMON_WELL_DOC_VER_NUM is
'A particular version of the decision/manifest that declared an allele to be common/well documented'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.COMMON_WELL_DOC_REF_URL is
'The URL location for the manifest publishing common well documented alleles'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_GROUP                                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_GROUP 
(
   ALLELE_GROUP_IID     NUMBER(9)            not null,
   ALLELE_GROUP_NME     VARCHAR2(50),
   ALLELE_GROUP_TYPE_CDE VARCHAR2(10)         not null,
   GENE_LOCUS_IID       NUMBER(9),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_GROUP primary key (ALLELE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_GROUP is
'A generic structure intended to support the collection/grouping of Alleles.  This would be in contrast to other groupings which have their own specific implementations (e.g. Allele Code Designation, P/G Groups, Behavior Groups, etc.); Each generic Allele Group would have a classification to provide context for it''s purpose.  There is no current constraint for gene family on generic allele groupings.'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a specific Allele Group.'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.ALLELE_GROUP_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Group is known/can be recognized..'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.ALLELE_GROUP_TYPE_CDE is
'A valid value to represent a specific kind of allele group; currently all types of allele groups defined for HLA have specific named allele grouping structures…this would be for new groups potentially to support other gene families. 
'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_GROUP_MEMBER                                   */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER 
(
   ALLELE_GROUP_IID     NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_GROUP_MEMBER primary key (ALLELE_GROUP_IID, ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER is
'The specific Alleles that are linked/connected to a generic Allele Group.'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER.ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a specific Allele Group.'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_GROUP_SUFFIX                                   */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX 
(
   ALLELE_GROUP_SUFFIX_CDE VARCHAR2(10)         not null,
   ALLELE_GROUP_SUFFIX_NME VARCHAR2(50)         not null,
   ALLELE_GROUP_SUFFIX_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_GROUP_SUFFIX primary key (ALLELE_GROUP_SUFFIX_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX is
'The valid suffixes for the various kind of groups names for Alleles (e.g. P, G, ARS, EXP)'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX.ALLELE_GROUP_SUFFIX_CDE is
'A valid value to represent a specific kind of published allele group type.  Preliminary values are P = Protein Groups, G = Genomic Groups.  The ''P'' groups are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''G'' groups are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-bidning-domains.'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX.ALLELE_GROUP_SUFFIX_NME is
'The name for a given published allele group type.  For example for P the name is P Group'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX.ALLELE_GROUP_SUFFIX_TXT is
'The description or purpose to provide context for a particular group type.  For example defining more context for a particular group type value.'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_GROUP_TYPE                                     */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_GROUP_TYPE 
(
   ALLELE_GROUP_TYPE_CDE VARCHAR2(10)         not null,
   ALLELE_GROUP_TYPE_NME VARCHAR2(50)         not null,
   ALLELE_GROUP_TYPE_TXT VARCHAR2(100),
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_GROUP_TYPE primary key (ALLELE_GROUP_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_GROUP_TYPE is
'A classificaiton used to provide context to Allele Groupings.'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.ALLELE_GROUP_TYPE_CDE is
'A valid value to represent a specific kind of allele group; currently all types of allele groups defined for HLA have specific named allele grouping structures…this would be for new groups potentially to support other gene families. 
'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.ALLELE_GROUP_TYPE_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Group Type is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.ALLELE_GROUP_TYPE_TXT is
'A more expansive explanation to describe the purpose of a particular code value that may not be entirely intuitive based on the label/name'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_GROUP_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_GROUP_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_GROUP_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_NOMENCLATURE_TYPE                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE 
(
   ALLELE_NOMENCLATURE_TYPE_CDE VARCHAR2(10)         not null,
   ALLELE_NOMENCLATURE_TYPE_NME VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_NOMENCLATURE_TYPE primary key (ALLELE_NOMENCLATURE_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE is
'The valid types of nomenclature that can be assigned to an Allele.  For HLA the types are WHO (e.g. HLA-A*01:01:01:02) and GFE - gene feature enumeration.'
/

comment on column GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE.ALLELE_NOMENCLATURE_TYPE_CDE is
'A valid value to represent a particular kind or type of allele nomenclature.  For the HLA family, the values are WHO and GFE.  Currently, NMDP is only persisting records with WHO nomenclature type.'
/

comment on column GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE.ALLELE_NOMENCLATURE_TYPE_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Nomenclature Type code is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_NUCLEOTIDE_SEQUENCE                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE 
(
   ALLELE_NUCLEOTIDE_SEQ_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   ALLELE_NUCLEOTIDE_SEQ_TXT CLOB                 not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_ALLELE_NUCLEOTIDE_SEQUENCE primary key (ALLELE_NUCLEOTIDE_SEQ_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE is
'The actual DNA sequence for a specific allele which is comprised of a string of nucleotides (A, T, C, and G).'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE.ALLELE_NUCLEOTIDE_SEQ_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Nucleotide Sequence within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE.ALLELE_NUCLEOTIDE_SEQ_TXT is
'The textual representation of the nucleotides (A, T, C, and G) in a specific sequence that uniquely defines a particular allele.'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_NUCLEOTIDE_SEQUENCE_STG                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG 
(
   ALLELE_NUCLEOTIDE_SEQ_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   ALLELE_NUCLEOTIDE_SEQ_TXT CLOB                 not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_NUCLEOTIDE_SEQUENCE_ primary key (ALLELE_NUCLEOTIDE_SEQ_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG is
'The actual DNA sequence for a specific allele which is comprised of a string of nucleotides (A, T, C, and G).'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG.ALLELE_NUCLEOTIDE_SEQ_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Nucleotide Sequence within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG.ALLELE_NUCLEOTIDE_SEQ_TXT is
'The textual representation of the nucleotides (A, T, C, and G) in a specific sequence that uniquely defines a particular allele.'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_REJECTION_REASON_STG                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG 
(
   ALLELE_REJECTION_REASON_IID NUMBER(9)            not null,
   ALLELE_REJECTION_IID NUMBER(9)            not null,
   REJECTION_REASON_TAG_NME VARCHAR2(50),
   REJECTION_REASON_ATTRIBUTE_NME VARCHAR2(50),
   REJECTION_REASON_TXT VARCHAR2(500)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_REJECTION_REASON_STG primary key (ALLELE_REJECTION_REASON_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG is
'The reason why an Allele is rejected during the curation process and not implemented into the operational data.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.ALLELE_REJECTION_REASON_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Rejection Reason record within GRD.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.ALLELE_REJECTION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Rejection record within GRD.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.REJECTION_REASON_TAG_NME is
'A complex element within the XML'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.REJECTION_REASON_ATTRIBUTE_NME is
'A particular characteristic (i.e. table.column) that has been specific in an allele rejection reason'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.REJECTION_REASON_TXT is
'The textual description of an allele rejection reason as provided to the user'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_REJECTION_STG                                  */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_REJECTION_STG 
(
   ALLELE_REJECTION_IID NUMBER(9)            not null,
   LONG_FORMAT_NME      VARCHAR2(50)         not null,
   ACCESSION_NUM        VARCHAR2(20)         not null,
   ALLELE_PUBLISHED_DTE TIMESTAMP(0)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_REJECTION_STG primary key (ALLELE_REJECTION_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_REJECTION_STG is
'An allele that has been rejected during the curation process.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.ALLELE_REJECTION_IID is
'A system generated identifier (surrogate key) that uniquely represents anAllele Rejection record within GRD.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.LONG_FORMAT_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.ACCESSION_NUM is
'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.ALLELE_PUBLISHED_DTE is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_REJECTION_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_REJECTION_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_REJECTION_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP                                   */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP 
(
   ALLELE_RELATIONSHIP_IID NUMBER(9)            not null,
   ALLELE_1_IID         NUMBER(9)            not null,
   ALLELE_2_IID         NUMBER(9)            not null,
   ALLELE_RELATIONSHIP_TYPE_CDE VARCHAR2(10)         not null,
   ALLELE_RELATIONSHIP_REASON_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_RELATIONSHIP primary key (ALLELE_RELATIONSHIP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_RELATIONSHIP unique (ALLELE_1_IID, ALLELE_2_IID, ALLELE_RELATIONSHIP_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP is
'A specific pair or set of Alleles that are connected to each other for a specific context/reason.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.ALLELE_RELATIONSHIP_IID is
'A system generated identifier (surrogate key) that uniquely represents a specific relationships between alleles within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.ALLELE_1_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.ALLELE_2_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  This represents a secondary reference to an allele in a specific allele relationship (pair).'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.ALLELE_RELATIONSHIP_TYPE_CDE is
'A valid value to represent a specific kind of relationship that may exists between alleles. Values are RENAME = Renamed Alleles, and SEQREF = Sequence Reference Alleles'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.ALLELE_RELATIONSHIP_REASON_TXT is
'A textual description for the reason why a particular allele relationship exists.'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_RELATIONSHIP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_RELATIONSHIP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP_STG                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG 
(
   ALLELE_RELATIONSHIP_IID NUMBER(9)            not null,
   ALLELE_1_IID         NUMBER(9)            not null,
   ALLELE_2_IID         NUMBER(9)            not null,
   ALLELE_RELATIONSHIP_TYPE_CDE VARCHAR2(10)         not null,
   ALLELE_RELATIONSHIP_REASON_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_RELATIONSHIP_STG primary key (ALLELE_RELATIONSHIP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG is
'A specific pair or set of Alleles that are connected to each other for a specific context/reason.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.ALLELE_RELATIONSHIP_IID is
'A system generated identifier (surrogate key) that uniquely represents a specific relationships between alleles within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.ALLELE_1_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.ALLELE_2_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.ALLELE_RELATIONSHIP_TYPE_CDE is
'A valid value to represent a specific kind of relationship that may exists between alleles. Values are RENAME = Renamed Alleles, and SEQREF = Sequence Reference Alleles'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.ALLELE_RELATIONSHIP_REASON_TXT is
'A textual description for the reason why a particular allele relationship exists.'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP_TYPE                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE 
(
   ALLELE_RELATIONSHIP_TYPE_CDE VARCHAR2(10)         not null,
   ALLELE_RELATIONSHIP_TYPE_NME VARCHAR2(50)         not null,
   ALLELE_RELATIONSHIP_TYPE_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_RELATIONSHIP_TYPE primary key (ALLELE_RELATIONSHIP_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_RELATIONSHIP_TYPE unique (ALLELE_RELATIONSHIP_TYPE_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE is
'The context or purpose in defining a particular pair of Alleles.  For example when an Allele gets renamed or deleted there is a ''to'' and ''from'' pairing between two specific Alleles.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE.ALLELE_RELATIONSHIP_TYPE_CDE is
'A valid value to represent a specific kind of relationship that may exists between alleles. Values are RENAME = Renamed Alleles, and SEQREF = Sequence Reference Alleles'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE.ALLELE_RELATIONSHIP_TYPE_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Relationship Type is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE.ALLELE_RELATIONSHIP_TYPE_TXT is
'A more expansive explanation to describe the purpose of a particular code value that may not be entirely intuitive based on the label/name'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_REVIEW_STATUS                                  */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS 
(
   ALLELE_REVIEW_STATUS_CDE VARCHAR2(50)         not null,
   ALLELE_REVIEW_STATUS_NME VARCHAR2(100)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_REVIEW_STATUS primary key (ALLELE_REVIEW_STATUS_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS is
'The valid values for an Allele during the curation review process.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS.ALLELE_REVIEW_STATUS_CDE is
'A valid value to represent a specific review status for an allele used during the curation/validation processes.  Example values include AUTO_DENY, AUTO_PROMOTE, RELEASE_STATUS_MISMATCH, etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS.ALLELE_REVIEW_STATUS_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Review Status code is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_SEARCH_DETERMINANT                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT 
(
   ALLELE_IID           NUMBER(9)            not null,
   SEARCH_DETERMINANT_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_SEARCH_DETERMINANT primary key (ALLELE_IID, SEARCH_DETERMINANT_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT is
'A unique combination of a specific Allele and a specific Search Determinant'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT.SEARCH_DETERMINANT_IID is
'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,SELECT,UPDATE,DELETE on GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_SEROLOGY                                       */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_SEROLOGY 
(
   ALLELE_IID           NUMBER(9)            not null,
   SEROLOGY_IID         NUMBER(9)            not null,
   SEROLOGY_CONTEXT_CDE VARCHAR2(10)         not null,
   EXPERT_ASSIGNED_SRC_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_SEROLOGY primary key (SEROLOGY_IID, ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_SEROLOGY is
'A unique combination/linkage between a specific Allele and a specific Serology.  This linkage is always in a context of Unambigous, Possible, OR Assumed AND Expert Assigned.  The Expert Assigned can be determined by IMGT or NMDP (historicaly data is always NMDP)'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.SEROLOGY_IID is
'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.SEROLOGY_CONTEXT_CDE is
'A valid value to represent a particular context used when linking Serology to Alleles.  Values include UMAMBIG = Unambiguous, POSSIBLE = Possible, ASSUME = Assumed, and  EXPERT = Expoert Assigned'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.EXPERT_ASSIGNED_SRC_CDE is
'A valid value to represent a particular context used when linking Serology to Alleles with the context of EXPERT ASSIGNED;   Values include NMDP and IMGT'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_SEROLOGY to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_SEROLOGY to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_SEROLOGY_STG                                   */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG 
(
   ALLELE_IID           NUMBER(9)            not null,
   SEROLOGY_IID         NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   SEROLOGY_CONTEXT_CDE VARCHAR2(10)         not null,
   EXPERT_ASSIGNED_SRC_CDE VARCHAR2(10),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_ALLELE_SEROLOGY_STG primary key (ALLELE_IID, SEROLOGY_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG is
'A unique combination/linkage between a specific Allele and a specific Serology.  This linkage is always in a context of Unambigous, Possible, OR Assumed AND Expert Assigned.  The Expert Assigned can be determined by IMGT or NMDP (historicaly data is always NMDP)'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.SEROLOGY_IID is
'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.SEROLOGY_CONTEXT_CDE is
'A valid value to represent a particular context used when linking Serology to Alleles.  Values include UMAMBIG = Unambiguous, POSSIBLE = Possible, ASSUME = Assumed, and  EXPERT = Expoert Assigned'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.EXPERT_ASSIGNED_SRC_CDE is
'A valid value to represent a particular context used when linking Serology to Alleles with the context of EXPERT ASSIGNED;   Values include NMDP and IMGT'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: ALLELE_STG                                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_STG 
(
   ALLELE_IID           NUMBER(9)            not null,
   ACCESSION_NUM        VARCHAR2(20),
   GENOME_DATABASE_VER_IID NUMBER(9),
   ALLELE_FIRST_RELEASE_VER_NUM VARCHAR2(10),
   ALLELE_PUBLISHED_DTE TIMESTAMP(0),
   ALLELE_LAST_UPDATE_VER_NUM VARCHAR2(10),
   DB_VER_ALLELE_REL_STATUS_TXT VARCHAR2(500),
   GENE_LOCUS_IID       NUMBER(9)            not null,
   NOMENCLATURE_FORMAT_VER_CDE VARCHAR2(10),
   ALLELE_NOMENCLATURE_TYPE_CDE VARCHAR2(10)         not null,
   LONG_FORMAT_NME      VARCHAR2(50)         not null,
   SHORT_FORMAT_NME     VARCHAR2(20),
   HLA_EXPRESSION_CHARACTER_CDE VARCHAR2(1),
   ALLELE_STATUS_CDE    VARCHAR2(10)         not null,
   CONFIRMED_IND        VARCHAR2(1)          not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   ALLELE_REVIEW_STATUS_CDE VARCHAR2(50),
   ALLELE_IN_NOM_FILE_IND VARCHAR2(1)          not null,
   ORD_ALLELE_IID       NUMBER(9),
   ALLELE_MANUAL_REVIEW_STAT_CDE VARCHAR2(50),
   constraint PK_ALLELE_STG primary key (ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.ALLELE_STG is
'A specific variation of a particular gene locus.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ACCESSION_NUM is
'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_FIRST_RELEASE_VER_NUM is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_PUBLISHED_DTE is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_LAST_UPDATE_VER_NUM is
'The date that the allele tied to the accession number was updated.  This could be an expansion of the definition or a renaming, etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.DB_VER_ALLELE_REL_STATUS_TXT is
'A short textual ''label'' or name that provides the allele status a specific database version release. Values include things like ''sequence modified'', ''new allele'', ''sequence unchanged'', etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.NOMENCLATURE_FORMAT_VER_CDE is
'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are V2 = V2 format, V3 = V3 format'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_NOMENCLATURE_TYPE_CDE is
'A valid value to represent a particular kind or type of allele nomenclature.  For the HLA family, the values are WHO and GFE.  Currently, NMDP is only persisting records with WHO nomenclature type.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.LONG_FORMAT_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.SHORT_FORMAT_NME is
'A short textual ''label'' or name (that corresponds to a valid ID) by which an Allele is known/can be recognized.  This is used for HLA Alleles, unlike the long format name which may extend to all 4 fields within the nomenclature - the short name specifically represents ONLY to field 2 and is used for legacy search purposes.  In other words, multiple long format names share the same short format name. '
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.HLA_EXPRESSION_CHARACTER_CDE is
'A single character code used as an optional suffix on HLA alleles.  Values are N = null, L = Low Cell Surface, S = Soluable, C = Cytoplasm Present,  A = Aberrant, Q = Questionable'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.CONFIRMED_IND is
'Indicates if the allele has been defined as confirmed by the source/curator.  Values are Y and N'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_REVIEW_STATUS_CDE is
'A valid value to represent a specific review status for an allele used during the curation/validation processes.  Example values include AUTO_DENY, AUTO_PROMOTE, RELEASE_STATUS_MISMATCH, etc.'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_IN_NOM_FILE_IND is
'Indicates if the allele was found in the nomenclature file during the curation/validation processes for the quarterly load'
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ORD_ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise; this is a xref to the allele iid that is assigned in the operational ALLELE table (versus the allele id assigned in the ALLELE_STG table..  '
/

comment on column GENOMIC_REF_DATA.ALLELE_STG.ALLELE_MANUAL_REVIEW_STAT_CDE is
'A valid value to represent a manual review status that can be applied to an Allele during the curation/validation processes.  Values are DENY, PROMOTE and DISABLE.'
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.ALLELE_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.ALLELE_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: BEHAVIOR_ALLELE_EXPANSION_NAME                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME 
(
   BEHAVIOR_ALLELE_EXPAN_NAME_IID NUMBER(9)            not null,
   ALLELE_EXPANSION_NME VARCHAR2(20)         not null,
   HLA_EXPRESSION_CHARACTER_CDE VARCHAR2(1),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint FK_BEHVR_ALLELE_EXPAN_NAME primary key (BEHAVIOR_ALLELE_EXPAN_NAME_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME is
'The short names (typically represented in F1 and F2 of the HLA nomenclature) that can be applicable to a specifics Behavior Allele Groupings (i.e. ARS sets); the list of said expansion name by their respective ids can vary by database version for a specific behavior allele group; This is typically referred to as encoding, when expanded into specific Alleles that share these F1 and F2 fields it is referred to as decoding.  Allele Expansions for ARS sets in Haplogic were implemented in legacy Sybase as t_antigen records.'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME.BEHAVIOR_ALLELE_EXPAN_NAME_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele expansion name used for behavior allele group within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME.ALLELE_EXPANSION_NME is
'A portion of an allele name that is applicable to a specific allele code; the level of detail is dependent upon the allele code type.  For example of the allele code is generic (G), the expansion allele names would be things like 01, 02 (representing the first field of the normenclature); when the allele code is allele specific, the expansioin allele names would be things like 01:01, 01:02 (representing first and second fields of the allele nomenclature)'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME.HLA_EXPRESSION_CHARACTER_CDE is
'A single character code used as an optional suffix on HLA alleles.  Values are N = null, L = Low Cell Surface, S = Soluable, C = Cytoplasm Present,  A = Aberrant, Q = Questionable'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: BEHAVIOR_ALLELE_GROUP                                 */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP 
(
   BEHAVIOR_ALLELE_GROUP_IID NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   BEHAVIOR_ALLELE_GROUP_NME VARCHAR2(50)         not null,
   ALLELE_GROUP_SUFFIX_CDE VARCHAR2(10)         not null,
   BEHAVIOR_CATEGORY_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_BEHAVIOR_ALLELE_GROUP primary key (BEHAVIOR_ALLELE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_BEHAVIOR_ALLELE_GROUP unique (BEHAVIOR_ALLELE_GROUP_NME, BEHAVIOR_CATEGORY_CDE, GENE_LOCUS_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP is
'Named sets of antigens. For example, ARS (Antigen Receptor Site) contains sets of equivelant alleles within the context of a search.'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.BEHAVIOR_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a behavior allele group within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.BEHAVIOR_ALLELE_GROUP_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which a Behavior Allele Group is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.ALLELE_GROUP_SUFFIX_CDE is
'A valid value to represent a specific kind of published allele group type.  Preliminary values are P = Protein Groups, G = Genomic Groups.  The ''P'' groups are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''G'' groups are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-bidning-domains.'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.BEHAVIOR_CATEGORY_CDE is
'A valid value to represent a specific kind of behavior category that can be applied to alleles.  Values include ATGNBND = Antigen Binding, KIRLGND = Kir Ligand, TCE = Tcell Epitope'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: BEHAVIOR_ALLELE_GRP_VER_EXPAN                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN 
(
   BEHVR_ALLELE_GRP_VER_EXPAN_IID NUMBER(9)            not null,
   BEHAVIOR_ALLELE_GROUP_IID NUMBER(9)            not null,
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   BEHAVIOR_ALLELE_EXPAN_NAME_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_BEHAVIOR_GRP_VER_EXPAN primary key (BEHVR_ALLELE_GRP_VER_EXPAN_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_BEHAVIOR_GRP_VER_EXPAN unique (BEHAVIOR_ALLELE_EXPAN_NAME_IID, GENOME_DATABASE_VER_IID, BEHAVIOR_ALLELE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN is
'The identity of specific allele short names that are applicable for a specific Behavior Allele Group (i.e. ARS sets)'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN.BEHAVIOR_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a behavior allele group within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN.BEHAVIOR_ALLELE_EXPAN_NAME_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele expansion name used for behavior allele group within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: BEHAVIOR_CATEGORY                                     */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY 
(
   BEHAVIOR_CATEGORY_CDE VARCHAR2(10)         not null,
   BEHAVIOR_CATEGORY_NME VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_BEHAVIOR_CATEGORY primary key (BEHAVIOR_CATEGORY_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_BEHAVIOR_CATEGORY unique (BEHAVIOR_CATEGORY_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY is
'The valid values for behavior ''types'' or categories that can be linked to groups of Alleles.  An example of a behavior category is Antigen Binding, or KIR Ligand.'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY.BEHAVIOR_CATEGORY_CDE is
'A valid value to represent a specific kind of behavior category that can be applied to alleles.  Values include ATGNBND = Antigen Binding, KIRLGND = Kir Ligand, TCE = Tcell Epitope'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY.BEHAVIOR_CATEGORY_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Behavior Category is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.BEHAVIOR_CATEGORY to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.BEHAVIOR_CATEGORY to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: BEHAVIOR_CATEGORY_GENE_LOCUS                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS 
(
   BEHAVIOR_CATEGORY_CDE VARCHAR2(10)         not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint "PK_BEHAVIOR_CATG_GENE FAMILY" primary key (BEHAVIOR_CATEGORY_CDE, GENE_LOCUS_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS is
'A unique combination of a Behavior Category and Gene Locus; this represents which Behavior Categories are applicable to specific Gene Loci'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS.BEHAVIOR_CATEGORY_CDE is
'A valid value to represent a specific kind of behavior category that can be applied to alleles.  Values include ATGNBND = Antigen Binding, KIRLGND = Kir Ligand, TCE = Tcell Epitope'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: BLOOD_TYPE                                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.BLOOD_TYPE 
(
   BLOOD_TYPE_CDE       VARCHAR2(10)         not null,
   BLOOD_TYPE_NME       VARCHAR2(50)         not null,
   BLOOD_TYPE_TXT       VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_BLOOD_TYPE primary key (BLOOD_TYPE_CDE)
         using index tablespace PULSAR_IDX
)
tablespace PULSAR
/

comment on table GENOMIC_REF_DATA.BLOOD_TYPE is
'The valid values for all known blood type (in the context of the locus ABO) that could be associated with a subject BGA (Blood Group Antigen) test result; these values can be used for both genotype and phenotype. A, B, O, and AB - AB is only applicable for phenotype.  Human blood is grouped into four types: A, B, AB, and O. Each letter refers to a kind of antigen, or protein, on the surface of red blood cells. For example, the surface of red blood cells in Type A blood has antigens known as A-antigens.'
/

comment on column GENOMIC_REF_DATA.BLOOD_TYPE.BLOOD_TYPE_CDE is
'The unique code is the ABO blood type of the person (subject) in question '
/

comment on column GENOMIC_REF_DATA.BLOOD_TYPE.BLOOD_TYPE_NME is
'This the textual description of the ABO blood type of the person (subject) in question. '
/

comment on column GENOMIC_REF_DATA.BLOOD_TYPE.BLOOD_TYPE_TXT is
'This the textual description of the ABO blood type of the person (subject) in question. '
/

comment on column GENOMIC_REF_DATA.BLOOD_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BLOOD_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.BLOOD_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BLOOD_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.BLOOD_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.BLOOD_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: BROAD_XX_ALLELE_GRP_EXPANSION                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION 
(
   XX_ALLELE_GROUP_IID  NUMBER(9)            not null,
   ALLELE_EXPANSION_NME VARCHAR2(20)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_BROAD_XX_ALLELE_GRP_EXPNSN primary key (XX_ALLELE_GROUP_IID, ALLELE_EXPANSION_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION is
'The allele expansions that are applicable to a specific Broad XX Allele Group.  This list is fairly static in nature.  '
/

comment on column GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION.XX_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents an XX Group within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION.ALLELE_EXPANSION_NME is
'A portion of an allele name that is applicable to a specific allele code; the level of detail is dependent upon the allele code type.  For example of the allele code is generic (G), the expansion allele names would be things like 01, 02 (representing the first field of the normenclature); when the allele code is allele specific, the expansioin allele names would be things like 01:01, 01:02 (representing first and second fields of the allele nomenclature)'
/

comment on column GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: COMMON_WELL_DOCUMENTED_STATUS                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS 
(
   COMMON_WELL_DOC_STATUS_CDE VARCHAR2(10)         not null,
   COMMON_WELL_DOC_STATUS_NME VARCHAR2(50)         not null,
   COMMON_WELL_DOC_STATUS_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_COMMON_WELL_DOCUMENTED_STAT primary key (COMMON_WELL_DOC_STATUS_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_COMMON_WELL_DOC_STATUS unique (COMMON_WELL_DOC_STATUS_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS is
'The valid values for Common Well Documented that can be associated with an Allele.  Values are COMMON, WELLDOC, and NOTCWD.  These values are provided by IMGT for HLA alleles.'
/

comment on column GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS.COMMON_WELL_DOC_STATUS_CDE is
'A valid value to represent a specific status for a common well documented allele (applicable to HLA gene locus).  Examples are COMMON, WELLDOC, and NOTCWD
'
/

comment on column GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS.COMMON_WELL_DOC_STATUS_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which  a Common Well Documented Status is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS.COMMON_WELL_DOC_STATUS_TXT is
'A more expansive explanation to describe the purpose of a particular code value that may not be entirely intuitive based on the label/name'
/

comment on column GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: CONFIGURATION_TYPE                                    */
/*==============================================================*/
create table GENOMIC_REF_DATA.CONFIGURATION_TYPE 
(
   CONFIGURATION_TYPE_CDE VARCHAR2(20)         not null,
   CONFIGURATION_TYPE_NME VARCHAR2(50)         not null,
   CONFIGURATION_TYPE_TXT VARCHAR2(100),
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   constraint PK_CONFIGURATION_TYPE primary key (CONFIGURATION_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.CONFIGURATION_TYPE is
'A high level categorization for configurations for which multiple types of variable types can be assigned or associated related to a specific variable instances/configurations for Genomic Reference Data.  The initial type defined was NOMFILE_EXCL representing parameters that need to be excluded when processing the Allele Nomenclature File. '
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_TYPE.CONFIGURATION_TYPE_CDE is
'A valid value to represent a particular high level categorization of a configuration to be managed for Genomic Reference Data.  For example NOMFILE_EXCL represents a Nomenclature File Exclusions within which it may be possible to have more than one kindn of variable type defined.  Current the case is only one type is applicable - GENELOCUS and multiple instances of configurations (i.e. more than one gene locus) can be defined within this broader category of NOMFILE_EXCL.'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_TYPE.CONFIGURATION_TYPE_NME is
'A name of label that can be linked to better describe/represent a configuration type code.'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_TYPE.CONFIGURATION_TYPE_TXT is
'A more expansive explanation to describe the purpose of a particular code value that may not be entirely intuitive based on the label/name'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.CONFIGURATION_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.CONFIGURATION_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: CONFIGURATION_VARIABLE_TYPE                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE 
(
   CONFIG_VARIABLE_TYPE_CDE VARCHAR2(10)         not null,
   CONFIG_VARIABLE_TYPE_NME VARCHAR2(50)         not null,
   CONFIG_VARIABLE_TYPE_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_CONFIGURATION_VARIABLE_TYPE primary key (CONFIG_VARIABLE_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE is
'A classification or taxonomy used to define specific variable instances/configurations for Genomic Reference Data'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE.CONFIG_VARIABLE_TYPE_CDE is
'A valid value to represent a particular kind or type of variable being managed for Genomic Reference Data.  For example GENELOCUS is a CDE with a corresponding name of Gene Locus and used as kind of variable with configuration type NOMFILE_EXCL.  '
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE.CONFIG_VARIABLE_TYPE_NME is
'A name or label used to add clarity to a corresponding variable CDE'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE.CONFIG_VARIABLE_TYPE_TXT is
'A more detailed explanation as to how this variable is used'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: CURATOR_DATA                                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.CURATOR_DATA 
(
   CURATOR_DATA_IID     NUMBER(9)            not null,
   GENE_FAMILY_CDE      VARCHAR2(10),
   DATA_FILE_NME        VARCHAR2(50),
   DATA_FILE_GROUP_NME  VARCHAR2(50)         not null,
   DATA_FILE_DESCRIPTION_TXT VARCHAR2(100),
   DATA_FILE_LOCATION_URL VARCHAR2(256),
   COMMIT_FILE_LOCATION_URL VARCHAR2(256),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_CURATOR_DATA primary key (CURATOR_DATA_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.CURATOR_DATA is
'Metadata related to data that we curate from various organizations to support Gene Families.  Currently, we are limited to curating data from IMGT for HLA gene family.  This represents the name of the file, it''s location/URL, etc.'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA.CURATOR_DATA_IID is
'A system generated identifier (surrogate key) that uniquely represents an Curator Data record within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.CURATOR_DATA to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.CURATOR_DATA to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: CURATOR_DATA_NOTIFICATION                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION 
(
   CURATOR_DATA_NOTIFICATION_IID NUMBER(9)            not null,
   CURATOR_DATA_IID     NUMBER(9)            not null,
   NOTIFICATION_TYPE_CDE VARCHAR2(10)         not null,
   EMAIL_NOTIFICATION_USER_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_CURATOR_DATA_NOTIFICATION primary key (CURATOR_DATA_NOTIFICATION_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION is
'Metadata related to the release of curated data, also referred to as database version.  Currently, we are limited to curating data from IMGT for HLA gene family.  This represents the ingestion process and states for said file version.'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION.CURATOR_DATA_IID is
'A system generated identifier (surrogate key) that uniquely represents an Curator Data record within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: CURATOR_DATA_RELEASE                                  */
/*==============================================================*/
create table GENOMIC_REF_DATA.CURATOR_DATA_RELEASE 
(
   CURATOR_DATA_RELEASE_IID NUMBER(9)            not null,
   CURATOR_DATA_IID     NUMBER(9)            not null,
   COMMIT_FILE_TS       TIMESTAMP,
   COMMIT_DESCRIPTION_TXT VARCHAR2(2000),
   DOWNLOAD_STATUS_NME  VARCHAR2(50)         not null,
   REVIEW_STATUS_NME    VARCHAR2(50)         not null,
   FILE_LOCATION_TXT    VARCHAR2(200),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   RELEASE_ERROR_TXT    VARCHAR2(500),
   constraint PK_CURATOR_DATA_RELEASE primary key (CURATOR_DATA_RELEASE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_RELEASE.CURATOR_DATA_RELEASE_IID is
'A system generated identifier (surrogate key) that uniquely represents an Curator Data Release record within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_RELEASE.CURATOR_DATA_IID is
'A system generated identifier (surrogate key) that uniquely represents an Curator Data record within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_RELEASE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_RELEASE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_RELEASE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.CURATOR_DATA_RELEASE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.CURATOR_DATA_RELEASE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.CURATOR_DATA_RELEASE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: DESGNTN_RELATIONSHIP_TYPE                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE 
(
   DESGNTN_RELATIONSHIP_TYPE_CDE VARCHAR2(10)         not null,
   DESGNTN_RELATIONSHIP_TYPE_NME VARCHAR2(50)         not null,
   DESGNTN_RELATIONSHIP_TYPE_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_DESGNTN_RELATIONSHIP_TYPE primary key (DESGNTN_RELATIONSHIP_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_DESGNTN_RELATIO_DESGNTN_ unique (DESGNTN_RELATIONSHIP_TYPE_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE is
'The valid values that represent the context by which one Allele Code (MAC) Designation is related to another Allele Code (MAC) designation.  Currently, the known values for designation relationship types are RENAME and PREFRPT (preferred to report) and VERSION (distinguishing V2 from V3 formats).'
/

comment on column GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE.DESGNTN_RELATIONSHIP_TYPE_CDE is
'A valid value to represent a particular type or classification of relationship between 2 Allele Code (MAC) designations.  Values are RENAME, PREFRPT (preferred to report) and VERSION (v2 TO v3 formatting)'
/

comment on column GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: DESIGNATION_BROAD_XX_GROUP                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP 
(
   ALLELE_CODE_DESIGNATION_IID NUMBER(9)            not null,
   XX_ALLELE_GROUP_IID  NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_DESIGNATION_BROAD_XX_GROUP primary key (ALLELE_CODE_DESIGNATION_IID, XX_ALLELE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP is
'The mapping of Allele Code (MAC) Designations to Broad XX Allele Groups; Broad XX Allele Groups are ''translated'' to MAC Designations (and identified via shortname in t_antigen for legacy).'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP.ALLELE_CODE_DESIGNATION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP.XX_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents an XX Group within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: DESIGNATION_PUBL_ALLELE_GROUP                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP 
(
   PUBLISHED_ALLELE_GROUP_IID NUMBER(9)            not null,
   ALLELE_CODE_DESIGNATION_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_DESIGNATION_PUBL_ALLELE_GRO primary key (PUBLISHED_ALLELE_GROUP_IID, ALLELE_CODE_DESIGNATION_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP is
'The mapping of Allele Code (MAC) Designations to P & G Groups; P & G Groups are ''translated'' to MAC Designations (and identified via shortname in t_antigen for legacy).'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP.PUBLISHED_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP.ALLELE_CODE_DESIGNATION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: DESIGNATION_SEARCH_DTRM                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM 
(
   ALLELE_CODE_DESIGNATION_IID NUMBER(9)            not null,
   SEARCH_DETERMINANT_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_DESIGNATION_SEARCH_DTRM primary key (ALLELE_CODE_DESIGNATION_IID, SEARCH_DETERMINANT_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM is
'The valid search determinants that are defined for a specific Allele Code (MAC) Designation; this is currently determined by the ''majority'' value from the constituent Alleles connected to said MAC Designation.'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM.ALLELE_CODE_DESIGNATION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM.SEARCH_DETERMINANT_IID is
'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: DESIGNATION_TEST_RESULT_GROUP                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP 
(
   ALLELE_CODE_DESIGNATION_IID NUMBER(9)            not null,
   TEST_RESULT_ALLELE_GRP_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_DESIGNATION_TEST_RESULT_GRO primary key (ALLELE_CODE_DESIGNATION_IID, TEST_RESULT_ALLELE_GRP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP is
'The mapping of Allele Code (MAC) Designations to Test Result Allele Groups'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP.ALLELE_CODE_DESIGNATION_IID is
'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP.TEST_RESULT_ALLELE_GRP_IID is
'A system generated identifier (surrogate key) that uniquely represents a Test Level Allele Group within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: EXPERT_ASSIGNED_SOURCE                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE 
(
   EXPERT_ASSIGNED_SRC_CDE VARCHAR2(10)         not null,
   EXPERT_ASSIGNED_SRC_NME VARCHAR2(50)         not null,
   EXPERT_ASSIGNED_SRC_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_EXPERT_ASSIGNED_SOURCE primary key (EXPERT_ASSIGNED_SRC_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE is
'The valid values that represent the party who has provided the "Expert Assigned'' classification of a serology in its contextual linkage to DNA Alleles.  Values are IMGT (from the DNA_SER_TXT published file) and NMDP (representing legacy data).'
/

comment on column GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE.EXPERT_ASSIGNED_SRC_CDE is
'A valid value to represent a particular context used when linking Serology to Alleles with the context of EXPERT ASSIGNED;   Values include NMDP and IMGT'
/

comment on column GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE.EXPERT_ASSIGNED_SRC_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which the specific context of Expert Assigned Source is known/can be recognized.  '
/

comment on column GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE.EXPERT_ASSIGNED_SRC_TXT is
'A textual description that provides additional context or explanation for the serology context source and how it should be interpreted'
/

comment on column GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: EXPR_CHAR_SET                                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.EXPR_CHAR_SET 
(
   EXPR_CHAR_SET_IID    NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   EXPR_CHAR_SET_NME    VARCHAR2(20)         not null,
   ALLELE_GROUP_SUFFIX_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_EXPR_CHAR_SET primary key (EXPR_CHAR_SET_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_EXPR_CHAR_SET_EXPR_CHA unique (EXPR_CHAR_SET_NME, GENE_LOCUS_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.EXPR_CHAR_SET is
'A legacy paradigm/requirement to support Haplogic - because we persist rows in t_antigen for alleles with and without their expression characters this EXP set is a mechanism to identify that those records are considered equivalent.  With the new design, expression characters are optional and the records are managed by database version so there is no need to define duplicate records.  Once Haplogic is able to consume the new paradigm of data, this concept and implementation can be eliminated.  '
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET.ALLELE_GROUP_SUFFIX_CDE is
'A valid value to represent a specific kind of published allele group type.  Preliminary values are P = Protein Groups, G = Genomic Groups.  The ''P'' groups are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''G'' groups are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-bidning-domains.'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.EXPR_CHAR_SET to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.EXPR_CHAR_SET to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: EXPR_CHAR_SET_VER_MEMBER                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER 
(
   EXPR_CHAR_SET_VER_MBR_IID NUMBER(9)            not null,
   EXPR_CHAR_SET_IID    NUMBER(9)            not null,
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_EXPR_CHAR_SET_VER_MEMBER primary key (EXPR_CHAR_SET_VER_MBR_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_EXPR_CHAR_SET_VER_MEMBER unique (EXPR_CHAR_SET_IID, GENOME_DATABASE_VER_IID, ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER is
'A single allele from each database version which has an expression character (excluding N) will be listed as the set member, Haplogic can then leverage the allele name with and without the expression character until no this process can be retired.'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENE_FAMILY                                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENE_FAMILY 
(
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   GENE_FAMILY_NME      VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_GENE_FAMILY primary key (GENE_FAMILY_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_GENE_FAMILY unique (GENE_FAMILY_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENE_FAMILY is
'The sets of Genes that NMDP concerns itself with.  As of May 2011, there are only two gene families defined - HLA (Human Leukocyte Antigen) and KIR (Killer Immunoglobulin-Like Receptors).  Candidate gene families would include ABO, CCR5, and SNP'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY.GENE_FAMILY_NME is
'The name for a given gene family.  For example for HLA the description is Human Leukocyte Antigen'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.GENE_FAMILY to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENE_FAMILY to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENE_FAMILY_OBJECT_TYPE                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE 
(
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   GENOMIC_REF_OBJECT_TYPE_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENE_FAMILY_OBJECT_TYPE primary key (GENE_FAMILY_CDE, GENOMIC_REF_OBJECT_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE is
'The object types that are valid for a specific Gene Family.  For example the object types of Allele, Serology, MAC Designation, XX Groups, and Test Result Groups are valid for HLA; only Allele and Test Result Groups are valid for KIR, and two other distinct object types of genotype and phenotype are the valid types for BGA.   '
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE.GENOMIC_REF_OBJECT_TYPE_CDE is
'A valid value to represent a particular kind or type of Genomic Reference Object; valid types may vary by gene family.  Values are ALLELE = Allele, MAC = Allele Code Designation, SER = Serology, XXGRP = XX Allele Group, and TSTRSLT = Test Result Allele Group'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENE_LOCUS                                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENE_LOCUS 
(
   GENE_LOCUS_IID       NUMBER(9)            not null,
   GENE_LOCUS_LONG_NME  VARCHAR2(50)         not null,
   GENE_LOCUS_SHORT_NME VARCHAR2(20),
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   EFF_GENOME_DATABASE_VER_IID NUMBER(9),
   PREVIOUS_GENE_LOCUS_IID NUMBER(9),
   MHC_CLASSIFICATION_CDE VARCHAR2(2),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   LOCUS_ALTERNATE_SHORT_NME VARCHAR2(20),
   OPERATIONAL_IND      VARCHAR2(1)          not null,
   constraint PK_GENE_LOCUS primary key (GENE_LOCUS_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_GENE_LOCUS unique (GENE_LOCUS_LONG_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENE_LOCUS is
'The valid value of Gene Locus within a given Gene Family.  Examples within the HLA family are HLA-A, HLA-B, HLA-C, HLA-DRB1, etc.  '
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.GENE_LOCUS_LONG_NME is
'A comprehensive textual ''label'' or name (that corresponds to a valid code) by which a Gene Locus is known/can be recognized; For example HLA-A would be considered a long/comprehensive name, where A would be considered the short name (always within the context of the Gene Family)
'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.GENE_LOCUS_SHORT_NME is
'A shorter textual ''label'' or name (that corresponds to a valid code) by which a Gene Locus is known/can be recognized; For example HLA-A would be considered a long/comprehensive name, where A would be considered the short name (always within the context of the Gene Family)
'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.EFF_GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise; this id represents the first database version for which a gene locus was introduced.'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.PREVIOUS_GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise; this particular reference represents the id by which the gene locus was previously known.'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.MHC_CLASSIFICATION_CDE is
'A valid value to represent a specific kind of MHC classification (applicable ONLY to the HLA Gene Family) (e.g. I = Class I, II = Class II)'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.LOCUS_ALTERNATE_SHORT_NME is
'A shorter textual ''label'' or name (that corresponds to a valid code) by which a Gene Locus is known/can be recognized; this alternate name is frequently a ''intitial/temporary'' name give to a gene locus; For example HLA-B also has it''s old alias BPR versus the more permanent short name which is B.  Both names would be considered valid'
/

comment on column GENOMIC_REF_DATA.GENE_LOCUS.OPERATIONAL_IND is
'An indicator as to whether or not a specific gene locus has been determined to be operational (i.e. NMDP is leveraging this gene locus in it''s operational systems)'
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.GENE_LOCUS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENE_LOCUS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOME_DATABASE_VERSION                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION 
(
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   DATABASE_VERSION_TXT VARCHAR2(20)         not null,
   DATABASE_VER_PUBLISHED_DTE TIMESTAMP(0)         not null,
   DATABASE_VER_PUBLISHED_URL VARCHAR2(256)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENOME_DATABASE_VERSION primary key (GENOME_DATABASE_VER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION is
'An historical representation of the metadata assocated with the external file receipt.  Currently this is the ''Quarterly Update'' of alleles from IMGT for HLA data, in the future updates for other gene families may occur at a different cadence.'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.DATABASE_VERSION_TXT is
'The description given to a published database. the name has historically followed the following pattern: <major release number>.<minor release number>.<patch/correction> the name is established by committee'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.DATABASE_VER_PUBLISHED_DTE is
'The date that the database was published.  Manually entered based on the date associated with the file at the EBI website.'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.DATABASE_VER_PUBLISHED_URL is
'The github link for the curator file'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.GENOME_DATABASE_VERSION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOME_DATABASE_VERSION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOME_DATABASE_VERSION_STG                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG 
(
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   DATABASE_VERSION_TXT VARCHAR2(20)         not null,
   DATABASE_VER_PUBLISHED_DTE TIMESTAMP(0)         not null,
   DATABASE_VER_PUBLISHED_URL VARCHAR2(256)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENOME_DATABASE_VERSION_STG primary key (GENOME_DATABASE_VER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG is
'An historical representation of the metadata assocated with the external file receipt.  Currently this is the ''Quarterly Update'' of alleles from IMGT for HLA data, in the future updates for other gene families may occur at a different cadence.'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.DATABASE_VERSION_TXT is
'The description given to a published database. the name has historically followed the following pattern: <major release number>.<minor release number>.<patch/correction> the name is established by committee'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.DATABASE_VER_PUBLISHED_DTE is
'The date that the database was published.  Manually entered based on the date associated with the file at the EBI website.'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.DATABASE_VER_PUBLISHED_URL is
'The github link for the curator file'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOMIC_REFERENCE_OBJECT                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT 
(
   GENOMIC_REF_OBJECT_IID NUMBER(9)            not null,
   GENOMIC_REF_OBJECT_TYPE_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_GENOMIC_REFERENCE_OBJECT primary key (GENOMIC_REF_OBJECT_TYPE_CDE, GENOMIC_REF_OBJECT_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT is
'An abstraction to represent several distinct object types that have a common path of business rules, validation or processes for which they share. For examples instances of Serology and Allele are both considered GRO for the HLA Gene Family.  Their unqiue identifier is always in the context of their object type. '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT.GENOMIC_REF_OBJECT_IID is
'A system generated identifier (surrogate key) that uniquely represents the ''originating'' id for a concept that is implemented via the Genomic Reference Object. '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT.GENOMIC_REF_OBJECT_TYPE_CDE is
'A valid value to represent a particular kind or type of Genomic Reference Object; valid types may vary by gene family.  Values are ALLELE = Allele, MAC = Allele Code Designation, SER = Serology, XXGRP = XX Allele Group, and TSTRSLT = Test Result Allele Group'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOMIC_REFERENCE_OBJECT_TYPE                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE 
(
   GENOMIC_REF_OBJECT_TYPE_CDE VARCHAR2(10)         not null,
   GENOMIC_REF_OBJECT_TYPE_NME VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_GENOMIC_REFERENCE_OBJ_TYPE primary key (GENOMIC_REF_OBJECT_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_GENOMIC_REFERENCE_OBJ_TYPE unique (GENOMIC_REF_OBJECT_TYPE_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE is
'The valid list of object types that can be represented as a Genomic Reference Object.  These types may vary by Gene Family.  Currently the types for HLA include '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE.GENOMIC_REF_OBJECT_TYPE_CDE is
'A valid value to represent a particular kind or type of Genomic Reference Object; valid types may vary by gene family.  Values are ALLELE = Allele, MAC = Allele Code Designation, SER = Serology, XXGRP = XX Allele Group, and TSTRSLT = Test Result Allele Group'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE.GENOMIC_REF_OBJECT_TYPE_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which a Genomic Reference Object is known/can be recognized.  For Example, Allele, Allele Code Designation, etc.'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOMIC_REF_DATA_CONFIGURATION                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION 
(
   GENOMIC_REF_DATA_CONFIG_IID NUMBER(9)            not null,
   CONFIGURATION_TYPE_CDE VARCHAR2(20),
   CONFIG_VARIABLE_TYPE_CDE VARCHAR2(10),
   CONFIGURATION_VARIABLE_IID NUMBER(9),
   CONFIGURATION_VARIABLE_CDE VARCHAR2(10),
   CONFIGURATION_VARIABLE_NME VARCHAR2(50),
   CONFIGURATION_VARIABLE_TXT VARCHAR2(2000),
   CONFIGURATION_VARIABLE_IND VARCHAR2(1),
   CONFIGURATION_VARIABLE_DTE TIMESTAMP(0),
   CONFIGURATION_VARIABLE_TS TIMESTAMP,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENOMIC_REF_DATA_CONFIGURAT primary key (GENOMIC_REF_DATA_CONFIG_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION is
'A configuration/variable that is valid to manage for Genomic Reference Data '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.GENOMIC_REF_DATA_CONFIG_IID is
'A system generated identifier (surrogate key) that uniquely represents a configruation for genomic refererence data within the GRD.'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_TYPE_CDE is
'A valid value to represent a particular high level categorization of a configuration to be managed for Genomic Reference Data.  For example NOMFILE_EXCL represents a Nomenclature File Exclusions within which it may be possible to have more than one kindn of variable type defined.  Current the case is only one type is applicable - GENELOCUS and multiple instances of configurations (i.e. more than one gene locus) can be defined within this broader category of NOMFILE_EXCL.'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIG_VARIABLE_TYPE_CDE is
'A valid value to represent a particular kind or type of variable being managed for Genomic Reference Data.  For example GENELOCUS is a CDE with a corresponding name of Gene Locus and used as kind of variable with configuration type NOMFILE_EXCL.  '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_VARIABLE_IID is
'An instance value of a variable type that is stored as an IID'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_VARIABLE_CDE is
'An instance value of a variable type that is stored as an CDE'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_VARIABLE_NME is
'An instance value of a variable type that is stored as an NME'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_VARIABLE_TXT is
'An instance value of a variable type that is stored as an TXT'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_VARIABLE_IND is
'An instance value of a variable type that is stored as an IND'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_VARIABLE_DTE is
'An instance value of a variable type that is stored as a DTE'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CONFIGURATION_VARIABLE_TS is
'An instance value of a variable type that is stored as an TS'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOMIC_REF_OBJECT_STATUS                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS 
(
   GENOMIC_REF_OBJECT_STATUS_CDE VARCHAR2(10)         not null,
   GENOMIC_REF_OBJECT_STATUS_NME VARCHAR2(50)         not null,
   GENOMIC_REF_OBJECT_STATUS_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_GENOMIC_REF_OBJECT_STATUS primary key (GENOMIC_REF_OBJECT_STATUS_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_ALLELE_STATUS_DEF unique (GENOMIC_REF_OBJECT_STATUS_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS is
'The valid values for statuses that can be associated/linked to Alleles, Allele Code Designations and/or XX Allele Groups'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS.GENOMIC_REF_OBJECT_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS.GENOMIC_REF_OBJECT_STATUS_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Status is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS.GENOMIC_REF_OBJECT_STATUS_TXT is
'A more expansive explanation to describe the purpose of a particular code value that may not be entirely intuitive based on the label/name'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOMIC_REF_OBJ_LEGACY_XREF                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF 
(
   GEN_REF_OBJ_LEGACY_XREF_IID NUMBER(9)            not null,
   GENOMIC_REF_OBJECT_IID NUMBER(9)            not null,
   GENOMIC_REF_OBJECT_TYPE_CDE VARCHAR2(10)         not null,
   ANTIGEN_EID          NUMBER(9)            not null,
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   ACCESSION_NUM        VARCHAR2(20)         not null,
   NOMENCLATURE_FORMAT_VER_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENOMIC_REF_OBJ_LEGACY_XREF primary key (GEN_REF_OBJ_LEGACY_XREF_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_REF_OBJ_LGCY_XREF_01 unique (GENOMIC_REF_OBJECT_TYPE_CDE, ANTIGEN_EID, GENOME_DATABASE_VER_IID, NOMENCLATURE_FORMAT_VER_CDE, ACCESSION_NUM)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_REF_OBJ_LGCY_XREF_02 unique (GENOMIC_REF_OBJECT_IID, GENOMIC_REF_OBJECT_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF is
'A cross reference mapping structure required to support the legacy source to GRD target mappings processes.'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.GENOMIC_REF_OBJECT_IID is
'A system generated identifier (surrogate key) that uniquely represents the ''originating'' id for a concept that is implemented via the Genomic Reference Object. '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.GENOMIC_REF_OBJECT_TYPE_CDE is
'A valid value to represent a particular kind or type of Genomic Reference Object; valid types may vary by gene family.  Values are ALLELE = Allele, MAC = Allele Code Designation, SER = Serology, XXGRP = XX Allele Group, and TSTRSLT = Test Result Allele Group'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.ANTIGEN_EID is
'A system generated identifier (surrogate key) that uniquely represents a legacy (sybase) Antigen record within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.ACCESSION_NUM is
'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.NOMENCLATURE_FORMAT_VER_CDE is
'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are V2 = V2 format, V3 = V3 format'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,SELECT,UPDATE,DELETE on GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOTYPE                                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOTYPE 
(
   GENOTYPE_IID         NUMBER(9)            not null,
   HAPLOTYPE_1_IID      NUMBER(9)            not null,
   HAPLOTYPE_2_IID      NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENOTYPE primary key (GENOTYPE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOTYPE is
'Identifies a pair of Haplotypes for a specific locus.  Pair of haplotypes representing the mother and father portions are combined per entry. (Genetic code/makeup)  

'
/

comment on column GENOMIC_REF_DATA.GENOTYPE.GENOTYPE_IID is
'A system generated identifier (surrogate key) that uniquely represents a genotype within the GRD.'
/

comment on column GENOMIC_REF_DATA.GENOTYPE.HAPLOTYPE_1_IID is
'A system generated identifier (surrogate key) that uniquely represents a the first of two haplotypes that define a genotype within GRD. '
/

comment on column GENOMIC_REF_DATA.GENOTYPE.HAPLOTYPE_2_IID is
'A system generated identifier (surrogate key) that uniquely represents a the second of two haplotypes that define a genotype within the GRD. '
/

comment on column GENOMIC_REF_DATA.GENOTYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOTYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOTYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOTYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.GENOTYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOTYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOTYPE_LIST                                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOTYPE_LIST 
(
   GENOTYPE_LIST_IID    NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENOTYPE_LIST primary key (GENOTYPE_LIST_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOTYPE_LIST is
'Contains a rollup structure for grouping together genotypes in a single list.  Protein based list of diplotypes, aka pairs of haplotypes.  This represent ambiguity in the definition of a genotype.  These are locus specific.'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST.GENOTYPE_LIST_IID is
'A system generated identifier (surrogate key) that uniquely represents a genotype list within the GRD.'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GENOTYPE_LIST to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOTYPE_LIST to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GENOTYPE_LIST_GENOTYPE                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE 
(
   GENOTYPE_LIST_IID    NUMBER(9)            not null,
   GENOTYPE_IID         NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GENOTYPE_LIST_GENOTYPE primary key (GENOTYPE_LIST_IID, GENOTYPE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE is
'Contains a rollup of Genotypes to a Genotype List (Genotype_List_IID).'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE.GENOTYPE_LIST_IID is
'A system generated identifier (surrogate key) that uniquely represents a genotype list within the GRD.'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE.GENOTYPE_IID is
'A system generated identifier (surrogate key) that uniquely represents a genotype within the GRD.'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GROUP_MISMATCH                                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.GROUP_MISMATCH 
(
   GROUP_MISMATCH_IID   NUMBER(9)            not null,
   GROUP_REVIEW_STATUS_CDE VARCHAR2(50)         not null,
   PUBLISHED_GROUP_TYPE_CDE VARCHAR2(10)         not null,
   STG_GROUP_IID        NUMBER(9),
   ORD_GROUP_IID        NUMBER(9),
   NOM_GROUP_IID        NUMBER(9),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GROUP_MISMATCH primary key (GROUP_MISMATCH_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GROUP_MISMATCH is
'A P &G group mismatch when comparing content of Comprehensive Allele (CA) file, the P&G nom files, with data in the staging (STG) and operational (ORD) tables.  This is used to resolve ingestion issues from curated data on published allele groups'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.GROUP_MISMATCH_IID is
'A system generated identifier (surrogate key) that uniquely represents a group mismatch record within GRD.'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.GROUP_REVIEW_STATUS_CDE is
'A valid value to represent a review status that can be applied to P or G groups during the curation/validation processes.  Examples of valid values include NEW_GROUP, GROUP_REMOVED, NAME_MISSING_FROM_NOM'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.PUBLISHED_GROUP_TYPE_CDE is
'A valid value to represent a specific kind of published allele group type.  Preliminary values are PGRP = Protein Groups, GGRP = Genomic Groups.  The ''P'' groups are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''G'' groups are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-bidning-domains.'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.STG_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.ORD_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GROUP_MISMATCH to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GROUP_MISMATCH to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GROUP_MISMATCH_MEMBER                                 */
/*==============================================================*/
create table GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER 
(
   GROUP_MISMATCH_MEMBER_IID NUMBER(9)            not null,
   GROUP_MISMATCH_IID   NUMBER(9)            not null,
   STG_ALLELE_IID       NUMBER(9),
   ORD_ALLELE_IID       NUMBER(9),
   NOM_MEMBER_IID       NUMBER(9),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GROUP_MISMATCH_MEMBER primary key (GROUP_MISMATCH_MEMBER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER is
'A P& G group member mismatch when comparing content of Comprehensive Allele (CA) file, the P&G nom files, with data in the staging (STG) and operational (ORD) tables.  This is used to resolve ingestion issues from curated data on published allele group memberships'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.GROUP_MISMATCH_MEMBER_IID is
'A system generated identifier (surrogate key) that uniquely represents a group mismatchmember record within GRD.'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.GROUP_MISMATCH_IID is
'A system generated identifier (surrogate key) that uniquely represents a group mismatch record within GRD.'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.STG_ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.ORD_ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: GROUP_REVIEW_STATUS                                   */
/*==============================================================*/
create table GENOMIC_REF_DATA.GROUP_REVIEW_STATUS 
(
   GROUP_REVIEW_STATUS_CDE VARCHAR2(50)         not null,
   GROUP_REVIEW_STATUS_NME VARCHAR2(100)        not null,
   GROUP_REVIEW_STATUS_TXT VARCHAR2(500),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_GROUP_REVIEW_STATUS primary key (GROUP_REVIEW_STATUS_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.GROUP_REVIEW_STATUS is
'The valid values for P&G groups for review status for curated data in staging tables.'
/

comment on column GENOMIC_REF_DATA.GROUP_REVIEW_STATUS.GROUP_REVIEW_STATUS_CDE is
'A valid value to represent a review status that can be applied to P or G groups during the curation/validation processes.  Examples of valid values include NEW_GROUP, GROUP_REMOVED, NAME_MISSING_FROM_NOM'
/

comment on column GENOMIC_REF_DATA.GROUP_REVIEW_STATUS.GROUP_REVIEW_STATUS_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Group Review code is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.GROUP_REVIEW_STATUS.GROUP_REVIEW_STATUS_TXT is
'An embellished purpose or description to provide additional context for a specific group review status code'
/

comment on column GENOMIC_REF_DATA.GROUP_REVIEW_STATUS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GROUP_REVIEW_STATUS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.GROUP_REVIEW_STATUS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.GROUP_REVIEW_STATUS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.GROUP_REVIEW_STATUS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.GROUP_REVIEW_STATUS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: HAPLOTYPE                                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.HAPLOTYPE 
(
   HAPLOTYPE_IID        NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_HAPLOTYPE primary key (HAPLOTYPE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.HAPLOTYPE is
'Identifies a list of alleles contained within a specific haplotype. Each phenotype would have two of these per locus, one for the mother side and one for the father side.'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE.HAPLOTYPE_IID is
'A system generated identifier (surrogate key) that uniquely represents a haplotype within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,DELETE,SELECT,UPDATE on GENOMIC_REF_DATA.HAPLOTYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.HAPLOTYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: HAPLOTYPE_MEMBER                                      */
/*==============================================================*/
create table GENOMIC_REF_DATA.HAPLOTYPE_MEMBER 
(
   HAPLOTYPE_IID        NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_HAPLOTYPE_MEMBER primary key (HAPLOTYPE_IID, ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.HAPLOTYPE_MEMBER is
'A specific allele that is part of a haplotype, there would be a single allele for each gene locus for a single haplotype.'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE_MEMBER.HAPLOTYPE_IID is
'A system generated identifier (surrogate key) that uniquely represents a haplotype within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE_MEMBER.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE_MEMBER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE_MEMBER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE_MEMBER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.HAPLOTYPE_MEMBER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.HAPLOTYPE_MEMBER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.HAPLOTYPE_MEMBER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: HLA_EXPRESSION_CHARACTER                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER 
(
   HLA_EXPRESSION_CHARACTER_CDE VARCHAR2(1)          not null,
   HLA_EXPRESSION_CHARACTER_NME VARCHAR2(50)         not null,
   HLA_EXPRESSION_CHARACTER_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_HLA_EXPRESSION_CHARACTER primary key (HLA_EXPRESSION_CHARACTER_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_EXPRESSION_CHAR_HLA_EXPR unique (HLA_EXPRESSION_CHARACTER_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER is
'The valid values for Expression Characters that can be associated/linked specifically to HLA Alleles; this is considered a suffix to the naming convention for HLA Alleles.  Values include N, L, S, A and Q.  Said characters can be looked at as potential behavior modifiers (i.e. N = NULL basically says even though a particular protein is expressed via the nomenclature, it won''t be expressed)'
/

comment on column GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER.HLA_EXPRESSION_CHARACTER_CDE is
'A single character code used as an optional suffix on HLA alleles.  Values are N = null, L = Low Cell Surface, S = Soluable, C = Cytoplasm Present,  A = Aberrant, Q = Questionable'
/

comment on column GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER.HLA_EXPRESSION_CHARACTER_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER.HLA_EXPRESSION_CHARACTER_TXT is
'A textual description that provides additional context or explanation for the expression character and how it should be interpreted'
/

comment on column GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: KIR_FUNCTION_CHARACTER                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER 
(
   KIR_FUNCTION_CHARACTER_CDE VARCHAR2(1)          not null,
   KIR_FUNCTION_CHARACTER_NME VARCHAR2(50)         not null,
   KIR_FUNCTION_CHARACTER_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_KIR_FUNCTION_CHARACTER primary key (KIR_FUNCTION_CHARACTER_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_EXPRESSION_CHAR_KIR_FUNC unique (KIR_FUNCTION_CHARACTER_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER is
'The valid values for Function Characters that can be associated/linked specifically to KIR Alleles; these function characters are embedded in the KIR nomenclature.  Values include L, S, and P.  Said characters can be looked at as potential behavior modifiers (i.e. L = Inhibitor, S = Activated, and P = Psuedo)'
/

comment on column GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER.KIR_FUNCTION_CHARACTER_CDE is
'A single character code used within thKIR alleles.  Values are L = Inhibitors, A = Activated, P = Psuedo'
/

comment on column GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER.KIR_FUNCTION_CHARACTER_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER.KIR_FUNCTION_CHARACTER_TXT is
'A textual description that provides additional context or explanation for the function character and how it should be interpreted'
/

comment on column GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.KIR_FUNCTION_CHARACTER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: MANUAL_REVIEW_STATUS                                  */
/*==============================================================*/
create table GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS 
(
   MANUAL_REVIEW_STAT_CDE VARCHAR2(50)         not null,
   MANUAL_REVIEW_STAT_NME VARCHAR2(100)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_MANUAL_REVIEW_STATUS primary key (MANUAL_REVIEW_STAT_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS is
'The valid values for Alleles and P&G groups to support the manual review process in staging tables.'
/

comment on column GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: MHC_CLASSIFICATION                                    */
/*==============================================================*/
create table GENOMIC_REF_DATA.MHC_CLASSIFICATION 
(
   MHC_CLASSIFICATION_CDE VARCHAR2(2)          not null,
   MHC_CLASSIFICATION_NME VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_MHC_CLASSIFICATION primary key (MHC_CLASSIFICATION_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_MHC_CLASSIFICATION unique (MHC_CLASSIFICATION_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.MHC_CLASSIFICATION is
'Major Histocompatibility Complex (MHC) Classification is applicable to HLA Gene Loci; this classification defines which Exons define the Antigen Recognition Site (ARS).'
/

comment on column GENOMIC_REF_DATA.MHC_CLASSIFICATION.MHC_CLASSIFICATION_CDE is
'A valid value to represent a specific kind of MHC classification (applicable ONLY to the HLA Gene Family) (e.g. I = Class I, II = Class II)'
/

comment on column GENOMIC_REF_DATA.MHC_CLASSIFICATION.MHC_CLASSIFICATION_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an MHC Classification is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.MHC_CLASSIFICATION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.MHC_CLASSIFICATION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.MHC_CLASSIFICATION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.MHC_CLASSIFICATION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.MHC_CLASSIFICATION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.MHC_CLASSIFICATION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: NOMENCLATURE_FORMAT_VERSION                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION 
(
   NOMENCLATURE_FORMAT_VER_CDE VARCHAR2(10)         not null,
   NOMENCLATURE_FORMAT_VER_NME VARCHAR2(50)         not null,
   NOMENCLATURE_FORMAT_VER_TXT VARCHAR2(100),
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_NOMENCLATURE_FORMAT_VERSION primary key (NOMENCLATURE_FORMAT_VER_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_NOMENCLATURE_FORMAT_VERSION unique (NOMENCLATURE_FORMAT_VER_NME, GENE_FAMILY_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION is
'A versioning system that defines the content and context of each position and delimiter within the HLA Gene Locus nomenclature.  V2 format does not use any delimiters and had 2 characters defined for protein; the evolution to V3 format '
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.NOMENCLATURE_FORMAT_VER_CDE is
'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are V2 = V2 format, V3 = V3 format'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.NOMENCLATURE_FORMAT_VER_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Nomenclature Format Version is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.NOMENCLATURE_FORMAT_VER_TXT is
'A more expansive explanation to describe the purpose of a particular code value that may not be entirely intuitive based on the label/name'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: NOMENCLATURE_MISMATCH                                 */
/*==============================================================*/
create table GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH 
(
   NOMENCLATURE_MISMATCH_IID NUMBER(9)            not null,
   GENE_FAMILY_CDE      VARCHAR2(10)         not null,
   ALLELE_NME           VARCHAR2(100)        not null,
   ALLELE_PUBLISHED_DTE TIMESTAMP(0)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_NOMENCLATURE_MISMATCH primary key (NOMENCLATURE_MISMATCH_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH is
'An instance of an Allele that is mismatched between the Comprehensive Allele (CA ) file, what is in STG and Operational tables.'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.NOMENCLATURE_MISMATCH_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele nomenclature mismatch record within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.GENE_FAMILY_CDE is
'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ABO Blood Group'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.ALLELE_NME is
'''An allele name that is mismatch between nomenclature file and both staging and ORD.  Possible values K*01:01:01:02, TAP1*02:01:02, A*01:01:69
'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.ALLELE_PUBLISHED_DTE is
'The date that the allele tied to the accession number was published or discovered.'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.NOMENCLATURE_MISMATCH to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: NOM_FILE_GROUP_MEMBER_STG                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG 
(
   NOM_FILE_GROUP_MEMBER_IID NUMBER(9)            not null,
   NOM_FILE_GROUP_IID   NUMBER(9)            not null,
   ALLELE_NME           VARCHAR2(100)        not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_NOM_FILE_GROUP_MEMBER_STG primary key (NOM_FILE_GROUP_MEMBER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG is
'The P&G Groups allele members that are defined in the P_nom and G_Nom files; this file structure existed prior to P&G groups becoming elements in the comprehensive allele (CA) file so the intent is to compare and keep in synce until this file publication is eliminated'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG.ALLELE_NME is
'''An allele name that is mismatch between nomenclature file and both staging and ORD.  Possible values K*01:01:01:02, TAP1*02:01:02, A*01:01:69
'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,SELECT,INSERT,UPDATE on GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: NOM_FILE_GROUP_STG                                    */
/*==============================================================*/
create table GENOMIC_REF_DATA.NOM_FILE_GROUP_STG 
(
   NOM_FILE_GROUP_IID   NUMBER(9)            not null,
   NOM_FILE_GROUP_NME   VARCHAR2(50)         not null,
   NOM_FILE_GROUP_TYPE_CDE VARCHAR2(10)         not null,
   GENE_LOCUS_SHORT_NME VARCHAR2(20)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_NOM_FILE_GROUP_STG primary key (NOM_FILE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.NOM_FILE_GROUP_STG is
'The P&G Groups that are defined in the P_nom and G_Nom files; this file structure existed prior to P&G groups becoming elements in the comprehensive allele (CA) file so the intent is to compare and keep in synce until this file publication is eliminated'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_STG.GENE_LOCUS_SHORT_NME is
'A shorter textual ''label'' or name (that corresponds to a valid code) by which a Gene Locus is known/can be recognized; For example HLA-A would be considered a long/comprehensive name, where A would be considered the short name (always within the context of the Gene Family)
'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOM_FILE_GROUP_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,SELECT,INSERT,UPDATE on GENOMIC_REF_DATA.NOM_FILE_GROUP_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.NOM_FILE_GROUP_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: NOTIFICATION_TYPE                                     */
/*==============================================================*/
create table GENOMIC_REF_DATA.NOTIFICATION_TYPE 
(
   NOTIFICATION_TYPE_CDE VARCHAR2(10)         not null,
   NOTIFICATION_TYPE_NME VARCHAR2(50)         not null,
   NOTIFICATION_TYPE_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_NOTIFICATION_TYPE primary key (NOTIFICATION_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.NOTIFICATION_TYPE is
'The valid values for email notifications sent to GRD resources.  Download and REVWFNSH (review file finish) are current values'
/

comment on column GENOMIC_REF_DATA.NOTIFICATION_TYPE.NOTIFICATION_TYPE_CDE is
'A valid value to represent a Notification Type'
/

comment on column GENOMIC_REF_DATA.NOTIFICATION_TYPE.NOTIFICATION_TYPE_TXT is
'A more expansive explanation to describe the purpose of a particular code value that may not be entirely intuitive based on the label/name'
/

comment on column GENOMIC_REF_DATA.NOTIFICATION_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOTIFICATION_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.NOTIFICATION_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.NOTIFICATION_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.NOTIFICATION_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.NOTIFICATION_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_CITATION                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION 
(
   PUBLISHED_ALLELE_CITATION_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   PUB_MED_ID           NUMBER(9),
   CITATION_AUTHORS_TXT VARCHAR2(2000),
   CITATION_TITLE_TXT   VARCHAR2(2000),
   CITATION_LOCATION_TXT VARCHAR2(2000),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_CITATION primary key (PUBLISHED_ALLELE_CITATION_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION is
'The Publication, with PubMed ID (8)) that was the first documentation of this allele.  Note this is a many-to-many relationship in real-life (one publication can define multiple alleles, and alleles are documented by multiple parties.),but is concatenated here, as the main focus of this data structure is to document alleles.  This is information Published externally and received into NMDP.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.PUBLISHED_ALLELE_CITATION_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele citation (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.PUB_MED_ID is
'A unique identifier assigned to citations for biomedical literature from MEDLINE, life science journals, and online books. PubMed citations and abstracts include the fields of medicine, nursing, dentistry, veterinary medicine, the health care system, and preclinical sciences. PubMed also provides access to additional relevant Web sites and links to the other NCBI molecular biology resources.  PubMed is a free resource that is developed and maintained by the National Center for Biotechnology Information (NCBI), at the U.S. National Library of Medicine (NLM), located at the National Institutes of Health (NIH).  
Publishers of journals can submit their citations to NCBI and then provide access to the full-text of articles at journal Web sites using LinkOut. 
" -- http://www.ncbi.nlm.nih.gov/books/NBK3827/'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.CITATION_AUTHORS_TXT is
'The Authors on the Citation.  Note this is a deliberate concatenation of author names.  The purpose of this is to enrich the allele with some demographic information, and not track the individual authors who submit dna sequences for curation.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.CITATION_TITLE_TXT is
'The title of the publication for which the allele is documented'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.CITATION_LOCATION_TXT is
'The Publication Citation of the documentation.  This value is packed with the name of the publication, the volume, issue number, and the publication date.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_CITATION_STG                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG 
(
   PUBLISHED_ALLELE_CITATION_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   PUB_MED_ID           NUMBER(9),
   CITATION_AUTHORS_TXT VARCHAR2(2000),
   CITATION_TITLE_TXT   VARCHAR2(2000),
   CITATION_LOCATION_TXT VARCHAR2(2000),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_CITATION_S primary key (PUBLISHED_ALLELE_CITATION_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG is
'The Publication, with PubMed ID (8)) that was the first documentation of this allele.  Note this is a many-to-many relationship in real-life (one publication can define multiple alleles, and alleles are documented by multiple parties.),but is concatenated here, as the main focus of this data structure is to document alleles.  This is information Published externally and received into NMDP.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.PUBLISHED_ALLELE_CITATION_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele citation (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.PUB_MED_ID is
'A unique identifier assigned to citations for biomedical literature from MEDLINE, life science journals, and online books. PubMed citations and abstracts include the fields of medicine, nursing, dentistry, veterinary medicine, the health care system, and preclinical sciences. PubMed also provides access to additional relevant Web sites and links to the other NCBI molecular biology resources.  PubMed is a free resource that is developed and maintained by the National Center for Biotechnology Information (NCBI), at the U.S. National Library of Medicine (NLM), located at the National Institutes of Health (NIH).  
Publishers of journals can submit their citations to NCBI and then provide access to the full-text of articles at journal Web sites using LinkOut. 
" -- http://www.ncbi.nlm.nih.gov/books/NBK3827/'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.CITATION_AUTHORS_TXT is
'The Authors on the Citation.  Note this is a deliberate concatenation of author names.  The purpose of this is to enrich the allele with some demographic information, and not track the individual authors who submit dna sequences for curation.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.CITATION_TITLE_TXT is
'The title of the publication for which the allele is documented'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.CITATION_LOCATION_TXT is
'The Publication Citation of the documentation.  This value is packed with the name of the publication, the volume, issue number, and the publication date.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_ETHNICITY                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY 
(
   PUBL_ALLELE_SRC_MATERIAL_IID NUMBER(9)            not null,
   PUBL_SAMPLE_ETHNICITY_NME VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_ETHNICITY primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBL_SAMPLE_ETHNICITY_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY is
'The ethnicity as defined and published by IMGT for an Allele.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY.PUBL_ALLELE_SRC_MATERIAL_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY.PUBL_SAMPLE_ETHNICITY_NME is
'A label or short description of the ethnicity connected to a published sample.  Note - ethnicities not currently aligned to those ethnicities used at NMDP'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_ETHNICITY_STG                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG 
(
   PUBL_ALLELE_SRC_MATERIAL_IID NUMBER(9)            not null,
   PUBL_SAMPLE_ETHNICITY_NME VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_ETHNICITY_ primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBL_SAMPLE_ETHNICITY_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG is
'The ethnicity as defined and published by IMGT for an Allele.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG.PUBL_ALLELE_SRC_MATERIAL_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG.PUBL_SAMPLE_ETHNICITY_NME is
'A label or short description of the ethnicity connected to a published sample.  Note - ethnicities not currently aligned to those ethnicities used at NMDP'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_FEATURE                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE 
(
   PUBLISHED_ALLELE_FEATURE_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   PUBLISHED_FEATURE_ORDER_NUM NUMBER(3),
   PUBLISHED_FEATURE_TYPE_NME VARCHAR2(50)         not null,
   PUBLISHED_FEATURE_NME VARCHAR2(50)         not null,
   PUBLISHED_ALLELE_STATUS_NME VARCHAR2(50),
   FEATURE_BEGIN_SEQUENCE_VAL NUMBER(9),
   FEATURE_END_SEQUENCE_VAL NUMBER(9),
   CDNA_BEGIN_SEQUENCE_VAL NUMBER(9),
   CDNA_END_SEQUENCE_VAL NUMBER(9),
   CDNA_COORD_READING_FRAME_VALUE NUMBER(9),
   RNA_AMINO_ACID_TRANSLATION_TXT CLOB,
   PUBLISHED_FEATURE_ID NUMBER(9,2),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_FEATURE primary key (PUBLISHED_ALLELE_FEATURE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_PUBLISHED_ALLELE_FEATURE unique (ALLELE_IID, PUBLISHED_FEATURE_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE is
'A characteristic or trait that exists/enables the description of an Allele.  Examples of Allele Features would be things like specific Exons of interest such as Exon 2 or 3, or specific Introns, etc.  An Allele Feature would NOT describe the potentially subjective behavior or ''capability'' of an Allele which can be subjective; instead it would represent the factual objective composition of a given Allele.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.PUBLISHED_ALLELE_FEATURE_IID is
'A system generated identifier (surrogate key) that uniquely represents a specific Allele Feature within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.PUBLISHED_FEATURE_ORDER_NUM is
'The numbering Schema of the features within the Sequence.  Use this value, rather than parsing the feature ID to build up the sequence pieces in their correct left--to-right order'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.PUBLISHED_FEATURE_TYPE_NME is
'A label or short textual description that represents a feature type; these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include Exon, Intro, UTC, etc.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.PUBLISHED_FEATURE_NME is
'The name of the Feature is a concatenation of the feature type (e.g. UTR, Exon, Intron, etc.) and its order in the allele from left to right (e.g. Exon-2). '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.PUBLISHED_ALLELE_STATUS_NME is
'A label or short textual description that represents the allele status (it is a determination of the thoroughness of the features); these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include complete and partial.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.FEATURE_BEGIN_SEQUENCE_VAL is
'For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.FEATURE_END_SEQUENCE_VAL is
'For the given allele''s nucleotide sequence, this defines the ending points of the sequence feature. '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.CDNA_BEGIN_SEQUENCE_VAL is
'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.CDNA_END_SEQUENCE_VAL is
'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the ending of the sequence feature.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.CDNA_COORD_READING_FRAME_VALUE is
'The reading frame is necessary for knowing how much of the previous feature must be used in order to group three nucleotides that encode the protein.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.RNA_AMINO_ACID_TRANSLATION_TXT is
'The nucleotide sequence as translanted to RNA amino acids.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.PUBLISHED_FEATURE_ID is
'The identifier that is linked to the feature as published by [IMGT]'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_FEATURE_STG                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG 
(
   PUBLISHED_ALLELE_FEATURE_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   PUBLISHED_FEATURE_ORDER_NUM NUMBER(3),
   PUBLISHED_FEATURE_TYPE_NME VARCHAR2(50)         not null,
   PUBLISHED_FEATURE_NME VARCHAR2(50),
   PUBLISHED_ALLELE_STATUS_NME VARCHAR2(50),
   FEATURE_BEGIN_SEQUENCE_VAL NUMBER(9),
   FEATURE_END_SEQUENCE_VAL NUMBER(9),
   CDNA_BEGIN_SEQUENCE_VAL NUMBER(9),
   CDNA_END_SEQUENCE_VAL NUMBER(9),
   CDNA_READING_FRAME_VAL NUMBER(9),
   RNA_AMINO_ACID_TRANSLATION_TXT CLOB,
   PUBLISHED_FEATURE_ID NUMBER(9,2),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_FEATURE_ST primary key (PUBLISHED_ALLELE_FEATURE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG is
'A characteristic or trait that exists/enables the description of an Allele.  Examples of Allele Features would be things like specific Exons of interest such as Exon 2 or 3, or specific Introns, etc.  An Allele Feature would NOT describe the potentially subjective behavior or ''capability'' of an Allele which can be subjective; instead it would represent the factual objective composition of a given Allele.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.PUBLISHED_ALLELE_FEATURE_IID is
'A system generated identifier (surrogate key) that uniquely represents a specific Allele Feature within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.PUBLISHED_FEATURE_ORDER_NUM is
'The numbering Schema of the features within the Sequence.  Use this value, rather than parsing the feature ID to build up the sequence pieces in their correct left--to-right order'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.PUBLISHED_FEATURE_TYPE_NME is
'A label or short textual description that represents a feature type; these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include Exon, Intro, UTC, etc.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.PUBLISHED_FEATURE_NME is
'The name of the Feature is a concatenation of the feature type (e.g. UTR, Exon, Intron, etc.) and its order in the allele from left to right (e.g. Exon-2). '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.PUBLISHED_ALLELE_STATUS_NME is
'A label or short textual description that represents the allele status (it is a determination of the thoroughness of the features); these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include complete and partial.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.FEATURE_BEGIN_SEQUENCE_VAL is
'For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.FEATURE_END_SEQUENCE_VAL is
'For the given allele''s nucleotide sequence, this defines the ending points of the sequence feature. '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.CDNA_BEGIN_SEQUENCE_VAL is
'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.CDNA_END_SEQUENCE_VAL is
'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the ending of the sequence feature.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.CDNA_READING_FRAME_VAL is
'The reading frame is necessary for knowing how much of the previous feature must be used in order to group three nucleotides that encode the protein.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.RNA_AMINO_ACID_TRANSLATION_TXT is
'The nucleotide sequence as translanted to RNA amino acids.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.PUBLISHED_FEATURE_ID is
'The identifier that is linked to the feature as published by [IMGT]'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_GROUP                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP 
(
   PUBLISHED_ALLELE_GROUP_IID NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   PUBLISHED_ALLELE_GROUP_NME VARCHAR2(50)         not null,
   ALLELE_GROUP_SUFFIX_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_GROUP_VER2 primary key (PUBLISHED_ALLELE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_PUBL_ALLELE_GRO_PUBLISHE unique (GENE_LOCUS_IID, PUBLISHED_ALLELE_GROUP_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP is
'A valid P or G group as defined and published by IMGT.  Protein groups represent identical protein sequences, G groups represent identical ARS (exons 2 and 3) sequences'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.PUBLISHED_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.PUBLISHED_ALLELE_GROUP_NME is
'The Actual Name of the Group.  Alleles that encode for identical protien in the peptide-binding-domains, and the ''g'' codes are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-biding-domains.   Note the intent is to group Alleles functionally.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.ALLELE_GROUP_SUFFIX_CDE is
'A valid value to represent a specific kind of published allele group type.  Preliminary values are P = Protein Groups, G = Genomic Groups.  The ''P'' groups are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''G'' groups are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-bidning-domains.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_GROUP_STG                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG 
(
   PUBLISHED_ALLELE_GROUP_IID NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   PUBLISHED_ALLELE_GROUP_NME VARCHAR2(50)         not null,
   MANUAL_REVIEW_STAT_CDE VARCHAR2(50),
   ALLELE_GROUP_SUFFIX_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_GROUP_VER primary key (PUBLISHED_ALLELE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_PUBL_ALLELE_GRP_PUBLISHE unique (GENE_LOCUS_IID, PUBLISHED_ALLELE_GROUP_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG is
'A valid P or G group as defined and published by IMGT.  Protein groups represent identical protein sequences, G groups represent identical ARS (exons 2 and 3) sequences'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.PUBLISHED_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.PUBLISHED_ALLELE_GROUP_NME is
'The Actual Name of the Group.  Alleles that encode for identical protien in the peptide-binding-domains, and the ''g'' codes are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-biding-domains.   Note the intent is to group Alleles functionally.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.ALLELE_GROUP_SUFFIX_CDE is
'A valid value to represent a specific kind of published allele group type.  Preliminary values are P = Protein Groups, G = Genomic Groups.  The ''P'' groups are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''G'' groups are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-bidning-domains.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SAMPLE                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE 
(
   PUBL_ALLELE_SRC_MATERIAL_IID NUMBER(9)            not null,
   PUBLISHED_SAMPLE_VAL VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_SAMPLE primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBLISHED_SAMPLE_VAL)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE.PUBL_ALLELE_SRC_MATERIAL_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE.PUBLISHED_SAMPLE_VAL is
'The primary identifier assigned to the source sample from which the sequence was derived. The IMGT/HLA Database does not only contain sequence data on HLA sequences it also contains a detailed record on the cell/individual from which the sequence was derived. The database provides a detailed entry for each cell including full annotation.

The database currently, Sep-2011, holds information on around 13,000 cells, and will continue to expand as new sequences are submitted to both this database and to the ENA sequence database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SAMPLE_STG                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG 
(
   PUBL_ALLELE_SRC_MATERIAL_IID NUMBER(9)            not null,
   PUBLISHED_SAMPLE_VAL VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_SAMPLE_STG primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBLISHED_SAMPLE_VAL)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG.PUBL_ALLELE_SRC_MATERIAL_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG.PUBLISHED_SAMPLE_VAL is
'The primary identifier assigned to the source sample from which the sequence was derived. The IMGT/HLA Database does not only contain sequence data on HLA sequences it also contains a detailed record on the cell/individual from which the sequence was derived. The database provides a detailed entry for each cell including full annotation.

The database currently, Sep-2011, holds information on around 13,000 cells, and will continue to expand as new sequences are submitted to both this database and to the ENA sequence database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SOURCE_XREF                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF 
(
   PUBLISHED_ALLELE_SRC_XREF_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   PUBLISHED_ALLELE_SRC_XREF_VAL VARCHAR2(20)         not null,
   PUBLISHED_ALLELE_PID_ID VARCHAR2(20),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_SRC_XREF2 primary key (PUBLISHED_ALLELE_SRC_XREF_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_PUBLISHED_ALLELE_SRC_XREF unique (ALLELE_IID, PUBLISHED_ALLELE_SRC_XREF_VAL)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.PUBLISHED_ALLELE_SRC_XREF_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele source cross reference (as curated) within the Enterprise.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.PUBLISHED_ALLELE_SRC_XREF_VAL is
'The source-specific accession number of each sequence, and these can be used to retrieve the sequence files from either the ENA, GenBank or DDBJ data libraries. ENA = European Nucleotide Archive (previously EMBL Nucleotide Database) / GenBank is the NIH genetic sequence database/ DDBJ = DNA Data Bank of Japan'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.PUBLISHED_ALLELE_PID_ID is
'Protein Accession Number (Identifier) as curated in the NCBI Protein database.  http://www.ncbi.nlm.nih.gov/protein'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SRC_MATERIAL                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL 
(
   PUBL_ALLELE_SRC_MATERIAL_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   SPECIES_LATIN_NME    VARCHAR2(50),
   SPECIES_COMMON_NME   VARCHAR2(50),
   SPECIES_NCBI_TAXON_VAL VARCHAR2(50),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_SRC_MATERI primary key (PUBL_ALLELE_SRC_MATERIAL_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.PUBL_ALLELE_SRC_MATERIAL_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.SPECIES_LATIN_NME is
'In the context of the curated alleles, this is the species that is the source of the material for the allele.  

"the major subdivision of a genus or subgenus, regarded as the basic category of biological classification, composed of related individuals that resemble one another, are able to breed among themselves, but are not able to breed with members of another species." -- http://dictionary.reference.com/browse/species

Taxonomic divisions are designed to match those used by the NCBI Taxonomy Database (9).'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.SPECIES_COMMON_NME is
'The vernacular, colloquial, and/or popular name in general use.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.SPECIES_NCBI_TAXON_VAL is
'The NCBI Taxonomy database is a curated set of names and classifications for all of the organisms that are represented in GenBank. Said taxonomy is checked/updated for new organism names/classifications when new sequences are submitted to GenBank.  -- http://www.ncbi.nlm.nih.gov/books/NBK21100/'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SRC_XREF_STG                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG 
(
   PUBLISHED_ALLELE_SRC_XREF_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   PUBLISHED_ALLELE_SRC_XREF_VAL VARCHAR2(20)         not null,
   PUBLISHED_ALLELE_PID_ID VARCHAR2(20),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBLISHED_ALLELE_SRC_XREF primary key (PUBLISHED_ALLELE_SRC_XREF_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG is
'

'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.PUBLISHED_ALLELE_SRC_XREF_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele source cross reference (as curated) within the Enterprise.'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.PUBLISHED_ALLELE_SRC_XREF_VAL is
'The source-specific accession number of each sequence, and these can be used to retrieve the sequence files from either the ENA, GenBank or DDBJ data libraries. ENA = European Nucleotide Archive (previously EMBL Nucleotide Database) / GenBank is the NIH genetic sequence database/ DDBJ = DNA Data Bank of Japan'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.PUBLISHED_ALLELE_PID_ID is
'Protein Accession Number (Identifier) as curated in the NCBI Protein database.  http://www.ncbi.nlm.nih.gov/protein'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBL_ALLELE_GROUP_VERSION                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION 
(
   PUBL_ALLELE_GROUP_VER_IID NUMBER(9)            not null,
   PUBLISHED_ALLELE_GROUP_IID NUMBER(9)            not null,
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   PUBL_ALLELE_GROUP_STATUS_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBL_ALLELE_GROUP_VERSION primary key (PUBL_ALLELE_GROUP_VER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_AK_PUBL_ALLELE_GRO_PUBL_ALL unique (PUBLISHED_ALLELE_GROUP_IID, GENOME_DATABASE_VER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION is
'A specific P or G groups in the context of a particular database version release; it is on a release level that we would choose to potentially manage the lifecycle status of a group'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.PUBL_ALLELE_GROUP_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group wtihin the context of a curated/database release version within the Enterprise'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.PUBLISHED_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.PUBL_ALLELE_GROUP_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBL_ALLELE_GROUP_VER_MBR_STG                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG 
(
   PUBL_ALLELE_GROUP_VER_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBL_GRP_VER_MBR_STG primary key (PUBL_ALLELE_GROUP_VER_IID, ALLELE_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG is
'The Alleles that are members of a specific  or G group (in the context of the database version release).  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG.PUBL_ALLELE_GROUP_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group wtihin the context of a curated/database release version within the Enterprise'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBL_ALLELE_GROUP_VER_MEMBER                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER 
(
   PUBL_ALLELE_GROUP_VER_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBL_ALLELE_GROUP_VER_MBR primary key (ALLELE_IID, PUBL_ALLELE_GROUP_VER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER is
'The Alleles that are members of a specific  or G group (in the context of the database version release).  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBL_ALLELE_GROUP_VER_STG                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG 
(
   PUBL_ALLELE_GROUP_VER_IID NUMBER(9)            not null,
   PUBLISHED_ALLELE_GROUP_IID NUMBER(9)            not null,
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   PUBL_ALLELE_GROUP_STATUS_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBL_ALLELE_GROUP_VER_STG primary key (PUBL_ALLELE_GROUP_VER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_PUBL_ALLELE_GRP_VER_STG unique (PUBLISHED_ALLELE_GROUP_IID, GENOME_DATABASE_VER_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG is
'A specific P or G groups in the context of a particular database version release; it is on a release level that we would choose to potentially manage the lifecycle status of a group'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.PUBL_ALLELE_GROUP_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group wtihin the context of a curated/database release version within the Enterprise'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.PUBLISHED_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.PUBL_ALLELE_GROUP_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBL_ALLELE_GRP_VER_MBR_AUD                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD 
(
   PUBL_GRP_VER_MBR_AUD_IID NUMBER(9)            not null,
   PUBLISHED_ALLELE_GROUP_IID NUMBER(9)            not null,
   GENOME_DATABASE_VER_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   CHANGE_TS            TIMESTAMP(6)         not null,
   CHANGE_TYPE_CDE      VARCHAR2(10)         not null,
   CHANGE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBL_ALLELE_GRP_VER_MBR_AUD primary key (PUBL_GRP_VER_MBR_AUD_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_PUBL_ALLELE_GRP_VER_MBR_AUD unique (ALLELE_IID, PUBLISHED_ALLELE_GROUP_IID, GENOME_DATABASE_VER_IID, CHANGE_TS)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD.PUBLISHED_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD.GENOME_DATABASE_VER_IID is
'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD.CHANGE_TS is
'The timestamp for the record change.'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD.CHANGE_TYPE_CDE is
'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD.CHANGE_BY_ID is
'The user id / unique id of the person / program changed the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBL_ALLELE_GRP_VER_MBR_AUD to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: PUBL_ALLELE_SRC_MATERIAL_STG                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG 
(
   PUBL_ALLELE_SRC_MATERIAL_IID NUMBER(9)            not null,
   ALLELE_IID           NUMBER(9)            not null,
   SPECIES_LATIN_NME    VARCHAR2(50),
   SPECIES_COMMON_NME   VARCHAR2(50),
   SPECIES_NCBI_TAXON_VAL VARCHAR2(50),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_PUBL_ALLELE_SRC_MATERIAL_ST primary key (PUBL_ALLELE_SRC_MATERIAL_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.PUBL_ALLELE_SRC_MATERIAL_IID is
'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.ALLELE_IID is
'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.SPECIES_LATIN_NME is
'In the context of the curated alleles, this is the species that is the source of the material for the allele.  

"the major subdivision of a genus or subgenus, regarded as the basic category of biological classification, composed of related individuals that resemble one another, are able to breed among themselves, but are not able to breed with members of another species." -- http://dictionary.reference.com/browse/species

Taxonomic divisions are designed to match those used by the NCBI Taxonomy Database (9).'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.SPECIES_COMMON_NME is
'The vernacular, colloquial, and/or popular name in general use.'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.SPECIES_NCBI_TAXON_VAL is
'The NCBI Taxonomy database is a curated set of names and classifications for all of the organisms that are represented in GenBank. Said taxonomy is checked/updated for new organism names/classifications when new sequences are submitted to GenBank.  -- http://www.ncbi.nlm.nih.gov/books/NBK21100/'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: RH_TYPE                                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.RH_TYPE 
(
   RH_TYPE_CDE          VARCHAR2(10)         not null,
   RH_TYPE_NME          VARCHAR2(50)         not null,
   RH_TYPE_TXT          VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6),
   CREATE_BY_ID         VARCHAR2(50),
   UPDATE_TS            TIMESTAMP(6),
   UPDATE_BY_ID         VARCHAR2(50),
   constraint PK_RH_TYPE primary key (RH_TYPE_CDE)
         using index tablespace PULSAR_IDX
)
tablespace PULSAR
/

comment on table GENOMIC_REF_DATA.RH_TYPE is
'The valid values for Rhersus (Rh) factor (in the context of the locus RhD) that could be associated with a BGA (Blood Group Antigen) subject test result; these values can be used for both genotype and phenotype.   Rh factor is an inherited protein found on the source of red blood cells.  If your blood has the protein, you are Rh positive; if your blood lacks the protein you are Rh negative.  Rh positive is the most common blood type.  Valid values are P (Positive), N (Negative), D (Indeterminant), and O (Other). '
/

comment on column GENOMIC_REF_DATA.RH_TYPE.RH_TYPE_CDE is
'A unique code shows if the blood type is Positive or Negative. ABO type can be B and RH might be Positive. '
/

comment on column GENOMIC_REF_DATA.RH_TYPE.RH_TYPE_NME is
'A lengthier textual description for RH TYPE code.'
/

comment on column GENOMIC_REF_DATA.RH_TYPE.RH_TYPE_TXT is
'A lengthier textual description for RH TYPE code.'
/

comment on column GENOMIC_REF_DATA.RH_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.RH_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.RH_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.RH_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.RH_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.RH_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: SEARCH_DETERMINANT                                    */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEARCH_DETERMINANT 
(
   SEARCH_DETERMINANT_IID NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   SEARCH_DETERMINANT_NME VARCHAR2(50)         not null,
   BROAD_SEROLOGY_FAMILY_IND VARCHAR2(1)          not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SEARCH_DETERMINANT primary key (SEARCH_DETERMINANT_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_SEARCH_DETERMINANT unique (GENE_LOCUS_IID, SEARCH_DETERMINANT_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.SEARCH_DETERMINANT is
'A legacy concept to faciliate the assignment of match grades to t_antigen records.  Analysis is underway to eliminate this concept and replace with serology and business rules.'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.SEARCH_DETERMINANT_IID is
'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.SEARCH_DETERMINANT_NME is
'A textual ''label'' or name (that corresponds to a valid id) by which a Search Determinant is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.BROAD_SEROLOGY_FAMILY_IND is
'Indicates if the search determinant represents a serology defined as a Broad (i.e. has splits connected to it)'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.SEARCH_DETERMINANT to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.SEARCH_DETERMINANT to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: SEARCH_DETERMINANT_RELT_TYPE                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE 
(
   SRCH_DTRM_RELT_TYPE_CDE VARCHAR2(10)         not null,
   SRCH_DTRM_RELT_TYPE_NME VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SRCH_DETERMINANT_RELT_TYPE primary key (SRCH_DTRM_RELT_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_SRCH_DETERMINANT_RELT_TYPE unique (SRCH_DTRM_RELT_TYPE_NME)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE is
'The valid values that provide context to a Search Determinant relationship.  no change was made to legacy values of P (parent) and C (child)'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE.SRCH_DTRM_RELT_TYPE_CDE is
'A valid value to represent a specific kind of relationshp between ''pairs'' of search determinants. Values are P = Parent and C = Child).  This value provides context to the ''related'' search determinant referred to as #2.'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE.SRCH_DTRM_RELT_TYPE_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which a Search Determinant Relationship Type is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: SEARCH_DETERMINANT_RLTSHP                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP 
(
   SRCH_DTRM_RELATIONSHIP_IID NUMBER(9)            not null,
   SEARCH_DETERMINANT_1_IID NUMBER(9)            not null,
   SEARCH_DETERMINANT_2_IID NUMBER(9)            not null,
   SRCH_DTRM_RELT_TYPE_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SEARCH_DETERMINANT_RELT primary key (SRCH_DTRM_RELATIONSHIP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_SEARCH_DETERMINANT_RELT unique (SEARCH_DETERMINANT_1_IID, SEARCH_DETERMINANT_2_IID, SRCH_DTRM_RELT_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP is
'The relationship of one Search Determinant to another Search Determinant (i.e. parent/child relationships).'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.SRCH_DTRM_RELATIONSHIP_IID is
'A system generated identifier (surrogate key) that uniquely represents a search determinant relationship within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.SEARCH_DETERMINANT_1_IID is
'A system generated identifier (surrogate key) that uniquely represents a the first of two search determinants that define a relationship within the Enterprise.'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.SEARCH_DETERMINANT_2_IID is
'A system generated identifier (surrogate key) that uniquely represents a the second of two search determinants that define a relationship within the Enterprise.'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.SRCH_DTRM_RELT_TYPE_CDE is
'A valid value to represent a specific kind of relationshp between ''pairs'' of search determinants. Values are P = Parent and C = Child).  This value provides context to the ''related'' search determinant referred to as #2.'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: SEROLOGY                                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEROLOGY 
(
   SEROLOGY_IID         NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   SEROLOGY_NME         VARCHAR2(50)         not null,
   PARENT_SEROLOGY_IID  NUMBER(9),
   SEROLOGY_STATUS_CDE  VARCHAR2(10)         not null,
   BROAD_SEROLOGY_IND   VARCHAR(1)           not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SEROLOGY primary key (SEROLOGY_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_SEROLOGY unique (SEROLOGY_NME, GENE_LOCUS_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.SEROLOGY is
'the scientific study or diagnostic examination of blood serum, especially with regard to the response of the immune system to pathogens or introduced substances.  Serology at NMDP represents one of the six concepts referred to as Genomic Reference Object for HLA alleles; it serves as a grouping for Alleles.'
/

comment on column GENOMIC_REF_DATA.SEROLOGY.SEROLOGY_IID is
'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEROLOGY.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.SEROLOGY.SEROLOGY_NME is
'A textual ''label'' or name (that corresponds to a valid id) by which a Serology is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.SEROLOGY.PARENT_SEROLOGY_IID is
'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEROLOGY.SEROLOGY_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.SEROLOGY.BROAD_SEROLOGY_IND is
'An indicator as to whether a particular serology is a parent (broad) to another serology'
/

comment on column GENOMIC_REF_DATA.SEROLOGY.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.SEROLOGY.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.SEROLOGY to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.SEROLOGY to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: SEROLOGY_CONTEXT                                      */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEROLOGY_CONTEXT 
(
   SEROLOGY_CONTEXT_CDE VARCHAR2(10)         not null,
   SEROLOGY_CONTEXT_NME VARCHAR2(50)         not null,
   SEROLOGY_CONTEXT_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SEROLOGY_CONTEXT primary key (SEROLOGY_CONTEXT_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.SEROLOGY_CONTEXT is
'The valid values that provide context for when a serology is mapped/linked to a DNA Allele.  The values are UNAMBIG (unambigous), POSSIBLE (possible), ASSUME (assumed), and EXPERT (expert assigned).  For any given Allele, serologies can ONLY be defined in 1 of the first 3 contexts (they are "OR" choices); in addition they have have expert assigned references to serology'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_CONTEXT.SEROLOGY_CONTEXT_CDE is
'A valid value to represent a particular context used when linking Serology to Alleles.  Values include UMAMBIG = Unambiguous, POSSIBLE = Possible, ASSUME = Assumed, and  EXPERT = Expoert Assigned'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_CONTEXT.SEROLOGY_CONTEXT_NME is
'A textual ''label'' or name (that corresponds to a valid code) by which a Serology Context is known/can be recognized.  '
/

comment on column GENOMIC_REF_DATA.SEROLOGY_CONTEXT.SEROLOGY_CONTEXT_TXT is
'A textual description that provides additional context or explanation for the serology context and how it should be interpreted'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_CONTEXT.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_CONTEXT.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_CONTEXT.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_CONTEXT.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.SEROLOGY_CONTEXT to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.SEROLOGY_CONTEXT to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: SEROLOGY_SEARCH_DETERMINANT                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT 
(
   SEROLOGY_IID         NUMBER(9)            not null,
   SEARCH_DETERMINANT_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)    not null,
   constraint PK_SEROLOGY_SEARCH_DETERMINANT primary key (SEARCH_DETERMINANT_IID, SEROLOGY_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT is
'A unique combination of a specific Serology with a specific Search Determinant'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT.SEROLOGY_IID is
'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT.SEARCH_DETERMINANT_IID is
'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant INSERT,SELECT,DELETE,UPDATE on GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: SEROLOGY_STG                                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEROLOGY_STG 
(
   SEROLOGY_IID         NUMBER(9)            not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   SEROLOGY_NME         VARCHAR2(50)         not null,
   PARENT_SEROLOGY_IID  NUMBER(9),
   SEROLOGY_STATUS_CDE  VARCHAR2(10)         not null,
   BROAD_SEROLOGY_IND   VARCHAR(1)           not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SEROLOGY_STG primary key (SEROLOGY_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_SEROLOGY_STG unique (SEROLOGY_NME, GENE_LOCUS_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.SEROLOGY_STG is
'the scientific study or diagnostic examination of blood serum, especially with regard to the response of the immune system to pathogens or introduced substances.  Serology at NMDP represents one of the six concepts referred to as Genomic Reference Object for HLA alleles; it serves as a grouping for Alleles.'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.SEROLOGY_IID is
'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.SEROLOGY_NME is
'A textual ''label'' or name (that corresponds to a valid id) by which a Serology is known/can be recognized'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.PARENT_SEROLOGY_IID is
'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.SEROLOGY_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.BROAD_SEROLOGY_IND is
'An indicator as to whether a particular serology is a parent (broad) to another serology'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.SEROLOGY_STG.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.SEROLOGY_STG to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.SEROLOGY_STG to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: TEST_RESULT_ALLELE_GROUP                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP 
(
   TEST_RESULT_ALLELE_GRP_IID NUMBER(9)            not null,
   TEST_RESULT_ALLELE_GRP_NME VARCHAR2(50)         not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   TEST_RESLT_REPRT_TYPE_CDE VARCHAR2(10)         not null,
   TEST_RESULT_GRP_STATUS_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   PREFERRED_PUBLICATION_IND VARCHAR2(1)          not null,
   constraint PK_TEST_RESULT_ALLELE_GROUP primary key (TEST_RESULT_ALLELE_GRP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_TEST_RESULT_ALLELE_GROUP unique (TEST_RESULT_ALLELE_GRP_NME, GENE_LOCUS_IID, TEST_RESLT_REPRT_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP is
'One of the six concepts that are represented as a Genomic Reference Object (GRO) for HLA; this concept is also applicable to KIR.  It represents specific WMDA codes that have been published to represent a) not tested, b) tested and found/+, c) tested and not found/-, new/never before named.'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.TEST_RESULT_ALLELE_GRP_IID is
'A system generated identifier (surrogate key) that uniquely represents a Test Level Allele Group within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.TEST_RESULT_ALLELE_GRP_NME is
'The name that represents a Test Level Allele Group.  For example when the type is Not Tested, a name could be HLA-DRB3*UUUU'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.TEST_RESLT_REPRT_TYPE_CDE is
'A valid value to represent a Test Result Reporting Type.   NTST = Not Tested, TPOS = Tested and Present, TNEG = Tested and NOT Present. NEW = New Allele'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.TEST_RESULT_GRP_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP.PREFERRED_PUBLICATION_IND is
'Indicates if the Test Result Allele Group is preferred to be published (versus the corresponding Allele Code Designation(s) to which it is mapped) .  Values are Y and N   This ONLY impacts internal consumers (i.e. NMDP ONLY) '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: TEST_RESULT_REPORT_TYPE                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE 
(
   TEST_RESLT_REPRT_TYPE_CDE VARCHAR2(10)         not null,
   TEST_RESLT_REPRT_TYPE_NME VARCHAR2(50)         not null,
   TEST_RESLT_REPRT_TYPE_TXT VARCHAR2(100),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_TEST_RESULT_REPORT_TYPE primary key (TEST_RESLT_REPRT_TYPE_CDE)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE is
'The valid values that classify a particular Test Result Allele Group.  NTST - Not Tested (represented in HLA as UUUU, absent for KIR), TPOS - Tested Positive (represented in HLA as XXXX, in KIR as POS), TNEG (represented in HLA as NNNN, in KIR as NEG, NEW - Unnamed/New Allele - only applicable currently for HLA'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE.TEST_RESLT_REPRT_TYPE_CDE is
'A valid value to represent a Test Result Reporting Type.   NTST = Not Tested, TPOS = Tested and Present, TNEG = Tested and NOT Present. NEW = New Allele'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE.TEST_RESLT_REPRT_TYPE_NME is
'A label or short textual description that represents a test level.  Example of what would be represented include Not Tested, Tested and Present, Tested and NOT Present'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE.TEST_RESLT_REPRT_TYPE_TXT is
'A label or short textual description that represents a test level.  Example of what would be represented include Not Tested, Tested and Present, Tested and NOT Present'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: USERS                                                 */
/*==============================================================*/
create table GENOMIC_REF_DATA.USERS 
(
   ID                   NUMBER(9)            not null,
   LOGIN                VARCHAR2(50)         not null,
   PASSWORD_HASH        VARCHAR2(60),
   FIRST_NAME           VARCHAR2(50),
   LAST_NAME            VARCHAR2(50),
   EMAIL                VARCHAR2(100),
   ACTIVATED            VARCHAR2(1)          not null,
   LANG_KEY             VARCHAR2(5),
   ACTIVATION_KEY       VARCHAR2(20),
   RESET_KEY            VARCHAR2(20),
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   RESET_DATE           VARCHAR2(50),
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_USERS primary key (ID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.USERS is
'A tactical implementation for users to be replaced with Active Directory'
/

comment on column GENOMIC_REF_DATA.USERS.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.USERS.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.USERS.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.USERS.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.USERS to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.USERS to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: XX_ALLELE_GROUP                                       */
/*==============================================================*/
create table GENOMIC_REF_DATA.XX_ALLELE_GROUP 
(
   XX_ALLELE_GROUP_IID  NUMBER(9)            not null,
   XX_ALLELE_GROUP_NME  VARCHAR2(50)         not null,
   GENE_LOCUS_IID       NUMBER(9)            not null,
   XX_ALLELE_GROUP_STATUS_CDE VARCHAR2(10)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   BROAD_XX_GROUP_IND   VARCHAR2(1)          not null,
   constraint PK_XX_ALLELE_GROUP primary key (XX_ALLELE_GROUP_IID)
         using index tablespace GENOMIC_REF_DATA_IDX,
   constraint AK_XX_ALLELE_GROUP unique (XX_ALLELE_GROUP_NME, GENE_LOCUS_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.XX_ALLELE_GROUP is
'One of the six concepts that are represented as a Genomic Refrence Object (GRO) for HLA.  These have very generic naming conventions of gene locus + F1 + XX; all alleles with same gene locus and F1 will belong to said group.  An exception to this is a small subset of XX Groups called Broad XX Groups which have a static list of allele expansion names assigned to them.  An allele can ONLY belong to one ''standard'' XX Group and MAY potentially belong to one "broad'' XX Group.'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.XX_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents an XX Group within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.XX_ALLELE_GROUP_NME is
'The name by which an XX Group is recognized.  This name is a concatenation of Gene Family (specifically HLA) + Gene Locus + ''*" + Allele Family + ''XX''.  An example would be HLA-A*01:XX.  All HLA alleles within the same Gene Locus and Allele Family would belong to the same XX Group.'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.GENE_LOCUS_IID is
'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  '
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.XX_ALLELE_GROUP_STATUS_CDE is
'A valid value to represent a specific status for an Allele, Allele Code Designation or XX Allele Group.  Values are Valid = Valid, Depr = Deprecated, and Invalid = Invalid.  Note - until an allele goes through the validation process it resides in staging structures; if determined to be NOT Valid, the record is removed and NEVER operationalized.  '
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP.BROAD_XX_GROUP_IND is
'Indicates if the XX Allele Group is a broad XX Group (used by BMDW) - this is a finite list of groups that are mapped to MAC designations'
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.XX_ALLELE_GROUP to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.XX_ALLELE_GROUP to GENOMIC_REF_DATA_RO_USER
/

/*==============================================================*/
/* Table: XX_ALLELE_GROUP_SEARCH_DTRM                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM 
(
   XX_ALLELE_GROUP_IID  NUMBER(9)            not null,
   SEARCH_DETERMINANT_IID NUMBER(9)            not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_XX_ALLELE_GROUP_SEARCH_DTRM primary key (XX_ALLELE_GROUP_IID, SEARCH_DETERMINANT_IID)
         using index tablespace GENOMIC_REF_DATA_IDX
)
tablespace GENOMIC_REF_DATA
/

comment on table GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM is
'The search determinants that are linked to a specific XX allelel group'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM.XX_ALLELE_GROUP_IID is
'A system generated identifier (surrogate key) that uniquely represents an XX Group within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM.SEARCH_DETERMINANT_IID is
'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. '
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM.CREATE_TS is
'The record created timestamp in the database'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM.CREATE_BY_ID is
'The user id / unique id of the person / program created the record'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM.UPDATE_TS is
'The record updated timestamp in the database'
/

comment on column GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM.UPDATE_BY_ID is
'The user id / unique id of the person / program updated the record. '
/

grant DELETE,INSERT,SELECT,UPDATE on GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM to GENOMIC_REF_DATA_APP_USER
/

grant SELECT on GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM to GENOMIC_REF_DATA_RO_USER
/

alter table GENOMIC_REF_DATA.ALLELE
   add constraint FK_ALLELE_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.ALLELE
   add constraint FK_ALLELE_02 foreign key (HLA_EXPRESSION_CHARACTER_CDE)
      references GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER (HLA_EXPRESSION_CHARACTER_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE
   add constraint FK_ALLELE_03 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.ALLELE
   add constraint FK_ALLELE_04 foreign key (NOMENCLATURE_FORMAT_VER_CDE)
      references GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION (NOMENCLATURE_FORMAT_VER_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE
   add constraint FK_ALLELE_05 foreign key (ALLELE_STATUS_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS (GENOMIC_REF_OBJECT_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE
   add constraint FK_ALLELE_06 foreign key (ALLELE_NOMENCLATURE_TYPE_CDE)
      references GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE (ALLELE_NOMENCLATURE_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE
   add constraint FK_ALLELE_CODE_01 foreign key (ALLELE_CODE_TYPE_CDE)
      references GENOMIC_REF_DATA.ALLELE_CODE_TYPE (ALLELE_CODE_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION
   add constraint FK_ALLELE_CODE_DESIGNATION_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION
   add constraint FK_ALLELE_CODE_DESIGNATION_03 foreign key (ALLELE_CDE)
      references GENOMIC_REF_DATA.ALLELE_CODE (ALLELE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION
   add constraint FK_ALLELE_CODE_DESIGNATION_04 foreign key (ALLELE_CODE_DESGNTN_STATUS_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS (GENOMIC_REF_OBJECT_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER
   add constraint FK_ALLELE_CODE_DESGNTN_MBR_01 foreign key (ALLELE_CODE_DESIGNATION_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_MEMBER
   add constraint FK_ALLELE_CODE_DESGNTN_MBR_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT
   add constraint FK_ALLELE_CODE_DESGNTN_RELT_01 foreign key (ALLELE_CODE_DESGNTN_1_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT
   add constraint FK_ALLELE_CODE_DESGNTN_RELT_02 foreign key (ALLELE_CODE_DESGNTN_2_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT
   add constraint FK_ALLELE_CODE_DESGNTN_RELT_03 foreign key (DESGNTN_RELATIONSHIP_TYPE_CDE)
      references GENOMIC_REF_DATA.DESGNTN_RELATIONSHIP_TYPE (DESGNTN_RELATIONSHIP_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_CODE_EXPANSION
   add constraint FK_ALLELE_CODE_EXPANSION_01 foreign key (ALLELE_CDE)
      references GENOMIC_REF_DATA.ALLELE_CODE (ALLELE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED
   add constraint FK_ALLELE_COMMON_WELL_DOC_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED
   add constraint FK_ALLELE_COMMON_WELL_DOC_02 foreign key (COMMON_WELL_DOC_STATUS_CDE)
      references GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS (COMMON_WELL_DOC_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG
   add constraint FK_ALLELE_CWD_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP
   add constraint FK_ALLELE_GROUP_01 foreign key (ALLELE_GROUP_TYPE_CDE)
      references GENOMIC_REF_DATA.ALLELE_GROUP_TYPE (ALLELE_GROUP_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP
   add constraint FK_ALLELE_GROUP_02 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER
   add constraint FK_ALLELE_GROUP_MEMBER_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP_MEMBER
   add constraint FK_ALLELE_GROUP_MEMBER_02 foreign key (ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.ALLELE_GROUP (ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_GROUP_TYPE
   add constraint FK_ALLELE_GROUP_TYPE_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE
   add constraint FK_ALLELE_NUCLEOTIDE_SEQ_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG
   add constraint FK_ALLELE_NUCL_SEQ_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_REJECTION_REASON_STG
   add constraint FK_ALLELE_REJECT_REASON_STG_01 foreign key (ALLELE_REJECTION_IID)
      references GENOMIC_REF_DATA.ALLELE_REJECTION_STG (ALLELE_REJECTION_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP
   add constraint FK_ALLELE_RELATIONSHIP_01 foreign key (ALLELE_2_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP
   add constraint FK_ALLELE_RELATIONSHIP_02 foreign key (ALLELE_1_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP
   add constraint FK_ALLELE_RELATIONSHIP_03 foreign key (ALLELE_RELATIONSHIP_TYPE_CDE)
      references GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE (ALLELE_RELATIONSHIP_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG
   add constraint FK_ALLELE_RELATIONSHIP_STG_01 foreign key (ALLELE_1_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG
   add constraint FK_ALLELE_RELATIONSHIP_STG_02 foreign key (ALLELE_2_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT
   add constraint FK_ALLELE_SRCH_DTRM_01 foreign key (SEARCH_DETERMINANT_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT
   add constraint FK_ALLELE_SRCH_DTRM_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   add constraint FK_ALLELE_SEROLOGY_01 foreign key (SEROLOGY_IID)
      references GENOMIC_REF_DATA.SEROLOGY (SEROLOGY_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   add constraint FK_ALLELE_SEROLOGY_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   add constraint FK_ALLELE_SEROLOGY_03 foreign key (SEROLOGY_CONTEXT_CDE)
      references GENOMIC_REF_DATA.SEROLOGY_CONTEXT (SEROLOGY_CONTEXT_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY
   add constraint FK_ALLELE_SEROLOGY_04 foreign key (EXPERT_ASSIGNED_SRC_CDE)
      references GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE (EXPERT_ASSIGNED_SRC_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   add constraint FK_ALLELE_SEROLOGY_STG_01 foreign key (SEROLOGY_CONTEXT_CDE)
      references GENOMIC_REF_DATA.SEROLOGY_CONTEXT (SEROLOGY_CONTEXT_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   add constraint FK_ALLELE_SEROLOGY_STG_02 foreign key (SEROLOGY_IID)
      references GENOMIC_REF_DATA.SEROLOGY_STG (SEROLOGY_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   add constraint FK_ALLELE_SEROLOGY_STG_03 foreign key (EXPERT_ASSIGNED_SRC_CDE)
      references GENOMIC_REF_DATA.EXPERT_ASSIGNED_SOURCE (EXPERT_ASSIGNED_SRC_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_SEROLOGY_STG
   add constraint FK_ALLELE_SEROLOGY_STG_04 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_02 foreign key (HLA_EXPRESSION_CHARACTER_CDE)
      references GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER (HLA_EXPRESSION_CHARACTER_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_03 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_04 foreign key (NOMENCLATURE_FORMAT_VER_CDE)
      references GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION (NOMENCLATURE_FORMAT_VER_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_05 foreign key (ALLELE_STATUS_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS (GENOMIC_REF_OBJECT_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_06 foreign key (ALLELE_REVIEW_STATUS_CDE)
      references GENOMIC_REF_DATA.ALLELE_REVIEW_STATUS (ALLELE_REVIEW_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_07 foreign key (ORD_ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_08 foreign key (ALLELE_NOMENCLATURE_TYPE_CDE)
      references GENOMIC_REF_DATA.ALLELE_NOMENCLATURE_TYPE (ALLELE_NOMENCLATURE_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.ALLELE_STG
   add constraint FK_ALLELE_STG_09 foreign key (ALLELE_MANUAL_REVIEW_STAT_CDE)
      references GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS (MANUAL_REVIEW_STAT_CDE)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME
   add constraint FK_BEHVR_ALLELE_EXPAN_NAME_01 foreign key (HLA_EXPRESSION_CHARACTER_CDE)
      references GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER (HLA_EXPRESSION_CHARACTER_CDE)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP
   add constraint FK_BEHAVIOR_ALLELE_GROUP_01 foreign key (BEHAVIOR_CATEGORY_CDE)
      references GENOMIC_REF_DATA.BEHAVIOR_CATEGORY (BEHAVIOR_CATEGORY_CDE)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP
   add constraint FK_BEHAVIOR_ALLELE_GROUP_02 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP
   add constraint FK_BEHAVIOR_ALLELE_GROUP_03 foreign key (ALLELE_GROUP_SUFFIX_CDE)
      references GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX (ALLELE_GROUP_SUFFIX_CDE)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN
   add constraint FK_BEHVR_ALLELE_GROUP_VER_01 foreign key (BEHAVIOR_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP (BEHAVIOR_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN
   add constraint FK_BEHVR_ALLELE_GROUP_VER_02 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GRP_VER_EXPAN
   add constraint FK_BEHVR_GRP_VER_EXPAN_02 foreign key (BEHAVIOR_ALLELE_EXPAN_NAME_IID)
      references GENOMIC_REF_DATA.BEHAVIOR_ALLELE_EXPANSION_NAME (BEHAVIOR_ALLELE_EXPAN_NAME_IID)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS
   add constraint FK_BEHVR_CATG_GENE_FAMILY_01 foreign key (BEHAVIOR_CATEGORY_CDE)
      references GENOMIC_REF_DATA.BEHAVIOR_CATEGORY (BEHAVIOR_CATEGORY_CDE)
/

alter table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY_GENE_LOCUS
   add constraint FK_BEHVR_CATG_GENE_FAMILY_02 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.BROAD_XX_ALLELE_GRP_EXPANSION
   add constraint FK_BROAD_XX_GRP_EXPNSN_01 foreign key (XX_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.XX_ALLELE_GROUP (XX_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.CURATOR_DATA
   add constraint FK_CURATOR_DATA_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE)
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION
   add constraint FK_DATA_NOTIFICATION_01 foreign key (NOTIFICATION_TYPE_CDE)
      references GENOMIC_REF_DATA.NOTIFICATION_TYPE (NOTIFICATION_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION
   add constraint FK_DATA_NOTIFICATION_02 foreign key (CURATOR_DATA_IID)
      references GENOMIC_REF_DATA.CURATOR_DATA (CURATOR_DATA_IID)
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_NOTIFICATION
   add constraint FK_DATA_NOTIFICATION_03 foreign key (EMAIL_NOTIFICATION_USER_IID)
      references GENOMIC_REF_DATA.USERS (ID)
/

alter table GENOMIC_REF_DATA.CURATOR_DATA_RELEASE
   add constraint FK_CURATOR__FK_CURATO_CURATOR_ foreign key (CURATOR_DATA_IID)
      references GENOMIC_REF_DATA.CURATOR_DATA (CURATOR_DATA_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP
   add constraint FK_DESGNTN_BROAD_XX_GRP_01 foreign key (ALLELE_CODE_DESIGNATION_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_BROAD_XX_GROUP
   add constraint FK_DESGNTN_BROAD_XX_GRP_02 foreign key (XX_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.XX_ALLELE_GROUP (XX_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP
   add constraint FK_DESGNTN_PUBL_ALLELE_GRP_01 foreign key (ALLELE_CODE_DESIGNATION_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_PUBL_ALLELE_GROUP
   add constraint FK_DESGNTN_PUBL_ALLELE_GRP_02 foreign key (PUBLISHED_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP (PUBLISHED_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM
   add constraint FK_DESIGNATION_SEARCH_DTRM_01 foreign key (ALLELE_CODE_DESIGNATION_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_SEARCH_DTRM
   add constraint FK_DESIGNATION_SEARCH_DTRM_02 foreign key (SEARCH_DETERMINANT_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP
   add constraint FK_DESGNTN_TEST_RESULT_GRP_01 foreign key (TEST_RESULT_ALLELE_GRP_IID)
      references GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP (TEST_RESULT_ALLELE_GRP_IID)
/

alter table GENOMIC_REF_DATA.DESIGNATION_TEST_RESULT_GROUP
   add constraint FK_DESGNTN_TEST_RESULT_GRP_02 foreign key (ALLELE_CODE_DESIGNATION_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID)
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET
   add constraint FK_EXPR_CHAR_SET_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET
   add constraint FK_EXPR_CHAR_SET_02 foreign key (ALLELE_GROUP_SUFFIX_CDE)
      references GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX (ALLELE_GROUP_SUFFIX_CDE)
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER
   add constraint FK_EXPR_CHAR_SET_VER_02 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER
   add constraint FK_EXPR_CHAR_SET_VER_MBR_01 foreign key (EXPR_CHAR_SET_IID)
      references GENOMIC_REF_DATA.EXPR_CHAR_SET (EXPR_CHAR_SET_IID)
/

alter table GENOMIC_REF_DATA.EXPR_CHAR_SET_VER_MEMBER
   add constraint FK_EXPR_CHAR_SET_VER_MEMBER_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE
   add constraint FK_GENE_FAMILY_OBJECT_TYPE_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE)
/

alter table GENOMIC_REF_DATA.GENE_FAMILY_OBJECT_TYPE
   add constraint FK_GENE_FAMILY_OBJECT_TYPE_02 foreign key (GENOMIC_REF_OBJECT_TYPE_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE (GENOMIC_REF_OBJECT_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   add constraint FK_GENE_LOCUS_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE)
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   add constraint FK_GENE_LOCUS_02 foreign key (EFF_GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   add constraint FK_GENE_LOCUS_03 foreign key (PREVIOUS_GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.GENE_LOCUS
   add constraint FK_GENE_LOCUS_04 foreign key (MHC_CLASSIFICATION_CDE)
      references GENOMIC_REF_DATA.MHC_CLASSIFICATION (MHC_CLASSIFICATION_CDE)
/

alter table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION
   add constraint FK_GENOME_DATABASE_VERSION_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE)
/

alter table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT
   add constraint FK_GENOMIC_REFERENCE_OBJECT_01 foreign key (GENOMIC_REF_OBJECT_TYPE_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE (GENOMIC_REF_OBJECT_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION
   add constraint FK_GENOMIC_REF_DATA_CONFIG_01 foreign key (CONFIGURATION_TYPE_CDE)
      references GENOMIC_REF_DATA.CONFIGURATION_TYPE (CONFIGURATION_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_DATA_CONFIGURATION
   add constraint FK_GENOMIC_REF_DATA_CONFIG_02 foreign key (CONFIG_VARIABLE_TYPE_CDE)
      references GENOMIC_REF_DATA.CONFIGURATION_VARIABLE_TYPE (CONFIG_VARIABLE_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF
   add constraint FK_GEN_REF_OBJ_LGCY_XREF_01 foreign key (GENOMIC_REF_OBJECT_TYPE_CDE, GENOMIC_REF_OBJECT_IID)
      references GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT (GENOMIC_REF_OBJECT_TYPE_CDE, GENOMIC_REF_OBJECT_IID)
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF
   add constraint FK_GEN_REF_OBJ_LGCY_XREF_02 foreign key (NOMENCLATURE_FORMAT_VER_CDE)
      references GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION (NOMENCLATURE_FORMAT_VER_CDE)
/

alter table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF
   add constraint FK_GEN_REF_OBJ_LGCY_XREF_03 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.GENOTYPE
   add constraint FK_GENOTYPE_01 foreign key (HAPLOTYPE_1_IID)
      references GENOMIC_REF_DATA.HAPLOTYPE (HAPLOTYPE_IID)
/

alter table GENOMIC_REF_DATA.GENOTYPE
   add constraint FK_GENOTYPE_02 foreign key (HAPLOTYPE_2_IID)
      references GENOMIC_REF_DATA.HAPLOTYPE (HAPLOTYPE_IID)
/

alter table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE
   add constraint FK_GENOTYPE_LIST_GENOTYPE_01 foreign key (GENOTYPE_IID)
      references GENOMIC_REF_DATA.GENOTYPE (GENOTYPE_IID)
/

alter table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE
   add constraint FK_GENOTYPE_LIST_GENOTYPE_02 foreign key (GENOTYPE_LIST_IID)
      references GENOMIC_REF_DATA.GENOTYPE_LIST (GENOTYPE_LIST_IID)
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   add constraint FK_GROUP_MISMATCH_01 foreign key (ORD_GROUP_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP (PUBLISHED_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   add constraint FK_GROUP_MISMATCH_02 foreign key (GROUP_REVIEW_STATUS_CDE)
      references GENOMIC_REF_DATA.GROUP_REVIEW_STATUS (GROUP_REVIEW_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   add constraint FK_GROUP_MISMATCH_03 foreign key (NOM_GROUP_IID)
      references GENOMIC_REF_DATA.NOM_FILE_GROUP_STG (NOM_FILE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH
   add constraint FK_GROUP_MISMATCH_04 foreign key (STG_GROUP_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG (PUBLISHED_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER
   add constraint FK_GROUP_MISMATCH_MEMBER_01 foreign key (GROUP_MISMATCH_IID)
      references GENOMIC_REF_DATA.GROUP_MISMATCH (GROUP_MISMATCH_IID)
/

alter table GENOMIC_REF_DATA.GROUP_MISMATCH_MEMBER
   add constraint FK_GROUP_MISMATCH_MEMBER_02 foreign key (NOM_MEMBER_IID)
      references GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG (NOM_FILE_GROUP_MEMBER_IID)
/

alter table GENOMIC_REF_DATA.HAPLOTYPE_MEMBER
   add constraint FK_HAPLOTYPE_MEMBER_01 foreign key (HAPLOTYPE_IID)
      references GENOMIC_REF_DATA.HAPLOTYPE (HAPLOTYPE_IID)
/

alter table GENOMIC_REF_DATA.HAPLOTYPE_MEMBER
   add constraint FK_HAPLOTYPE_MEMBER_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION
   add constraint FK_NOMENCLATURE_FORMAT_VER_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE)
/

alter table GENOMIC_REF_DATA.NOM_FILE_GROUP_MEMBER_STG
   add constraint FK_NOM_FILE_GROUP_MBR_STG_01 foreign key (NOM_FILE_GROUP_IID)
      references GENOMIC_REF_DATA.NOM_FILE_GROUP_STG (NOM_FILE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY
   add constraint FK_PUBL_ALLELE_ETHNICITY_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL (PUBL_ALLELE_SRC_MATERIAL_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG
   add constraint FK_PUBL_ALLELE_ETHN_STG_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG (PUBL_ALLELE_SRC_MATERIAL_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE
   add constraint FK_PUBLISHED_ALLELE_FEATURE_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG
   add constraint FK_PUBL_ALLELE_FEATURE_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP
   add constraint FK_PUBL_ALLELE_GRP_02 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP
   add constraint FK_PUBL_ALLELE_GROUP_02 foreign key (ALLELE_GROUP_SUFFIX_CDE)
      references GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX (ALLELE_GROUP_SUFFIX_CDE)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG
   add constraint FK_PUBL_ALLELE_GROUP_STG_02 foreign key (MANUAL_REVIEW_STAT_CDE)
      references GENOMIC_REF_DATA.MANUAL_REVIEW_STATUS (MANUAL_REVIEW_STAT_CDE)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG
   add constraint FK_PUBL_ALLELE_GROUP_STG_03 foreign key (ALLELE_GROUP_SUFFIX_CDE)
      references GENOMIC_REF_DATA.ALLELE_GROUP_SUFFIX (ALLELE_GROUP_SUFFIX_CDE)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE
   add constraint FK_PUBLISHED_ALLELE_SAMPLE_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL (PUBL_ALLELE_SRC_MATERIAL_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG
   add constraint FK_PUBL_ALLELE_SAMPLE_STG_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG (PUBL_ALLELE_SRC_MATERIAL_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF
   add constraint FK_PUBL_ALLELE_SOURCE_XREF_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL
   add constraint FK_PUBL_ALLELE_SRC_MATERIAL_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG
   add constraint FK_PUBL_ALLELE_SRC_XREF_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION
   add constraint FK_PUBL_ALLELE_GROUP_VER_01 foreign key (PUBLISHED_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP (PUBLISHED_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION
   add constraint FK_PUBL_ALLELE_GROUP_VER_02 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION
   add constraint FK_PUBL_ALLELE_GROUP_VER_03 foreign key (PUBL_ALLELE_GROUP_STATUS_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS (GENOMIC_REF_OBJECT_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG
   add constraint FK_PUBL_GRP_VER_MBR_STG_01 foreign key (PUBL_ALLELE_GROUP_VER_IID)
      references GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG (PUBL_ALLELE_GROUP_VER_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MBR_STG
   add constraint FK_PUBL_GRP_VER_MBR_STG_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER
   add constraint FK_PUBL_ALLELE_GRP_VER_MBR_01 foreign key (PUBL_ALLELE_GROUP_VER_IID)
      references GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VERSION (PUBL_ALLELE_GROUP_VER_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_MEMBER
   add constraint FK_PUBL_ALLELE_GRP_VER_MBR_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG
   add constraint FK_PUBL_ALLELE_GRP_VER_STG_01 foreign key (PUBLISHED_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG (PUBLISHED_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_GROUP_VER_STG
   add constraint FK_PUBL_ALLELE_GRP_VER_STG_02 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG (GENOME_DATABASE_VER_IID)
/

alter table GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG
   add constraint FK_PUBL_ALLELE_SRC_MATL_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID)
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT
   add constraint FK_SEARCH_DETERMINANT_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP
   add constraint FK_SEARCH_DETERMINANT_RELT_01 foreign key (SEARCH_DETERMINANT_1_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID)
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP
   add constraint FK_SEARCH_DETERMINANT_RELT_02 foreign key (SEARCH_DETERMINANT_2_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID)
/

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP
   add constraint FK_SEARCH_DETERMINANT_RELT_03 foreign key (SRCH_DTRM_RELT_TYPE_CDE)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE (SRCH_DTRM_RELT_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.SEROLOGY
   add constraint FK_SEROLOGY_FK_SEROLO_SEROLOGY foreign key (PARENT_SEROLOGY_IID)
      references GENOMIC_REF_DATA.SEROLOGY (SEROLOGY_IID)
/

alter table GENOMIC_REF_DATA.SEROLOGY
   add constraint FK_SEROLOGY_02 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.SEROLOGY
   add constraint FK_SEROLOGY_03 foreign key (SEROLOGY_STATUS_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS (GENOMIC_REF_OBJECT_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT
   add constraint FK_SEROLOGY_SRCH_DTRM_01 foreign key (SEROLOGY_IID)
      references GENOMIC_REF_DATA.SEROLOGY (SEROLOGY_IID)
/

alter table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT
   add constraint FK_SEROLOGY_SRCH_DTRM_02 foreign key (SEARCH_DETERMINANT_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID)
/

alter table GENOMIC_REF_DATA.SEROLOGY_STG
   add constraint FK_SEROLOGY_STG_01 foreign key (PARENT_SEROLOGY_IID)
      references GENOMIC_REF_DATA.SEROLOGY_STG (SEROLOGY_IID)
/

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP
   add constraint FK_TEST_RESULT_ALLELE_GROUP_01 foreign key (TEST_RESLT_REPRT_TYPE_CDE)
      references GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE (TEST_RESLT_REPRT_TYPE_CDE)
/

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP
   add constraint FK_TEST_RESULT_ALLELE_GROUP_02 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP
   add constraint FK_TEST_RESULT_ALLELE_GROUP_03 foreign key (TEST_RESULT_GRP_STATUS_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS (GENOMIC_REF_OBJECT_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP
   add constraint FK_XX_ALLELE_GROUP_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID)
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP
   add constraint FK_XX_ALLELE_GROUP_02 foreign key (XX_ALLELE_GROUP_STATUS_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REF_OBJECT_STATUS (GENOMIC_REF_OBJECT_STATUS_CDE)
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM
   add constraint FK_XX_ALLELE_GRP_SRCH_DTRM_01 foreign key (XX_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.XX_ALLELE_GROUP (XX_ALLELE_GROUP_IID)
/

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP_SEARCH_DTRM
   add constraint FK_XX_ALLELE_GRP_SRCH_DTRM_02 foreign key (SEARCH_DETERMINANT_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID)
/

