/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     10/24/2016 9:52:00 AM                        */
/*==============================================================*/


drop table if exists GENOMIC_REF_DATA.ALLELE;

drop table if exists GENOMIC_REF_DATA.ALLELE_AUD;

drop table if exists GENOMIC_REF_DATA.ALLELE_CODE;

drop table if exists GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION;

drop table if exists GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD;

drop table if exists GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT;

drop table if exists ALLELE_CODE_EXPANSION;

drop table if exists GENOMIC_REF_DATA.ALLELE_CODE_TYPE;

drop table if exists GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED;

drop table if exists GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG;

drop table if exists GENOMIC_REF_DATA.ALLELE_LIST;

drop table if exists GENOMIC_REF_DATA.ALLELE_LIST_ALLELE;

drop table if exists GENOMIC_REF_DATA.ALLELE_LIST_ALLELE_STG;

drop table if exists GENOMIC_REF_DATA.ALLELE_LIST_HAPLOTYPE;

drop table if exists GENOMIC_REF_DATA.ALLELE_LIST_STG;

drop table if exists GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE;

drop table if exists GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG;

drop table if exists ALLELE_REJECTION_STG;

drop table if exists GENOMIC_REF_DATA.ALLELE_RELATIONSHIP;

drop table if exists GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_REASON;

drop table if exists GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_REASON_DEF;

drop table if exists GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG;

drop table if exists GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE;

drop table if exists GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT;

drop table if exists GENOMIC_REF_DATA.ALLELE_STATUS;

drop table if exists GENOMIC_REF_DATA.ALLELE_STATUS_DEF;

drop table if exists GENOMIC_REF_DATA.ALLELE_STG;

drop table if exists GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP;

drop table if exists GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP_ALLELE;

drop table if exists GENOMIC_REF_DATA.BEHAVIOR_CATEGORY;

drop table if exists GENOMIC_REF_DATA.BEHAVIOR_GROUP_CONTEXT;

drop table if exists GENOMIC_REF_DATA.BEHVR_ALLELE_GROUP_ALLELE_AUD;

drop table if exists GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS;

drop table if exists GENOMIC_REF_DATA.CURATOR_DATA;

drop table if exists GENOMIC_REF_DATA.CURATOR_DATA_RELEASE;

drop table if exists GENOMIC_REF_DATA.GENE_FAMILY;

drop table if exists GENOMIC_REF_DATA.GENE_LOCUS;

drop table if exists GENOMIC_REF_DATA.GENOME_DATABASE_VERSION;

drop table if exists GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG;

drop table if exists GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT;

drop table if exists GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE;

drop table if exists GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF;

drop table if exists GENOMIC_REF_DATA.GENOTYPE;

drop table if exists GENOMIC_REF_DATA.GENOTYPE_LIST;

drop table if exists GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE;

drop table if exists GENOMIC_REF_DATA.HAPLOTYPE;

drop table if exists GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER;

drop table if exists GENOMIC_REF_DATA.MHC_CLASSIFICATION;

drop table if exists GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VERSION;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_AUD;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_STG;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL;

drop table if exists GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG;

drop table if exists GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG;

drop table if exists GENOMIC_REF_DATA.SEARCH_DETERMINANT;

drop table if exists GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE;

drop table if exists GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP;

drop table if exists GENOMIC_REF_DATA.SEROLOGY;

drop table if exists GENOMIC_REF_DATA.SEROLOGY_ALLELE;

drop table if exists SEROLOGY_CONTEXT;

drop table if exists GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT;

drop table if exists GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP;

drop table if exists GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE;

drop table if exists GENOMIC_REF_DATA.XX_ALLELE_GROUP;

drop table if exists GENOMIC_REF_DATA.XX_ALLELE_GROUP_ALLELE;

drop table if exists GENOMIC_REF_DATA.XX_ALLELE_GROUP_ALLELE_AUD;

/*==============================================================*/
/* Table: ALLELE                                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE
(
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ACCESSION_NUM        varchar(20) comment 'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.',
   GENOME_DATABASE_VER_IID numeric(9,0) comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   ALLELE_FIRST_RELEASE_VER_NUM varchar(10) comment 'The date that the allele tied to the accession number was published or discovered.',
   ALLELE_PUBLISHED_DTE timestamp comment 'The date that the allele tied to the accession number was published or discovered.',
   ALLELE_LAST_UPDATE_VER_NUM varchar(10) comment 'The date that the allele tied to the accession number was updated.  This could be an expansion of the definition or a renaming, etc.',
   DB_VER_ALLELE_REL_STATUS_TXT varchar(500) comment 'A short textual ''label'' or name that provides the allele status a specific database version release. Values include things like ''sequence modified'', ''new allele'', ''sequence unchanged'', etc.',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   NOMENCLATURE_FORMAT_VER_CDE varchar(10) comment 'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are ?? = V2, ?? = V3',
   LONG_FORMAT_NME      varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).',
   SHORT_FORMAT_NME     varchar(20) comment 'A short textual ''label'' or name (that corresponds to a valid ID) by which an Allele is known/can be recognized.  This is used for HLA Alleles, unlike the long format name which may extend to all 4 fields within the nomenclature - the short name specifically represents ONLY to field 2 and is used for legacy search purposes.  In other words, multiple long format names share the same short format name. ',
   HLA_EXPRESSION_CHARACTER_CDE varchar(1) comment 'A single character code used as an optional suffix on HLA alleles',
   CONFIRMED_IND        varchar(1) not null comment 'Indicates if the allele has been defined as confirmed by the source/curator.  Values are Y and N',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_IID)
);

alter table GENOMIC_REF_DATA.ALLELE comment 'A variation of a particular gene locus.';

/*==============================================================*/
/* Table: ALLELE_AUD                                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_AUD
(
   ALLELE_AUD_IID       numeric(9,0) not null,
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   CHANGE_TS            timestamp not null,
   GENOMIC_ALLELE_ACCESSION_IID numeric(9,0) comment 'A system generated identifier (surrogate key) that uniquely represents a genome allele accession ''record'' within the Enterprise.  ',
   GENOME_DATABASE_VER_IID numeric(9,0) comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   DB_VER_ALLELE_REL_STATUS_NME varchar(50) comment 'A short textual ''label'' or name that provides the allele status a specific database version release. Values include things like ''sequence modified'', ''new allele'', ''sequence unchanged'', etc.',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   NOMENCLATURE_FORMAT_VER_CDE varchar(10) comment 'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are ?? = V2, ?? = V3',
   LONG_FORMAT_NME      varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).',
   SHORT_FORMAT_NME     varchar(20) comment 'A short textual ''label'' or name (that corresponds to a valid ID) by which an Allele is known/can be recognized.  This is used for HLA Alleles, unlike the long format name which may extend to all 4 fields within the nomenclature - the short name specifically represents ONLY to field 2 and is used for legacy search purposes.  In other words, multiple long format names share the same short format name. ',
   HLA_EXPRESSION_CHARACTER_CDE varchar(1) comment 'A single character code used as an optional suffix on HLA alleles',
   CONFIRMED_IND        varchar(1) not null comment 'Indicates if the allele has been defined as confirmed by the source/curator.  Values are Y and N',
   CHANGE_TYPE_CDE      varchar(10) not null comment 'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis',
   CHANGE_BY_ID         varchar(50) not null,
   primary key (ALLELE_AUD_IID),
   key AK_ALLELE_AUD (ALLELE_IID, CHANGE_TS)
);

alter table GENOMIC_REF_DATA.ALLELE_AUD comment 'A variation of a particular gene locus, this representation ';

/*==============================================================*/
/* Table: ALLELE_CODE                                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE
(
   ALLELE_CDE           varchar(10) not null comment 'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)',
   ALLELE_CODE_TYPE_CDE varchar(10) not null comment 'A valid value to represent a particular kind or type of Allele Code Designation.  Values represent G = ''generic'' and AS = ''allele specific''.  Generic defines ONLY the allele family (i.e. field 1 of the nomenclature); these can be used/leveraged across mutlipel gene locus.  Allele specific defines the allele family and protein (i.e. fields 1 & 2 nomenclature) ; these are likely used for a specific gene locus.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_CDE)
);

/*==============================================================*/
/* Table: ALLELE_CODE_DESIGNATION                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION
(
   ALLELE_CODE_DESIGNATION_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  ',
   ALLELE_CODE_DESIGNATION_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Code Designation is known/can be recognized  This name is a concatenation of Gene Family, Gene Locus, Allele Family and Allele Code.  HLA-A*02:AB (generic) or HLA-A*02:AAK (allele specific)',
   ALLELE_CDE           varchar(10) not null comment 'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_CODE_DESIGNATION_IID),
   key AK_ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_NME, GENE_LOCUS_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION comment 'A representation of a specific ''usage'' for an Allele Code ';

/*==============================================================*/
/* Table: ALLELE_CODE_DESIGNATION_AUD                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD
(
   ALLELE_CODE_DESGNTN_AUD_IID numeric(9,0) not null,
   ALLELE_CODE_DESIGNATION_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  ',
   CHANGE_TS            timestamp not null,
   ALLELE_CODE_DESIGNATION_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Code Designation is known/can be recognized  This name is a concatenation of Gene Family, Gene Locus, Allele Family and Allele Code.  HLA-A*02:AB (generic) or HLA-A*02:AAK (allele specific)',
   ALLELE_CDE           varchar(10) not null comment 'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   CHANGE_TYPE_CDE      varchar(10) not null comment 'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis',
   CHANGE_BY_ID         varchar(50) not null,
   primary key (ALLELE_CODE_DESGNTN_AUD_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_AUD comment 'A representation of a specific ''usage'' for an Allele Code ';

/*==============================================================*/
/* Table: ALLELE_CODE_DESIGNATION_RELT                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT
(
   ALLELE_CODE_DESGNTN_1_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  ',
   ALLELE_CODE_DESGNTN_2_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an Allele Code Designation within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_CODE_DESGNTN_1_IID, ALLELE_CODE_DESGNTN_2_IID)
);

/*==============================================================*/
/* Table: ALLELE_CODE_EXPANSION                                 */
/*==============================================================*/
create table ALLELE_CODE_EXPANSION
(
   ALLELE_CDE           varchar(10) not null comment 'A valid value to represent an Allele Code, typically represented with 4-5 alpha characters.  e.g. AB = ''01/02''.  Letters that can be mistaken for numbers are excluded from being incorproated into said codes (O,Q, I, L)',
   ALLELE_EXPANSION_NME varchar(20) not null comment 'A portion of an allele name that is applicable to a specific allele code; the level of detail is dependent upon the allele code type.  For example of the allele code is generic (G), the expansion allele names would be things like 01, 02 (representing the first field of the normenclature); when the allele code is allele specific, the expansioin allele names would be things like 01:01, 01:02 (representing first and second fields of the allele nomenclature)',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_CDE, ALLELE_EXPANSION_NME)
);

