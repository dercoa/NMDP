/*==============================================================*/
/* Table: ACTIVITY                                              */
/*==============================================================*/
create table ${subjectsUser}.ACTIVITY (
   ACTIVITY_CDE         VARCHAR2(50 CHAR)     not null,
   ACTIVITY_TYPE_CDE    VARCHAR2(10 CHAR)     not null,
   ACTIVITY_NME         VARCHAR2(80 CHAR)     not null,
   ACTIVITY_DESC        VARCHAR2(255 CHAR)    not null,
   AVG_DURATION         NUMBER(3),
   APPLICABLE_RESOURCE_ROLE_CDE VARCHAR2(10 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ACTIVITY primary key (ACTIVITY_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.ACTIVITY is
'An Activity is a unit of work on the Case.'
/

comment on column ${subjectsUser}.ACTIVITY.ACTIVITY_CDE is
'A unique number assigned to the each item trackable at the CASE level Known levels are CASE, Phase, Milestone, Task'
/

comment on column ${subjectsUser}.ACTIVITY.ACTIVITY_TYPE_CDE is
'Known Values are "Phase", "Milestone" and "Task"'
/

comment on column ${subjectsUser}.ACTIVITY.ACTIVITY_NME is
'The business name assigned to a specific activity of this type. '
/

comment on column ${subjectsUser}.ACTIVITY.ACTIVITY_DESC is
'A desciption associated with each trackable work item assigned an activity code.'
/

comment on column ${subjectsUser}.ACTIVITY.AVG_DURATION is
'An amount of elapsed time that NMDP usually take to accomplish a specific work item assigned a specific activity code'
/

comment on column ${subjectsUser}.ACTIVITY.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.ACTIVITY.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.ACTIVITY.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.ACTIVITY.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ACTIVITY to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ACTIVITY to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: ACTIVITY_STATUS                                       */
/*==============================================================*/
create table ${subjectsUser}.ACTIVITY_STATUS (
   ACTIVITY_STATUS_CDE  VARCHAR2(10 CHAR)     not null,
   ACTIVITY_STATUS_DESC VARCHAR2(160 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ACTIVITY_STATUS primary key (ACTIVITY_STATUS_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.ACTIVITY_STATUS is
'Table used as a placeholder for the storage of codes used by the application provide business rules to assign a Status to a case and support alerts and activities.

Both alerts and activities recieve status codes from this table.'
/

comment on column ${subjectsUser}.ACTIVITY_STATUS.ACTIVITY_STATUS_CDE is
'A table used to assign unique codes to different status conditions. These condition could be activity type specific and involve one or more activity.  The complete set is to be defined by business rules

OPEN
CLOSED
NOT OPEN
N/A
COMPLETE
ACTIVE - this is the Phase (activity) which has the primary focus'
/

comment on column ${subjectsUser}.ACTIVITY_STATUS.ACTIVITY_STATUS_DESC is
'Description used to distinguish one status code from another.  The same description will not be associated with more than one status code'
/

comment on column ${subjectsUser}.ACTIVITY_STATUS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.ACTIVITY_STATUS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.ACTIVITY_STATUS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.ACTIVITY_STATUS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ACTIVITY_STATUS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ACTIVITY_STATUS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: ACTIVITY_TYPE                                         */
/*==============================================================*/
create table ${subjectsUser}.ACTIVITY_TYPE (
   ACTIVITY_TYPE_CDE    VARCHAR2(10 CHAR)     not null,
   ACTIVITY_TYPE_DESC   VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ACTIVITY_TYPE primary key (ACTIVITY_TYPE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.ACTIVITY_TYPE is
'A table used to identify different levels of trackable items.  The known list are Phase, Milestone, Task each of which can be used to identify trackable work.

Vaules:
PHASE	
MILESTONE	
ACTIVITY	
TASK	'
/

comment on column ${subjectsUser}.ACTIVITY_TYPE.ACTIVITY_TYPE_CDE is
'Known Values are "Phase", "Milestone" and "Task"'
/

comment on column ${subjectsUser}.ACTIVITY_TYPE.ACTIVITY_TYPE_DESC is
'Description used to distinguish one phase from another'
/

comment on column ${subjectsUser}.ACTIVITY_TYPE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.ACTIVITY_TYPE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.ACTIVITY_TYPE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.ACTIVITY_TYPE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ACTIVITY_TYPE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ACTIVITY_TYPE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: AFFILIATION                                           */
/*==============================================================*/
create table ${subjectsUser}.AFFILIATION (
   AFFILIATION_CDE      VARCHAR2(10 CHAR)     not null,             
   AFFILIATION_DESC     VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_AFFILIATION primary key (AFFILIATION_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.AFFILIATION is
'Represents different types of associations applicable between two Business Parties.

PRIM	              Primary/Secondary
PRNT	             Parent/Child
AFFIL	             Affiliated
COOP	             Coop Registry
SPAL	             Associated Lab
SPAR	             Affiliated Repository
NTWK	             Network
SUPGROUP         Supplier Group
NETWK	             Network
PHYS	             Physician'
/

comment on column ${subjectsUser}.AFFILIATION.AFFILIATION_CDE is
'A code that defines the relationship between two organizations. OWNERSHIP - Ower/Owned, PRIM - Primary/Secondary, SPAR - Supplier/Affiliated Repository, etc.'
/

comment on column ${subjectsUser}.AFFILIATION.AFFILIATION_DESC is
'The description of the Affiliation Code'
/

comment on column ${subjectsUser}.AFFILIATION.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.AFFILIATION.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.AFFILIATION.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.AFFILIATION.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.AFFILIATION to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.AFFILIATION to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: ALERT                                                 */
/*==============================================================*/
create table ${subjectsUser}.ALERT (
   ALERT_CDE            VARCHAR2(10 CHAR)     not null,
   ALERT_NME            VARCHAR2(80 CHAR)     not null,
   ALERT_DESC           VARCHAR2(255 CHAR)    not null,
   APPLICABLE_RESOURCE_ROLE_CDE VARCHAR2(10 CHAR),
   ALERT_TYPE_CDE       VARCHAR2(10 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ALERT primary key (ALERT_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on column ${subjectsUser}.ALERT.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.ALERT.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.ALERT.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.ALERT.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ALERT to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ALERT to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: ALERT_STATUS                                          */
/*==============================================================*/
create table ${subjectsUser}.ALERT_STATUS (
   ALERT_STATUS_CDE     VARCHAR2(10 CHAR)     not null,
   ALERT_STATUS_DESC    VARCHAR2(160 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ALERT_STATUS primary key (ALERT_STATUS_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.ALERT_STATUS is
'Values:
* Read
* Unread
* Closed'
/

comment on column ${subjectsUser}.ALERT_STATUS.ALERT_STATUS_CDE is
'A table used to assign unique codes to different status conditions. These condition could be activity type specific and involve one or more activity.  The complete set is to be defined by business rules

OPEN
CLOSED
NOT OPEN
N/A
COMPLETE
ACTIVE - this is the Phase (activity) which has the primary focus'
/

comment on column ${subjectsUser}.ALERT_STATUS.ALERT_STATUS_DESC is
'Description used to distinguish one status code from another.  The same description will not be associated with more than one status code'
/

comment on column ${subjectsUser}.ALERT_STATUS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.ALERT_STATUS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.ALERT_STATUS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.ALERT_STATUS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ALERT_STATUS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ALERT_STATUS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: ALERT_TYPE                                            */
/*==============================================================*/
create table ${subjectsUser}.ALERT_TYPE (
   ALERT_TYPE_CDE       VARCHAR2(10 CHAR)     not null,
   ALERT_TYPE_DESC      VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ALERT_TYPE primary key (ALERT_TYPE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ALERT_TYPE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ALERT_TYPE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: BLOOD_TYPE                                            */
/*==============================================================*/
create table ${subjectsUser}.BLOOD_TYPE (
   BLOOD_TYPE_CDE       VARCHAR2(10 CHAR)     not null,
   BLOOD_TYPE_DESC      VARCHAR2(30 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_BLOOD_TYPE primary key (BLOOD_TYPE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on column ${subjectsUser}.BLOOD_TYPE.BLOOD_TYPE_CDE is
'The code is the ABO blood type of the person (subject) in question. '
/

comment on column ${subjectsUser}.BLOOD_TYPE.BLOOD_TYPE_DESC is
'The code is the ABO blood type of the person (subject) in question. '
/

comment on column ${subjectsUser}.BLOOD_TYPE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.BLOOD_TYPE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.BLOOD_TYPE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.BLOOD_TYPE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.BLOOD_TYPE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.BLOOD_TYPE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: BP_ADDRESS                                            */
/*==============================================================*/
create table ${subjectsUser}.BP_ADDRESS (
   BP_ADDRESS_IID       NUMBER(9)             
      generated by default as identity ( start with 181 ),
   BP_GUID              RAW(16)              default SYS_GUID(),
   BP_ADDRESS_TYPE_CDE  VARCHAR2(20 CHAR)     not null,
   ADDRESS_1            VARCHAR2(50 CHAR),
   ADDRESS_2            VARCHAR2(50 CHAR),
   CITY                 VARCHAR2(50 CHAR),
   STATE                VARCHAR2(10 CHAR),
   ZIP_POSTAL_CDE       VARCHAR2(10 CHAR),
   COUNTRY_CDE          VARCHAR2(2 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_BP_ADDRESS primary key (BP_ADDRESS_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.BP_ADDRESS is
'A address for a given organization'
/

comment on column ${subjectsUser}.BP_ADDRESS.BP_ADDRESS_IID is
'PK'
/

comment on column ${subjectsUser}.BP_ADDRESS.BP_GUID is
'Global Identifier of the Business party. '
/

comment on column ${subjectsUser}.BP_ADDRESS.BP_ADDRESS_TYPE_CDE is
'A type of the address. For example, Customer or Freight Forwarder.'
/

comment on column ${subjectsUser}.BP_ADDRESS.ADDRESS_1 is
'A first line of a mailing address.'
/

comment on column ${subjectsUser}.BP_ADDRESS.ADDRESS_2 is
'A second line of a mailing address (if needed).'
/

comment on column ${subjectsUser}.BP_ADDRESS.CITY is
'A city of the business party address. '
/

comment on column ${subjectsUser}.BP_ADDRESS.STATE is
'State is the code abbreviation for the state from an address. Can be more than 2 characters. '
/

comment on column ${subjectsUser}.BP_ADDRESS.ZIP_POSTAL_CDE is
'A zip code of the business party address. '
/

comment on column ${subjectsUser}.BP_ADDRESS.COUNTRY_CDE is
'A country code of the business party address. '
/

comment on column ${subjectsUser}.BP_ADDRESS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.BP_ADDRESS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.BP_ADDRESS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.BP_ADDRESS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.BP_ADDRESS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.BP_ADDRESS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: BP_IDENTIFIER                                         */
/*==============================================================*/
create table ${subjectsUser}.BP_IDENTIFIER (
   BP_IDENTIFIER_IID    NUMBER(9)             
      generated by default as identity ( start with 36 ),
   BP_GUID              RAW(16)              default SYS_GUID(),
   IDENTIFIER_DOMAIN_CDE VARCHAR2(10 CHAR),
   BP_IDENTIFIER_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   BP_IDENTIFIER_TXT    VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_BP_IDENTIFIER primary key (BP_IDENTIFIER_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.BP_IDENTIFIER is
'A list of identifiers for a given organization'
/

comment on column ${subjectsUser}.BP_IDENTIFIER.BP_IDENTIFIER_IID is
'PK'
/

comment on column ${subjectsUser}.BP_IDENTIFIER.BP_GUID is
'Global Identifier of the Business party. '
/

comment on column ${subjectsUser}.BP_IDENTIFIER.IDENTIFIER_DOMAIN_CDE is
'A code to group identifier records by origin or purpose of creation. '
/

comment on column ${subjectsUser}.BP_IDENTIFIER.BP_IDENTIFIER_TYPE_CDE is
'A type of system that assigned the org identifier code (STAR, POLITE, etc.)'
/

comment on column ${subjectsUser}.BP_IDENTIFIER.BP_IDENTIFIER_TXT is
'An Identifer code of the organization (TC code, DC code, etc.)'
/

comment on column ${subjectsUser}.BP_IDENTIFIER.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.BP_IDENTIFIER.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.BP_IDENTIFIER.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.BP_IDENTIFIER.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.BP_IDENTIFIER to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.BP_IDENTIFIER to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: BROAD_RACE                                            */
/*==============================================================*/
create table ${subjectsUser}.BROAD_RACE (
   BROAD_RACE_CDE       VARCHAR2(10 CHAR)     not null,
   BROAD_RACE_DESC      VARCHAR2(100 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_BROAD_RACE primary key (BROAD_RACE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on column ${subjectsUser}.BROAD_RACE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.BROAD_RACE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.BROAD_RACE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.BROAD_RACE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.BROAD_RACE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.BROAD_RACE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: BUSINESS_PARTY                                        */
/*==============================================================*/
create table ${subjectsUser}.BUSINESS_PARTY (
   BP_GUID              RAW(16)              default SYS_GUID()  not null,
   BP_TYPE_CDE          VARCHAR2(10 CHAR)     not null,
   BP_NME               VARCHAR2(100 CHAR),
   DBA_NME              VARCHAR2(100 CHAR),
   INTERNATIONAL_DOMESTIC_CDE VARCHAR2(1 CHAR),
   EFFECTIVE_START_DTE  TIMESTAMP(0),
   EFFECTIVE_END_DTE    TIMESTAMP(0),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_BUSINESS_PARTY primary key (BP_GUID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.BUSINESS_PARTY is
'An organizations that NMDP engages in its business operations:
Apherisis Center
Collection Center
Contract Lab
Coop Supplier
Cord Blood Bank
Donor Center
Recruitment Center
Registry
Repository
Transplant Center'
/

comment on column ${subjectsUser}.BUSINESS_PARTY.BP_GUID is
'Global Identifier of the Business party. '
/

comment on column ${subjectsUser}.BUSINESS_PARTY.BP_TYPE_CDE is
'A type of institution that NMDP has relationship with. Example: AC - Apheresis Center, CBB - Cord Blood Bank, DC - Donor Center, etc.  '
/

comment on column ${subjectsUser}.BUSINESS_PARTY.BP_NME is
'A name of the organization.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY.DBA_NME is
'A name of the organization.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.BUSINESS_PARTY to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.BUSINESS_PARTY to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: BUSINESS_PARTY_AFFILIATION                            */
/*==============================================================*/
create table ${subjectsUser}.BUSINESS_PARTY_AFFILIATION (
   BUSINESS_PARTY_AFFILIATION_IID NUMBER(9)             not null,
   AFFILIATION_CDE      VARCHAR2(10 CHAR)     not null,
   BP_GUID              RAW(16)              default SYS_GUID(),
   AFFILIATED_BP_GUID   RAW(16)              default SYS_GUID(),
   EFFECTIVE_START_DTE  TIMESTAMP(0),
   EFFECTIVE_END_DTE    TIMESTAMP(0),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_BUSINESS_PARTY_AFFILIATION primary key (BUSINESS_PARTY_AFFILIATION_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.BUSINESS_PARTY_AFFILIATION is
'A list of organizations that is affiliated with the specified organization.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY_AFFILIATION.BUSINESS_PARTY_AFFILIATION_IID is
'PK'
/

comment on column ${subjectsUser}.BUSINESS_PARTY_AFFILIATION.AFFILIATION_CDE is
'A code that defines the relationship between two organizations. OWNERSHIP - Ower/Owned, PRIM - Primary/Secondary, SPAR - Supplier/Affiliated Repository, etc.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY_AFFILIATION.BP_GUID is
'Global Identifier of the Business party. '
/

comment on column ${subjectsUser}.BUSINESS_PARTY_AFFILIATION.AFFILIATED_BP_GUID is
'Global Identifier of the Business party. '
/

comment on column ${subjectsUser}.BUSINESS_PARTY_AFFILIATION.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.BUSINESS_PARTY_AFFILIATION.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

alter table ${subjectsUser}.BUSINESS_PARTY_AFFILIATION
   add constraint AK_BUSINESS_PARTY_AFFILIATION unique (AFFILIATION_CDE, BP_GUID, AFFILIATED_BP_GUID, EFFECTIVE_END_DTE)
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.BUSINESS_PARTY_AFFILIATION to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.BUSINESS_PARTY_AFFILIATION to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: CASE_RESOURCE                                         */
/*==============================================================*/
create table ${subjectsUser}.CASE_RESOURCE (
   CASE_RESOURCE_IID    NUMBER(9)             
      generated by default as identity ( start with 7 ),
   CASE_RESOURCE_ROLE_CDE VARCHAR2(10 CHAR)     not null,
   CASE_RESOURCE_ID     NUMBER(5),
   CASE_RESOURCE_LDAP_ID VARCHAR2(10 CHAR),
   CASE_RESOURCE_FIRST_NME VARCHAR2(75 CHAR)     not null,
   CASE_RESOURCE_LAST_NME VARCHAR2(75 CHAR)     not null,
   CASE_RESOURCE_EMAIL_ADDR_TXT VARCHAR2(255 CHAR)    not null,
   ACTIVE_IND           VARCHAR2(1 CHAR)     default 'Y'  not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_CASE_RESOURCE primary key (CASE_RESOURCE_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.CASE_RESOURCE is
'A list of all people, in any role, who can participate in a case.'
/

comment on column ${subjectsUser}.CASE_RESOURCE.CASE_RESOURCE_IID is
'The NMDP IID assigned to each resource capable of performing a trackable task.'
/

comment on column ${subjectsUser}.CASE_RESOURCE.CASE_RESOURCE_ROLE_CDE is
'Roles identified by NMDP capable of being associated with a task.  Actual values will be defined by the business'
/

comment on column ${subjectsUser}.CASE_RESOURCE.CASE_RESOURCE_LDAP_ID is
'Initially will only be used to identify Search Coordinator ID''s sourced in Legacy NUM 3.  It could be used to link to other users in other internal or external organizations.'
/

comment on column ${subjectsUser}.CASE_RESOURCE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.CASE_RESOURCE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.CASE_RESOURCE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.CASE_RESOURCE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.CASE_RESOURCE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.CASE_RESOURCE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: CASE_STATUS                                           */
/*==============================================================*/
create table ${subjectsUser}.CASE_STATUS (
   CASE_STATUS_CDE      VARCHAR2(10 CHAR)     not null,
   CASE_STATUS_DESC     VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_CASE_STATUS primary key (CASE_STATUS_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.CASE_STATUS is
'Values:
OPEN	Open
CLOSE	Closed'
/

comment on column ${subjectsUser}.CASE_STATUS.CASE_STATUS_CDE is
'A table used to assign unique codes to different status conditions. Examples: OPEN, CLOSED.'
/

comment on column ${subjectsUser}.CASE_STATUS.CASE_STATUS_DESC is
'Description used to distinguish one status code from another.  The same description will not be associated with more than one status code'
/

comment on column ${subjectsUser}.CASE_STATUS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.CASE_STATUS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.CASE_STATUS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.CASE_STATUS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.CASE_STATUS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.CASE_STATUS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: CMV_STATUS                                            */
/*==============================================================*/
create table ${subjectsUser}.CMV_STATUS (
   CMV_STATUS_CDE       VARCHAR2(10 CHAR)     not null,
   CMV_STATUS_DESC      VARCHAR2(30 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_CMV_STATUS primary key (CMV_STATUS_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.CMV_STATUS is
'IDM-type test common for donors and recipients.
[Raj] we do not do this today? [Michelle] it is on form.'
/

comment on column ${subjectsUser}.CMV_STATUS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.CMV_STATUS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.CMV_STATUS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.CMV_STATUS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.CMV_STATUS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.CMV_STATUS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: CM_CASE                                               */
/*==============================================================*/
create table ${subjectsUser}.CM_CASE (
   CM_CASE_IID          NUMBER(9)             
      generated by default as identity ( start with 1 ),
   PARENT_CM_CASE_IID   NUMBER(9),
   SUBJECT_GUID         RAW(16)               not null,
   CASE_RESOURCE_IID    NUMBER(9)             not null,
   CASE_STATUS_CDE      VARCHAR2(10 CHAR)     not null,
   PLAN_STATUS_CDE      VARCHAR2(10 CHAR),
   CASE_START_DTE       TIMESTAMP(6),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_CM_CASE primary key (CM_CASE_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.CM_CASE is
'Case - a coordinated and measurable series of milestones initiated by a request for services or products.
A comprehansive single instance of a cellular therapy that is "opened" and ''closed" over a period of time to achieve resolution. It involves multiple persons inside and outside of the organization, with varying relationships to each other, as well as multiple documents and messages.
A case begins with a triggering event.
A case is considered open when there is at least one unfinished milestone associated with it.
A case is considered closed when all associated milestones are complete.
A case may be reopened after closure.
A beneficiary of the successful outcome is the subject of the case. One Case may be related to another.
'
/

comment on column ${subjectsUser}.CM_CASE.CM_CASE_IID is
'A unique identifier assigned to a patient and linked to a specific patient via the Subject_GUID.'
/

comment on column ${subjectsUser}.CM_CASE.SUBJECT_GUID is
'A Global ID of the subject.  The subject could be a patient, donor or cord blood unit.'
/

comment on column ${subjectsUser}.CM_CASE.CASE_RESOURCE_IID is
'The NMDP IID assigned primary responsibility for managing this particular case.'
/

comment on column ${subjectsUser}.CM_CASE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.CM_CASE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.CM_CASE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.CM_CASE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.CM_CASE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.CM_CASE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: COUNTRY                                               */
/*==============================================================*/
create table ${subjectsUser}.COUNTRY (
   COUNTRY_CDE          VARCHAR2(2 CHAR)      not null,
   COUNTRY_NME          VARCHAR2(40 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_COUNTRY primary key (COUNTRY_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.COUNTRY to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.COUNTRY to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: DISEASE                                               */
/*==============================================================*/
create table ${subjectsUser}.DISEASE (
   DISEASE_CDE          VARCHAR2(10 CHAR)     not null,
   DISEASE_DESC         VARCHAR2(30 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_DISEASE primary key (DISEASE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on column ${subjectsUser}.DISEASE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.DISEASE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.DISEASE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.DISEASE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.DISEASE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.DISEASE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: DISEASE_STAGE                                         */
/*==============================================================*/
create table ${subjectsUser}.DISEASE_STAGE (
   DISEASE_STAGE_CDE    VARCHAR2(10 CHAR)     not null,
   DISEASE_STAGE_DESC   VARCHAR2(30 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_DISEASE_STAGE primary key (DISEASE_STAGE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.DISEASE_STAGE is
'AP	Accelerated Phase
BP	Blastic Phase
CP	Chronic Phase
CR	Complete Remission
IF	Induction Failure
IT	Induction Therapy
RE	Relapse
RM	Remission'
/

comment on column ${subjectsUser}.DISEASE_STAGE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.DISEASE_STAGE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.DISEASE_STAGE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.DISEASE_STAGE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.DISEASE_STAGE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.DISEASE_STAGE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: DISEASE_STAGE_MAP                                     */
/*==============================================================*/
create table ${subjectsUser}.DISEASE_STAGE_MAP (
   DISEASE_CDE          VARCHAR2(10 CHAR)     not null,
   DISEASE_STAGE_CDE    VARCHAR2(10 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_DISEASE_STAGE_MAP primary key (DISEASE_CDE, DISEASE_STAGE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on column ${subjectsUser}.DISEASE_STAGE_MAP.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.DISEASE_STAGE_MAP.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.DISEASE_STAGE_MAP.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.DISEASE_STAGE_MAP.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.DISEASE_STAGE_MAP to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.DISEASE_STAGE_MAP to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: ETHNICITY                                             */
/*==============================================================*/
create table ${subjectsUser}.ETHNICITY (
   ETHNICITY_CDE        VARCHAR2(10 CHAR)     not null,
   ETHNICITY_DESC       VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ETHNICITY primary key (ETHNICITY_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.ETHNICITY is
'HIS = Hispanic or Latino
NHIS = Not Hispanic or Latino
UK = Ethnicity is < Blank>'
/

comment on column ${subjectsUser}.ETHNICITY.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.ETHNICITY.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.ETHNICITY.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.ETHNICITY.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ETHNICITY to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ETHNICITY to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: IN_PROGRESS_PATIENT                                   */
/*==============================================================*/
create table ${subjectsUser}.IN_PROGRESS_PATIENT (
   SUBJECT_GUID         RAW(16)               not null,
   IN_PROGRESS_STATUS_CDE VARCHAR2(10 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.IN_PROGRESS_PATIENT is
'The (new) SUBJECT GUID (Global Unique IDentifier) will be stored in this table for any Patients who are determined to be a potential duplicate with an existing Patient, or for Patients with only partial information available so far (In Progress Patient), until further research determines if a new patient row should be created or not.  If the In Progress Patient is accepted (not a duplicate) then the row in this table will be deleted, leaving the new SUBJECT row. If the In Progress Patient is rejected (is a duplicate) then the row in this table AND the SUBJECT table will be deleted so we will not have two SUBJECT GUIDs for the same person.

The criteria for being a potential duplicate is:  [need to look this up]
Upon insert the row will be in the status of ''INPROGRESS'' or ''DUPLICATE''; 
Rows will only exist in this table while research is being done on possible duplicates or for Patients with incomplete data to store a new row in the Recipient table.

'
/

comment on column ${subjectsUser}.IN_PROGRESS_PATIENT.SUBJECT_GUID is
'A Global ID of the subject. '
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.IN_PROGRESS_PATIENT to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.IN_PROGRESS_PATIENT to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: IN_PROGRESS_STATUS                                    */
/*==============================================================*/
create table ${subjectsUser}.IN_PROGRESS_STATUS (
   IN_PROGRESS_STATUS_CDE VARCHAR2(10 CHAR)     not null,
   IN_PROGRESS_STATUS_DESC VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_IN_PROGRESS_STATUS primary key (IN_PROGRESS_STATUS_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.IN_PROGRESS_STATUS is
'INPROGRESS; initial status for rows inserted to IN_PROGRESS_PATIENT table.
DUPLICATE;  status of new Subject Guid while any new info is being collected on a Patient determined to already exist.  The new Subject Guid will then be deleted.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.IN_PROGRESS_STATUS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.IN_PROGRESS_STATUS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: LANGUAGE                                              */
/*==============================================================*/
create table ${subjectsUser}.LANGUAGE (
   LANGUAGE_CDE         VARCHAR2(10 CHAR)     not null,
   LANGUAGE_DESC        VARCHAR2(30 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_LANGUAGE primary key (LANGUAGE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.LANGUAGE is
'ARA	Arabic
CHI	Chinese-Mandarin
ENG	English
FRN	French
GER	German
ITA	Italian
JPN	Japanese
KOR	Korean
OTH	Other
POR	Portuguese
RUS	Russian
SPA	Spanish
VTM	Vietnamese'
/

comment on column ${subjectsUser}.LANGUAGE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.LANGUAGE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.LANGUAGE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.LANGUAGE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.LANGUAGE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.LANGUAGE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: RACE                                                  */
/*==============================================================*/
create table ${subjectsUser}.RACE (
   RACE_CDE             VARCHAR2(10 CHAR)     not null,
   RACE_DESC            VARCHAR2(100 CHAR)    not null,
   BROAD_RACE_CDE       VARCHAR2(10 CHAR)     not null,
   START_DTE            TIMESTAMP(6)          not null,
   END_DTE              TIMESTAMP(6),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_RACE primary key (RACE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on column ${subjectsUser}.RACE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.RACE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.RACE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.RACE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.RACE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.RACE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: RECIPIENT                                             */
/*==============================================================*/
create table ${subjectsUser}.RECIPIENT (
   SUBJECT_GUID         RAW(16)               not null,
   FIRST_NME            VARCHAR2(40 CHAR)     not null,
   LAST_NME             VARCHAR2(40 CHAR)     not null,
   MIDDLE_INITIAL_NME   VARCHAR2(1 CHAR),
   ENTRY_DTE            TIMESTAMP(0),
   ADDRESS_1            VARCHAR2(50 CHAR),
   ADDRESS_2            VARCHAR2(50 CHAR),
   CITY                 VARCHAR2(50 CHAR),
   STATE                VARCHAR2(10 CHAR),
   ZIP_POSTAL_CDE       VARCHAR2(10 CHAR),
   COUNTRY_CDE          VARCHAR2(2 CHAR),
   CARE_OF              VARCHAR2(30 CHAR),
   EMAIL_ADDRESS        VARCHAR2(55 CHAR),
   PHONE_NUM            VARCHAR2(30 CHAR),
   REMISSION_NUM        NUMBER(2),
   DIAGNOSIS_DTE        TIMESTAMP(0),
   IRB_APPROVAL_IND     VARCHAR2(1 CHAR)     default 'N'
      constraint CK_RECIPIENT_IRB_APPROVAL check (IRB_APPROVAL_IND is null or (IRB_APPROVAL_IND in ('Y','N'))),
   TRANSFUSED_STS       VARCHAR2(1 CHAR),
   OTHER_DISEASE        VARCHAR2(30 CHAR),
   FORMER_NME           VARCHAR2(20 CHAR),
   PREFERRED_NME        VARCHAR2(20 CHAR),
   REFERRING_PHYSICIAN_IID NUMBER(9),
   COMPLETED_BY_FIRST_NME VARCHAR2(40 CHAR),
   COMPLETED_BY_LAST_NME VARCHAR2(40 CHAR),
   COMPLETED_BY_PHONE   VARCHAR2(30 CHAR),
   DISEASE_CDE          VARCHAR2(10 CHAR),
   DISEASE_STAGE_CDE    VARCHAR2(10 CHAR),
   LANGUAGE_CDE         VARCHAR2(10 CHAR),
   RECIPIENT_STATUS_CDE VARCHAR2(10 CHAR),
   RECIPIENT_STATUS_REASON_CDE VARCHAR2(10 CHAR),
   RECIPIENT_STATUS_REASON_DTE TIMESTAMP(0),
   ACCESSIBLE_CVL_IND   NUMBER(1),
   COORDINATOR_NME      VARCHAR2(30 CHAR),
   PRESCRIBED_THERAPY   VARCHAR2(4 CHAR),
   BP_GUID              RAW(16),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_RECIPIENT primary key (SUBJECT_GUID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.RECIPIENT is
'A recipient of the stem cell transplant (aka patient).
Each row in the table represents one recipient and contains demographic information of a recipient. There is only one subject in the Recipient ODS so all attributes of subject object are included in the Recipient object. Recipient-subjects have the HLA typing results associated with them.

updates to make: 
* BP_GUID replaces TC_BP_GUID
* TC''s and Infusion Centers can have secondary sites.  should BP_SATELLITE_CDE be removed.
* leave BP_SATELLITE_CDE in for now.
* language fields -- 3, need more discussion.'
/

comment on column ${subjectsUser}.RECIPIENT.SUBJECT_GUID is
'A Global ID of the subject. '
/

comment on column ${subjectsUser}.RECIPIENT.FIRST_NME is
'A first name of a recipient (patient).'
/

comment on column ${subjectsUser}.RECIPIENT.LAST_NME is
'A last name of a recipient (patient).'
/

comment on column ${subjectsUser}.RECIPIENT.MIDDLE_INITIAL_NME is
'A middle initial of a person''s name.'
/

comment on column ${subjectsUser}.RECIPIENT.ENTRY_DTE is
'This is the registration date for the recipient on the nmdp database.'
/

comment on column ${subjectsUser}.RECIPIENT.ADDRESS_1 is
'A first line of a mailing address.'
/

comment on column ${subjectsUser}.RECIPIENT.ADDRESS_2 is
'A second line of a mailing address (if needed).'
/

comment on column ${subjectsUser}.RECIPIENT.CITY is
'City is used to hold the complete spellling of the city in an address.'
/

comment on column ${subjectsUser}.RECIPIENT.STATE is
'State is the code abbreviation for the state in which the person lives. Can be more than 2 characters. '
/

comment on column ${subjectsUser}.RECIPIENT.ZIP_POSTAL_CDE is
'Zip code is used in recipient address. '
/

comment on column ${subjectsUser}.RECIPIENT.COUNTRY_CDE is
'An abbreviation for a country in a mailing address. '
/

comment on column ${subjectsUser}.RECIPIENT.CARE_OF is
'Free text field contains the name(s) of people that provide care to a recipient.'
/

comment on column ${subjectsUser}.RECIPIENT.EMAIL_ADDRESS is
'Email address of a recipient. '
/

comment on column ${subjectsUser}.RECIPIENT.PHONE_NUM is
'Phone number of a recipient including area code. '
/

comment on column ${subjectsUser}.RECIPIENT.REMISSION_NUM is
'This indicates how many remissions of the primary disease have ocurred.'
/

comment on column ${subjectsUser}.RECIPIENT.DIAGNOSIS_DTE is
'The date that the primary disease of the patient was recognized as the problem.'
/

comment on column ${subjectsUser}.RECIPIENT.IRB_APPROVAL_IND is
'This indicates whether the search is approved for transplant based on center and disease.'
/

comment on column ${subjectsUser}.RECIPIENT.TRANSFUSED_STS is
'Indicates if a recipient had a blood transfusion. Can be ''Y'', ''N'' or null. '
/

comment on column ${subjectsUser}.RECIPIENT.OTHER_DISEASE is
'This field is used to hold the primary disease description if the form110 comes in with primary disease of other. The specify field on the form will fill this field in.'
/

comment on column ${subjectsUser}.RECIPIENT.FORMER_NME is
'A maiden name or a previous name of a recipient (if name was changed). '
/

comment on column ${subjectsUser}.RECIPIENT.PREFERRED_NME is
'A name that a recipient prefers to be called. '
/

comment on column ${subjectsUser}.RECIPIENT.REFERRING_PHYSICIAN_IID is
'PK'
/

comment on column ${subjectsUser}.RECIPIENT.COMPLETED_BY_FIRST_NME is
'The first name of the physician that completed the Form110 for the patient''s original preliminary search request.  '
/

comment on column ${subjectsUser}.RECIPIENT.COMPLETED_BY_LAST_NME is
'The last name of the physician that completed the original Form110 preliminary search request for the patient.  '
/

comment on column ${subjectsUser}.RECIPIENT.COMPLETED_BY_PHONE is
'The phone number of the physician that completed the original Form110 preliminary search request for the patient.  '
/

comment on column ${subjectsUser}.RECIPIENT.DISEASE_CDE is
'This field defines the detailed disease which is resulting in the need for a transplant. This code fits under a specific broad disease category {d710.mdpd2020}'
/

comment on column ${subjectsUser}.RECIPIENT.DISEASE_STAGE_CDE is
'This is the stage of the disease as reported on form110.'
/

comment on column ${subjectsUser}.RECIPIENT.RECIPIENT_STATUS_CDE is
'The state of a patient is in.

PARTIAL - The state of a patient delivered to the NMDP for the first time when incomplete HLA and demographic information have been provided.

REGISTERED - The state of a patient delivereed to the NMDP for the first time and the patient data set contains complete HLA and demographic information. 

ACTIVE - The state of patient when there are one or more sources being advanced to provide product for transplant into the patient.

CLOSED - The state of a Patient that is no longer seeking transplant. This can be due to patient condition changing, death of that patient, a successful transplant or other reason.'
/

comment on column ${subjectsUser}.RECIPIENT.RECIPIENT_STATUS_REASON_CDE is
'Reason for a patient for being a particular state.'
/

comment on column ${subjectsUser}.RECIPIENT.RECIPIENT_STATUS_REASON_DTE is
'Date when a patient state was added to the system.'
/

comment on column ${subjectsUser}.RECIPIENT.COORDINATOR_NME is
'This name will be populated from the Active Directory login ID.'
/

comment on column ${subjectsUser}.RECIPIENT.CREATE_TS is
'Date Record was last updated'
/

grant UPDATE,SELECT,DELETE,INSERT on ${subjectsUser}.RECIPIENT to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.RECIPIENT to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: RECIPIENT_STATUS                                      */
/*==============================================================*/
create table ${subjectsUser}.RECIPIENT_STATUS (
   RECIPIENT_STATUS_CDE VARCHAR2(10 CHAR)     not null,
   RECIPIENT_STATUS_DESC VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_RECIPIENT_STATUS primary key (RECIPIENT_STATUS_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.RECIPIENT_STATUS is
'Represents different states of a Recipient.
Need more discussion '
/

comment on column ${subjectsUser}.RECIPIENT_STATUS.RECIPIENT_STATUS_CDE is
'Identifies a state of a recipient.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS.RECIPIENT_STATUS_DESC is
'describes a state of a recipient.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.RECIPIENT_STATUS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.RECIPIENT_STATUS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: RECIPIENT_STATUS_REASON                               */
/*==============================================================*/
create table ${subjectsUser}.RECIPIENT_STATUS_REASON (
   RECIPIENT_STATUS_REASON_CDE VARCHAR2(10)          not null,
   RECIPIENT_STATUS_REASON_DESC VARCHAR2(255),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_RECIPIENT_STATUS_REASON primary key (RECIPIENT_STATUS_REASON_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.RECIPIENT_STATUS_REASON is
'Represents REASONS for which a recipient can be in different states.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS_REASON.RECIPIENT_STATUS_REASON_CDE is
'Identifies REASON for which a recipient can be in different states.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS_REASON.RECIPIENT_STATUS_REASON_DESC is
'describes REASON for which a recipient can be in different states.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS_REASON.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS_REASON.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS_REASON.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.RECIPIENT_STATUS_REASON.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.RECIPIENT_STATUS_REASON to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.RECIPIENT_STATUS_REASON to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: REFERRING_PHYSICIAN                                   */
/*==============================================================*/
create table ${subjectsUser}.REFERRING_PHYSICIAN (
   REFERRING_PHYSICIAN_IID NUMBER(9)             
      generated by default as identity ( start with 4 ),
   FIRST_NME            VARCHAR2(40 CHAR),
   LAST_NME             VARCHAR2(40 CHAR),
   ADDRESS_1            VARCHAR2(50 CHAR),
   ADDRESS_2            VARCHAR2(50 CHAR),
   CITY                 VARCHAR2(50 CHAR),
   STATE                VARCHAR2(10 CHAR),
   ZIP_POSTAL_CDE       VARCHAR2(10 CHAR),
   COUNTRY_CDE          VARCHAR2(2 CHAR),
   PRIMARY_PHONE        VARCHAR2(30 CHAR),
   FAX_PHONE            VARCHAR2(30 CHAR),
   CELL_PHONE           VARCHAR2(30 CHAR),
   PAGER_PHONE          VARCHAR2(30 CHAR),
   EMAIL_ADDRESS        VARCHAR2(55 CHAR),
   PHYSICIAN_CENTER_NME VARCHAR2(55 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_REFERRING_PHYSICIAN primary key (REFERRING_PHYSICIAN_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.REFERRING_PHYSICIAN is
'A doctor that is associated with the recipient. This doctor is the referring physician of that recipient (that physician may or may not be associated with the TC hospital that registered the recipient).'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.REFERRING_PHYSICIAN_IID is
'PK'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.FIRST_NME is
'A first name of a physician. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.LAST_NME is
'A last name of a physician. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.ADDRESS_1 is
'A first line of a mailing address.'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.ADDRESS_2 is
'A second line of a mailing address (if needed).'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.CITY is
'City is used to hold the complete spellling of the city in an address.'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.STATE is
'State is the code abbreviation for the state from an address. Can be more than 2 characters. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.ZIP_POSTAL_CDE is
'Zip code is used in physician address. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.COUNTRY_CDE is
'An abbreviation for a country in a mailing address. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.PRIMARY_PHONE is
'A primary phone number for a physician. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.FAX_PHONE is
'A fax number for a physician. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.CELL_PHONE is
'A cell phone number for a physician. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.PAGER_PHONE is
'A pager phone number for a physician. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.EMAIL_ADDRESS is
'Email address of a physician. '
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.REFERRING_PHYSICIAN.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.REFERRING_PHYSICIAN to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.REFERRING_PHYSICIAN to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: RESOURCE_RIGHT                                        */
/*==============================================================*/
create table ${subjectsUser}.RESOURCE_RIGHT (
   RESOURCE_RIGHT_IID   NUMBER(9)             
      generated by default as identity ( start with 20 ),
   RIGHT_NAME           VARCHAR2(150  CHAR)   not null,
   UPDATE_TS            TIMESTAMP             not null,
   UPDATE_BY_ID         VARCHAR2(50)          not null,
   CREATE_TS            TIMESTAMP             not null,
   CREATE_BY_ID         VARCHAR2(50)          not null,
   constraint PK_RESOURCE_RIGHT primary key (RESOURCE_RIGHT_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.RESOURCE_RIGHT is
'A resource right is a service endpoint. 
Create Recipient
Create Order'
/

comment on column ${subjectsUser}.RESOURCE_RIGHT.RESOURCE_RIGHT_IID is
'A unique number assigned to the each item'
/

comment on column ${subjectsUser}.RESOURCE_RIGHT.RIGHT_NAME is
'Name of right in this format ClassName.MethodName'
/

comment on column ${subjectsUser}.RESOURCE_RIGHT.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.RESOURCE_RIGHT.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.RESOURCE_RIGHT.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.RESOURCE_RIGHT.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.RESOURCE_RIGHT to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.RESOURCE_RIGHT to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: RESOURCE_ROLE                                         */
/*==============================================================*/
create table ${subjectsUser}.RESOURCE_ROLE (
   RESOURCE_ROLE_CDE    VARCHAR2(10 CHAR)     not null,
   RESOURCE_ROLE_NME    VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_RESOURCE_ROLE primary key (RESOURCE_ROLE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.RESOURCE_ROLE is
'The roles whic may be applied to various resources on the Case.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE.RESOURCE_ROLE_CDE is
'Abbreviated version of the Resource Role, used to group application users so functionality may be allowed / disallowed by role.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,UPDATE,SELECT,INSERT on ${subjectsUser}.RESOURCE_ROLE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.RESOURCE_ROLE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: RESOURCE_ROLE_RIGHTS                                  */
/*==============================================================*/
create table ${subjectsUser}.RESOURCE_ROLE_RIGHTS (
   RESOURCE_RIGHT_IID   NUMBER(9)             not null,
   RESOURCE_ROLE_CDE    VARCHAR2(10 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_RESOURCE_ROLE_RIGHTS primary key (RESOURCE_RIGHT_IID, RESOURCE_ROLE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.RESOURCE_ROLE_RIGHTS is
'This table assigns rights to a role'
/

comment on column ${subjectsUser}.RESOURCE_ROLE_RIGHTS.RESOURCE_RIGHT_IID is
'Refers to the RESOURCE_RIGHT_IID in the RESOURCE_RIGHT table'
/

comment on column ${subjectsUser}.RESOURCE_ROLE_RIGHTS.RESOURCE_ROLE_CDE is
'RESOURCE_ROLE_CDE is the code of a role from the RESOURCE_ROLE table'
/

comment on column ${subjectsUser}.RESOURCE_ROLE_RIGHTS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE_RIGHTS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE_RIGHTS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.RESOURCE_ROLE_RIGHTS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.RESOURCE_ROLE_RIGHTS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.RESOURCE_ROLE_RIGHTS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: ROLE_PERMISSION_FE                                    */
/*==============================================================*/
create table ${subjectsUser}.ROLE_PERMISSION_FE (
   ROLE_PERMISSION_FE_IID NUMBER(9)             
      generated by default as identity ( start with 40 ),
   PERMISSION_NME       VARCHAR2(255 CHAR)    not null,
   RESOURCE_ROLE_CDE    VARCHAR2(10 CHAR)     not null,
   PERMISSION_IND       VARCHAR2(1 CHAR)      not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ROLE_PERMISSION_FE primary key (ROLE_PERMISSION_FE_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.ROLE_PERMISSION_FE is
'Each row in this table links a Front-End (FE) permission to a resource role, to control what is displayed on the UI for each resource role.
'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.ROLE_PERMISSION_FE_IID is
'Refers to the RESOURCE_RIGHT_IID in the RESOURCE_RIGHT table'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.PERMISSION_NME is
'Name for each unique permission which can be assigned to the Front-End role.'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.RESOURCE_ROLE_CDE is
'Abbreviated version of the Resource Role, used to group application users so functionality may be allowed / disallowed by role.'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.PERMISSION_IND is
'Y = role permission is allowed for the Front-End role.
N = role permission is not allowed for the Front-End role.'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.ROLE_PERMISSION_FE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

alter table ${subjectsUser}.ROLE_PERMISSION_FE
   add constraint AK_ROLE_PERMISSON_FE unique (RESOURCE_ROLE_CDE, PERMISSION_NME)
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.ROLE_PERMISSION_FE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.ROLE_PERMISSION_FE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: SCHEMA_VERSION                                        */
/*==============================================================*/
create table ${subjectsUser}.SCHEMA_VERSION (
   VERSION_RANK         NUMBER                
      generated by default as identity ( start with 1 ),
   INSTALLED_RANK       NUMBER                not null,
   VERSION              VARCHAR2(50 BYTE)     not null,
   DESCRIPTION          VARCHAR2(200 BYTE)    not null,
   TYPE                 VARCHAR2(20 BYTE)     not null,
   SCRIPT               VARCHAR2(1000 BYTE)   not null,
   CHECKSUM             NUMBER,
   INSTALLED_BY         VARCHAR2(100 BYTE)    not null,
   INSTALLED_ON         TIMESTAMP(6)          not null,
   EXECUTION_TIME       NUMBER                not null,
   SUCCESS              NUMBER(1)             not null
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.SCHEMA_VERSION is
'The Schema Version table is needed by the Flyway software.  It must exist in both the TS_ORDER_MGMT and ${subjectsUser} schemas. Create in new instances with 1 BASELINE row.
'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.SCHEMA_VERSION to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.SCHEMA_VERSION to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: STATE                                                 */
/*==============================================================*/
create table ${subjectsUser}.STATE (
   STATE_CDE            VARCHAR2(10 CHAR)     not null,
   COUNTRY_CDE          VARCHAR2(2 CHAR)      not null,
   STATE_NME            VARCHAR2(30 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_STATE primary key (STATE_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.STATE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.STATE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: SUBJECT                                               */
/*==============================================================*/
create table ${subjectsUser}.SUBJECT (
   SUBJECT_GUID         RAW(16)               not null,
   SUBJECT_CLASS_CDE    VARCHAR2(10 CHAR)     not null,
   SEX_CDE              VARCHAR2(1 CHAR),
   RH_TYPE_CDE          VARCHAR2(10 CHAR),
   BLOOD_TYPE_CDE       VARCHAR2(10 CHAR),
   PRIM_ETHNICITY_CDE   VARCHAR2(10 CHAR),
   PRIM_RACE_CDE        VARCHAR2(10 CHAR),
   BIRTH_DTE            TIMESTAMP(0),
   CT_COMPLETED_CDE     VARCHAR2(10 CHAR),
   CT_COMPLETED_METHOD_CDE VARCHAR2(10 CHAR),
   CT_COMPLETED_DTE     TIMESTAMP(0),
   CMV_STATUS_CDE       VARCHAR2(10 CHAR),
   HEIGHT               NUMBER(10),
   HEIGHT_UNIT          VARCHAR2(2 CHAR),
   WEIGHT               NUMBER(10),
   WEIGHT_UNIT          VARCHAR2(3 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SUBJECT primary key (SUBJECT_GUID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.SUBJECT is
'An abstract for either patient-recipient or source, plus any other object of the hematological testing or studies (i.e. cord mom, bmdw sources, QC samples, etc.) All Sujects have HLA typing results associated with them.'
/

comment on column ${subjectsUser}.SUBJECT.SUBJECT_GUID is
'A Global ID of the subject. '
/

comment on column ${subjectsUser}.SUBJECT.SUBJECT_CLASS_CDE is
'Defines the class of the subject (donor, CBU, recipient, mother). This code is created as a translation from subject classification (CPC to CBU, MBC to CBU,
MBD and CPD to DONOR, etc.'
/

comment on column ${subjectsUser}.SUBJECT.SEX_CDE is
'This code indicates if the individual is Male or Female.  '
/

comment on column ${subjectsUser}.SUBJECT.RH_TYPE_CDE is
'This code shows if the blood type is Positive of Negative. ABO type can be B adn RH might be Positive. '
/

comment on column ${subjectsUser}.SUBJECT.BLOOD_TYPE_CDE is
'The code is the ABO blood type of the person (subject) in question. '
/

comment on column ${subjectsUser}.SUBJECT.PRIM_ETHNICITY_CDE is
'Calculated primary ethnicity for the subject.'
/

comment on column ${subjectsUser}.SUBJECT.PRIM_RACE_CDE is
'The primary race of the individual in question. This is a global parameter that is calculated (decoded) based on the subject races. '
/

comment on column ${subjectsUser}.SUBJECT.BIRTH_DTE is
'The birth date of the subject.'
/

comment on column ${subjectsUser}.SUBJECT.CT_COMPLETED_CDE is
'A CT may be complete, not complete, or partially complete. This is based on the level of typings currently stored in STAR for a Recipient or Cord and who completed those typings. Each time typings are received this status is reevaluated. The valid values are Y, N, P.  Default is "N".'
/

comment on column ${subjectsUser}.SUBJECT.CT_COMPLETED_METHOD_CDE is
'This is the method used to report Recipient Typings. Valid values are 110, 117, CNV, LAB.
'
/

comment on column ${subjectsUser}.SUBJECT.CT_COMPLETED_DTE is
'This is the date that the CT was marked as complete. This will be blank for CT''s not yet complete.'
/

comment on column ${subjectsUser}.SUBJECT.CMV_STATUS_CDE is
'This code indicates whether an individual has been exposed to cytomegalovirus. This is of special concern if the recipient is cmv negative.'
/

comment on column ${subjectsUser}.SUBJECT.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.SUBJECT.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.SUBJECT.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.SUBJECT.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.SUBJECT to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.SUBJECT to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: SUBJECT_CLASS                                         */
/*==============================================================*/
create table ${subjectsUser}.SUBJECT_CLASS (
   SUBJECT_CLASS_CDE    VARCHAR2(10 CHAR)     not null,
   SUBJECT_CLASS_DESC   VARCHAR2(30 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SUBJECT_CLASS primary key (SUBJECT_CLASS_CDE)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.SUBJECT_CLASS is
'CBU = Cord
RECIPIENT = Recipient
DONOR = Donor
MOTHER = CordMom'
/

comment on column ${subjectsUser}.SUBJECT_CLASS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.SUBJECT_CLASS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.SUBJECT_CLASS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.SUBJECT_CLASS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${subjectsUser}.SUBJECT_CLASS to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.SUBJECT_CLASS to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: SUBJECT_IDENTIFIER                                    */
/*==============================================================*/
create table ${subjectsUser}.SUBJECT_IDENTIFIER (
   SUBJECT_IDENTIFIER_IID NUMBER(9)             
      generated by default as identity ( start with 1 ),
   SUBJECT_GUID         RAW(16)               not null,
   SOR_BP_GUID          RAW(16)               not null,
   IDENTIFIER           VARCHAR2(50 CHAR)     not null,
   IDENTIFIER_QUALIFIER VARCHAR2(10 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SUBJECT_IDENTIFIER primary key (SUBJECT_IDENTIFIER_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.SUBJECT_IDENTIFIER is
'A given Subject (donor, cord, mother, etc.) may be assigned one or more identifiers by various organizations. For example, a manufacturer of a CBU may assign a "local" id, by which the unit is known inside that bank. If the unit changes custody (i.e. is moved to another bank), then the new distributor may assign a different id. In addition, the unit may be assigned an ISBT ID. Once the unit is registered with a Registry, the Registry (such as NMDP) may assign its own ID to the unit. This entity is used to store one or more IDs per Subject. Each ID is unique within the System-of-Record domain (the organization that assigned the ID), qualified by the version of the ID.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.SUBJECT_IDENTIFIER_IID is
'Primary Key'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.SUBJECT_GUID is
'FK to the Subject table.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.SOR_BP_GUID is
'A Business Party that is the system of record (SOR) that has assigned and reported the identifier to the NMDP (could be the NMDP itself). Each identifier should have the system of record that assigned this ID. The business party may be a Registry, a Donor Center, a Cord Blood Bank, etc.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.IDENTIFIER is
'The identifier code reported by the SOR.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.IDENTIFIER_QUALIFIER is
'A version of the identifier. Could be either a version that was in effect when the  ID was assigned or a communication protocol that delivered/modified the ID (i.e. EMDIS, which frequently modifies the original IDs assigned by the cooperative registry). Some examples - "ISBT", "FULL", "EMDIS", etc.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.SUBJECT_IDENTIFIER.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.SUBJECT_IDENTIFIER to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.SUBJECT_IDENTIFIER to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: SUBJECT_RACE                                          */
/*==============================================================*/
create table ${subjectsUser}.SUBJECT_RACE (
   SUBJECT_GUID         RAW(16)               not null,
   RACE_CDE             VARCHAR2(10 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SUBJECT_RACE primary key (RACE_CDE, SUBJECT_GUID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.SUBJECT_RACE is
'A list of race codes for a given subject. One or more answers given to the race question on forms for a given subject.'
/

comment on column ${subjectsUser}.SUBJECT_RACE.SUBJECT_GUID is
'FK to the Subject table'
/

comment on column ${subjectsUser}.SUBJECT_RACE.RACE_CDE is
'The race code of the individual in question. There can be multiple race codes for the selected subject. '
/

comment on column ${subjectsUser}.SUBJECT_RACE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.SUBJECT_RACE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.SUBJECT_RACE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.SUBJECT_RACE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.SUBJECT_RACE to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.SUBJECT_RACE to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: SUPPORT_ACTIVITY                                      */
/*==============================================================*/
create table ${subjectsUser}.SUPPORT_ACTIVITY (
   SUPPORT_ACTIVITY_IID NUMBER(9)             
      generated by default as identity ( start with 1 ),
   SUBJECT_GUID         RAW(16)               not null,
   CASE_RESOURCE_IID    NUMBER(9)             not null,
   ACTIVITY_CDE         VARCHAR2(50)          not null,
   ACTIVITY_STATUS_CDE  VARCHAR2(10)          not null,
   SUPPORT_ACTIVITY_DUE_DTE TIMESTAMP(0)          not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SUPPORT_ACTIVITY primary key (SUPPORT_ACTIVITY_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.SUPPORT_ACTIVITY is
'A place to assign administrative tasks not related to a specific CASE.   An example might be to establish a link to data that may be a duplicate patient case.  '
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.SUPPORT_ACTIVITY_IID is
'A unique identifier assigned to an administrative task assigned using business rules to the appropriate Case Manager resource'
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.CASE_RESOURCE_IID is
'The NMDP IID assigned to each resource capable of performing a trackable task.'
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.ACTIVITY_CDE is
'A unique value to the each item trackable within a CASE type e.g.  with Phase there are SrchConf, HLATypeTst,, EligSuit, AcqShpFol'
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.ACTIVITY_STATUS_CDE is
'A table used to assign unique codes to different status conditions. These condition could be activity type specific and involve one or more activity.  The complete set is to be defined by business rules'
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.SUPPORT_ACTIVITY.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.SUPPORT_ACTIVITY to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.SUPPORT_ACTIVITY to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: SUPPORT_ALERT                                         */
/*==============================================================*/
create table ${subjectsUser}.SUPPORT_ALERT (
   SUPPORT_ALERT_IID    NUMBER(9)             
      generated by default as identity ( start with 1 ),
   ALERT_CDE            VARCHAR2(10 CHAR)     not null,
   CASE_RESOURCE_IID    NUMBER(9)             not null,
   ALERT_DTE            TIMESTAMP(0)          not null,
   ALERT_STATUS_CDE     VARCHAR2(10)          not null,
   SUPPORT_ACTIVITY_IID NUMBER(9),
   SUBJECT_GUID         RAW(16),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   ACTIVITY_STATUS_CDE  VARCHAR2(10 CHAR),
   constraint PK_SUPPORT_ALERT primary key (SUPPORT_ALERT_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.SUPPORT_ALERT is
'A row will identify that an alert has been generated associated with an administrative non-case specific task.'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.SUPPORT_ALERT_IID is
'A unique identifier assigned to an administrative task assigned using business rules to the appropriate Case Manager resource'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.ALERT_CDE is
'A unique value assigned to a particular alert description.'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.CASE_RESOURCE_IID is
'The NMDP IID assigned to each resource capable of performing a trackable task.'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.ALERT_STATUS_CDE is
'A table used to assign unique codes to different status conditions. These condition could be activity type specific and involve one or more activity.  The complete set is to be defined by business rules

OPEN
CLOSED
NOT OPEN
N/A
COMPLETE
ACTIVE - this is the Phase (activity) which has the primary focus'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.SUPPORT_ACTIVITY_IID is
'A unique identifier assigned to an administrative task assigned using business rules to the appropriate Case Manager resource'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.SUBJECT_GUID is
'A Global ID of the subject. '
/

comment on column ${subjectsUser}.SUPPORT_ALERT.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${subjectsUser}.SUPPORT_ALERT.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.SUPPORT_ALERT to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.SUPPORT_ALERT to ${subjectsUser}_RO_USER
/

/*==============================================================*/
/* Table: USER_CONFIG                                           */
/*==============================================================*/
create table ${subjectsUser}.USER_CONFIG (
   USER_CONFIG_IID      NUMBER(19)            
      generated by default as identity ( start with 1 ),
   CONFIG_KEY_VAL       VARCHAR2(255 CHAR),
   USER_ID              NUMBER(19),
   CONFIG_KEY_ID        VARCHAR2(255 CHAR),
   VERSION_NUM          NUMBER(19),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_USER_CONFIG primary key (USER_CONFIG_IID)
         using index tablespace ${subjectsUser}_IDX
)
   tablespace ${subjectsUser}
/

comment on table ${subjectsUser}.USER_CONFIG is
'This table will contain default and preferred settings for Unite users.
Users will be able to set/change their preferred settings, the language and other attributes of the person logged in can be tracked to determine UI logic and workflow.  
Needed for the ''Internationalization'' story.

NK is USERID + KEY.  may need AK for this combination, but can have null USERID for default configs.
'
/

comment on column ${subjectsUser}.USER_CONFIG.CONFIG_KEY_VAL is
'ex: user language (value would be FR, GE).
ex: nbr of elements to the left on user dashboard.  {value is 5, 3, )'
/

alter table ${subjectsUser}.USER_CONFIG
   add constraint AK_USER_CONFIG unique (USER_ID, CONFIG_KEY_ID)
      using index tablespace ${subjectsUser}_IDX
/

grant DELETE,INSERT,SELECT,UPDATE on ${subjectsUser}.USER_CONFIG to ${subjectsUser}_APP_USER
/

grant SELECT on ${subjectsUser}.USER_CONFIG to ${subjectsUser}_RO_USER
/

alter table ${subjectsUser}.ACTIVITY
   add constraint FK_ACTIVITY_01 foreign key (ACTIVITY_TYPE_CDE)
      references ${subjectsUser}.ACTIVITY_TYPE (ACTIVITY_TYPE_CDE)
      not deferrable
/

alter table ${subjectsUser}.ACTIVITY
   add constraint FK_ACTIVITY_02 foreign key (APPLICABLE_RESOURCE_ROLE_CDE)
      references ${subjectsUser}.RESOURCE_ROLE (RESOURCE_ROLE_CDE)
/

alter table ${subjectsUser}.ALERT
   add constraint FK_ALERT_01 foreign key (APPLICABLE_RESOURCE_ROLE_CDE)
      references ${subjectsUser}.RESOURCE_ROLE (RESOURCE_ROLE_CDE)
/

alter table ${subjectsUser}.ALERT
   add constraint FK_ALERT_02 foreign key (ALERT_TYPE_CDE)
      references ${subjectsUser}.ALERT_TYPE (ALERT_TYPE_CDE)
/

alter table ${subjectsUser}.BP_ADDRESS
   add constraint FK_BP_ADDRESS_01 foreign key (BP_GUID)
      references ${subjectsUser}.BUSINESS_PARTY (BP_GUID)
      not deferrable
/

alter table ${subjectsUser}.BP_IDENTIFIER
   add constraint FK_BP_IDENTIFIER_01 foreign key (BP_GUID)
      references ${subjectsUser}.BUSINESS_PARTY (BP_GUID)
      not deferrable
/

alter table ${subjectsUser}.BUSINESS_PARTY_AFFILIATION
   add constraint FK_BUSN_PARTY_AFFILIATION_01 foreign key (AFFILIATED_BP_GUID)
      references ${subjectsUser}.BUSINESS_PARTY (BP_GUID)
      not deferrable
/

alter table ${subjectsUser}.BUSINESS_PARTY_AFFILIATION
   add constraint FK_BUSN_PARTY_AFFILIATION_02 foreign key (BP_GUID)
      references ${subjectsUser}.BUSINESS_PARTY (BP_GUID)
      not deferrable
/

alter table ${subjectsUser}.BUSINESS_PARTY_AFFILIATION
   add constraint FK_BUSN_PARTY_AFFILIATION_03 foreign key (AFFILIATION_CDE)
      references ${subjectsUser}.AFFILIATION (AFFILIATION_CDE)
      not deferrable
/

alter table ${subjectsUser}.CASE_RESOURCE
   add constraint FK_CASE_RESOURCE_01 foreign key (CASE_RESOURCE_ROLE_CDE)
      references ${subjectsUser}.RESOURCE_ROLE (RESOURCE_ROLE_CDE)
      not deferrable
/

alter table ${subjectsUser}.CM_CASE
   add constraint FK_CM_CASE_03 foreign key (CASE_RESOURCE_IID)
      references ${subjectsUser}.CASE_RESOURCE (CASE_RESOURCE_IID)
      not deferrable
/

alter table ${subjectsUser}.CM_CASE
   add constraint FK_CM_CASE_05 foreign key (SUBJECT_GUID)
      references ${subjectsUser}.SUBJECT (SUBJECT_GUID)
      not deferrable
/

alter table ${subjectsUser}.CM_CASE
   add constraint FK_CM_CASE_07 foreign key (CASE_STATUS_CDE)
      references ${subjectsUser}.CASE_STATUS (CASE_STATUS_CDE)
      not deferrable
/

alter table ${subjectsUser}.DISEASE_STAGE_MAP
   add constraint FK_DISEASE_STAGE_MAP_01 foreign key (DISEASE_CDE)
      references ${subjectsUser}.DISEASE (DISEASE_CDE)
      not deferrable
/

alter table ${subjectsUser}.DISEASE_STAGE_MAP
   add constraint FK_DISEASE_STAGE_MAP_02 foreign key (DISEASE_STAGE_CDE)
      references ${subjectsUser}.DISEASE_STAGE (DISEASE_STAGE_CDE)
      not deferrable
/

alter table ${subjectsUser}.IN_PROGRESS_PATIENT
   add constraint FK_IN_PROGRESS_PATIENT_1 foreign key (SUBJECT_GUID)
      references ${subjectsUser}.RECIPIENT (SUBJECT_GUID)
      on delete cascade
/

alter table ${subjectsUser}.IN_PROGRESS_PATIENT
   add constraint FK_IN_PROGRESS_PATIENT_2 foreign key (IN_PROGRESS_STATUS_CDE)
      references ${subjectsUser}.IN_PROGRESS_STATUS (IN_PROGRESS_STATUS_CDE)
/

alter table ${subjectsUser}.RACE
   add constraint FK_RACE_01 foreign key (BROAD_RACE_CDE)
      references ${subjectsUser}.BROAD_RACE (BROAD_RACE_CDE)
      not deferrable
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_01 foreign key (BP_GUID)
      references ${subjectsUser}.BUSINESS_PARTY (BP_GUID)
      not deferrable
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_03 foreign key (SUBJECT_GUID)
      references ${subjectsUser}.SUBJECT (SUBJECT_GUID)
      not deferrable
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_04 foreign key (LANGUAGE_CDE)
      references ${subjectsUser}.LANGUAGE (LANGUAGE_CDE)
      not deferrable
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_05 foreign key (DISEASE_CDE)
      references ${subjectsUser}.DISEASE (DISEASE_CDE)
      not deferrable
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_06 foreign key (DISEASE_STAGE_CDE)
      references ${subjectsUser}.DISEASE_STAGE (DISEASE_STAGE_CDE)
      not deferrable
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_08 foreign key (REFERRING_PHYSICIAN_IID)
      references ${subjectsUser}.REFERRING_PHYSICIAN (REFERRING_PHYSICIAN_IID)
      not deferrable
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_09 foreign key (RECIPIENT_STATUS_CDE)
      references ${subjectsUser}.RECIPIENT_STATUS (RECIPIENT_STATUS_CDE)
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_10 foreign key (RECIPIENT_STATUS_REASON_CDE)
      references ${subjectsUser}.RECIPIENT_STATUS_REASON (RECIPIENT_STATUS_REASON_CDE)
/

alter table ${subjectsUser}.RECIPIENT
   add constraint FK_RECIPIENT_11 foreign key (STATE)
      references ${subjectsUser}.STATE (STATE_CDE)
/

alter table ${subjectsUser}.RESOURCE_ROLE_RIGHTS
   add constraint FK_RESOURCE_ROLE_RIGHTS_01 foreign key (RESOURCE_RIGHT_IID)
      references ${subjectsUser}.RESOURCE_RIGHT (RESOURCE_RIGHT_IID)
/

alter table ${subjectsUser}.RESOURCE_ROLE_RIGHTS
   add constraint FK_RESOURCE_ROLE_RIGHTS_02 foreign key (RESOURCE_ROLE_CDE)
      references ${subjectsUser}.RESOURCE_ROLE (RESOURCE_ROLE_CDE)
/

alter table ${subjectsUser}.ROLE_PERMISSION_FE
   add constraint FK_ROLE_PERMISSION_FE_01 foreign key (RESOURCE_ROLE_CDE)
      references ${subjectsUser}.RESOURCE_ROLE (RESOURCE_ROLE_CDE)
/

alter table ${subjectsUser}.STATE
   add constraint FK_STATE_01 foreign key (COUNTRY_CDE)
      references ${subjectsUser}.COUNTRY (COUNTRY_CDE)
/

alter table ${subjectsUser}.SUBJECT
   add constraint FK_SUBJECT_01 foreign key (PRIM_RACE_CDE)
      references ${subjectsUser}.RACE (RACE_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUBJECT
   add constraint FK_SUBJECT_02 foreign key (BLOOD_TYPE_CDE)
      references ${subjectsUser}.BLOOD_TYPE (BLOOD_TYPE_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUBJECT
   add constraint FK_SUBJECT_03 foreign key (SUBJECT_CLASS_CDE)
      references ${subjectsUser}.SUBJECT_CLASS (SUBJECT_CLASS_CDE)
/

alter table ${subjectsUser}.SUBJECT
   add constraint FK_SUBJECT_04 foreign key (PRIM_ETHNICITY_CDE)
      references ${subjectsUser}.ETHNICITY (ETHNICITY_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUBJECT
   add constraint FK_SUBJECT_05 foreign key (CMV_STATUS_CDE)
      references ${subjectsUser}.CMV_STATUS (CMV_STATUS_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUBJECT_IDENTIFIER
   add constraint FK_SUBJECT_IDENTIFIER_01 foreign key (SUBJECT_GUID)
      references ${subjectsUser}.SUBJECT (SUBJECT_GUID)
      not deferrable
/

alter table ${subjectsUser}.SUBJECT_IDENTIFIER
   add constraint FK_SUBJECT_IDENTIFIER_02 foreign key (SOR_BP_GUID)
      references ${subjectsUser}.BUSINESS_PARTY (BP_GUID)
      not deferrable
/

alter table ${subjectsUser}.SUBJECT_RACE
   add constraint FK_SUBJECT_RACE_01 foreign key (SUBJECT_GUID)
      references ${subjectsUser}.SUBJECT (SUBJECT_GUID)
      not deferrable
/

alter table ${subjectsUser}.SUBJECT_RACE
   add constraint FK_SUBJECT_RACE_02 foreign key (RACE_CDE)
      references ${subjectsUser}.RACE (RACE_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUPPORT_ACTIVITY
   add constraint FK_SUPPORT_ACTIVITY_01 foreign key (ACTIVITY_STATUS_CDE)
      references ${subjectsUser}.ACTIVITY_STATUS (ACTIVITY_STATUS_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUPPORT_ACTIVITY
   add constraint FK_SUPPORT_ACTIVITY_02 foreign key (CASE_RESOURCE_IID)
      references ${subjectsUser}.CASE_RESOURCE (CASE_RESOURCE_IID)
      not deferrable
/

alter table ${subjectsUser}.SUPPORT_ACTIVITY
   add constraint FK_SUPPORT_ACTIVITY_03 foreign key (ACTIVITY_CDE)
      references ${subjectsUser}.ACTIVITY (ACTIVITY_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUPPORT_ACTIVITY
   add constraint FK_SUPPORT_ACTIVITY_04 foreign key (SUBJECT_GUID)
      references ${subjectsUser}.SUBJECT (SUBJECT_GUID)
      not deferrable
/

alter table ${subjectsUser}.SUPPORT_ALERT
   add constraint FK_SUPPORT_ALERT_01 foreign key (CASE_RESOURCE_IID)
      references ${subjectsUser}.CASE_RESOURCE (CASE_RESOURCE_IID)
      not deferrable
/

alter table ${subjectsUser}.SUPPORT_ALERT
   add constraint FK_SUPPORT_ALERT_02 foreign key (ALERT_CDE)
      references ${subjectsUser}.ALERT (ALERT_CDE)
      not deferrable
/

alter table ${subjectsUser}.SUPPORT_ALERT
   add constraint FK_SUPPORT_ALERT_03 foreign key (SUBJECT_GUID)
      references ${subjectsUser}.SUBJECT (SUBJECT_GUID)
/

alter table ${subjectsUser}.SUPPORT_ALERT
   add constraint FK_SUPPORT_ALERT_04 foreign key (ALERT_STATUS_CDE)
      references ${subjectsUser}.ALERT_STATUS (ALERT_STATUS_CDE)
/

alter table ${subjectsUser}.SUPPORT_ALERT
   add constraint FK_SUPPORT_ALERT_05 foreign key (SUPPORT_ACTIVITY_IID)
      references ${subjectsUser}.SUPPORT_ACTIVITY (SUPPORT_ACTIVITY_IID)
/

