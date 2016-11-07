/*==============================================================*/
/* Following Code allows for quotes in and lengthy comments     */
/*==============================================================*/
set echo on
set define off 
set SQLBLANKLINES ON
set serveroutput on size 400000
set lines 200 trimspool on-- Type package declaration

Begin
Execute Immediate ('drop table ADERCO.authority cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.ethnicity cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.master_lot cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.master_lot_aud cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.persistent_audit_event cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/


Begin
Execute Immediate ('drop table ADERCO.persistent_audit_evt_data cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.race cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample_aud cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample_collection_medium cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample_source cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample_source_aud cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample_source_status cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample_status cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sample_type cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.sex cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.subject_class cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.unit_of_measure cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO."USER" cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

Begin
Execute Immediate ('drop table ADERCO.user_authority cascade constraints');
Exception when others then
If sqlcode = -942 then
     Null;
   Else
    Raise;
   End If;
  End;
/

/*==============================================================*/
/* Table: authority                                             */
/*==============================================================*/
create table ADERCO.authority 
(
   name                 VARCHAR2(50)         not null,
   constraint PK_AUTHORITY primary key (name)
   using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/
grant DELETE,INSERT,SELECT,UPDATE on ADERCO.AUTHORITY to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.AUTHORITY to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: ethnicity                                             */
/*==============================================================*/
create table ADERCO.ethnicity 
(
   ethnicity_cde        VARCHAR2(10)         not null,
   ethnicity_desc       VARCHAR2(50)         not null,
   create_by_id         VARCHAR2(50)         not null,
   create_ts            TIMESTAMP(6)         not null,
   update_by_id         VARCHAR2(50)         not null,
   update_ts            TIMESTAMP(6)         not null,
   constraint PK_ETHNICITY primary key (ethnicity_cde)
         using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/
comment on table ADERCO.ETHNICITY is
'This reference table holds all known values for ethnicity.'
/

comment on column ADERCO.ETHNICITY.ETHNICITY_CDE is
'Unique Identifier and Natural Key for Ethnicity Code - may include but not limited to Hispanic, Non-Hispanic'
/

comment on column ADERCO.ETHNICITY.ETHNICITY_DESC is
'A lengthier textual description for ethnicity'
/

comment on column ADERCO.ETHNICITY.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.ETHNICITY.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.ETHNICITY.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.ETHNICITY.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.ETHNICITY to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.ETHNICITY to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: master_lot                                            */
/*==============================================================*/
create table ADERCO.master_lot 
(
   master_lot_id        NUMBER(9)            not null,
   sample_source_id     NUMBER(9)            not null,
   master_lot_guid      RAW(16)              not null,
   master_lot_status_cde VARCHAR2(11)        not null,
   sample_source_age    NUMBER(5)            not null,
   comment_txt          VARCHAR2(4000),
   create_by_id         VARCHAR2(50)         not null,
   create_ts            TIMESTAMP(6)         not null,
   update_by_id         VARCHAR2(50)         not null,
   update_ts            TIMESTAMP            not null,
   CONSTRAINT           AK_MASTER_LOT UNIQUE (master_lot_guid)
   using index tablespace QCSAMPLE_IDX,
   constraint PK_MASTER_LOT primary key (master_lot_id)
   using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/
comment on table ADERCO.MASTER_LOT is
'A uniquely identified set of equivalent product samples (Whole Blood, Cord Blood, etc.) collected from a single Sample Source with the purpose of creating QC samples.  Each Master Lot is associated to a single Sample Source.  '
/
comment on column ADERCO.MASTER_LOT.MASTER_LOT_ID is
'Unique Idenitfier associated wiht each Master Lot. '
/
comment on column ADERCO.MASTER_LOT.MASTER_LOT_STATUS_CDE is
'The current status for the whole sample collection.  May be Active, Quarantined, Removed, Depleted (no more vials), Discontinued (no more vials/swabs)'
/
comment on column ADERCO.MASTER_LOT.SAMPLE_SOURCE_AGE is
'Age of the Sample Source at the time of collection of samples for a single Master Lot.'
/
comment on column ADERCO.MASTER_LOT.COMMENT_TXT is
'Notes entered by the user. '
/
comment on column ADERCO.MASTER_LOT.CREATE_TS is
'The record created timestamp.'
/
comment on column ADERCO.MASTER_LOT.CREATE_BY_ID is
'ID that Created the record.'
/
comment on column ADERCO.MASTER_LOT.UPDATE_TS is
'The record updated timestamp.'
/
comment on column ADERCO.MASTER_LOT.UPDATE_BY_ID is
'ID that updated the record.'
/
grant DELETE,INSERT,SELECT,UPDATE on ADERCO.MASTER_LOT to QCSAMPLE_APP_USER
/
grant SELECT on ADERCO.MASTER_LOT to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: master_lot_aud                                        */
/*==============================================================*/
create table ADERCO.master_lot_aud 
(
   master_lot_aud_iid   NUMBER(6)            not null,
   master_lot_id        NUMBER(6)            not null,
   master_lot_guid      RAW(16)              not null,
   sample_subject_guid  RAW(16)              not null,
   column_nme           VARCHAR2(50)         not null,
   old_value_txt        VARCHAR2(4000),
   new_value_txt        VARCHAR2(4000),
   change_ts            TIMESTAMP(6)         not null,
   change_by_id         VARCHAR2(50)         not null,
   change_type_cde      VARCHAR2(1)          not null,
   constraint           ak_master_lot_aud unique (master_lot_id, column_nme, change_ts)
   using index tablespace QCSAMPLE_IDX,
   constraint PK_MASTER_LOT_AUD primary key (master_lot_aud_iid)
   using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/
grant SELECT on ADERCO.MASTER_LOT_AUD to QCSAMPLE_APP_USER
/
grant SELECT on ADERCO.MASTER_LOT_AUD to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: persistent_audit_event                                */
/*==============================================================*/
create table ADERCO.persistent_audit_event 
(
   event_id             NUMBER(6)            not null,
   principal            VARCHAR2(255)        not null,
   event_date           TIMESTAMP,
   event_type           VARCHAR2(255),
   constraint PK_PERSISTENT_AUDIT_EVENT primary key (EVENT_ID)
   using index tablespace QCSAMPLE_IDX   
)
tablespace QCSAMPLE
/


/*==============================================================*/
/* Table: persistent_audit_evt_data                             */
/*==============================================================*/
create table ADERCO.persistent_audit_evt_data 
(
   event_id             NUMBER(6)            not null,
   name                 VARCHAR2(255)        not null,
   value                VARCHAR2(500),
   constraint PK_PERSISTENT_AUDIT_EVT_DATA primary key (EVENT_ID, NAME)
   using index tablespace QCSAMPLE_IDX   
)
tablespace QCSAMPLE
/

/*==============================================================*/
/* Table: RACE                                                  */
/*==============================================================*/
create table ADERCO.RACE 
(
   RACE_CDE             VARCHAR2(10)         not null,
   RACE_DESC            VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_RACE primary key (RACE_CDE)
         using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/

comment on table ADERCO.RACE is
'A reference table holding all known reported and adopted race codes'
/

comment on column ADERCO.RACE.RACE_CDE is
'A natural key to represent the race code(s) of an individual.  This is not used to insure uniqueness. There can be multiple race codes for the selected subject.'
/

comment on column ADERCO.RACE.RACE_DESC is
'A lengthier description for race code'
/

comment on column ADERCO.RACE.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.RACE.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.RACE.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.RACE.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.RACE to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.RACE to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: sample                                                */
/*==============================================================*/
create table ADERCO.sample 
(
   sample_id            NUMBER(6)            not null,
   sample_guid          RAW(16)              not null,
   master_lot_id        NUMBER(6)            not null,
   sample_type_cde      VARCHAR2(20)         not null,
   sample_status_cde    VARCHAR2(11)         not null,
   sample_coll_medium_cde VARCHAR2(20)       not null,
   sample_unit_vol      NUMBER(5)            not null,
   sample_unit_uom      VARCHAR2(10)         not null,
   comment_txt          VARCHAR2(4000),
   sample_pooled_dte    timestamp(0),    
   expiration_dte       timestamp(0),
   shipping_label_id    VARCHAR2(50),
   create_by_id         VARCHAR2(50)         not null,
   create_ts            TIMESTAMP(6)         not null,
   update_by_id         VARCHAR2(50)         not null,
   update_ts            TIMESTAMP(6)         not null,
   CONSTRAINT           AK_SAMPLE UNIQUE (sample_guid)
   using index tablespace QCSAMPLE_IDX,
   constraint PK_SAMPLE primary key (sample_id)
   using index tablespace QCSAMPLE_IDX   
)
tablespace QCSAMPLE
/
comment on table ADERCO.SAMPLE is
'This table holds inventory of different categories of samples. Sample can be original master lot vial, pooled sample where two or more samples are combined into one, or derived sample where one or more samples are created from a sample, etc. '
/

comment on column ADERCO.SAMPLE.SAMPLE_ID is
'Unique Identifier assigned to QC sample. QC Sample can be derived from a single or multiple other Samples. '
/

comment on column ADERCO.SAMPLE.MASTER_LOT_ID is
'FK reference to Master Lot. Unique Sample Idenitfier associated wiht each Master Lot. '
/

comment on column ADERCO.SAMPLE.SHIPPING_LABEL_ID is
'ID that is placed on the sample for shipment. A format of this ID should match the format of other IDs that are included in the bundle to be shipped to the Lab. It should not indicate that this sample is QC sample. '
/

comment on column ADERCO.SAMPLE.SAMPLE_TYPE_CDE is
'A code for the type of the collected sample. Example: Whole Blood, DNA, CBU, BLCL, Filter Paper, Swab, Aliquot.'
/
comment on column ADERCO.SAMPLE.SAMPLE_STATUS_CDE is
'The current status of the selected sample.  May be Active, Quarantined, Removed, Depleted, etc. '
/

comment on column ADERCO.SAMPLE.SAMPLE_COLL_MEDIUM_CDE is
'An Identifier and Natural Key for Sample Collection Medium. Example: Tube, Swab, Filter Paper, Cryovial, etc.)'
/
comment on column ADERCO.SAMPLE.EXPIRATION_DTE is
'A date when a selected sample is expired. '
/
comment on column ADERCO.SAMPLE.SAMPLE_UNIT_VOL is
'A volume of blood sample unit collected from a Sample Source and stored in vial. The total sample volume collected from the source will be calculated based on sample unit volume and and the original sample quantity.  '
/

comment on column ADERCO.SAMPLE.SAMPLE_UNIT_UOM is
'A unit of measure for Sample Unit Volume.'
/
comment on column ADERCO.SAMPLE.COMMENT_TXT is
'Notes entered by the user. '
/
comment on column ADERCO.SAMPLE.SAMPLE_POOLED_DTE is
'A date when QC Sample was physically pooled from the other sample. This date can be in the past complare to sample creation date which is the date when record is created in the databaase and sample ID is assigned.'
/
comment on column ADERCO.SAMPLE.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SAMPLE.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SAMPLE.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SAMPLE.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SAMPLE to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SAMPLE to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: sample_aud                                            */
/*==============================================================*/
create table ADERCO.sample_aud 
(
   sample_aud_iid       NUMBER(6)            not null,
   sample_id            NUMBER(6)            not null,
   sample_guid          RAW(16)              not null,
   master_lot_guid      RAW(16)              not null,
   sample_subject_guid  RAW(16)              not null,
   column_nme           VARCHAR2(50)         not null,
   old_value_txt        VARCHAR2(4000),
   new_value_txt        VARCHAR2(4000),
   change_ts            TIMESTAMP(6)         not null,
   change_by_id         VARCHAR2(50)         not null,
   change_type_cde      VARCHAR2(1)          not null,
   constraint           ak_sample_aud unique (sample_id, column_nme, change_ts)
   using index tablespace QCSAMPLE_IDX,   
   constraint PK_SAMPLE_AUD primary key (sample_aud_iid)
   using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/
grant SELECT on ADERCO.SAMPLE_AUD to QCSAMPLE_APP_USER
/
grant SELECT on ADERCO.SAMPLE_AUD to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: sample_collection_medium                              */
/*==============================================================*/
create table ADerco.sample_collection_medium 
(
   sample_coll_medium_cde VARCHAR2(20)       not null,
   sample_coll_medium_desc VARCHAR2(50)      not null,
   create_by_id         VARCHAR2(50)         not null,
   create_ts            TIMESTAMP(6)         not null,
   update_by_id         VARCHAR2(50)         not null,
   update_ts            TIMESTAMP(6)         not null,
   constraint PK_SAMPLE_COLL_MEDIUM primary key (SAMPLE_COLL_MEDIUM_CDE)
   using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/
comment on table ADERCO.SAMPLE_COLLECTION_MEDIUM is
'A reference table holding values for the medium of the collected sample (Tube, Swab, Filter Paper, Cryovial, etc.)'
/

comment on column ADERCO.SAMPLE_COLLECTION_MEDIUM.SAMPLE_COLL_MEDIUM_CDE is
'An Identifier and Natural Key for Sample Collection Medium. Example: Tube, Swab, Filter Paper, Cryovial, etc.)'
/

comment on column ADERCO.SAMPLE_COLLECTION_MEDIUM.SAMPLE_COLL_MEDIUM_DESC is
'A lengthier textual description for Sample Collection Medium code.'
/

comment on column ADERCO.SAMPLE_COLLECTION_MEDIUM.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SAMPLE_COLLECTION_MEDIUM.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SAMPLE_COLLECTION_MEDIUM.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SAMPLE_COLLECTION_MEDIUM.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SAMPLE_COLLECTION_MEDIUM to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SAMPLE_COLLECTION_MEDIUM to QCSAMPLE_RO_USER
/



/*==============================================================*/
/* Table: sample_source                                         */
/*==============================================================*/
create table ADERCO.sample_source 
(
   sample_source_id     NUMBER(6)            not null,
   sample_subject_guid  RAW(16)              not null,
   subject_class_cde    VARCHAR2(10)         not null,
   race_cde             VARCHAR2(10)         not null,
   ethnicity_cde        VARCHAR2(10)         not null,
   sex_cde              VARCHAR2(10)         not null,
   sample_source_status_cde VARCHAR2(10)     not null,
   registry_source_ind  NUMBER(3)            not null,
   comment_txt          VARCHAR2(4000),
   create_by_id         VARCHAR2(50)         not null,
   create_ts            TIMESTAMP(6)         not null,
   update_by_id         VARCHAR2(50)         not null,
   update_ts            TIMESTAMP(6)         not null,
   constraint ak_sample_source unique (sample_subject_guid)
   using index tablespace QCSAMPLE_IDX,
   constraint PK_SAMPLE_SOURCE primary key (sample_source_id)
   using index tablespace QCSAMPLE_IDX  
   
)
tablespace QCSAMPLE
/
comment on table ADERCO.SAMPLE_SOURCE is
'An individual that signed a consent to give blood samples to be used for the Quality Control process or CBU sample that are used for Quality Control process. A source could be an existing Registry stem cell source or Sample Source only. '
/

comment on column ADERCO.SAMPLE_SOURCE.SAMPLE_SUBJECT_GUID is
'Unique Enterprise System Subject Identifier.  '
/

comment on column ADERCO.SAMPLE_SOURCE.SAMPLE_SOURCE_ID is
'A unique business identifier assigned to a designated Sample Source. It can be Registry Identifier if a sample source is an existing Registry member or it can be newly created Sample Source ID. '
/

comment on column ADERCO.SAMPLE_SOURCE.SUBJECT_CLASS_CDE is
'A code for identifying the type of subject.  (Ex. DONOR, CBU)'
/

comment on column ADERCO.SAMPLE_SOURCE.RACE_CDE is
'A natural key to represent the race code(s) of an individual.  This is not used to insure uniqueness. There can be multiple race codes for the selected subject.'
/

comment on column ADERCO.SAMPLE_SOURCE.ETHNICITY_CDE is
'Unique Identifier and Natural Key for Ethnicity Code - may include but not limited to Hispanic, Non-Hispanic'
/

comment on column ADERCO.SAMPLE_SOURCE.SEX_CDE is
'A unique natural code for all known and adopted sex types.  Includes but is not limited to M for Male and F for Female.'
/

comment on column ADERCO.SAMPLE_SOURCE.SAMPLE_SOURCE_STATUS_CDE is
'The current status of the Sample Source.  May be Active, Quarantined, Removed, etc. 
FK refernce to sample_source_status.'
/

comment on column ADERCO.SAMPLE_SOURCE.REGISTRY_SOURCE_IND is
'Identify if a Sample Source is an existing  Registry member. '
/

comment on column ADERCO.SAMPLE_SOURCE.COMMENT_TXT is
'Notes entered by the user. '
/

comment on column ADERCO.SAMPLE_SOURCE.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SAMPLE_SOURCE.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SAMPLE_SOURCE.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SAMPLE_SOURCE.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SAMPLE_SOURCE to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SAMPLE_SOURCE to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: sample_source_aud                                     */
/*==============================================================*/
create table ADERCO.sample_source_aud 
(
   sample_source_aud_iid NUMBER(6)           not null,
   sample_source_id     NUMBER(6)            not null,
   sample_subject_guid  RAW(16)              not null,
   column_nme           VARCHAR2(50)         not null,
   old_value_txt        VARCHAR2(4000),
   new_value_txt        VARCHAR2(4000),
   change_ts            TIMESTAMP(6)         not null,
   change_by_id         VARCHAR2(50)         not null,
   change_type_cde      VARCHAR2(1)          not null,
   constraint           ak_sample_source_aud unique (sample_source_id, column_nme, change_ts)
   using index tablespace QCSAMPLE_IDX,
   constraint PK_SAMPLE_SOURCE_AUD primary key (sample_source_aud_iid)
   using index tablespace QCSAMPLE_IDX   
)
tablespace QCSAMPLE
/
grant SELECT on ADERCO.SAMPLE_SOURCE_AUD to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SAMPLE_SOURCE_AUD to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: sample_source_status                                  */
/*==============================================================*/
create table ADERCO.sample_source_status 
(
   source_status_cde    VARCHAR2(10)         not null,
   source_status_desc   VARCHAR2(50)         not null,
   create_by_id         VARCHAR2(50)         not null,
   create_ts            TIMESTAMP(6)         not null,
   update_by_id         VARCHAR2(50)         not null,
   update_ts            TIMESTAMP(6)         not null,
   constraint PK_SAMPLE_SOURCE_STATUS primary key (source_status_cde)
   using index tablespace QCSAMPLE_IDX   
)
tablespace QCSAMPLE
/
comment on table ADERCO.SAMPLE_SOURCE_STATUS is
'The current status for the selected Sample Source.  May be Active or Inactive.'
/

comment on column ADERCO.SAMPLE_SOURCE_STATUS.SOURCE_STATUS_CDE is
'Unique Identifier and Natural Key for Source Status. May be Active or Inactive. '
/

comment on column ADERCO.SAMPLE_SOURCE_STATUS.SOURCE_STATUS_DESC is
'A lengthier textual description for Source Status code.'
/

comment on column ADERCO.SAMPLE_SOURCE_STATUS.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SAMPLE_SOURCE_STATUS.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SAMPLE_SOURCE_STATUS.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SAMPLE_SOURCE_STATUS.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SAMPLE_SOURCE_STATUS to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SAMPLE_SOURCE_STATUS to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: SAMPLE_STATUS                                         */
/*==============================================================*/
create table ADERCO.SAMPLE_STATUS 
(
   SAMPLE_STATUS_CDE    VARCHAR2(11)         not null,
   SAMPLE_STATUS_DESC   VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SAMPLE_STATUS primary key (SAMPLE_STATUS_CDE)
         using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/

comment on table ADERCO.SAMPLE_STATUS is
'The current status for the selected Sample of a specific type.  May be Active, Depleted, Removed, or Quarantined.'
/

comment on column ADERCO.SAMPLE_STATUS.SAMPLE_STATUS_CDE is
'Unique Identifier and Natural Key for Sample Status. May be Active, Quarantined, Removed, Depleted, etc. '
/

comment on column ADERCO.SAMPLE_STATUS.SAMPLE_STATUS_DESC is
'A lengthier textual description for Sample Status code.'
/

comment on column ADERCO.SAMPLE_STATUS.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SAMPLE_STATUS.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SAMPLE_STATUS.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SAMPLE_STATUS.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SAMPLE_STATUS to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SAMPLE_STATUS to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: SAMPLE_TYPE                                           */
/*==============================================================*/
create table ADERCO.SAMPLE_TYPE 
(
   SAMPLE_TYPE_CDE      VARCHAR2(20)         not null,
   SAMPLE_TYPE_DESC     VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SAMPLE_TYPE primary key (SAMPLE_TYPE_CDE)
         using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/

comment on table ADERCO.SAMPLE_TYPE is
'A reference table holding values for the type of the collected sample (Whole Blood, Buccal Swab, Aliquots, Filter Paper, etc.)'
/

comment on column ADERCO.SAMPLE_TYPE.SAMPLE_TYPE_CDE is
'An Identifier and Natural Key for Sample Type. Example: Whole Blood, DNA, CBU, BLCL, Filter Paper, Swab, Aliquot.'
/

comment on column ADERCO.SAMPLE_TYPE.SAMPLE_TYPE_DESC is
'A lengthier textual description for Sample Type code.'
/

comment on column ADERCO.SAMPLE_TYPE.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SAMPLE_TYPE.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SAMPLE_TYPE.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SAMPLE_TYPE.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SAMPLE_TYPE to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SAMPLE_TYPE to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: SEX                                                   */
/*==============================================================*/
create table ADERCO.SEX 
(
   SEX_CDE              VARCHAR2(10)         not null,
   SEX_DESC             VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SEX primary key (SEX_CDE)
         using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/

comment on table ADERCO.SEX is
'A reference table for all known and adopted sex types.  Includes but is not limited to M for Male and F for Female.'
/

comment on column ADERCO.SEX.SEX_CDE is
'A unique natural code for all known and adopted sex types.  Includes but is not limited to M for Male and F for Female.'
/

comment on column ADERCO.SEX.SEX_DESC is
'A lengthier textual description for Sex code.'
/

comment on column ADERCO.SEX.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SEX.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SEX.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SEX.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SEX to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SEX to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: SUBJECT_CLASS                                         */
/*==============================================================*/
create table ADERCO.SUBJECT_CLASS 
(
   SUBJECT_CLASS_CDE    VARCHAR2(10)         not null,
   SUBJECT_CLASS_DESC   VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_SUBJECT_CLASS primary key (SUBJECT_CLASS_CDE)
         using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/

comment on table ADERCO.SUBJECT_CLASS is
'A  reference table holding values for the type of subject  - includes but not limited to Donor, CBU, Recipient, Family Member.'
/

comment on column ADERCO.SUBJECT_CLASS.SUBJECT_CLASS_CDE is
'Primary Key for identifying the type of subject.  This is a natural key - made up of characters - may appear as an abbreviation for the full description. (Ex. DONOR, CBU)'
/

comment on column ADERCO.SUBJECT_CLASS.SUBJECT_CLASS_DESC is
'Lengthier text description of the classification of the subject.'
/

comment on column ADERCO.SUBJECT_CLASS.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.SUBJECT_CLASS.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.SUBJECT_CLASS.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.SUBJECT_CLASS.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.SUBJECT_CLASS to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.SUBJECT_CLASS to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: UNIT_OF_MEASURE                                       */
/*==============================================================*/
create table ADERCO.UNIT_OF_MEASURE 
(
   UOM_CDE              VARCHAR2(10)         not null,
   UOM_DESC             VARCHAR2(50)         not null,
   CREATE_TS            TIMESTAMP(6)         not null,
   CREATE_BY_ID         VARCHAR2(50)         not null,
   UPDATE_TS            TIMESTAMP(6)         not null,
   UPDATE_BY_ID         VARCHAR2(50)         not null,
   constraint PK_UNIT_OF_MEASURE primary key (UOM_CDE)
         using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/

comment on table ADERCO.UNIT_OF_MEASURE is
'A unit of measure that is applied to various attributes, like quantity, volume, concentration, etc. '
/

comment on column ADERCO.UNIT_OF_MEASURE.UOM_CDE is
'A unified code for units of measure. Example, mg, mL, ug, etc.'
/

comment on column ADERCO.UNIT_OF_MEASURE.UOM_DESC is
'A lengthier textual description for Unit of Measure.'
/

comment on column ADERCO.UNIT_OF_MEASURE.CREATE_TS is
'The record created timestamp.'
/

comment on column ADERCO.UNIT_OF_MEASURE.CREATE_BY_ID is
'ID that Created the record.'
/

comment on column ADERCO.UNIT_OF_MEASURE.UPDATE_TS is
'The record updated timestamp.'
/

comment on column ADERCO.UNIT_OF_MEASURE.UPDATE_BY_ID is
'ID that updated the record.'
/

grant DELETE,INSERT,SELECT,UPDATE on ADERCO.UNIT_OF_MEASURE to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.UNIT_OF_MEASURE to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: "user"                                                */
/*==============================================================*/
create table ADERCO."USER" 
(
   id                   NUMBER(6)            not null,
   login                VARCHAR2(50)         not null,
   password_hash        VARCHAR2(60),
   first_name           VARCHAR2(50),
   last_name            VARCHAR2(50),
   email                VARCHAR2(100),
   activated            SMALLINT             not null,
   lang_key             VARCHAR2(5),
   activation_key       VARCHAR2(20),
   reset_key            VARCHAR2(20),
   reset_date           TIMESTAMP            default NULL,
   create_by_id         VARCHAR2(50)         not null,
   create_ts            TIMESTAMP(6)         not null,
   update_by_id         VARCHAR2(50)         not null,
   update_ts            TIMESTAMP(6)         not null,
   constraint PK_USER primary key (id)
   using index tablespace QCSAMPLE_IDX,
   CONSTRAINT AK_USER_01 UNIQUE (login)
   using index tablespace QCSAMPLE_IDX,
   CONSTRAINT AK_USER_02 UNIQUE (email)
   using index tablespace QCSAMPLE_IDX
   
)
tablespace QCSAMPLE
/
grant DELETE,INSERT,SELECT,UPDATE on ADERCO."USER" to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO."USER" to QCSAMPLE_RO_USER
/

/*==============================================================*/
/* Table: user_authority                                        */
/*==============================================================*/
create table user_authority 
(
   user_id              INTEGER              not null,
   authority_name       VARCHAR2(50)         not null,
   constraint PK_USER_AUTHORITY primary key (user_id)
   using index tablespace QCSAMPLE_IDX
)
tablespace QCSAMPLE
/
grant DELETE,INSERT,SELECT,UPDATE on ADERCO.user_authority to QCSAMPLE_APP_USER
/

grant SELECT on ADERCO.user_authority to QCSAMPLE_RO_USER
/


alter table ADERCO.master_lot
   add constraint fk_master_lot_01 foreign key (sample_source_id)
      references ADERCO.sample_source (sample_source_id)
/

alter table ADERCO.master_lot
   add constraint fk_master_lot_02 foreign key (master_lot_status_cde)
      references ADERCO.sample_status (sample_status_cde)
/

alter table ADERCO.persistent_audit_evt_data
   add constraint fk_perst_audit_evt_data_01 foreign key (event_id)
      references ADERCO.persistent_audit_event (event_id)
/

alter table ADERCO.sample
   add constraint fk_sample_01 foreign key (master_lot_id)
      references ADERCO.master_lot (master_lot_id)
/

alter table ADERCO.sample
   add constraint fk_sample_02 foreign key (sample_coll_medium_cde)
      references ADERCO.sample_collection_medium (sample_coll_medium_cde)
/

alter table ADERCO.sample
   add constraint fk_sample_03 foreign key (sample_status_cde)
      references ADERCO.sample_status (sample_status_cde)
/

alter table ADERCO.sample
   add constraint fk_sample_04 foreign key (sample_type_cde)
      references ADERCO.sample_type (sample_type_cde)
/

alter table ADERCO.sample
   add constraint fk_sample_05 foreign key (sample_unit_uom)
      references ADERCO.unit_of_measure (uom_cde)
/

alter table ADERCO.sample_source
   add constraint fk_sample_source_01 foreign key (ethnicity_cde)
      references ADERCO.ethnicity (ethnicity_cde)
/

alter table ADERCO.sample_source
   add constraint fk_sample_source_02 foreign key (race_cde)
      references ADERCO.race (race_cde)
/

alter table ADERCO.sample_source
   add constraint fk_sample_source_03 foreign key (sample_source_status_cde)
      references ADERCO.sample_source_status (source_status_cde)
/

alter table ADERCO.sample_source
   add constraint fk_sample_source_04 foreign key (sex_cde)
      references ADERCO.sex (sex_cde)
/

alter table ADERCO.sample_source
   add constraint fk_sample_source_05 foreign key (subject_class_cde)
      references ADERCO.subject_class (subject_class_cde)
/

alter table ADERCO.user_authority
   add constraint fk_user_authority_01 foreign key (authority_name)
      references ADERCO.authority (name)
/

alter table ADERCO.user_authority
   add constraint fk_user_authority_02 foreign key (user_id)
      references ADERCO."USER" (id)
/


create index idx_persistent_audit_event_dat on ADERCO.persistent_audit_evt_data (
   event_id ASC
)
tablespace qcsample_idx
/
create index idx_authority_name on ADERCO.user_authority (
   authority_name ASC
)
tablespace qcsample_idx
/
create index idx_persistent_audit_event_pri on ADERCO.persistent_audit_event (
   principal ASC,
   event_date ASC
)
tablespace qcsample_idx
/