/*==============================================================*/
/* Table: ALLELE_CODE_TYPE                                      */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_CODE_TYPE
(
   ALLELE_CODE_TYPE_CDE varchar(10) not null comment 'A valid value to represent a particular kind or type of Allele Code Designation.  Values represent G = ''generic'' and AS = ''allele specific''.  Generic defines ONLY the allele family (i.e. field 1 of the nomenclature); these can be used/leveraged across mutlipel gene locus.  Allele specific defines the allele family and protein (i.e. fields 1 & 2 nomenclature) ; these are likely used for a specific gene locus.',
   ALLELE_CODE_TYPE_NME varchar(50) not null comment 'A name or label that provides insight into what a specific code represents for an Allele Code Designation Type.  A valid value to represent a particular kind or type of Allele Code Designation.  (e.g. G = Generic, AS = Allele Specific).  The codes represented in example are G and AS; the names are Generic and Allele Specific respectively',
   ALLELE_CODE_TYPE_TXT varchar(100) comment 'A textual description that can provide additional context or explanation for each code/name (name/value pair).  Allele Specific includes the allele family and protein (fields 1 and 2 of nomenclature) where Generic ONLY includes the protien (field 2) making them more universal.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_CODE_TYPE_CDE),
   key AK_ALLELE_CODE_TYPE (ALLELE_CODE_TYPE_NME)
);

alter table GENOMIC_REF_DATA.ALLELE_CODE_TYPE comment 'A classification for Allele Code that defines the specificit';

/*==============================================================*/
/* Table: ALLELE_COMMON_WELL_DOCUMENTED                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED
(
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   COMMON_WELL_DOC_STATUS_CDE varchar(10) not null comment 'A valid value to represent a particular status for Common/Well Documented Alleles  Values include COMMON = Common, WELLDOC = Well Documented, and NOTCWD = Not common/well documented',
   COMMON_WELL_DOC_VER_NUM varchar(10) not null comment 'A particular version of the decision/manifest that declared an allele to be common/well documented',
   COMMON_WELL_DOC_REF_URL varchar(256) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_IID)
);

/*==============================================================*/
/* Table: ALLELE_COMMON_WELL_DOC_STG                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG
(
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   COMMON_WELL_DOC_STATUS_CDE varchar(20) not null,
   COMMON_WELL_DOC_VER_NUM varchar(10) not null comment 'A particular version of the decision/manifest that declared an allele to be common/well documented',
   COMMON_WELL_DOC_REF_URL varchar(256) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_IID)
);

/*==============================================================*/
/* Table: ALLELE_LIST                                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_LIST
(
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   GENOME_DATABASE_VER_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   ALLELE_LIST_CALC_HASHCODE_NUM numeric(9,0) comment 'A calculated value that in effect is a replication of the genomic_allele_list_iid.  For example, if the Genomic Allele List is HLA-A*02:34|HLA-A*02:62, the list_id is 47, but the internal hashocde value as calculated for the Search Server is -846493341',
   ALLELE_LIST_SPECIAL_CASE_NUM numeric(9,0) comment 'unknown purpose
            speculation: used for cases when you need a genotype list that contains a WMDA code (UUUU,NNNN,XXXX,  NEW) these special cases come from t_antigen instead of t_who_allele
            ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_LIST_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_LIST comment 'A list or collection of ''possible'' alleles; this represent';

/*==============================================================*/
/* Table: ALLELE_LIST_ALLELE                                    */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE
(
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_LIST_IID, ALLELE_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE comment 'The specific Alleles that are linked/connected to an Allele ';

/*==============================================================*/
/* Table: ALLELE_LIST_ALLELE_STG                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE_STG
(
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_LIST_IID, ALLELE_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE_STG comment 'The specific Alleles that are linked/connected to an Allele ';

/*==============================================================*/
/* Table: ALLELE_LIST_HAPLOTYPE                                 */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_LIST_HAPLOTYPE
(
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   HAPLOTYPE_IID        numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a haplotype within the Enterprise. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (HAPLOTYPE_IID, ALLELE_LIST_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_LIST_HAPLOTYPE comment 'A unique combination of a specific Allele List with a specif';

/*==============================================================*/
/* Table: ALLELE_LIST_STG                                       */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_LIST_STG
(
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   GENOME_DATABASE_VER_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   ALLELE_LIST_CALC_HASHCODE_NUM numeric(9,0) comment 'A calculated value that in effect is a replication of the genomic_allele_list_iid.  For example, if the Genomic Allele List is HLA-A*02:34|HLA-A*02:62, the list_id is 47, but the internal hashocde value as calculated for the Search Server is -846493341',
   ALLELE_LIST_SPECIAL_CASE_NUM numeric(9,0) comment 'unknown purpose
            speculation: used for cases when you need a genotype list that contains a WMDA code (UUUU,NNNN,XXXX,  NEW) these special cases come from t_antigen instead of t_who_allele
            ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_LIST_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_LIST_STG comment 'A list or collection of ''possible'' alleles; this represent';

/*==============================================================*/
/* Table: ALLELE_NUCLEOTIDE_SEQUENCE                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE
(
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ALLELE_NUCLEOTIDE_SEQ_TXT text not null comment 'The textual representation of the nucleotides (A, T, C, and G) in a specific sequence that uniquely defines a particular allele.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE comment 'The actual DNA sequence for a specific allele which is compr';

/*==============================================================*/
/* Table: ALLELE_NUCLEOTIDE_SEQUENCE_STG                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG
(
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ALLELE_NUCLEOTIDE_SEQ_TXT text not null comment 'The textual representation of the nucleotides (A, T, C, and G) in a specific sequence that uniquely defines a particular allele.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG comment 'The actual DNA sequence for a specific allele which is compr';

/*==============================================================*/
/* Table: ALLELE_REJECTION_STG                                  */
/*==============================================================*/
create table ALLELE_REJECTION_STG
(
   ALLELE_REJECTION_IID numeric(9,0) not null,
   LONG_FORMAT_NME      varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).',
   ACCESSION_NUM        varchar(20) not null comment 'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.',
   ALLELE_PUBLISHED_DTE timestamp not null comment 'The date that the allele tied to the accession number was published or discovered.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_REJECTION_IID)
);

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP                                   */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP
(
   ALLELE_RELATIONSHIP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a specific relationships between alleles within the Enterprise.  ',
   ALLELE_1_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ALLELE_2_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  This represents a secondary reference to an allele in a specific allele relationship (pair).',
   ALLELE_RELATIONSHIP_TYPE_CDE varchar(10) not null comment 'A valid value to represent a specific kind of relationship that may exists between alleles (e.g. ?? = Replacement - for renamed/deleted situations, ?? = Alternate - for when there are a variation of choices for an allele representation, ?? = Best Match). ',
   ALLELE_RELATIONSHIP_REASON_TXT varchar(100),
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_RELATIONSHIP_IID),
   key AK_ALLELE_RELATIONSHIP (ALLELE_1_IID, ALLELE_2_IID, ALLELE_RELATIONSHIP_TYPE_CDE)
);

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP comment 'A specific pair or set of Alleles that are connected to each';

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP_REASON                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_REASON
(
   ALLELE_RELATIONSHIP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a specific relationships between alleles within the Enterprise.  ',
   ALLELE_RELATIONSHIP_REASON_IID numeric(9,0) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_RELATIONSHIP_IID, ALLELE_RELATIONSHIP_REASON_IID)
);

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP_REASON_DEF                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_REASON_DEF
(
   ALLELE_RELATIONSHIP_REASON_IID numeric(9,0) not null,
   ALLELE_RELATIONSHIP_REASON_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code )by which an Allele Relationship Reason is known/can be recognized',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_RELATIONSHIP_REASON_IID),
   key AK_ALLELE_RELATIONSHIP_REASON (ALLELE_RELATIONSHIP_REASON_NME)
);

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP_STG                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG
(
   ALLELE_RELATIONSHIP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a specific relationships between alleles within the Enterprise.  ',
   ALLELE_1_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ALLELE_2_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ALLELE_RELATIONSHIP_TYPE_CDE varchar(10) not null comment 'A valid value to represent a specific kind of relationship that may exists between alleles (e.g. ?? = Replacement - for renamed/deleted situations, ?? = Alternate - for when there are a variation of choices for an allele representation, ?? = Best Match). ',
   ALLELE_RELATIONSHIP_REASON_TXT varchar(100),
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_RELATIONSHIP_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG comment 'A specific pair or set of Alleles that are connected to each';

/*==============================================================*/
/* Table: ALLELE_RELATIONSHIP_TYPE                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE
(
   ALLELE_RELATIONSHIP_TYPE_CDE varchar(10) not null comment 'A valid value to represent a specific kind of relationship that may exists between alleles (e.g. ?? = Replacement - for renamed/deleted situations, ?? = Alternate - for when there are a variation of choices for an allele representation, ?? = Best Match). ',
   ALLELE_RELATIONSHIP_TYPE_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Relationship Type is known/can be recognized',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_RELATIONSHIP_TYPE_CDE),
   key AK_ALLELE_RELATIONSHIP_TYPE (ALLELE_RELATIONSHIP_TYPE_NME)
);

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE comment 'The context or purpose in defining a particular pair of Alle';

/*==============================================================*/
/* Table: ALLELE_SEARCH_DETERMINANT                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT
(
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   SEARCH_DETERMINANT_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_IID, SEARCH_DETERMINANT_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT comment 'A unique combnation of a specific Allele and a specific Sear';

/*==============================================================*/
/* Table: ALLELE_STATUS                                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_STATUS
(
   ALLELE_STATUS_IID    numeric(9,0) not null,
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ALLELE_STATUS_CDE    varchar(10) not null comment 'A valid value to represent a specific allele status (e.g. ?? = Initial/Not yet validated, ?? = Valid, ?? = Deprecated, ?? = Invalid)',
   ALLELE_STATUS_DTE    timestamp not null comment 'The date that the allele status was established/defined.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_STATUS_IID),
   key AK_ALLELE_STATUS (ALLELE_IID, ALLELE_STATUS_CDE, ALLELE_STATUS_DTE)
);

alter table GENOMIC_REF_DATA.ALLELE_STATUS comment 'A unique combination of a specific Allele to a specific Alle';

/*==============================================================*/
/* Table: ALLELE_STATUS_DEF                                     */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_STATUS_DEF
(
   ALLELE_STATUS_CDE    varchar(10) not null comment 'A valid value to represent a specific allele status (e.g. ?? = Initial/Not yet validated, ?? = Valid, ?? = Deprecated, ?? = Invalid)',
   ALLELE_STATUS_NME    varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Status is known/can be recognized',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (ALLELE_STATUS_CDE),
   key AK_ALLELE_STATUS_DEF (ALLELE_STATUS_NME)
);

alter table GENOMIC_REF_DATA.ALLELE_STATUS_DEF comment 'The valid values for statuses that can be associated/linked ';

/*==============================================================*/
/* Table: ALLELE_STG                                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.ALLELE_STG
(
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   ACCESSION_NUM        varchar(20) comment 'A unique identifier showing a progression of allele discoveries per locus; the accession number is independent of any database version and will likely be unique ONLY within the context of a specific source or curator.',
   GENOME_DATABASE_VER_IID numeric(9,0) comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   ALLELE_FIRST_RELEASE_VER_NUM varchar(10) comment 'The date that the allele tied to the accession number was published or discovered.',
   ALLELE_PUBLISHED_DTE timestamp comment 'The date that the allele tied to the accession number was published or discovered.',
   ALLELE_LAST_UPDATE_VER_NUM varchar(10) comment 'The date that the allele tied to the accession number was updated.  This could be an expansion of the definition or a renaming, etc.',
   DB_VER_ALLELE_REL_STATUS_TXT varchar(500) comment 'A short textual ''label'' or name that provides the allele status a specific database version release. Values include things like ''sequence modified'', ''new allele'', ''sequence unchanged'', etc.',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   NOMENCLATURE_FORMAT_VER_CDE varchar(10) comment 'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are ?? = V2, ?? = V3',
   LONG_FORMAT_NME      varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized.  For HLA Alleles, this name can vary from full nomenclature consisting of Gene Family, Locus with 2, 3 or 4 distinct fields of detail (HLA-A*01:01, HLA-A*01:01:01, HLA-A*01:01:01:02).',
   SHORT_FORMAT_NME     varchar(20) comment 'A short textual ''label'' or name (that corresponds to a valid ID) by which an Allele is known/can be recognized.  This is used for HLA Alleles, unlike the long format name which may extend to all 4 fields within the nomenclature - the short name specifically represents ONLY to field 2 and is used for legacy search purposes.  In other words, multiple long format names share the same short format name. ',
   HLA_EXPRESSION_CHARACTER_CDE varchar(1) comment 'A single character code used as an optional suffix on HLA alleles',
   CONFIRMED_IND        varchar(1) not null comment 'Indicates if the allele has been defined as confirmed by the source/curator.  Values are Y and N',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   REVIEW_STATUS_NME    varchar(50) comment 'It will hold the information about review status. Possible values: AUTO_PROMOTE, NAME_MISMATCH, ACCESSION_NUMBER_MISMATCH',
   primary key (ALLELE_IID)
);

alter table GENOMIC_REF_DATA.ALLELE_STG comment 'A variation of a particular gene locus.';

/*==============================================================*/
/* Table: BEHAVIOR_ALLELE_GROUP                                 */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP
(
   BEHAVIOR_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a behavior allele group within the Enterprise.  ',
   BEHAVIOR_ALLELE_GROUP_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which a Behavior Allele Group is known/can be recognized',
   BEHAVIOR_CATEGORY_CDE varchar(10) not null comment 'A valid value to represent a specific kind of behavior category that can be applied to alleles (e.g. ?? = Antigen Binding, ?? = KIR Ligan, ?? - T cell epitope)',
   BEHAVIOR_GROUP_CONTEXT_CDE varchar(10) comment 'A valid value to represent a specific kind of context that can be applied to allele behavior groups (e.g. ?? = ARS Sets, ?? = EXP Sets, C1 = [need definition])',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (BEHAVIOR_ALLELE_GROUP_IID),
   key AK_BEHAVIOR_ALLELE_GROUP (BEHAVIOR_ALLELE_GROUP_NME)
);

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP comment 'Named sets of antigens. For example, ARS (Antigen Receptor S';

/*==============================================================*/
/* Table: BEHAVIOR_ALLELE_GROUP_ALLELE                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP_ALLELE
(
   BEHAVIOR_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a behavior allele group within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (BEHAVIOR_ALLELE_GROUP_IID, ALLELE_IID)
);

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP_ALLELE comment 'Represents a many-to-many association between an antigen and';

/*==============================================================*/
/* Table: BEHAVIOR_CATEGORY                                     */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY
(
   BEHAVIOR_CATEGORY_CDE varchar(10) not null comment 'A valid value to represent a specific kind of behavior category that can be applied to alleles (e.g. ?? = Antigen Binding, ?? = KIR Ligan, ?? - T cell epitope)',
   BEHAVIOR_CATEGORY_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Behavior Category is known/can be recognized',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (BEHAVIOR_CATEGORY_CDE),
   key AK_ALLELE_BEHAVIOR_CATEGORY (BEHAVIOR_CATEGORY_NME)
);

alter table GENOMIC_REF_DATA.BEHAVIOR_CATEGORY comment 'The valid values for behavior ''types'' or categories that c';

/*==============================================================*/
/* Table: BEHAVIOR_GROUP_CONTEXT                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHAVIOR_GROUP_CONTEXT
(
   BEHAVIOR_GROUP_CONTEXT_CDE varchar(10) not null comment 'A valid value to represent a specific kind of context that can be applied to allele behavior groups (e.g. ?? = ARS Sets, ?? = EXP Sets, C1 = [need definition])',
   BEHAVIOR_GROUP_CONTEXT_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Behavior Group Context is known/can be recognized',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (BEHAVIOR_GROUP_CONTEXT_CDE),
   key AK_BEHAVIOR_GROUP_CONTEXT (BEHAVIOR_GROUP_CONTEXT_NME)
);

alter table GENOMIC_REF_DATA.BEHAVIOR_GROUP_CONTEXT comment 'Named sets of antigens. For example, ARS (Antigen Receptor S';

/*==============================================================*/
/* Table: BEHVR_ALLELE_GROUP_ALLELE_AUD                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.BEHVR_ALLELE_GROUP_ALLELE_AUD
(
   BHVR_ALLELE_GRP_ALLELE_AUD_IID numeric(9,0) not null,
   BEHAVIOR_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a behavior allele group within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   CHANGE_TS            timestamp not null,
   CHANGE_TYPE_CDE      varchar(10) not null comment 'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis',
   CHANGE_BY_ID         varchar(50) not null,
   primary key (BHVR_ALLELE_GRP_ALLELE_AUD_IID),
   key AK_BEHVR_ALLELE_GRP_ALLELE_AUD (BEHAVIOR_ALLELE_GROUP_IID, ALLELE_IID, CHANGE_TS)
);

alter table GENOMIC_REF_DATA.BEHVR_ALLELE_GROUP_ALLELE_AUD comment 'A historical snap shot of the allele membership within a par';

/*==============================================================*/
/* Table: COMMON_WELL_DOCUMENTED_STATUS                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS
(
   COMMON_WELL_DOC_STATUS_CDE varchar(20) not null,
   COMMON_WELL_DOC_STATUS_NME varchar(50) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (COMMON_WELL_DOC_STATUS_CDE),
   key AK_COMMON_WELL_DOC_STATUS (COMMON_WELL_DOC_STATUS_NME)
);

/*==============================================================*/
/* Table: CURATOR_DATA                                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.CURATOR_DATA
(
   CURATOR_DATA_IID     numeric(9,0) not null,
   GENE_FAMILY_CDE      varchar(10) comment 'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ??, etc.)',
   DATA_FILE_NME        varchar(50),
   DATA_FILE_GROUP_NME  varchar(50) not null,
   DATA_FILE_DESCRIPTION_TXT varchar(100),
   DATA_FILE_LOCATION_URL varchar(256),
   COMMIT_FILE_LOCATION_URL varchar(256),
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (CURATOR_DATA_IID)
);

/*==============================================================*/
/* Table: CURATOR_DATA_RELEASE                                  */
/*==============================================================*/
create table GENOMIC_REF_DATA.CURATOR_DATA_RELEASE
(
   CURATOR_DATA_RELEASE_IID numeric(9,0) not null,
   CURATOR_DATA_IID     numeric(9,0) not null,
   COMMIT_FILE_TS       timestamp,
   COMMIT_DESCRIPTION_TXT varchar(2000),
   DOWNLOAD_STATUS_NME  varchar(50) not null,
   REVIEW_STATUS_NME    varchar(50) not null,
   FILE_LOCATION_TXT    varchar(200),
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (CURATOR_DATA_RELEASE_IID)
);

/*==============================================================*/
/* Table: GENE_FAMILY                                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENE_FAMILY
(
   GENE_FAMILY_CDE      varchar(10) not null comment 'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ??, etc.)',
   GENE_FAMILY_NME      varchar(50) not null comment 'The description for a given gene family.  For example for HLA the description is Human Leukocyte Antigen',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENE_FAMILY_CDE),
   key AK_GENE_FAMILY (GENE_FAMILY_NME)
);

alter table GENOMIC_REF_DATA.GENE_FAMILY comment 'The sets of Genes that NMDP concerns itself with.  As of May';

/*==============================================================*/
/* Table: GENE_LOCUS                                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENE_LOCUS
(
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   GENE_LOCUS_LONG_NME  varchar(50) not null comment 'A comprehensive textual ''label'' or name (that corresponds to a valid code) by which a Gene Locus is known/can be recognized; For example HLA-A would be considered a long/comprehensive name, where A would be considered the short name (always within the context of the Gene Family)
            ',
   GENE_LOCUS_SHORT_NME varchar(20) comment 'A shorter textual ''label'' or name (that corresponds to a valid code) by which a Gene Locus is known/can be recognized; For example HLA-A would be considered a long/comprehensive name, where A would be considered the short name (always within the context of the Gene Family)
            ',
   GENE_FAMILY_CDE      varchar(10) not null comment 'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ??, etc.)',
   EFF_GENOME_DATABASE_VER_IID numeric(9,0) comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise; this id represents the first database version for which a gene locus was introduced.',
   PREVIOUS_GENE_LOCUS_IID numeric(9,0) comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise; this particular reference represents the id by which the gene locus was previously known.',
   MHC_CLASSIFICATION_CDE varchar(2) comment 'A valid value to represent a specific kind of MHC classification (applicable ONLY to the HLA Gene Family) (e.g. I = Class I, II = Class II)',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENE_LOCUS_IID),
   key AK_GENE_LOCUS (GENE_LOCUS_LONG_NME)
);

alter table GENOMIC_REF_DATA.GENE_LOCUS comment 'The valid value of Gene Locus within a given Gene Family.  E';

/*==============================================================*/
/* Table: GENOME_DATABASE_VERSION                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION
(
   GENOME_DATABASE_VER_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   GENE_FAMILY_CDE      varchar(10) not null comment 'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ??, etc.)',
   DATABASE_VERSION_TXT varchar(50) not null comment 'The name given to a published database. the name has historically followed the following pattern: <major release number>.<minor release number>.<patch/correction> the name is established by committee',
   DATABASE_VER_PUBLISHED_DTE timestamp not null comment 'The date that the database was published.  Manually entered based on the date associated with the file at the EBI website.',
   DATABASE_VER_PUBLISHED_URL varchar(256) not null comment 'The github link for the curator file',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOME_DATABASE_VER_IID)
);

alter table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION comment 'An historical representation of the metadata assocated with ';

/*==============================================================*/
/* Table: GENOME_DATABASE_VERSION_STG                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG
(
   GENOME_DATABASE_VER_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   GENE_FAMILY_CDE      varchar(10) not null comment 'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ??, etc.)',
   DATABASE_VERSION_TXT varchar(50) not null comment 'The name given to a published database. the name has historically followed the following pattern: <major release number>.<minor release number>.<patch/correction> the name is established by committee',
   DATABASE_VER_PUBLISHED_DTE timestamp not null comment 'The date that the database was published.  Manually entered based on the date associated with the file at the EBI website.',
   DATABASE_VER_PUBLISHED_URL varchar(256) not null comment 'The github link for the curator file',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOME_DATABASE_VER_IID)
);

alter table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG comment 'An historical representation of the metadata assocated with ';

/*==============================================================*/
/* Table: GENOMIC_REFERENCE_OBJECT                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT
(
   GENOMIC_REFERENCE_OBJECT_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a Genomic Reference Object. ',
   GENOMIC_REF_OBJECT_TYPE_CDE varchar(10) not null comment 'A valid value to represent a particular kind or type of Genomic Reference Object; valid types may vary by gene family.  Values are ?? = Allele, ?? = Allele Code Designation, ?? = Serology, ?? = XX Group',
   REFERENCE_OBJECT_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents the ''originating'' id for a concept that is implemented via the Genomic Reference Object. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOMIC_REFERENCE_OBJECT_IID),
   key AK_GENOMIC_REFERENCE_OBJECT (GENOMIC_REF_OBJECT_TYPE_CDE, REFERENCE_OBJECT_IID)
);

/*==============================================================*/
/* Table: GENOMIC_REFERENCE_OBJECT_TYPE                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE
(
   GENOMIC_REF_OBJECT_TYPE_CDE varchar(10) not null comment 'A valid value to represent a particular kind or type of Genomic Reference Object; valid types may vary by gene family.  Values are ?? = Allele, ?? = Allele Code Designation, ?? = Serology, ?? = XX Group',
   GENOMIC_REF_OBJECT_TYPE_NME varchar(50) comment 'A textual ''label'' or name (that corresponds to a valid code) by which a Genomic Reference Object is known/can be recognized.  For Example, Allele, Allele Code Designation, etc.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOMIC_REF_OBJECT_TYPE_CDE),
   key AK_GENOMIC_REFERENCE_OBJ_TYPE (GENOMIC_REF_OBJECT_TYPE_NME)
);

/*==============================================================*/
/* Table: GENOMIC_REF_OBJ_LEGACY_XREF                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF
(
   GENOMIC_REFERENCE_OBJECT_IID numeric(9,0) comment 'A system generated identifier (surrogate key) that uniquely represents a Genomic Reference Object. ',
   ANTIGEN_EID          numeric(9,0),
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. '
);

/*==============================================================*/
/* Table: GENOTYPE                                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOTYPE
(
   GENOTYPE_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genotype within the Enterprise.  ',
   HAPLOTYPE_1_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a the first of two haplotypes that define a genotype within the Enterprise. ',
   HAPLOTYPE_2_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a the second of two haplotypes that define a genotype within the Enterprise. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOTYPE_IID)
);

alter table GENOMIC_REF_DATA.GENOTYPE comment 'Identifies a pair of Haplotypes for a specific locus.  Pair ';

/*==============================================================*/
/* Table: GENOTYPE_LIST                                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOTYPE_LIST
(
   GENOTYPE_LIST_IID    numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genotype list within the Enterprise. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOTYPE_LIST_IID)
);

alter table GENOMIC_REF_DATA.GENOTYPE_LIST comment 'Contains a rollup structure for grouping together genotypes ';

/*==============================================================*/
/* Table: GENOTYPE_LIST_GENOTYPE                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE
(
   GENOTYPE_LIST_IID    numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genotype list within the Enterprise. ',
   GENOTYPE_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genotype within the Enterprise. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOTYPE_LIST_IID, GENOTYPE_IID)
);

alter table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE comment 'Contains a rollup of Genotypes to a Genotype List (Genotype_';

/*==============================================================*/
/* Table: HAPLOTYPE                                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.HAPLOTYPE
(
   HAPLOTYPE_IID        numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a haplotype within the Enterprise. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (HAPLOTYPE_IID)
);

alter table GENOMIC_REF_DATA.HAPLOTYPE comment 'Identifies a list of alleles lists contained within a specif';

/*==============================================================*/
/* Table: HLA_EXPRESSION_CHARACTER                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER
(
   HLA_EXPRESSION_CHARACTER_CDE varchar(1) not null comment 'A single character code used as an optional suffix on HLA alleles',
   HLA_EXPRESSION_CHARACTER_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Annotation is known/can be recognized',
   HLA_EXPRESSION_CHARACTER_TXT varchar(100) comment 'A textual description that provides additional context or explanation for the expression character and how it should be interpreted',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (HLA_EXPRESSION_CHARACTER_CDE),
   key AK_AK_EXPRESSION_CHARACTER (HLA_EXPRESSION_CHARACTER_NME)
);

alter table GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER comment 'The valid values for Expression Characters that can be assoc';

/*==============================================================*/
/* Table: MHC_CLASSIFICATION                                    */
/*==============================================================*/
create table GENOMIC_REF_DATA.MHC_CLASSIFICATION
(
   MHC_CLASSIFICATION_CDE varchar(2) not null comment 'A valid value to represent a specific kind of MHC classification (applicable ONLY to the HLA Gene Family) (e.g. I = Class I, II = Class II)',
   MHC_CLASSIFICATION_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an MHC Classification is known/can be recognized',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (MHC_CLASSIFICATION_CDE),
   key AK_MHC_CLASSIFICATION (MHC_CLASSIFICATION_NME)
);

alter table GENOMIC_REF_DATA.MHC_CLASSIFICATION comment 'Major Histocompatibility Complex (MHC) Classification is app';

/*==============================================================*/
/* Table: NOMENCLATURE_FORMAT_VERSION                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION
(
   NOMENCLATURE_FORMAT_VER_CDE varchar(10) not null comment 'A valid value to represent a particular kind or type of Nomenclature Format Version; said codes may be unique and/or vary by Gene Family   For HLA Alleles Values are ?? = V2, ?? = V3',
   NOMENCLATURE_FORMAT_VER_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which an Allele Nomenclature Format Version is known/can be recognized',
   GENE_FAMILY_CDE      varchar(10) not null comment 'A valid value to represent a specific kind of gene system/family (e.g. HLA = Human Leukocyte Antigen, KIR = Killer Immunoglobin Receptor, CCR = C-C Chemokine Receptor, ABO = ??, etc.)',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (NOMENCLATURE_FORMAT_VER_CDE),
   key AK_NOMENCLATURE_FORMAT_VERSION (NOMENCLATURE_FORMAT_VER_NME, GENE_FAMILY_CDE)
);

alter table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION comment 'A versioning system that defines the content and context of ';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_CITATION                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION
(
   PUBLISHED_ALLELE_CITATION_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele citation (as curated) within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   PUB_MED_ID           numeric(9,0) comment 'A unique identifier assigned to citations for biomedical literature from MEDLINE, life science journals, and online books. PubMed citations and abstracts include the fields of medicine, nursing, dentistry, veterinary medicine, the health care system, and preclinical sciences. PubMed also provides access to additional relevant Web sites and links to the other NCBI molecular biology resources.  PubMed is a free resource that is developed and maintained by the National Center for Biotechnology Information (NCBI), at the U.S. National Library of Medicine (NLM), located at the National Institutes of Health (NIH).  
            Publishers of journals can submit their citations to NCBI and then provide access to the full-text of articles at journal Web sites using LinkOut. 
            " -- http://www.ncbi.nlm.nih.gov/books/NBK3827/',
   CITATION_AUTHORS_TXT varchar(2000) comment 'The Authors on the Citation.  Note this is a deliberate concatenation of author names.  The purpose of this is to enrich the allele with some demographic information, and not track the individual authors who submit dna sequences for curation.',
   CITATION_TITLE_TXT   varchar(2000) comment 'The title of the publication for which the allele is documented',
   CITATION_LOCATION_TXT varchar(2000) comment 'The Publication Citation of the documentation.  This value is packed with the name of the publication, the volume, issue number, and the publication date.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_CITATION_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION comment 'The Publication, with PubMed ID (8)) that was the first docu';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_CITATION_STG                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG
(
   PUBLISHED_ALLELE_CITATION_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele citation (as curated) within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   PUB_MED_ID           numeric(9,0) comment 'A unique identifier assigned to citations for biomedical literature from MEDLINE, life science journals, and online books. PubMed citations and abstracts include the fields of medicine, nursing, dentistry, veterinary medicine, the health care system, and preclinical sciences. PubMed also provides access to additional relevant Web sites and links to the other NCBI molecular biology resources.  PubMed is a free resource that is developed and maintained by the National Center for Biotechnology Information (NCBI), at the U.S. National Library of Medicine (NLM), located at the National Institutes of Health (NIH).  
            Publishers of journals can submit their citations to NCBI and then provide access to the full-text of articles at journal Web sites using LinkOut. 
            " -- http://www.ncbi.nlm.nih.gov/books/NBK3827/',
   CITATION_AUTHORS_TXT varchar(2000) comment 'The Authors on the Citation.  Note this is a deliberate concatenation of author names.  The purpose of this is to enrich the allele with some demographic information, and not track the individual authors who submit dna sequences for curation.',
   CITATION_TITLE_TXT   varchar(2000) comment 'The title of the publication for which the allele is documented',
   CITATION_LOCATION_TXT varchar(2000) comment 'The Publication Citation of the documentation.  This value is packed with the name of the publication, the volume, issue number, and the publication date.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_CITATION_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_CITATION_STG comment 'The Publication, with PubMed ID (8)) that was the first docu';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_ETHNICITY                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY
(
   PUBL_ALLELE_SRC_MATERIAL_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  ',
   PUBL_SAMPLE_ETHNICITY_NME varchar(50) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBL_SAMPLE_ETHNICITY_NME)
);

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_ETHNICITY_STG                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG
(
   PUBL_ALLELE_SRC_MATERIAL_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  ',
   PUBL_SAMPLE_ETHNICITY_NME varchar(50) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBL_SAMPLE_ETHNICITY_NME)
);

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_FEATURE                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE
(
   PUBLISHED_ALLELE_FEATURE_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a specific Allele Feature within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   PUBLISHED_FEATURE_ORDER_NUM numeric(3,0) comment 'The numbering Schema of the features within the Sequence.  Use this value, rather than parsing the feature ID to build up the sequence pieces in their correct left--to-right order',
   PUBLISHED_FEATURE_TYPE_NME varchar(50) not null comment 'A label or short textual description that represents a feature type; these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include Exon, Intro, UTC, etc.',
   PUBLISHED_FEATURE_NME varchar(50) not null comment 'The name of the Feature is a concatenation of the feature type (e.g. UTR, Exon, Intron, etc.) and its order in the allele from left to right (e.g. Exon-2). ',
   PUBLISHED_ALLELE_STATUS_NME varchar(50) comment 'A label or short textual description that represents the allele status (it is a determination of the thoroughness of the features); these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include complete and partial.  ',
   FEATURE_BEGIN_SEQUENCE_VAL numeric(9,0) comment 'For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. ',
   FEATURE_END_SEQUENCE_VAL numeric(9,0) comment 'For the given allele''s nucleotide sequence, this defines the ending points of the sequence feature. ',
   CDNA_BEGIN_SEQUENCE_VAL numeric(9,0) comment 'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. ',
   CDNA_END_SEQUENCE_VAL numeric(9,0) comment 'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the ending of the sequence feature.  ',
   CDNA_COORD_READING_FRAME_VALUE numeric(9,0) comment 'The reading frame is necessary for knowing how much of the previous feature must be used in order to group three nucleotides that encode the protein.',
   RNA_AMINO_ACID_TRANSLATION_TXT text,
   RNA_AMINO_ACID_TRANSLATION_ID numeric(9,2) comment 'The identifier that is links to the translation sequence published by IMGT',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_FEATURE_IID),
   key AK_PUBLISHED_ALLELE_FEATURE (ALLELE_IID, PUBLISHED_FEATURE_NME)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE comment 'A characteristic or trait that exists/enables the descriptio';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_FEATURE_STG                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG
(
   PUBLISHED_ALLELE_FEATURE_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a specific Allele Feature within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   PUBLISHED_FEATURE_ORDER_NUM numeric(3,0) comment 'The numbering Schema of the features within the Sequence.  Use this value, rather than parsing the feature ID to build up the sequence pieces in their correct left--to-right order',
   PUBLISHED_FEATURE_TYPE_NME varchar(50) not null comment 'A label or short textual description that represents a feature type; these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include Exon, Intro, UTC, etc.',
   PUBLISHED_FEATURE_NME varchar(50) comment 'The name of the Feature is a concatenation of the feature type (e.g. UTR, Exon, Intron, etc.) and its order in the allele from left to right (e.g. Exon-2). ',
   PUBLISHED_ALLELE_STATUS_NME varchar(50) comment 'A label or short textual description that represents the allele status (it is a determination of the thoroughness of the features); these values are acquired from external parties therefore the values are not managed as ''codes''.  Example of what would be represented include complete and partial.  ',
   FEATURE_BEGIN_SEQUENCE_VAL numeric(9,0) comment 'For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. ',
   FEATURE_END_SEQUENCE_VAL numeric(9,0) comment 'For the given allele''s nucleotide sequence, this defines the ending points of the sequence feature. ',
   CDNA_BEGIN_SEQUENCE_VAL numeric(9,0) comment 'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the beginning of the sequence feature. ',
   CDNA_END_SEQUENCE_VAL numeric(9,0) comment 'The Coding DNA brackets for the given feature. For the given allele''s nucleotide sequence, this defines the ending of the sequence feature.  ',
   CDNA_READING_FRAME_VAL numeric(9,0) comment 'The reading frame is necessary for knowing how much of the previous feature must be used in order to group three nucleotides that encode the protein.',
   RNA_AMINO_ACID_TRANSLATION_TXT text,
   RNA_AMINO_ACID_TRANSLATION_ID numeric(9,2) comment 'The identifier that is links to the translation sequence published by IMGT',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_FEATURE_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG comment 'A characteristic or trait that exists/enables the descriptio';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_GROUP                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP
(
   PUBLISHED_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  ',
   PUBLISHED_ALLELE_GROUP_NME varchar(50) not null comment 'The Actual Name of the Group.  Alleles that encode for identical protien in the peptide-binding-domains, and the ''g'' codes are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-biding-domains.   Note the intent is to group Alleles functionally.',
   PUBLISHED_GROUP_TYPE_CDE varchar(10) not null comment 'A valid value to represent a specific kind of published allele group type (e.g. P = Protein Groups, G = Genomic Groups); The ''p'' codes are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''g'' codes are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-biding-domains.',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_GROUP_IID),
   key AK_PUBLISHED_ALLELE_GROUP (PUBLISHED_ALLELE_GROUP_NME, PUBLISHED_GROUP_TYPE_CDE)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP comment 'Legacy name:  t_allele_group

Yet another method';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_GROUP_STG                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG
(
   PUBLISHED_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  ',
   PUBLISHED_ALLELE_GROUP_NME varchar(50) not null comment 'The Actual Name of the Group.  Alleles that encode for identical protien in the peptide-binding-domains, and the ''g'' codes are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-biding-domains.   Note the intent is to group Alleles functionally.',
   PUBLISHED_GROUP_TYPE_CDE varchar(10) not null comment 'A valid value to represent a specific kind of published allele group type (e.g. P = Protein Groups, G = Genomic Groups); The ''p'' codes are for HLA Alleles that encode for identical protien in the peptide-binding-domains, and the ''g'' codes are for HLA alleles that share identical nucleotide sequences for the exons encoding the peptide-biding-domains.',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_GROUP_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG comment 'Legacy name:  t_allele_group

Yet another method';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_GROUP_VERSION                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VERSION
(
   PUBLISHED_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  ',
   GENOME_DATABASE_VER_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOME_DATABASE_VER_IID, PUBLISHED_ALLELE_GROUP_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VERSION comment 'Legacy name:  t_allele_group

Yet another method';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_GROUP_VER_AUD                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_AUD
(
   PUBL_ALLELE_GROUP_VER_AUD_IID numeric(9,0) not null,
   PUBLISHED_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  ',
   GENOME_DATABASE_VER_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   CHANGE_TS            timestamp not null,
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   CHANGE_TYPE_CDE      varchar(10) not null comment 'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis',
   CHANGE_BY_ID         varchar(50) not null,
   primary key (PUBL_ALLELE_GROUP_VER_AUD_IID),
   key AK_PUBL_ALLELE_GRP_VER_AUD (PUBLISHED_ALLELE_GROUP_IID, GENOME_DATABASE_VER_IID, CHANGE_TS)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_AUD comment 'The linkage between a published allele group (e.g. P or G gr';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_GROUP_VER_STG                        */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_STG
(
   PUBLISHED_ALLELE_GROUP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele group (as curated) within the Enterprise.  ',
   GENOME_DATABASE_VER_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a genome database version within the Enterprise.  ',
   ALLELE_LIST_IID      numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele list within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (GENOME_DATABASE_VER_IID, PUBLISHED_ALLELE_GROUP_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_STG comment 'Legacy name:  t_allele_group

Yet another method';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SAMPLE                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE
(
   PUBL_ALLELE_SRC_MATERIAL_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  ',
   PUBLISHED_SAMPLE_VAL varchar(50) not null comment 'The primary identifier assigned to the source sample from which the sequence was derived. The IMGT/HLA Database does not only contain sequence data on HLA sequences it also contains a detailed record on the cell/individual from which the sequence was derived. The database provides a detailed entry for each cell including full annotation.
            
            The database currently, Sep-2011, holds information on around 13,000 cells, and will continue to expand as new sequences are submitted to both this database and to the ENA sequence database',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBLISHED_SAMPLE_VAL)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE comment 'The primary identifier assigned to the source sample from wh';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SAMPLE_STG                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG
(
   PUBL_ALLELE_SRC_MATERIAL_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  ',
   PUBLISHED_SAMPLE_VAL varchar(50) not null comment 'The primary identifier assigned to the source sample from which the sequence was derived. The IMGT/HLA Database does not only contain sequence data on HLA sequences it also contains a detailed record on the cell/individual from which the sequence was derived. The database provides a detailed entry for each cell including full annotation.
            
            The database currently, Sep-2011, holds information on around 13,000 cells, and will continue to expand as new sequences are submitted to both this database and to the ENA sequence database',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBL_ALLELE_SRC_MATERIAL_IID, PUBLISHED_SAMPLE_VAL)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG comment 'The primary identifier assigned to the source sample from wh';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SOURCE_XREF                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF
(
   PUBLISHED_ALLELE_SRC_XREF_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele source cross reference (as curated) within the Enterprise.',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   PUBLISHED_ALLELE_SRC_XREF_VAL varchar(20) not null comment 'The source-specific accession number of each sequence, and these can be used to retrieve the sequence files from either the ENA, GenBank or DDBJ data libraries. ENA = European Nucleotide Archive (previously EMBL Nucleotide Database) / GenBank is the NIH genetic sequence database/ DDBJ = DNA Data Bank of Japan',
   PUBLISHED_ALLELE_PID_ID varchar(20) comment 'Protein Accession Number (Identifier) as curated in the NCBI Protein database.  http://www.ncbi.nlm.nih.gov/protein',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_SRC_XREF_IID),
   key AK_PUBLISHED_ALLELE_SRC_XREF (ALLELE_IID, PUBLISHED_ALLELE_SRC_XREF_VAL)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF comment 'The primary identifier assigned to the source sample from wh';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SRC_MATERIAL                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL
(
   PUBL_ALLELE_SRC_MATERIAL_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   SPECIES_LATIN_NME    varchar(50) comment 'In the context of the curated alleles, this is the species that is the source of the material for the allele.  
            
            "the major subdivision of a genus or subgenus, regarded as the basic category of biological classification, composed of related individuals that resemble one another, are able to breed among themselves, but are not able to breed with members of another species." -- http://dictionary.reference.com/browse/species
            
            Taxonomic divisions are designed to match those used by the NCBI Taxonomy Database (9).',
   SPECIES_COMMON_NME   varchar(50) comment 'The vernacular, colloquial, and/or popular name in general use.',
   SPECIES_NCBI_TAXON_VAL varchar(50) comment 'The NCBI Taxonomy database is a curated set of names and classifications for all of the organisms that are represented in GenBank. Said taxonomy is checked/updated for new organism names/classifications when new sequences are submitted to GenBank.  -- http://www.ncbi.nlm.nih.gov/books/NBK21100/',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBL_ALLELE_SRC_MATERIAL_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL comment 'Demographics are about the population of a region and the cu';

/*==============================================================*/
/* Table: PUBLISHED_ALLELE_SRC_XREF_STG                         */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG
(
   PUBLISHED_ALLELE_SRC_XREF_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele source cross reference (as curated) within the Enterprise.',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   PUBLISHED_ALLELE_SRC_XREF_VAL varchar(20) not null comment 'The source-specific accession number of each sequence, and these can be used to retrieve the sequence files from either the ENA, GenBank or DDBJ data libraries. ENA = European Nucleotide Archive (previously EMBL Nucleotide Database) / GenBank is the NIH genetic sequence database/ DDBJ = DNA Data Bank of Japan',
   PUBLISHED_ALLELE_PID_ID varchar(20) comment 'Protein Accession Number (Identifier) as curated in the NCBI Protein database.  http://www.ncbi.nlm.nih.gov/protein',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBLISHED_ALLELE_SRC_XREF_IID)
);

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG comment 'The primary identifier assigned to the source sample from wh';

/*==============================================================*/
/* Table: PUBL_ALLELE_SRC_MATERIAL_STG                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG
(
   PUBL_ALLELE_SRC_MATERIAL_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a published allele demographic (as curated) within the Enterprise.  ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   SPECIES_LATIN_NME    varchar(50) comment 'In the context of the curated alleles, this is the species that is the source of the material for the allele.  
            
            "the major subdivision of a genus or subgenus, regarded as the basic category of biological classification, composed of related individuals that resemble one another, are able to breed among themselves, but are not able to breed with members of another species." -- http://dictionary.reference.com/browse/species
            
            Taxonomic divisions are designed to match those used by the NCBI Taxonomy Database (9).',
   SPECIES_COMMON_NME   varchar(50) comment 'The vernacular, colloquial, and/or popular name in general use.',
   SPECIES_NCBI_TAXON_VAL varchar(50) comment 'The NCBI Taxonomy database is a curated set of names and classifications for all of the organisms that are represented in GenBank. Said taxonomy is checked/updated for new organism names/classifications when new sequences are submitted to GenBank.  -- http://www.ncbi.nlm.nih.gov/books/NBK21100/',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (PUBL_ALLELE_SRC_MATERIAL_IID)
);

alter table GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG comment 'Demographics are about the population of a region and the cu';

/*==============================================================*/
/* Table: SEARCH_DETERMINANT                                    */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEARCH_DETERMINANT
(
   SEARCH_DETERMINANT_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. ',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   SEARCH_DETERMINANT_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid id) by which a Search Determinant is known/can be recognized',
   BROAD_SEROLOGY_FAMILY_IND varchar(1) not null comment 'Indicates if the search determinant represents a serology defined as a Broad (i.e. has splits connected to it)',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (SEARCH_DETERMINANT_IID),
   key AK_SEARCH_DETERMINANT (GENE_LOCUS_IID, SEARCH_DETERMINANT_NME)
);

/*==============================================================*/
/* Table: SEARCH_DETERMINANT_RELT_TYPE                          */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE
(
   SRCH_DTRM_RELT_TYPE_CDE varchar(10) not null comment 'A valid value to represent a specific kind of relationshp between ''pairs'' of search determinants (e.g. P = Parent, C = Child); this value provides context to the ''related'' search determinant referred to as #2.',
   SRCH_DTRM_RELT_TYPE_NME varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid code) by which a Search Determinant Relationship Type is known/can be recognized',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (SRCH_DTRM_RELT_TYPE_CDE),
   key AK_SRCH_DETERMINANT_RELT_TYPE (SRCH_DTRM_RELT_TYPE_NME)
);

/*==============================================================*/
/* Table: SEARCH_DETERMINANT_RLTSHP                             */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP
(
   SRCH_DTRM_RELATIONSHIP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a search determinant relationship within the Enterprise. ',
   SEARCH_DETERMINANT_1_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a the first of two search determinants that define a relationship within the Enterprise.',
   SEARCH_DETERMINANT_2_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a the second of two search determinants that define a relationship within the Enterprise.',
   SRCH_DTRM_RELT_TYPE_CDE varchar(10) not null comment 'A valid value to represent a specific kind of relationshp between ''pairs'' of search determinants (e.g. P = Parent, C = Child); this value provides context to the ''related'' search determinant referred to as #2.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (SRCH_DTRM_RELATIONSHIP_IID),
   key AK_SEARCH_DETERMINANT_RELT (SEARCH_DETERMINANT_1_IID, SEARCH_DETERMINANT_2_IID, SRCH_DTRM_RELT_TYPE_CDE)
);

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP comment 'Associates 2 search determinants in order to represent paren';

/*==============================================================*/
/* Table: SEROLOGY                                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEROLOGY
(
   SEROLOGY_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. ',
   SEROLOGY_NME         varchar(50) not null comment 'A textual ''label'' or name (that corresponds to a valid id) by which a Serology is known/can be recognized',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (SEROLOGY_IID),
   key AK_SEROLOGY (SEROLOGY_NME, GENE_LOCUS_IID)
);

/*==============================================================*/
/* Table: SEROLOGY_ALLELE                                       */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEROLOGY_ALLELE
(
   SEROLOGY_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   SEROLOGY_CONTEXT_CDE varchar(20) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (SEROLOGY_IID, ALLELE_IID)
);

/*==============================================================*/
/* Table: SEROLOGY_CONTEXT                                      */
/*==============================================================*/
create table SEROLOGY_CONTEXT
(
   SEROLOGY_CONTEXT_CDE varchar(20) not null,
   SEROLOGY_CONTEXT_NME varchar(50) not null,
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (SEROLOGY_CONTEXT_CDE)
);

/*==============================================================*/
/* Table: SEROLOGY_SEARCH_DETERMINANT                           */
/*==============================================================*/
create table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT
(
   SEROLOGY_IID         numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a serology within the Enterprise. ',
   SEARCH_DETERMINANT_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a search determinant within the Enterprise. ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (SEARCH_DETERMINANT_IID, SEROLOGY_IID)
);

alter table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT comment 'A unique combination of a specific Serology with a specific ';

/*==============================================================*/
/* Table: TEST_RESULT_ALLELE_GROUP                              */
/*==============================================================*/
create table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP
(
   TEST_RESULT_ALLELE_GRP_IID numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a Test Level Allele Group within the Enterprise.  ',
   TEST_RESULT_ALLELE_GRP_NME varchar(50) not null comment 'The name that represents a Test Level Allele Group.  For example when the type is Not Tested, a name could be HLA-DRB3*UUUU',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   TEST_RESLT_REPRT_TYPE_CDE varchar(10) not null comment 'A valid value to represent a Test Level Type.   ?? = Not Tested, ?? = Tested and Present, ?? = Tested and NOT Present.',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (TEST_RESULT_ALLELE_GRP_IID),
   key AK_TEST_RESULT_ALLELE_GROUP (TEST_RESULT_ALLELE_GRP_NME, GENE_LOCUS_IID, TEST_RESLT_REPRT_TYPE_CDE)
);

/*==============================================================*/
/* Table: TEST_RESULT_REPORT_TYPE                               */
/*==============================================================*/
create table GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE
(
   TEST_RESLT_REPRT_TYPE_CDE varchar(10) not null comment 'A valid value to represent a Test Level Type.   ?? = Not Tested, ?? = Tested and Present, ?? = Tested and NOT Present.',
   TEST_RESLT_REPRT_TYPE_NME varchar(50) not null comment 'A label or short textual description that represents a test level.  Example of what would be represented include Not Tested, Tested and Present, Tested and NOT Present',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (TEST_RESLT_REPRT_TYPE_CDE)
);

/*==============================================================*/
/* Table: XX_ALLELE_GROUP                                       */
/*==============================================================*/
create table GENOMIC_REF_DATA.XX_ALLELE_GROUP
(
   XX_ALLELE_GROUP_IID  numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an XX Group within the Enterprise. ',
   XX_ALLELE_GROUP_NME  varchar(50) not null comment 'The name by which an XX Group is recognized.  This name is a concatenation of Gene Family (specifically HLA) + Gene Locus + ''*" + Allele Family + ''XX''.  An example would be HLA-A*01:XX.  All HLA alleles within the same Gene Locus and Allele Family would belong to the same XX Group.',
   GENE_LOCUS_IID       numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents a gene locus within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (XX_ALLELE_GROUP_IID),
   key AK_XX_ALLELE_GROUP (XX_ALLELE_GROUP_NME, GENE_LOCUS_IID)
);

/*==============================================================*/
/* Table: XX_ALLELE_GROUP_ALLELE                                */
/*==============================================================*/
create table GENOMIC_REF_DATA.XX_ALLELE_GROUP_ALLELE
(
   XX_ALLELE_GROUP_IID  numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an XX Group within the Enterprise. ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   CREATE_TS            timestamp not null comment 'The record created timestamp in the database',
   CREATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program created the record',
   UPDATE_TS            timestamp not null comment 'The record updated timestamp in the database',
   UPDATE_BY_ID         varchar(50) not null comment 'The user id / unique id of the person / program updated the record. ',
   primary key (XX_ALLELE_GROUP_IID, ALLELE_IID)
);

/*==============================================================*/
/* Table: XX_ALLELE_GROUP_ALLELE_AUD                            */
/*==============================================================*/
create table GENOMIC_REF_DATA.XX_ALLELE_GROUP_ALLELE_AUD
(
   XX_ALLELE_GRP_ALLELE_AUD_IID numeric(9,0) not null,
   XX_ALLELE_GROUP_IID  numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an XX Group within the Enterprise. ',
   ALLELE_IID           numeric(9,0) not null comment 'A system generated identifier (surrogate key) that uniquely represents an allele within the Enterprise.  ',
   CHANGE_TS            timestamp not null,
   CHANGE_TYPE_CDE      varchar(10) not null comment 'The type of change made to the record.  U= Update (001), I = Insert (002) , D = Delete (003).  Legacy values are in parenthesis',
   CHANGE_BY_ID         varchar(50) not null,
   primary key (XX_ALLELE_GRP_ALLELE_AUD_IID),
   key AK_XX_ALLELE_GROUP_ALLELE_AUD (XX_ALLELE_GROUP_IID, ALLELE_IID, CHANGE_TS)
);

alter table GENOMIC_REF_DATA.ALLELE add constraint FK_ALLELE_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE add constraint FK_ALLELE_02 foreign key (HLA_EXPRESSION_CHARACTER_CDE)
      references GENOMIC_REF_DATA.HLA_EXPRESSION_CHARACTER (HLA_EXPRESSION_CHARACTER_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE add constraint FK_ALLELE_03 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE add constraint FK_ALLELE_04 foreign key (NOMENCLATURE_FORMAT_VER_CDE)
      references GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION (NOMENCLATURE_FORMAT_VER_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_CODE add constraint FK_ALLELE_CODE_01 foreign key (ALLELE_CODE_TYPE_CDE)
      references GENOMIC_REF_DATA.ALLELE_CODE_TYPE (ALLELE_CODE_TYPE_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION add constraint FK_ALLELE_CODE_DESIGNATION_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION add constraint FK_ALLELE_CODE_DESIGNATION_02 foreign key (ALLELE_LIST_IID)
      references GENOMIC_REF_DATA.ALLELE_LIST (ALLELE_LIST_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION add constraint FK_ALLELE_CODE_DESIGNATION_03 foreign key (ALLELE_CDE)
      references GENOMIC_REF_DATA.ALLELE_CODE (ALLELE_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT add constraint FK_ALLELE_CODE_DESGNTN_RELT_01 foreign key (ALLELE_CODE_DESGNTN_1_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION_RELT add constraint FK_ALLELE_CODE_DESGNTN_RELT_02 foreign key (ALLELE_CODE_DESGNTN_2_IID)
      references GENOMIC_REF_DATA.ALLELE_CODE_DESIGNATION (ALLELE_CODE_DESIGNATION_IID) on delete restrict on update restrict;

alter table ALLELE_CODE_EXPANSION add constraint FK_ALLELE_CODE_EXPANSION_01 foreign key (ALLELE_CDE)
      references GENOMIC_REF_DATA.ALLELE_CODE (ALLELE_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED add constraint FK_ALLELE_COMMON_WELL_DOC_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOCUMENTED add constraint FK_ALLELE_COMMON_WELL_DOC_02 foreign key (COMMON_WELL_DOC_STATUS_CDE)
      references GENOMIC_REF_DATA.COMMON_WELL_DOCUMENTED_STATUS (COMMON_WELL_DOC_STATUS_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_COMMON_WELL_DOC_STG add constraint FK_ALLELE_CWD_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST add constraint FK_ALLELE_LIST_01 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE add constraint FK_ALLELE_LIST_ALLELE_01 foreign key (ALLELE_LIST_IID)
      references GENOMIC_REF_DATA.ALLELE_LIST (ALLELE_LIST_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE add constraint FK_ALLELE_LIST_ALLELE_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE_STG add constraint FK_ALLELE_LIST_ALLELE_STG_01 foreign key (ALLELE_LIST_IID)
      references GENOMIC_REF_DATA.ALLELE_LIST_STG (ALLELE_LIST_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST_ALLELE_STG add constraint FK_ALLELE_LIST_ALLELE_STG_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST_HAPLOTYPE add constraint FK_ALLELE_LIST_HAPLOTYPE_01 foreign key (ALLELE_LIST_IID)
      references GENOMIC_REF_DATA.ALLELE_LIST (ALLELE_LIST_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST_HAPLOTYPE add constraint FK_ALLELE_LIST_HAPLOTYPE_02 foreign key (HAPLOTYPE_IID)
      references GENOMIC_REF_DATA.HAPLOTYPE (HAPLOTYPE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_LIST_STG add constraint FK_ALLELE_LIST_STG_01 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG (GENOME_DATABASE_VER_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE add constraint FK_ALLELE_NUCLEOTIDE_SEQ_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG add constraint FK_ALLELE_NUCL_SEQ_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP add constraint FK_ALLELE_RELATIONSHIP_01 foreign key (ALLELE_2_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP add constraint FK_ALLELE_RELATIONSHIP_02 foreign key (ALLELE_1_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP add constraint FK_ALLELE_RELATIONSHIP_03 foreign key (ALLELE_RELATIONSHIP_TYPE_CDE)
      references GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_TYPE (ALLELE_RELATIONSHIP_TYPE_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_REASON add constraint FK_ALLELE_RELT_REASON_01 foreign key (ALLELE_RELATIONSHIP_IID)
      references GENOMIC_REF_DATA.ALLELE_RELATIONSHIP (ALLELE_RELATIONSHIP_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_REASON add constraint FK_ALLELE_RELT_REASON_02 foreign key (ALLELE_RELATIONSHIP_REASON_IID)
      references GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_REASON_DEF (ALLELE_RELATIONSHIP_REASON_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG add constraint FK_ALLELE_RELATIONSHIP_STG_01 foreign key (ALLELE_1_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_RELATIONSHIP_STG add constraint FK_ALLELE_RELATIONSHIP_STG_02 foreign key (ALLELE_2_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT add constraint FK_ALLELE_SRCH_DTRM_01 foreign key (SEARCH_DETERMINANT_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_SEARCH_DETERMINANT add constraint FK_ALLELE_SRCH_DTRM_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_STATUS add constraint FK_ALLELE_STATUS_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_STATUS add constraint FK_ALLELE_STATUS_02 foreign key (ALLELE_STATUS_CDE)
      references GENOMIC_REF_DATA.ALLELE_STATUS_DEF (ALLELE_STATUS_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.ALLELE_STG add constraint FK_ALLELE_STG_03 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG (GENOME_DATABASE_VER_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP add constraint FK_BEHAVIOR_ALLELE_GROUP_01 foreign key (BEHAVIOR_CATEGORY_CDE)
      references GENOMIC_REF_DATA.BEHAVIOR_CATEGORY (BEHAVIOR_CATEGORY_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP add constraint FK_BEHAVIOR_ALLELE_GROUP_02 foreign key (BEHAVIOR_GROUP_CONTEXT_CDE)
      references GENOMIC_REF_DATA.BEHAVIOR_GROUP_CONTEXT (BEHAVIOR_GROUP_CONTEXT_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP_ALLELE add constraint FK_BEHVR_ALLELE_GRP_ALLELE_01 foreign key (BEHAVIOR_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP (BEHAVIOR_ALLELE_GROUP_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.BEHAVIOR_ALLELE_GROUP_ALLELE add constraint FK_BEHVR_ALLELE_GRP_ALLELE_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.CURATOR_DATA add constraint FK_CURATOR_DATA_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.CURATOR_DATA_RELEASE add constraint FK_FK_CURATOR_DATA_RELEASE_01 foreign key (CURATOR_DATA_IID)
      references GENOMIC_REF_DATA.CURATOR_DATA (CURATOR_DATA_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENE_LOCUS add constraint FK_GENE_LOCUS_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENE_LOCUS add constraint FK_GENE_LOCUS_02 foreign key (EFF_GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENE_LOCUS add constraint FK_GENE_LOCUS_03 foreign key (PREVIOUS_GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENE_LOCUS add constraint FK_GENE_LOCUS_04 foreign key (MHC_CLASSIFICATION_CDE)
      references GENOMIC_REF_DATA.MHC_CLASSIFICATION (MHC_CLASSIFICATION_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENOME_DATABASE_VERSION add constraint FK_GENOME_DATABASE_VERSION_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT add constraint FK_GENOMIC_REFERENCE_OBJECT_01 foreign key (GENOMIC_REF_OBJECT_TYPE_CDE)
      references GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT_TYPE (GENOMIC_REF_OBJECT_TYPE_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENOMIC_REF_OBJ_LEGACY_XREF add constraint FK_GEN_REF_OBJ_LGCY_XREF_01 foreign key (GENOMIC_REFERENCE_OBJECT_IID)
      references GENOMIC_REF_DATA.GENOMIC_REFERENCE_OBJECT (GENOMIC_REFERENCE_OBJECT_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENOTYPE add constraint FK_GENOTYPE_01 foreign key (HAPLOTYPE_1_IID)
      references GENOMIC_REF_DATA.HAPLOTYPE (HAPLOTYPE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENOTYPE add constraint FK_GENOTYPE_02 foreign key (HAPLOTYPE_2_IID)
      references GENOMIC_REF_DATA.HAPLOTYPE (HAPLOTYPE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE add constraint FK_GENOTYPE_LIST_GENOTYPE_01 foreign key (GENOTYPE_IID)
      references GENOMIC_REF_DATA.GENOTYPE (GENOTYPE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.GENOTYPE_LIST_GENOTYPE add constraint FK_GENOTYPE_LIST_GENOTYPE_02 foreign key (GENOTYPE_LIST_IID)
      references GENOMIC_REF_DATA.GENOTYPE_LIST (GENOTYPE_LIST_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.NOMENCLATURE_FORMAT_VERSION add constraint FK_NOMENCLATURE_FORMAT_VER_01 foreign key (GENE_FAMILY_CDE)
      references GENOMIC_REF_DATA.GENE_FAMILY (GENE_FAMILY_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY add constraint FK_PUBL_ALLELE_ETHNICITY_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL (PUBL_ALLELE_SRC_MATERIAL_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_ETHNICITY_STG add constraint FK_PUBL_ALLELE_ETHN_STG_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG (PUBL_ALLELE_SRC_MATERIAL_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE add constraint FK_PUBLISHED_ALLELE_FEATURE_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_FEATURE_STG add constraint FK_PUBL_ALLELE_FEATURE_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_NUCLEOTIDE_SEQUENCE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP add constraint FK_PUBLISHED_ALLELE_GROUP_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VERSION add constraint FK_PUBL_ALLELE_GRP_VER_01 foreign key (PUBLISHED_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP (PUBLISHED_ALLELE_GROUP_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VERSION add constraint FK_PUBL_ALLELE_GRP_VER_02 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION (GENOME_DATABASE_VER_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VERSION add constraint FK_PUBL_ALLELE_GRP_VER_03 foreign key (ALLELE_LIST_IID)
      references GENOMIC_REF_DATA.ALLELE_LIST (ALLELE_LIST_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_STG add constraint FK_PUBL_ALLELE_GRP_VER_STG_01 foreign key (PUBLISHED_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_STG (PUBLISHED_ALLELE_GROUP_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_STG add constraint FK_PUBL_ALLELE_GRP_VER_STG_02 foreign key (GENOME_DATABASE_VER_IID)
      references GENOMIC_REF_DATA.GENOME_DATABASE_VERSION_STG (GENOME_DATABASE_VER_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_GROUP_VER_STG add constraint FK_PUBL_ALLELE_GRP_VER_STG_03 foreign key (ALLELE_LIST_IID)
      references GENOMIC_REF_DATA.ALLELE_LIST_STG (ALLELE_LIST_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE add constraint FK_PUBLISHED_ALLELE_SAMPLE_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL (PUBL_ALLELE_SRC_MATERIAL_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SAMPLE_STG add constraint FK_PUBL_ALLELE_SAMPLE_STG_01 foreign key (PUBL_ALLELE_SRC_MATERIAL_IID)
      references GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG (PUBL_ALLELE_SRC_MATERIAL_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SOURCE_XREF add constraint FK_PUBL_ALLELE_SOURCE_XREF_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_MATERIAL add constraint FK_PUBL_ALLELE_SRC_MATERIAL_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBLISHED_ALLELE_SRC_XREF_STG add constraint FK_PUBL_ALLELE_SRC_XREF_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.PUBL_ALLELE_SRC_MATERIAL_STG add constraint FK_PUBL_ALLELE_SRC_MATL_STG_01 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE_STG (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT add constraint FK_SEARCH_DETERMINANT_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP add constraint FK_SEARCH_DETERMINANT_RELT_01 foreign key (SEARCH_DETERMINANT_1_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP add constraint FK_SEARCH_DETERMINANT_RELT_02 foreign key (SEARCH_DETERMINANT_2_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEARCH_DETERMINANT_RLTSHP add constraint FK_SEARCH_DETERMINANT_RELT_03 foreign key (SRCH_DTRM_RELT_TYPE_CDE)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT_RELT_TYPE (SRCH_DTRM_RELT_TYPE_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEROLOGY add constraint FK_SEROLOGY_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEROLOGY_ALLELE add constraint FK_SEROLOGY_ALLELE_01 foreign key (SEROLOGY_IID)
      references GENOMIC_REF_DATA.SEROLOGY (SEROLOGY_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEROLOGY_ALLELE add constraint FK_SEROLOGY_ALLELE_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEROLOGY_ALLELE add constraint FK_SEROLOGY_ALLELE_03 foreign key (SEROLOGY_CONTEXT_CDE)
      references SEROLOGY_CONTEXT (SEROLOGY_CONTEXT_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT add constraint FK_SEROLOGY_SRCH_DTRM_01 foreign key (SEROLOGY_IID)
      references GENOMIC_REF_DATA.SEROLOGY (SEROLOGY_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.SEROLOGY_SEARCH_DETERMINANT add constraint FK_SEROLOGY_SRCH_DTRM_02 foreign key (SEARCH_DETERMINANT_IID)
      references GENOMIC_REF_DATA.SEARCH_DETERMINANT (SEARCH_DETERMINANT_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP add constraint FK_TEST_RESULT_ALLELE_GROUP_01 foreign key (TEST_RESLT_REPRT_TYPE_CDE)
      references GENOMIC_REF_DATA.TEST_RESULT_REPORT_TYPE (TEST_RESLT_REPRT_TYPE_CDE) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.TEST_RESULT_ALLELE_GROUP add constraint FK_TEST_RESULT_ALLELE_GROUP_02 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP add constraint FK_XX_ALLELE_GROUP_01 foreign key (GENE_LOCUS_IID)
      references GENOMIC_REF_DATA.GENE_LOCUS (GENE_LOCUS_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP_ALLELE add constraint FK_XX_ALLELE_GROUP_ALLELE_01 foreign key (XX_ALLELE_GROUP_IID)
      references GENOMIC_REF_DATA.XX_ALLELE_GROUP (XX_ALLELE_GROUP_IID) on delete restrict on update restrict;

alter table GENOMIC_REF_DATA.XX_ALLELE_GROUP_ALLELE add constraint FK_XX_ALLELE_GROUP_ALLELE_02 foreign key (ALLELE_IID)
      references GENOMIC_REF_DATA.ALLELE (ALLELE_IID) on delete restrict on update restrict;

