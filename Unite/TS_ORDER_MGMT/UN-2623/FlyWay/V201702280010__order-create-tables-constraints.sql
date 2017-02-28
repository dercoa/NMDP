/*==============================================================*/
/* Table: CANCEL_REASON                                         */
/*==============================================================*/
create table ${ordersUser}.CANCEL_REASON (
   CANCEL_REASON_CDE    VARCHAR2(10 CHAR)     not null,
   CANCEL_REASON_DESC   VARCHAR2(100 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_CANCEL_REASON primary key (CANCEL_REASON_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on column ${ordersUser}.CANCEL_REASON.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.CANCEL_REASON.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.CANCEL_REASON.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.CANCEL_REASON.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.CANCEL_REASON to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.CANCEL_REASON to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: CENTRAL_LINE_PLACEMENT                                */
/*==============================================================*/
create table ${ordersUser}.CENTRAL_LINE_PLACEMENT (
   CENTRAL_LINE_PLACEMENT_CDE VARCHAR2(20 CHAR)     not null,
   CENTRAL_LINE_PLACEMENT_NME VARCHAR2(100 CHAR),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_CENTRAL_LINE_PLACEMENT primary key (CENTRAL_LINE_PLACEMENT_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.CENTRAL_LINE_PLACEMENT is
'This field is used if the patient needs a central venous line to be placed. It dictates the timing of the placement and scheduling needed for that placement.
* PreCollect = Placement Required Prior to Collection
* Other = other values not defined yet'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.CENTRAL_LINE_PLACEMENT to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.CENTRAL_LINE_PLACEMENT to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: CENTRAL_LINE_STATUS                                   */
/*==============================================================*/
create table ${ordersUser}.CENTRAL_LINE_STATUS (
   CENTRAL_LINE_STATUS_CDE VARCHAR2(20 CHAR)     not null,
   CENTRAL_LINE_STATUS_NME VARCHAR2(100 CHAR),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_CENTRAL_LINE_STATUS primary key (CENTRAL_LINE_STATUS_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.CENTRAL_LINE_STATUS is
'This field denotes if a patient has a central venous line in place or noT.
• InPlaceOK = In place, appropriate for collection
• PreCollect = Placement required prior to collection
• PeripheralOK = Peripheral venous access adequate for collection
• InPlaceNotOK = In place, do not use for collection'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.CENTRAL_LINE_STATUS to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.CENTRAL_LINE_STATUS to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: CLOSE_REASON                                          */
/*==============================================================*/
create table ${ordersUser}.CLOSE_REASON (
   CLOSE_REASON_CDE     VARCHAR2(10 CHAR)     not null,
   CLOSE_REASON_DESC    VARCHAR2(100 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_CLOSE_REASON primary key (CLOSE_REASON_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.CLOSE_REASON is
'Many valid values; here is a sampling:
AE	Adverse event with GCSF
AG	Aliquots Gone
CA	Cancel Request
CB	Cord Infused
CC	Collection complete
CD	Cord destroyed or damaged
DC	DC declines to approach donor
DD	Permanently Deferred
DS	Damaged in Transit

The values look similar to CANCEL REASON.'
/

comment on column ${ordersUser}.CLOSE_REASON.CLOSE_REASON_CDE is
'Reason the order was canceled or reason the donor was released from the patient.  (E.g. CC - Collection complete, CA - cancel request, DD - permanently Deferred, etc. )'
/

comment on column ${ordersUser}.CLOSE_REASON.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.CLOSE_REASON.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.CLOSE_REASON.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.CLOSE_REASON.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.CLOSE_REASON to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.CLOSE_REASON to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: CUSTOMER_ORDER_SUBJECT                                */
/*==============================================================*/
create table ${ordersUser}.CUSTOMER_ORDER_SUBJECT (
   CUSTOMER_ORDER_SUBJECT_IID NUMBER                
      generated by default as identity ( start with 1),
   SUBJECT_GUID         RAW(16)               not null,
   ORDER_GUID           RAW(16)               not null,
   PROJECT_CDE          VARCHAR2(10 CHAR),
   RELEASE_REASON_CDE   VARCHAR2(10 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CUSTOMER_BP_GUID     RAW(16)               not null,
   constraint PK_CUSTOMER_ORDER_SUBJECT primary key (CUSTOMER_ORDER_SUBJECT_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.CUSTOMER_ORDER_SUBJECT is
'Associative entity that links SUBJECT with CUSTOMER_ORDER, so an order may be placed for any type of Subject. For unrelated transplant orders, a single order could be created on behalf of one or more Recipients (i.e. twins).'
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.CUSTOMER_ORDER_SUBJECT_IID is
'PK'
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.SUBJECT_GUID is
'A Global ID of the subject. '
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.PROJECT_CDE is
'Project code for the order. '
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

comment on column ${ordersUser}.CUSTOMER_ORDER_SUBJECT.CUSTOMER_BP_GUID is
'Contains the Business Party enterprise ID for the Infusion Center (AUTO orders) or Transplant Center (ALLO orders).'
/

alter table ${ordersUser}.CUSTOMER_ORDER_SUBJECT
   add constraint AK_CUSTOMER_ORDER_SUBJECT unique (SUBJECT_GUID, ORDER_GUID)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.CUSTOMER_ORDER_SUBJECT to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.CUSTOMER_ORDER_SUBJECT to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM                                          */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM (
   DYNAMIC_FORM_IID     NUMBER                
      generated by default as identity ( start with 1),
   BP_GUID              RAW(16),
   DYNAMIC_FORM_NME     VARCHAR2(30 CHAR),
   DYNAMIC_FORM_VERSION_NUM NUMBER(10),
   DYNAMIC_FORM_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   ACTIVE_IND           VARCHAR2(1 CHAR)     default 'Y'
      constraint CKC_ACTIVE_IND_DYNAMIC_ check (ACTIVE_IND is null or (ACTIVE_IND in ('Y','N'))),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM primary key (DYNAMIC_FORM_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM_COMPONENT                                */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM_COMPONENT (
   FORM_COMPONENT_IID   NUMBER                
      generated by default as identity ( start with 1),
   FORM_SECTION_IID     NUMBER                not null,
   FORM_COMPONENT_NME   VARCHAR2(255 CHAR),
   FORM_COMPONENT_TYPE_CDE VARCHAR2(255 CHAR),
   HORIZONTAL_POSITION_NUM NUMBER,
   VERTICAL_POSTION_NUM NUMBER,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM_COMPONENT primary key (FORM_COMPONENT_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.DYNAMIC_FORM_COMPONENT is
'Group of fields which have some interaction between them; a table/row combination.'
/

comment on column ${ordersUser}.DYNAMIC_FORM_COMPONENT.FORM_COMPONENT_TYPE_CDE is
'Values:  
Custom = static HTML
Regular = dynamic HTML'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM_COMPONENT to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM_COMPONENT to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM_FIELD                                    */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM_FIELD (
   FORM_FIELD_IID       NUMBER                
      generated by default as identity ( start with 1),
   FORM_COMPONENT_IID   NUMBER                not null,
   FORM_FIELD_KEY_CDE   VARCHAR2(50 CHAR),
   FORM_FIELD_INITIAL_VALUE_TXT VARCHAR2(255 CHAR),
   FORM_FIELD_REQUIRED_IND VARCHAR2(1 CHAR)     default 'N'
      constraint CKC_FORM_FIELD_REQUIR_DYNAMIC_ check (FORM_FIELD_REQUIRED_IND is null or (FORM_FIELD_REQUIRED_IND in ('Y','N'))),
   FORM_FIELD_LABEL_TXT VARCHAR2(255 CHAR),
   FORM_FIELD_NME       VARCHAR2(255 CHAR),
   FORM_FIELD_MAX_NUM   NUMBER,
   FORM_FIELD_MIN_NUM   NUMBER,
   FORM_FIELD_DISPLAY_SEQ_NUM NUMBER,
   FORM_FIELD_TYPE_CDE  VARCHAR2(30 CHAR),
   FORM_FIELD_REG_EXPRESSION_TXT VARCHAR2(100 CHAR),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM_FIELD primary key (FORM_FIELD_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on column ${ordersUser}.DYNAMIC_FORM_FIELD.FORM_FIELD_KEY_CDE is
'This column will contain the name of the column to get the valid values from.'
/

comment on column ${ordersUser}.DYNAMIC_FORM_FIELD.FORM_FIELD_LABEL_TXT is
'Display text for the questions.'
/

comment on column ${ordersUser}.DYNAMIC_FORM_FIELD.FORM_FIELD_NME is
'Universal name for each unique field, across forms.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM_FIELD to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM_FIELD to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM_FIELD_OPTION                             */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM_FIELD_OPTION (
   FORM_FIELD_OPTION_IID NUMBER                
      generated by default as identity ( start with 1),
   FORM_FIELD_IID       NUMBER,
   FORM_FIELD_OPTION_LABEL_TXT VARCHAR2(255 CHAR),
   FORM_FIELD_OPTION_VALUE_TXT VARCHAR2(255 CHAR),
   FORM_FIELD_OPTION_DISPLAY_SEQ_ NUMBER(10),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM_FIELD_OPTION primary key (FORM_FIELD_OPTION_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM_FIELD_OPTION to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM_FIELD_OPTION to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM_FIELD_TYPE                               */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM_FIELD_TYPE (
   FORM_FIELD_TYPE_CDE  VARCHAR2(30 CHAR)     not null,
   FORM_FIELD_NME       VARCHAR2(50 CHAR),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM_FIELD_TYPE primary key (FORM_FIELD_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM_FIELD_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM_FIELD_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM_FIELD_VALUE                              */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM_FIELD_VALUE (
   DYNAMIC_FORM_FIELD_VALUE_IID NUMBER                
      generated by default as identity ( start with 1),
   DYNAMIC_FORM_IID     NUMBER                not null,
   FORM_FIELD_IID       NUMBER                not null,
   ORDER_GUID           RAW(16),
   FORM_FIELD_VALUE_TXT VARCHAR2(255 CHAR)    not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM_FIELD_VALUE primary key (DYNAMIC_FORM_FIELD_VALUE_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM_FIELD_VALUE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM_FIELD_VALUE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM_SECTION                                  */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM_SECTION (
   FORM_SECTION_IID     NUMBER                
      generated by default as identity ( start with 1),
   DYNAMIC_FORM_IID     NUMBER                not null,
   FORM_SECTION_NME     VARCHAR2(100 CHAR),
   FORM_SECTION_LABEL_TXT VARCHAR2(100 CHAR),
   SECTION_DISPLAY_SEQ_NUM NUMBER(10),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM_SECTION primary key (FORM_SECTION_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM_SECTION to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM_SECTION to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: DYNAMIC_FORM_TYPE                                     */
/*==============================================================*/
create table ${ordersUser}.DYNAMIC_FORM_TYPE (
   DYNAMIC_FORM_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   DYNAMIC_FORM_TYPE_NME VARCHAR2(30 CHAR),
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_DYNAMIC_FORM_TYPE primary key (DYNAMIC_FORM_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.DYNAMIC_FORM_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.DYNAMIC_FORM_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: FORM_MASTER_LIST                                      */
/*==============================================================*/
create table ${ordersUser}.FORM_MASTER_LIST (
   FORM_IID             NUMBER                not null,
   MASTER_CONTROL_FORM_ID VARCHAR2(50 CHAR)     not null,
   UNITE_FORM_NME       VARCHAR2(100 CHAR)    not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_FORM_MASTER_LIST primary key (FORM_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

alter table ${ordersUser}.FORM_MASTER_LIST
   add constraint AK_FORM_MASTER_LIST unique (MASTER_CONTROL_FORM_ID)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.FORM_MASTER_LIST to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.FORM_MASTER_LIST to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: FORM_RESOURCE_ROLE                                    */
/*==============================================================*/
create table ${ordersUser}.FORM_RESOURCE_ROLE (
   FORM_IID             NUMBER                not null,
   RESOURCE_ROLE_CDE    VARCHAR2(10 CHAR)     not null,
   ROUTING_SEQ_NUM      NUMBER                not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   constraint PK_FORM_RESOURCE_ROLE primary key (FORM_IID, RESOURCE_ROLE_CDE, ROUTING_SEQ_NUM)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.FORM_RESOURCE_ROLE is
'May need to add BP_GUID to this table PK.
'
/

comment on column ${ordersUser}.FORM_RESOURCE_ROLE.RESOURCE_ROLE_CDE is
'Abbreviated version of the Resource Role, used to group application users so functionality may be allowed / disallowed by role.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.FORM_RESOURCE_ROLE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.FORM_RESOURCE_ROLE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: OPTION_VALUE                                          */
/*==============================================================*/
create table ${ordersUser}.OPTION_VALUE (
   OPTION_VALUE_IID     NUMBER(9)             
      generated by default as identity ( start with 1),
   OPTION_CDE           VARCHAR2(10 CHAR)     not null,
   OPTION_VALUE_CDE     VARCHAR2(50 CHAR)     not null,
   OPTION_VALUE_DESC    VARCHAR2(255 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_OPTION_VALUE primary key (OPTION_VALUE_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.OPTION_VALUE is
'For Product option: Marrow, PBSC, Whole Blood, CBU, etc.
For Priority option: STD and URG
For Transport option: Shipped and Courier [TRANSMTH]
For Transportation Source:DC, TC, NMDP, COOP, OTH [TRANSSRC]
For Service Provider:  NMDP, TC, DC  [SRVCPRVD]
'
/

comment on column ${ordersUser}.OPTION_VALUE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.OPTION_VALUE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.OPTION_VALUE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.OPTION_VALUE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.OPTION_VALUE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.OPTION_VALUE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_HEADER                                          */
/*==============================================================*/
create table ${ordersUser}.ORDER_HEADER (
   ORDER_GUID           RAW(16)              default SYS_GUID()  not null,
   CM_CASE_IID          NUMBER(9)             not null,
   ORDER_NUM            VARCHAR2(50 CHAR),
   ORDER_SUBJECT_GUID   RAW(16),
   ENTRY_DTE            TIMESTAMP(0)          not null,
   OPEN_DTE             TIMESTAMP(0),
   CLOSE_DTE            TIMESTAMP(0),
   ORDER_TYPE_CDE       VARCHAR2(10 CHAR)     not null,
   ORDER_STATUS_CDE     VARCHAR2(20 CHAR),
   COMMENT_TXT          VARCHAR2(4000 CHAR),
   REQUESTER_ID         VARCHAR2(50 CHAR),
   APPROVER_ID          VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   LINKED_ORDER_GUID    RAW(16),
   CLOSE_REASON_CDE     VARCHAR2(10),
   constraint PK_ORDER_HEADER primary key (ORDER_GUID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on column ${ordersUser}.ORDER_HEADER.ORDER_GUID is
'Customer Order Global ID. Customer Order that is created on behalf of the recipient who receives infusion of the stem cell product.'
/

comment on column ${ordersUser}.ORDER_HEADER.CM_CASE_IID is
'A unique identifier assigned to a patient and linked to a specific patient via the Subject_GUID.'
/

comment on column ${ordersUser}.ORDER_HEADER.ORDER_NUM is
'The format of this column value is ''CO-100001-0.0'' or ''FO-100001-2.0'' as examples.  The CO = Customer Order; FO = Fulfillment Order. The middle numeric portion is generated via a sequence object, and the 0.0 portion  . . .'
/

comment on column ${ordersUser}.ORDER_HEADER.ORDER_SUBJECT_GUID is
'A source that was selected to perform tests on and/or collect the stem-cell product from; i.e. matching donors and/or CBU, OR in an Autologous process the source would be the Patient/Recipient.   Anonymous transplants (Allogeneic) still have a donor/CBU as the source.'
/

comment on column ${ordersUser}.ORDER_HEADER.REQUESTER_ID is
'The LDAP User ID of the person who is entering / requesting the Order.'
/

comment on column ${ordersUser}.ORDER_HEADER.APPROVER_ID is
'The LDAP User ID of the person who is accepting / approving the Order.'
/

comment on column ${ordersUser}.ORDER_HEADER.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_HEADER.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_HEADER.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_HEADER.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

comment on column ${ordersUser}.ORDER_HEADER.CLOSE_REASON_CDE is
'Reason the order was canceled or reason the donor was released from the patient.  (E.g. CC - Collection complete, CA - cancel request, DD - permanently Deferred, etc. )'
/

alter table ${ordersUser}.ORDER_HEADER
   add constraint AK_ORDER_HEADER unique (ORDER_NUM)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_HEADER to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_HEADER to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_LINE_ITEM                                       */
/*==============================================================*/
create table ${ordersUser}.ORDER_LINE_ITEM (
   ORDER_LINE_ITEM_IID  NUMBER(9)             
      generated by default as identity ( start with 1),
   ORDER_GUID           RAW(16)               not null,
   SERVICE_CDE          VARCHAR2(50 CHAR)     not null,
   SEQ_NUM              NUMBER(3)             not null,
   LINKED_ORDER_LINE_ITEM_IID NUMBER(9),
   CANCEL_DTE           TIMESTAMP(0),
   CANCEL_REASON_CDE    VARCHAR2(10 CHAR),
   DESIRED_COMPLETION_DTE TIMESTAMP(0),
   ESTIMATED_COMPLETION_DTE TIMESTAMP(0),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_LINE_ITEM primary key (ORDER_LINE_ITEM_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_LINE_ITEM is
'Services requested by the user (TC or SCU) from the list of all available services for a specific recipient''s search case. For example, CT, WU, ABC-IR. Services may not require source (donor or CBU).'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.ORDER_LINE_ITEM_IID is
'PK'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.SERVICE_CDE is
'A code indicating the Service.'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.SEQ_NUM is
'A number to indicate the order of multiple detail rows of the same order item (second Collection, second IDMs, etc)'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.LINKED_ORDER_LINE_ITEM_IID is
'PK'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.CANCEL_REASON_CDE is
'This applies to AUTO as well as therapies may be cancelled.'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_LINE_ITEM.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

alter table ${ordersUser}.ORDER_LINE_ITEM
   add constraint AK_AK_ORDER_LINE_ITEM_ORDER_LI unique (ORDER_GUID, SERVICE_CDE, SEQ_NUM)
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_LINE_ITEM to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_LINE_ITEM to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_NOTIFICATION                                    */
/*==============================================================*/
create table ${ordersUser}.ORDER_NOTIFICATION (
   ORDER_NOTIFICATION_IID NUMBER                
      generated by default as identity ( start with 28),
   ORDER_NOTIFICATION_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   ORDER_NOTIFICATION_CDE VARCHAR2(20 CHAR)     not null,
   APPLICABLE_RESOURCE_ROLE_CDE VARCHAR2(10 CHAR),
   ORDER_NOTIFICATION_NME VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_NOTIFICATION primary key (ORDER_NOTIFICATION_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_NOTIFICATION is
'Each row in this table represents a Notification(Confirm Date) of some type (task or alert), and the role(s) which can receive this notification.
A Task is a unit of work, which can be relative to an Order.  A notification that something important has happened, has not happened, or is about to happen.  Alerts can be created for information related to the Order. This table is deemed necessary more from a security / audit viewpoint, so that it is evident each task/alert is assigned to a specific resource role with authority to handle the task/alert.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION.APPLICABLE_RESOURCE_ROLE_CDE is
'The role this Task or Alert should be assigned to.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

alter table ${ordersUser}.ORDER_NOTIFICATION
   add constraint AK_ORDER_NOTIFICATION unique (ORDER_NOTIFICATION_TYPE_CDE, ORDER_NOTIFICATION_CDE, APPLICABLE_RESOURCE_ROLE_CDE)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.ORDER_NOTIFICATION to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_NOTIFICATION to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_NOTIFICATION_EVENT                              */
/*==============================================================*/
create table ${ordersUser}.ORDER_NOTIFICATION_EVENT (
   ORDER_NOTIFICATION_EVENT_IID NUMBER                
      generated by default as identity ( start with 1),
   ORDER_GUID           RAW(16)              default SYS_GUID()  not null,
   ORDER_NOTIFICATION_IID NUMBER                not null,
   CASE_RESOURCE_IID    NUMBER(9),
   TRANSPORTATION_REQUEST_IID NUMBER,
   ORDER_NOTIFICATION_STATUS_IID NUMBER                not null,
   ORDER_NOTIFICATION_DUE_DTE TIMESTAMP(0)          not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_NOTIFICATION_EVENT primary key (ORDER_NOTIFICATION_EVENT_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_NOTIFICATION_EVENT is
'Each row in this table represents the assignment of a single Task or Alert to a Resource (person). Some notifications are sent to all people in the role for the organization, but only one person will complete the task/alert. So the RESOURCE ID field may be null until completed.  Order Tasks/Alerts may be assigned to an Order.  Subject (Patient), Case and ResourceTasks/Alerts are stored in a similar table specific to a Patient, Case or Resource role (in a different database schema).
'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_EVENT.ORDER_GUID is
'Customer Order Global ID. Customer Order that is created on behalf of the recipient who receives infusion of the stem cell product.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_EVENT.ORDER_NOTIFICATION_IID is
'Link to the Task/Alert and applicable role to assign to.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_EVENT.CASE_RESOURCE_IID is
'Contains the login ID of the person completing the task/alert.  This login ID is captured and cached at login time.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_EVENT.TRANSPORTATION_REQUEST_IID is
'Optional link to the Transportation Request, used only for transportation-related tasks/alerts.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_EVENT.ORDER_NOTIFICATION_STATUS_IID is
'Link to the current status of this task/alert.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_EVENT.ORDER_NOTIFICATION_DUE_DTE is
'Date the task/alert should be completed by.'
/

alter table ${ordersUser}.ORDER_NOTIFICATION_EVENT
   add constraint AK_ORDER_NOTIFICATION_EVENT unique (ORDER_GUID, ORDER_NOTIFICATION_IID, CASE_RESOURCE_IID, TRANSPORTATION_REQUEST_IID)
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.ORDER_NOTIFICATION_EVENT to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_NOTIFICATION_EVENT to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_NOTIFICATION_STATUS                             */
/*==============================================================*/
create table ${ordersUser}.ORDER_NOTIFICATION_STATUS (
   ORDER_NOTIFICATION_STATUS_IID NUMBER                
      generated by default as identity ( start with 7),
   ORDER_NOTIFICATION_STATUS_CDE VARCHAR2(10 CHAR)     not null,
   ORDER_NOTIFICATION_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   ORDER_NOTIFICATION_STATUS_NME VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_NOTIFICATION_STATUS primary key (ORDER_NOTIFICATION_STATUS_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_NOTIFICATION_STATUS is
'Tasks Status Values:
1.	Open - the moment the task is created
2.	Closed - manually closed by the user or auto completed by the system based on an action by user or app.
3.	Snoozed - manually snoozed (certain tasks can be snoozed and others cannot be snoozed. The decision will be made in each story)
 
Alerts Status Values
1.	Unread – the moment the alert is created or when the user marks the alert as unread after it had been marked as read
2.	Read – the moment the user reads the alert (the user will mark the alert as read which should trigger the change in status in the database)
3.	Closed – the user will eventually have the opportunity to manually close a task.
'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_STATUS.ORDER_NOTIFICATION_STATUS_CDE is
'A table used to assign unique codes to different status conditions. These conditions could be task type specific and involve one or more tasks.  The complete set is to be defined by business rules.

OPEN
CLOSED
NOT OPEN
N/A
COMPLETE
ACTIVE - this is the Phase (activity) which has the primary focus'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_STATUS.ORDER_NOTIFICATION_TYPE_CDE is
'Known Values are "Phase", "Milestone" and "Task"'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_STATUS.ORDER_NOTIFICATION_STATUS_NME is
'Description used to distinguish one status code from another.  The same description will not be associated with more than one status code.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_STATUS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_STATUS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_STATUS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_STATUS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

alter table ${ordersUser}.ORDER_NOTIFICATION_STATUS
   add constraint AK_ORDER_NOTIFICATION_STATUS unique (ORDER_NOTIFICATION_STATUS_CDE, ORDER_NOTIFICATION_TYPE_CDE)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.ORDER_NOTIFICATION_STATUS to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_NOTIFICATION_STATUS to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_NOTIFICATION_TYPE                               */
/*==============================================================*/
create table ${ordersUser}.ORDER_NOTIFICATION_TYPE (
   ORDER_NOTIFICATION_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   ORDER_NOTIFICATION_TYPE_NME VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_NOTIFICATION_TYPE primary key (ORDER_NOTIFICATION_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_NOTIFICATION_TYPE is
'Values are: TASK or ALERT
Tasks need to be acted upon.  Alerts are informational only.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_TYPE.ORDER_NOTIFICATION_TYPE_CDE is
'Known Values are "Phase", "Milestone" and "Task"'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_TYPE.ORDER_NOTIFICATION_TYPE_NME is
'Description used to distinguish one phase from another'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_TYPE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_TYPE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_TYPE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_NOTIFICATION_TYPE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.ORDER_NOTIFICATION_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_NOTIFICATION_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_OPTION                                          */
/*==============================================================*/
create table ${ordersUser}.ORDER_OPTION (
   ORDER_OPTION_IID     NUMBER(9)             
      generated by default as identity ( start with 1),
   OPTION_VALUE_IID     NUMBER(9)             not null,
   ORDER_LINE_ITEM_IID  NUMBER(9),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_OPTION primary key (ORDER_OPTION_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_OPTION is
'Options specified as part of the request (CUSTOMER ORDER). For example, a PBSC as a product for WU service.'
/

comment on column ${ordersUser}.ORDER_OPTION.ORDER_LINE_ITEM_IID is
'PK'
/

comment on column ${ordersUser}.ORDER_OPTION.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_OPTION.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_OPTION.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_OPTION.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_OPTION to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_OPTION to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_RELEASE_REASON                                  */
/*==============================================================*/
create table ${ordersUser}.ORDER_RELEASE_REASON (
   RELEASE_REASON_CDE   VARCHAR2(10 CHAR)     not null,
   RELEASE_REASON_DESC  VARCHAR2(100 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_RELEASE_REASON primary key (RELEASE_REASON_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_RELEASE_REASON is
'PPR	Payment Received
HUM	Humanitarian'
/

comment on column ${ordersUser}.ORDER_RELEASE_REASON.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_RELEASE_REASON.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_RELEASE_REASON.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_RELEASE_REASON.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_RELEASE_REASON to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_RELEASE_REASON to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_STATUS                                          */
/*==============================================================*/
create table ${ordersUser}.ORDER_STATUS (
   ORDER_STATUS_CDE     VARCHAR2(20 CHAR)     not null,
   ORDER_STATUS_DESC    VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_STATUS primary key (ORDER_STATUS_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_STATUS is
'Values:
OPEN	                Open Request
CLOSED	                Closed Request
RESOLVED	Resolved Request
PENDING	Pending Request
REJECTED	Rejected Request
PENDREL	Pending Release'
/

comment on column ${ordersUser}.ORDER_STATUS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_STATUS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_STATUS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_STATUS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_STATUS to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_STATUS to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_SUBJECT_FACTOR                                  */
/*==============================================================*/
create table ${ordersUser}.ORDER_SUBJECT_FACTOR (
   ORDER_SUBJECT_FACTOR_CDE VARCHAR2(10 CHAR)     not null,
   ORDER_SUBJECT_FACTOR_DESC VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_SUBJECT_FACTOR primary key (ORDER_SUBJECT_FACTOR_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_SUBJECT_FACTOR is
'The factors associated with the subject of the order. For example, if the Cord has been previously CT''d, the breakdown of services will be different that if it was not.
PREVCT	                 Previously CT VAL
TRNSPLNTOC	Transplant Occurence
THERTYPE	Therapy Type'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_SUBJECT_FACTOR to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_SUBJECT_FACTOR to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_SUBJECT_FACTOR_VALUE                            */
/*==============================================================*/
create table ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE (
   ORDER_SUBJECT_FACTOR_VALUE_IID NUMBER(9)             not null,
   ORDER_SUBJECT_FACTOR_CDE VARCHAR2(10 CHAR)     not null,
   ORDER_SUBJECT_FACTOR_VALUE_CDE VARCHAR2(10 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_SUBJECT_FACTOR_VALUE primary key (ORDER_SUBJECT_FACTOR_VALUE_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE is
'A valid values for the Subject Factor. For example, Y or N for the Previously CT''d indicator.
Rule changes based on Subject characteristics.
1	PREVCT	N
2	PREVCT	Y
3	TRNSPLNTOC	PRI
4	TRNSPLNTOC	SEC
5	THERTYPE	Therapy A
6	THERTYPE	Therapy B
7	THERTYPE	Therapy C'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_TRACKING                                        */
/*==============================================================*/
create table ${ordersUser}.ORDER_TRACKING (
   ORDER_TRACKING_IID   NUMBER(9)             
      generated by default as identity ( start with 1),
   TRACKING_CDE         VARCHAR2(20 CHAR),
   ORDER_LINE_ITEM_IID  NUMBER(9),
   TRACKING_SEQ_NUM     NUMBER(3)             not null,
   TRACKING_VALUE_DTE   TIMESTAMP(0),
   TRACKING_VALUE_NUM   NUMBER(9,2),
   TRACKING_VALUE_TXT   VARCHAR2(255 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_TRACKING primary key (ORDER_TRACKING_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_TRACKING is
'Dates and other items of interest being tracked for a given CO Item. That includes the info about a supplier for specific orders (like CC, AC, or Contract Lab).'
/

comment on column ${ordersUser}.ORDER_TRACKING.ORDER_TRACKING_IID is
'PK'
/

comment on column ${ordersUser}.ORDER_TRACKING.ORDER_LINE_ITEM_IID is
'FK back to the ORDER_LINE_ITEM table; identifies which order the Tracking is for.'
/

comment on column ${ordersUser}.ORDER_TRACKING.TRACKING_SEQ_NUM is
'A number to indicate the order of multiple rows with the same tracking code of one customer order line item (second COLLAPPTDATE of the same WU, etc)'
/

comment on column ${ordersUser}.ORDER_TRACKING.TRACKING_VALUE_DTE is
'A date value for the tracking code if the tracking code is DATE (APPTDATE, SHIPDATE, RESULTSDATE, etc.)'
/

comment on column ${ordersUser}.ORDER_TRACKING.TRACKING_VALUE_NUM is
'A numeric value for the tracking code if the tracking code is NUMBER. '
/

comment on column ${ordersUser}.ORDER_TRACKING.TRACKING_VALUE_TXT is
'A character value for the tracking code if the tracking code is TEXT(TRANSMTHPCK - Who Picked Transportation Method, WUPCANRSN - Workup Cancel Reason, etc.)'
/

comment on column ${ordersUser}.ORDER_TRACKING.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_TRACKING.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_TRACKING.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_TRACKING.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

alter table ${ordersUser}.ORDER_TRACKING
   add constraint AK_ORDER_TRACKING unique (ORDER_LINE_ITEM_IID, TRACKING_CDE, TRACKING_SEQ_NUM)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_TRACKING to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_TRACKING to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: ORDER_TYPE                                            */
/*==============================================================*/
create table ${ordersUser}.ORDER_TYPE (
   ORDER_TYPE_CDE       VARCHAR2(10 CHAR)     not null,
   ORDER_TYPE_DESC      VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_ORDER_TYPE primary key (ORDER_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.ORDER_TYPE is
'Values:
CUSTOMER	CUSTOMER
FULFILL	FULFILL'
/

comment on column ${ordersUser}.ORDER_TYPE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.ORDER_TYPE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.ORDER_TYPE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.ORDER_TYPE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.ORDER_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.ORDER_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: PROJECT                                               */
/*==============================================================*/
create table ${ordersUser}.PROJECT (
   PROJECT_CDE          VARCHAR2(10 CHAR)     not null,
   PROJECT_DESC         VARCHAR2(100 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_PROJECT primary key (PROJECT_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.PROJECT is
'BIOPRJ	BioTherapies
TCPROJ	None
NMDPPRJ	NMDP Project
21DPRJ	21 Day Search
45DPRJ	45 Day Search
UU4PRJ	Ultra Urgent Phase 4
RPPPRJ	Referring Physician
PCTPRJ	Patient Customized Typing
PT1PRJ	T-Cell
COGPRJ	Children''s Oncology
AMLPRJ	AML/ALL Study
CD1PRJ	Contingency Drill 1
CE1PRJ	Contigency Event 1
PVMPRJ	PBSC vs. Marrow Randomized Tri
AD2PRJ	Accel Donation Proc, Phase II
RCCPRJ	Renal Cell Carcinoma Protocol
CTLPRJ	CTLs- cytotoxic T-lymphocytes
KIRPRJ	KIR:DS'
/

comment on column ${ordersUser}.PROJECT.PROJECT_CDE is
'Project code for the order. '
/

comment on column ${ordersUser}.PROJECT.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.PROJECT.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.PROJECT.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.PROJECT.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.PROJECT to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.PROJECT to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: PROPOSED_ORDER_TRACKING                               */
/*==============================================================*/
create table ${ordersUser}.PROPOSED_ORDER_TRACKING (
   ORDER_LINE_ITEM_IID  NUMBER(9)             not null,
   TRACKING_CDE         VARCHAR2(20 CHAR)     not null,
   TRACKING_CURRENT_VALUE_TXT VARCHAR2(100 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_PROPOSED_ORDER_TRACKING primary key (ORDER_LINE_ITEM_IID, TRACKING_CDE)
         using index tablespace ${ordersUser}_IDX
)
/

comment on table ${ordersUser}.PROPOSED_ORDER_TRACKING is
'Each order field (e.g. Proposed Collection Date) needing approval will be stored here, and will possibly be overwritten multiple times, until the [approval] button is pressed.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING.ORDER_LINE_ITEM_IID is
'Order Line which contains the tracking field which needs to go through an approval or other type of workflow.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING.TRACKING_CDE is
'Each Tracking Code is in reality an Order field. Some fields need to go through an approval or confirmation process before the final value is stored in ORDER_TRACKING.  During this confirmation process the pending values are stored in the PROPOSED ORDER TRACKING tables.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING.TRACKING_CURRENT_VALUE_TXT is
'Contains the value of the Order field BEFORE any requests are sent to Business Party(ies) for a response.  This value could change multiple times before a request is sent; only the latest value is saved.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.PROPOSED_ORDER_TRACKING to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.PROPOSED_ORDER_TRACKING to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: PROPOSED_ORDER_TRACKING_STATE                         */
/*==============================================================*/
create table ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE (
   PROPOSED_ORDER_TRACK_STATE_IID NUMBER                
      generated by default as identity ( start with 1),
   ORDER_LINE_ITEM_IID  NUMBER(9),
   TRACKING_CDE         VARCHAR2(20 CHAR),
   BP_GUID              RAW(16)              default SYS_GUID()  not null,
   TRACKING_REQUEST_TS  TIMESTAMP(6)          not null,
   PROPOSED_TRACKING_STATUS_CDE VARCHAR2(20 CHAR)     not null,
   CASE_RESOURCE_IID    NUMBER(9)             not null,
   PROPOSED_TRACKING_VALUE_TXT VARCHAR2(100 CHAR)    not null,
   TRACKING_VALUE_FINAL_STATE_TS TIMESTAMP(6),
   TRACKING_VALUE_COMMENTS_TXT VARCHAR2(2000 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_PROPOSED_ORDER_TRACKING_STA primary key (PROPOSED_ORDER_TRACK_STATE_IID)
         using index tablespace ${ordersUser}_IDX
)
/

comment on table ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE is
'Each row in this table represents the state of a field/tracking code on the order line at a point in time.  A specific state must be met, e.g. Approved,  for the order to proceed through its workflow. A specific state does not have to be met for ''Informational'' status rows.  Once all confirmations / approvals are complete, the field value will also be stored in the Order Tracking table, where other order fields (not needing confirmation) are stored. '
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.ORDER_LINE_ITEM_IID is
'Order Line which contains the ''tracking'' field which needs to go through an approval or other type of workflow.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.BP_GUID is
'Global Identifier of the Business party. In this table represents the entity (AC, MFG, IC) to which a request is sent for approval or other response to proceed with the order workflow.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.TRACKING_REQUEST_TS is
'The date the Resource (usually Case Manager) sent the request to the Business Party(ies).'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.PROPOSED_TRACKING_STATUS_CDE is
'The status codes reflect the various states the Tracking field may pass through before reaching a final state.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.CASE_RESOURCE_IID is
'The NMDP IID assigned to each resource capable of performing a trackable task.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.PROPOSED_TRACKING_VALUE_TXT is
'The actual value being request for approval or other response; e.g. if the Tracking field is ''Proposed Infusion Date'' then this value would be a date.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.TRACKING_VALUE_FINAL_STATE_TS is
'A timestamp upon which a Tracking field received a response from the Business Party.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE.TRACKING_VALUE_COMMENTS_TXT is
'A field to pass anything of value to the Business Party regarding this Tracking field request.'
/

alter table ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE
   add constraint AK_ORDER_PROPERTY_STATE unique (ORDER_LINE_ITEM_IID, TRACKING_CDE, BP_GUID, TRACKING_REQUEST_TS, PROPOSED_TRACKING_STATUS_CDE)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: PROPOSED_ORDER_TRACKING_STATUS                        */
/*==============================================================*/
create table ${ordersUser}.PROPOSED_ORDER_TRACKING_STATUS (
   PROPOSED_TRACKING_STATUS_CDE VARCHAR2(20 CHAR)     not null,
   PROPOSED_TRACKING_STATUS_NME VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_PROPOSED_ORDER_TRACK_STATUS primary key (PROPOSED_TRACKING_STATUS_CDE)
         using index tablespace ${ordersUser}_IDX
)
/

comment on table ${ordersUser}.PROPOSED_ORDER_TRACKING_STATUS is
'Contains the list of valid values for Order Tracking approval/confirmation workflow statuses.
Examples of order tracking statuses:
* PENDING = Awaiting Confirmation from the entity to which the request was sent (MFG, IC, AC).
* APPROVED = once all rows for the Order Tracking are Approved, the workflow may continue.
* REJECTED = cycle back to propose a new Order Tracking value.
* INFORMATIONAL = one or more entities are notified of the occurrence of something, but no action is needed for the workflow to continue.
'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATUS.PROPOSED_TRACKING_STATUS_CDE is
'Short version of all Proposed Order Tracking statuses.
Values: Pending, Approved, Rejected, Informational.'
/

comment on column ${ordersUser}.PROPOSED_ORDER_TRACKING_STATUS.PROPOSED_TRACKING_STATUS_NME is
'More descriptive text of all Proposed Order Tracking statuses.'
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.PROPOSED_ORDER_TRACKING_STATUS to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.PROPOSED_ORDER_TRACKING_STATUS to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SALABLE_SERVICE                                       */
/*==============================================================*/
create table ${ordersUser}.SALABLE_SERVICE (
   SERVICE_CDE          VARCHAR2(50 CHAR)     not null,
   STEM_CELL_SUPPLIER_BP_GUID RAW(16)               not null,
   SOURCE_TYPE_CDE      VARCHAR2(10 CHAR)     not null,
   ORDER_SUBJECT_FACTOR_VALUE_IID NUMBER(9),
   EFFECTIVE_DTE        TIMESTAMP(0)          not null,
   DISCONTINUED_DTE     TIMESTAMP(0),
   SALABLE_IND          VARCHAR2(1 CHAR)     default 'N'  not null
      constraint CKC_SALABLE_IND_SALABLE_ check (SALABLE_IND in ('Y','N')),
   CUSTOMER_BLOCK_IND   VARCHAR2(1 CHAR)     default 'N'
      constraint CKC_CUSTOMER_BLOCK_IN_SALABLE_ check (CUSTOMER_BLOCK_IND is null or (CUSTOMER_BLOCK_IND in ('Y','N'))),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SALABLE_SERVICE primary key (STEM_CELL_SUPPLIER_BP_GUID, SERVICE_CDE, SOURCE_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SALABLE_SERVICE is
'A list of Services for a given Stem-Cell Supplier (or Supplier Group) and Source Type that can be sold to a Customer. Some might be blocked from ordering by a Customer and would only be available for the Case Manager to order on Customer''s behalf.'
/

comment on column ${ordersUser}.SALABLE_SERVICE.SERVICE_CDE is
'The code of the salable service'
/

comment on column ${ordersUser}.SALABLE_SERVICE.STEM_CELL_SUPPLIER_BP_GUID is
'A type of Supplier that is hosting the source of stem cells that can be turned into a stemcell product - Donor Center (DC), Cord Blood Bank (CBB), or Registry'
/

comment on column ${ordersUser}.SALABLE_SERVICE.SOURCE_TYPE_CDE is
'A type of the Stem-Cell Source - Donor or CBU'
/

comment on column ${ordersUser}.SALABLE_SERVICE.EFFECTIVE_DTE is
'The date a service is salable.'
/

comment on column ${ordersUser}.SALABLE_SERVICE.DISCONTINUED_DTE is
'The date a serive is no longer salable (disountinued)'
/

comment on column ${ordersUser}.SALABLE_SERVICE.SALABLE_IND is
'Indicated whether a service can be offered for sale.'
/

comment on column ${ordersUser}.SALABLE_SERVICE.CUSTOMER_BLOCK_IND is
'An indicator that if Y means that this service is blocked from being available to a Cusotmer directly, but can be sold by the NMDP personnel.'
/

comment on column ${ordersUser}.SALABLE_SERVICE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SALABLE_SERVICE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SALABLE_SERVICE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SALABLE_SERVICE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SALABLE_SERVICE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SALABLE_SERVICE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SERVICE                                               */
/*==============================================================*/
create table ${ordersUser}.SERVICE (
   SERVICE_CDE          VARCHAR2(50 CHAR)     not null,
   SERVICE_TYPE_CDE     VARCHAR2(10 CHAR)     not null,
   SERVICE_DESC         VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE primary key (SERVICE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE is
'The "global" list of Services  the Patient may receive, not necessarily all supplied by NMDP; e.g. Physical exam, pregnancy test.  NMDP may or may not be charging for every service.

A Service is a provision of assistance to a Customer. Workup, Confirmatory typing, IDM test, Physical Exam, Transportation, and various Customized Typings are the examples of services. Several services can be grouped in a bundle/package.
Some examples:
ABC-IR Typing
ABC-IR, DRB1-HR
A-HR
C-IR
Confirmatory Typing
DPB1-HR
DRB1-HR
DRB345 DNA IR
Hold
Order Cord Unit
Workup
'
/

comment on column ${ordersUser}.SERVICE.SERVICE_CDE is
'A code indicating the Service.'
/

comment on column ${ordersUser}.SERVICE.SERVICE_DESC is
'A description of the Service'
/

comment on column ${ordersUser}.SERVICE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SERVICE_ITEMIZATION                                   */
/*==============================================================*/
create table ${ordersUser}.SERVICE_ITEMIZATION (
   SERVICE_ITEMIZATION_IID NUMBER(9)             
      generated by default as identity ( start with 31),
   BP_GUID              RAW(16)              default SYS_GUID(),
   SERVICE_CDE          VARCHAR2(50 CHAR)     not null,
   DETAIL_SERVICE_CDE   VARCHAR2(50 CHAR)     not null,
   SERVICE_ITEMIZATION_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   ORDER_SUBJECT_FACTOR_VALUE_IID NUMBER(9),
   OPTION_VALUE_IID     NUMBER(9),
   SOURCE_TYPE_CDE      VARCHAR2(10 CHAR),
   DEFAULT_IND          VARCHAR2(1 CHAR)     default 'N'  not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE_ITEMIZATION primary key (SERVICE_ITEMIZATION_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE_ITEMIZATION is
'A list of Services that itemize some other Service.

A breakdown of a Service into a set of related Services. For example, a Service ordered by a Customer might be broken into multiple Services that need to be ordered by the Case Manager for fulfillment.
Example #1:
if the Customer orders CT from the US Donor Center (CT-US-DNR), the FO breakdown would look like this:
- TB
- IDM

Example #2: if the FO item is IDM, then the SO breakdown would like this:
IDM Sample Collection (IDMSAM)
IDM Results (IDM)

The itemization may vary by:
- Stem Cell Supplier
- The source itself (Subject Order Factor) - i.e. if the cord has already previously CT''d
- The Option selected for the "parent" service - i.e. Product, etc.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.BP_GUID is
'Global Identifier of the Business party. '
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.SERVICE_CDE is
'A code indicating the Service.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.DETAIL_SERVICE_CDE is
'A code indicating the Service.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.SERVICE_ITEMIZATION_TYPE_CDE is
'The code indicating how the detail item relates to the parent item. For example, FO would indicate that this item is part of the Fulfillment Order breakdown.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.SOURCE_TYPE_CDE is
'A code indicating whether it''s a Donor or a Cord.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.DEFAULT_IND is
'Indicates whether the itemized Service is part of the "default" breakdown. Optional Services may be added in which case this indicator would be set to ''N''. Examples: Extended Workup; Additional IDM'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE_ITEMIZATION to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE_ITEMIZATION to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SERVICE_ITEMIZATION_TYPE                              */
/*==============================================================*/
create table ${ordersUser}.SERVICE_ITEMIZATION_TYPE (
   SERVICE_ITEMIZATION_TYPE_CDE VARCHAR2(10 CHAR)     not null,
   SERVICE_ITEMIZATION_DESC VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE_ITEMIZATION_TYPE primary key (SERVICE_ITEMIZATION_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE_ITEMIZATION_TYPE is
'A Service itemization types are FO (Fulfillment Order), SO (Supplier Order), etc.

Itemization Types:
- Fulfillment Order - itemization of Customer Order to Fulfillment Order
- Supplier Order - itemization of Fulfillment Order to Supplier Order
- Bundle - an Item representing "package" to the individual parts'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION_TYPE.SERVICE_ITEMIZATION_TYPE_CDE is
'A type code associated with the specific itemization.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION_TYPE.SERVICE_ITEMIZATION_DESC is
'A business description of the code above.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION_TYPE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION_TYPE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION_TYPE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE_ITEMIZATION_TYPE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE_ITEMIZATION_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE_ITEMIZATION_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SERVICE_OPTION                                        */
/*==============================================================*/
create table ${ordersUser}.SERVICE_OPTION (
   OPTION_CDE           VARCHAR2(10 CHAR)     not null,
   OPTION_DESC          VARCHAR2(255 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE_OPTION primary key (OPTION_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE_OPTION is
'Available service options.
* Therapy Type
* Product
* Transportation Method
* Transportation Source
* Priority
* IDM Service Provider
* Transplant Occurence
* Cancellation Fee
'
/

comment on column ${ordersUser}.SERVICE_OPTION.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE_OPTION.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE_OPTION.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE_OPTION.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE_OPTION to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE_OPTION to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SERVICE_OPTION_VALUE                                  */
/*==============================================================*/
create table ${ordersUser}.SERVICE_OPTION_VALUE (
   SERVICE_OPTION_VALUE_IID NUMBER(9)             
      generated by default as identity ( start with 37),
   BP_GUID              RAW(16)              default SYS_GUID(),
   SERVICE_CDE          VARCHAR2(50 CHAR)     not null,
   OPTION_VALUE_IID     NUMBER(9)             not null,
   SOURCE_TYPE_CDE      VARCHAR2(10 CHAR),
   ORDER_SUBJECT_FACTOR_VALUE_IID NUMBER(9),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE_OPTION_VALUE primary key (SERVICE_OPTION_VALUE_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE_OPTION_VALUE is
'A list of applicable option values for a given service for a supplier.

A Service Option is a customization of the service for specific needs. A WU service may be offered with Marrow or PBSC product. In addition to the product option, other available options are: priority, transportation method, transportation source, service provider (for IDM). Some options are required - product for the Workup service or a priority for the A-HR service, others are optional. Some services may not allow some options - the DR service does not allow priority option.'
/

comment on column ${ordersUser}.SERVICE_OPTION_VALUE.BP_GUID is
'Global Identifier of the Business party. '
/

comment on column ${ordersUser}.SERVICE_OPTION_VALUE.SOURCE_TYPE_CDE is
'A code indicating whether it''s a Donor or a Cord.'
/

comment on column ${ordersUser}.SERVICE_OPTION_VALUE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE_OPTION_VALUE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE_OPTION_VALUE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE_OPTION_VALUE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE_OPTION_VALUE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE_OPTION_VALUE to ${ordersUser}_RO_USER
/

grant SELECT on ${ordersUser}.SERVICE_OPTION_VALUE to TS_SUBJECT_MGMT_APP_USER
/

/*==============================================================*/
/* Table: SERVICE_PROVIDER                                      */
/*==============================================================*/
create table ${ordersUser}.SERVICE_PROVIDER (
   SERVICE_PROVIDER_IID NUMBER                
      generated by default as identity ( start with 1),
   ORDER_LINE_ITEM_IID  NUMBER(9)             not null,
   BP_GUID              RAW(16)              default SYS_GUID(),
   ORDER_BP_START_TS    TIMESTAMP(6),
   ORDER_BP_TYPE_CDE    VARCHAR2(10 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE_PROVIDER primary key (SERVICE_PROVIDER_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE_PROVIDER is
'Contains all Supplier BP GUIDs for a Customer Order. Each Supplier will be linked to the Order Line of the Service which the Supplier is providing.e.g. the COLLECTION (service) order line will be linked to the Apheresis Center performing the collection. The THERAPY (service order line will be linked to the Manufacturer performaing this service.'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.SERVICE_PROVIDER_IID is
'Surrogate key for the table. Each row in this table is uniquely identified by the ORDER_LINE_ITEM_IID (order_guid + service_cde + seq_num) and BUSINESS_PARTY_GUID (BP_type + BP_ID).'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.ORDER_LINE_ITEM_IID is
'FK to the ORDER_LINE_ITEM table.  Represents a specific line (service) on a Fulfillment Order.'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.BP_GUID is
'Global Identifier of the Business party. In the SERVICE_PROVIDER table each BP_GUID represents one Supplier (Business Party) which is providing the Service for the Order Line.'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.ORDER_BP_START_TS is
'Some Business Parties may be changed on an Order Line so this date will track the history of changes for a particular BP Type (AC, MFG, etc) on a single Order.'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.ORDER_BP_TYPE_CDE is
'Describes the type of capabilities the BP_GUID may perform in relation to an Order event. For example, if the BP Type is an IC (Infusion Center) then one of its capabilities is to Infuse products. '
/

comment on column ${ordersUser}.SERVICE_PROVIDER.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE_PROVIDER.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

alter table ${ordersUser}.SERVICE_PROVIDER
   add constraint AK_SERVICE_PROVIDER unique (ORDER_LINE_ITEM_IID, BP_GUID, ORDER_BP_TYPE_CDE, ORDER_BP_START_TS)
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE_PROVIDER to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE_PROVIDER to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SERVICE_TRACKING                                      */
/*==============================================================*/
create table ${ordersUser}.SERVICE_TRACKING (
   TRACKING_CDE         VARCHAR2(20 CHAR)     not null,
   SERVICE_CDE          VARCHAR2(50 CHAR)     not null,
   FULFILLMENT_IND      VARCHAR2(1 CHAR)     default 'N'  not null
      constraint CKC_FULFILLMENT_IND_SERVICE_ check (FULFILLMENT_IND in ('Y','N')),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE_TRACKING primary key (TRACKING_CDE, SERVICE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE_TRACKING is
'Valid Tracking items for a service. 
For example, for Sample Location valid tracking items might be:
Donor, Lab, or Repository.
'
/

comment on column ${ordersUser}.SERVICE_TRACKING.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE_TRACKING.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE_TRACKING.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE_TRACKING.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE_TRACKING to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE_TRACKING to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SERVICE_TYPE                                          */
/*==============================================================*/
create table ${ordersUser}.SERVICE_TYPE (
   SERVICE_TYPE_CDE     VARCHAR2(10 CHAR)     not null,
   SERVICE_TYPE_DESC    VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SERVICE_TYPE primary key (SERVICE_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SERVICE_TYPE is
'TYP	Typing
IDM	Infectious Disease Marker
WKUP	Work-Up
IS	Information Session
PE	Physical Exam
FS	Formal Search
CT	Confirmatory Typing
AU	Autologous Units
COL	Collection
FIL	Filgrastim
TB	Tube of Blood
TRANS	Transportation
MISC	Miscellaneous
SHP	Shipping
PAF	PAF'
/

comment on column ${ordersUser}.SERVICE_TYPE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SERVICE_TYPE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SERVICE_TYPE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SERVICE_TYPE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SERVICE_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SERVICE_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: SOURCE_TYPE                                           */
/*==============================================================*/
create table ${ordersUser}.SOURCE_TYPE (
   SOURCE_TYPE_CDE      VARCHAR2(10 CHAR)     not null,
   SOURCE_TYPE_DESC     VARCHAR2(50 CHAR)     not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_SOURCE_TYPE primary key (SOURCE_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.SOURCE_TYPE is
'List of source types. Currently Donor and Cord.'
/

comment on column ${ordersUser}.SOURCE_TYPE.SOURCE_TYPE_CDE is
'A code indicating whether it''s a Donor or a Cord.'
/

comment on column ${ordersUser}.SOURCE_TYPE.SOURCE_TYPE_DESC is
'A description associated with the code.'
/

comment on column ${ordersUser}.SOURCE_TYPE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.SOURCE_TYPE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.SOURCE_TYPE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.SOURCE_TYPE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.SOURCE_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.SOURCE_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRACKING                                              */
/*==============================================================*/
create table ${ordersUser}.TRACKING (
   TRACKING_CDE         VARCHAR2(20 CHAR)     not null,
   TRACKING_DESC        VARCHAR2(255 CHAR)    not null,
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRACKING primary key (TRACKING_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRACKING is
'List of available tracking items:
APPRDTEDC	DC Med Director Approval Date
APPRDTENM	NMDP Med Director Approval Date
APPTDATE	Appointment Date
CBURCVD	CBU Received Date at TC
CBUTRGARRV	CBU Target Arrival Date at TC
COMPINFOREQVERIFIED	Completed Information verfied
CONFIRMED	Confirmed
CONTRACTCTR	Contract Center
CREDIT	                Entity responsible for test results failed for finance credits
CUSTVERRCV	Customer Verification Received Date
DETAILSTAGE	Order Detail Stage
DNRCLEAR	Donor Clearance Date
DNRCONSENT	Donor Consent-to-donate Given
DNRCONTPER	Person for Donor Contact
DNRCONTSAT	Satellite location for Donor Contact
DUMNREQDATE	DUMN Request Date
FINALCBUREVIEW	Cord Unit review acceptability for shipment
INFORMDATE	Inform donor Date
LABNOTF	Lab Notify Date
NOMAKE	                No Make
PARTIALTYPINGDATE	Date when partial typing results were reported
PREGTEST	Pregnancy Test Results
REPORCVDATE	Repository sample received Date
REPOSHIPDATE	Repository Ship Date
RESPRCVD	Response Received Date
RESULTSDATE	Results Received date
SAMPLLOC	Donor Sample Location
SENT	Request Sent
SHIPCOMPANY	Shipping Company
SHIPCONTAINER	The shipping container used for a Cord Unit when it is shipped to the TC.
SHIPDATE	Ship Date
SPLRVERRCV	Supplier Verification Received Date
STAGE	Order Broad Stage
TCCOLLCONFIRM	TC collection confirm
TPLNTSTART	prep start date
TRANSDESC	Courier name (for donor)
TRANSMTHPCK	Who Picked Transportation Method
TRANSTRACKING	Tracking number (for cord)
WUPCANRSN	Workup Cancel Reason
WUPCOMP	Workup Complete Date
'
/

comment on column ${ordersUser}.TRACKING.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.TRACKING.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.TRACKING.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.TRACKING.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.TRACKING to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRACKING to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRACKING_VALUE                                        */
/*==============================================================*/
create table ${ordersUser}.TRACKING_VALUE (
   TRACKING_CDE         VARCHAR2(20 CHAR)     not null,
   TRACKING_VALUE_CDE   VARCHAR2(255 CHAR)    not null,
   TRACKING_VALUE_DESC  VARCHAR2(255 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRACKING_VALUE primary key (TRACKING_CDE, TRACKING_VALUE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRACKING_VALUE is
'Valid values for a given tracking option. For example, for Pregnancy test results:
M N/A (Male or NCBP)
N Negative
T Test rptd on Frm 410
P Positive'
/

comment on column ${ordersUser}.TRACKING_VALUE.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.TRACKING_VALUE.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.TRACKING_VALUE.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.TRACKING_VALUE.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,SELECT,UPDATE,INSERT on ${ordersUser}.TRACKING_VALUE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRACKING_VALUE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORTATION_REQUEST                                */
/*==============================================================*/
create table ${ordersUser}.TRANSPORTATION_REQUEST (
   TRANSPORTATION_REQUEST_IID NUMBER                
      generated by default as identity ( start with 1),
   ORDER_LINE_ITEM_IID  NUMBER(9)             not null,
   ORDER_LINE_ITEM_TRANSPORT_NUM NUMBER                not null,
   LOGISTICS_COORDINATOR_IID NUMBER(9)             not null,
   TRANSPORT_REQUEST_STATUS_CDE VARCHAR2(10 CHAR)     not null,
   TRANSPORT_PARTNER_IID NUMBER,
   TRANSPORT_FROM_BP_GUID RAW(16),
   TRANSPORT_TO_BP_GUID RAW(16),
   PICK_UP_FROM_ADDRESS_IID NUMBER,
   DELIVER_TO_ADDRESS_IID NUMBER,
   PREFERRED_TRANSPORT_PARTNER_II NUMBER,
   PROPOSED_PICKUP_TS   TIMESTAMP(6),
   ESTIMATED_DELIVERY_TS TIMESTAMP(6),
   TRANSPORT_TEMPERATURE_CDE VARCHAR2(10 CHAR),
   TRACKING_NUMBER_TXT  VARCHAR2(50 CHAR),
   PICK_UP_PREFERENCES_TXT VARCHAR2(100 CHAR),
   DELIVERY_PREFERENCES_TXT VARCHAR2(100 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORTATION_REQUEST primary key (TRANSPORTATION_REQUEST_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORTATION_REQUEST is
'Each row in the Transportation Request table represents a single shipment for a single order line.'
/

comment on column ${ordersUser}.TRANSPORTATION_REQUEST.ORDER_LINE_ITEM_IID is
'PK'
/

comment on column ${ordersUser}.TRANSPORTATION_REQUEST.ORDER_LINE_ITEM_TRANSPORT_NUM is
'This column is needed to allow multiple transportation-related lines per Order Line Item, in the cases where extra "shipment" of containers are needed, based upon the product on the Order Line.'
/

comment on column ${ordersUser}.TRANSPORTATION_REQUEST.LOGISTICS_COORDINATOR_IID is
'The NMDP IID assigned to each resource capable of performing a trackable task.'
/

comment on column ${ordersUser}.TRANSPORTATION_REQUEST.PICK_UP_PREFERENCES_TXT is
'Instructions for picking up the completed Therapy from the Manufacturer. e.g. go to the front desk for entry to get security access.'
/

comment on column ${ordersUser}.TRANSPORTATION_REQUEST.DELIVERY_PREFERENCES_TXT is
'Open text field for the Manufacturer to specify a new date/time.'
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint AK_TRANSPORTATION_REQUEST unique (ORDER_LINE_ITEM_IID, ORDER_LINE_ITEM_TRANSPORT_NUM)
      using index tablespace ${ordersUser}_IDX
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.TRANSPORTATION_REQUEST to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORTATION_REQUEST to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_ADDRESS                                     */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_ADDRESS (
   TRANSPORT_ADDRESS_IID NUMBER                
      generated by default as identity ( start with 1),
   TRANSPORT_ADDRESS_TYPE_CDE VARCHAR2(20 CHAR)     not null,
   TRANSPORT_CONTACT_IID NUMBER,
   ADDRESS_1_TXT        VARCHAR2(50 CHAR),
   ADDRESS_2_TXT        VARCHAR2(50 CHAR),
   ADDRESS_3_TXT        VARCHAR2(50 CHAR),
   ADDRESS_4_TXT        VARCHAR2(50 CHAR),
   CITY_NME             VARCHAR2(50 CHAR),
   STATE_CDE            VARCHAR2(10 CHAR),
   ZIP_POSTAL_CDE       VARCHAR2(10 CHAR),
   COUNTRY_CDE          VARCHAR2(2 CHAR),
   BP_GUID              RAW(16),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_ADDRESS primary key (TRANSPORT_ADDRESS_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_ADDRESS is
'Contains both "from" and "to" addresses for product/service transports.  Any organization having a contractural relationship with NMDP would have its main organizational address in the Business Party Address table, but that address is most likely not the product pickup or delivery address. The Logistics Coordinator '
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.TRANSPORT_ADDRESS_IID is
'PK'
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.TRANSPORT_ADDRESS_TYPE_CDE is
'A type of the address. For example, Customer or Freight Forwarder.'
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.ADDRESS_1_TXT is
'A first line of a mailing address.'
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.ADDRESS_2_TXT is
'A second line of a mailing address (if needed).'
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.CITY_NME is
'A city of the business party address. '
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.STATE_CDE is
'State is the code abbreviation for the state from an address. Can be more than 2 characters. '
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.ZIP_POSTAL_CDE is
'A zip code of the business party address. '
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.COUNTRY_CDE is
'A country code of the business party address. '
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.UPDATE_TS is
'The date the record was updated in the database table. This value can change over time.'
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.UPDATE_BY_ID is
'Indicates the user/system which imparted the update to the record. This value will change over time.'
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.CREATE_TS is
'The date the record was inserted into the database table. This value will never change.'
/

comment on column ${ordersUser}.TRANSPORT_ADDRESS.CREATE_BY_ID is
'Indicates the user/system which imparted the creation of the record. This value will never change.'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.TRANSPORT_ADDRESS to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_ADDRESS to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_ADDRESS_TYPE                                */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_ADDRESS_TYPE (
   TRANSPORT_ADDRESS_TYPE_CDE VARCHAR2(20 CHAR)     not null,
   TRANSPORT_ADDRESS_TYPE_NME VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_ADDRESS_TYPE primary key (TRANSPORT_ADDRESS_TYPE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_ADDRESS_TYPE is
'


'
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.TRANSPORT_ADDRESS_TYPE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_ADDRESS_TYPE to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_CONTACT                                     */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_CONTACT (
   TRANSPORT_CONTACT_IID NUMBER                
      generated by default as identity ( start with 1),
   CONTACT_NME          VARCHAR2(80 CHAR)     not null,
   CONTACT_PHONE_NUM_TXT VARCHAR2(30 CHAR)     not null,
   BP_GUID              RAW(16),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_CONTACT primary key (TRANSPORT_CONTACT_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_CONTACT is
'Contains all specific (first-last) name or a generic (supervisor at desk) name for the Transportation Request. A list of previously used contacts for the Business Party will be displayed so the same contact may be reused.


'
/

comment on column ${ordersUser}.TRANSPORT_CONTACT.CONTACT_NME is
'The first/last name or title or role of the individual to contact when choosing the completed Therapy, to answer questions,or get updates related to the product shipment arrangements at the Manufacturer. This can also be a generic person, such as ''Supervisor''.'
/

comment on column ${ordersUser}.TRANSPORT_CONTACT.CONTACT_PHONE_NUM_TXT is
'Phone number of the individual to contact when choosing the completed Therapy, to answer questions,or get updates related to the product shipment arrangements at the Manufacturer.'
/

comment on column ${ordersUser}.TRANSPORT_CONTACT.BP_GUID is
'Organization identifier to link all Contacts for that organization together so they may be displayed and reused on subsequent transportation requests.'
/

alter table ${ordersUser}.TRANSPORT_CONTACT
   add constraint AK_TRANSPORT_CONTACT unique (CONTACT_NME, CONTACT_PHONE_NUM_TXT)
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.TRANSPORT_CONTACT to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_CONTACT to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_DETAIL_METHOD                               */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_DETAIL_METHOD (
   TRANSPORT_DETAIL_METHOD_CDE VARCHAR2(10 CHAR)     not null,
   TRANSPORT_DETAIL_METHOD_NME VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_DETAIL_METHOD primary key (TRANSPORT_DETAIL_METHOD_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_DETAIL_METHOD is
'Method (4) -  These will be displayed as 3 tabs on the My Requests screen
Values:
* hand carried
* door to door
* cryo'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.TRANSPORT_DETAIL_METHOD to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_DETAIL_METHOD to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_DETAIL_RULES                                */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_DETAIL_RULES (
   TRANSPORT_DETAIL_METHOD_CDE VARCHAR2(10 CHAR)     not null,
   OPTION_VALUE_IID     NUMBER(9)             not null,
   TRANSPORT_DETAIL_DISPLAY_NME VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_DETAIL_RULES primary key (TRANSPORT_DETAIL_METHOD_CDE, OPTION_VALUE_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_DETAIL_RULES is
'Depending on the Shipment Method (Courier, Shipped), only certain detail methods are allowed.
e.g. if Shipped, then detail method cannot be Hand Carried.
To reduce UI options, just this list of combined Transportaion Method (courier, shipped) with the Detail Methods (hand carried, door-to-door, cryo) will be displayed.'
/

comment on column ${ordersUser}.TRANSPORT_DETAIL_RULES.TRANSPORT_DETAIL_DISPLAY_NME is
'Add Display Name column to show in the drop-down:
Courier -- hand carried
Shipped -- door to door
Shipped -- cryo'
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.TRANSPORT_DETAIL_RULES to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_DETAIL_RULES to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_PARTNER                                     */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_PARTNER (
   TRANSPORT_PARTNER_IID NUMBER                
      generated by default as identity ( start with 1),
   TRANSPORT_PARTNER_NME VARCHAR2(50 CHAR),
   TRANSPORT_PARTNER_TXT VARCHAR2(200 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_PARTNER primary key (TRANSPORT_PARTNER_IID)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_PARTNER is
'Shipping (company) partner – commercial company set up by the shipment source.  
Value:  NGL, Quick, May, World Courier, Fed Ex – Any others? (can come through CM order as customer or supplier preference)'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.TRANSPORT_PARTNER to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_PARTNER to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_REQUEST_STATUS                              */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_REQUEST_STATUS (
   TRANSPORT_REQUEST_STATUS_CDE VARCHAR2(10 CHAR)     not null,
   TRANSPORT_REQUEST_STATUS_NME VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_REQUEST_STATUS primary key (TRANSPORT_REQUEST_STATUS_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_REQUEST_STATUS is
'* Request not started
Review Request
Place Order
Review Itinerary 
Send Container
Confirm Container Delivery
Confirm Product Pickup
Confirm Product Delivery
Confirm Container Returned

'
/

grant DELETE,INSERT,UPDATE,SELECT on ${ordersUser}.TRANSPORT_REQUEST_STATUS to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_REQUEST_STATUS to ${ordersUser}_RO_USER
/

/*==============================================================*/
/* Table: TRANSPORT_TEMPERATURE                                 */
/*==============================================================*/
create table ${ordersUser}.TRANSPORT_TEMPERATURE (
   TRANSPORT_TEMPERATURE_CDE VARCHAR2(10 CHAR)     not null,
   TRANSPORT_TEMPERATURE_NME VARCHAR2(50 CHAR),
   UPDATE_TS            TIMESTAMP(6)          not null,
   UPDATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   CREATE_TS            TIMESTAMP(6)          not null,
   CREATE_BY_ID         VARCHAR2(50 CHAR)     not null,
   constraint PK_TRANSPORT_TEMPERATURE primary key (TRANSPORT_TEMPERATURE_CDE)
         using index tablespace ${ordersUser}_IDX
)
   tablespace ${ordersUser}
/

comment on table ${ordersUser}.TRANSPORT_TEMPERATURE is
'* Room Temperature
* Cooled
* Cryopreserved'
/

grant DELETE,INSERT,SELECT,UPDATE on ${ordersUser}.TRANSPORT_TEMPERATURE to ${ordersUser}_APP_USER
/

grant SELECT on ${ordersUser}.TRANSPORT_TEMPERATURE to ${ordersUser}_RO_USER
/

alter table ${ordersUser}.CUSTOMER_ORDER_SUBJECT
   add constraint FK_CUSTOMER_ORDER_SUBJECT_03 foreign key (ORDER_GUID)
      references ${ordersUser}.ORDER_HEADER (ORDER_GUID)
      not deferrable
/

alter table ${ordersUser}.CUSTOMER_ORDER_SUBJECT
   add constraint FK_CUSTOMER_ORDER_SUBJECT_04 foreign key (PROJECT_CDE)
      references ${ordersUser}.PROJECT (PROJECT_CDE)
      not deferrable
/

alter table ${ordersUser}.CUSTOMER_ORDER_SUBJECT
   add constraint FK_CUSTOMER_ORDER_SUBJECT_06 foreign key (RELEASE_REASON_CDE)
      references ${ordersUser}.ORDER_RELEASE_REASON (RELEASE_REASON_CDE)
/

alter table ${ordersUser}.DYNAMIC_FORM
   add constraint FK_DYNAMIC_FORM_01 foreign key (DYNAMIC_FORM_TYPE_CDE)
      references ${ordersUser}.DYNAMIC_FORM_TYPE (DYNAMIC_FORM_TYPE_CDE)
/

alter table ${ordersUser}.DYNAMIC_FORM_COMPONENT
   add constraint FK_DYNAMIC_FORM_COMPONENT_01 foreign key (FORM_SECTION_IID)
      references ${ordersUser}.DYNAMIC_FORM_SECTION (FORM_SECTION_IID)
/

alter table ${ordersUser}.DYNAMIC_FORM_FIELD
   add constraint FK_DYNAMIC_FORM_FIELD_01 foreign key (FORM_COMPONENT_IID)
      references ${ordersUser}.DYNAMIC_FORM_COMPONENT (FORM_COMPONENT_IID)
/

alter table ${ordersUser}.DYNAMIC_FORM_FIELD
   add constraint FK_DYNAMIC_FORM_FIELD_02 foreign key (FORM_FIELD_TYPE_CDE)
      references ${ordersUser}.DYNAMIC_FORM_FIELD_TYPE (FORM_FIELD_TYPE_CDE)
/

alter table ${ordersUser}.DYNAMIC_FORM_FIELD_OPTION
   add constraint FK_DYNAMIC_FORMFIELD_OPTION_01 foreign key (FORM_FIELD_IID)
      references ${ordersUser}.DYNAMIC_FORM_FIELD (FORM_FIELD_IID)
/

alter table ${ordersUser}.DYNAMIC_FORM_FIELD_VALUE
   add constraint FK_DYNAMIC_FORM_FIELD_VALUE_01 foreign key (DYNAMIC_FORM_IID)
      references ${ordersUser}.DYNAMIC_FORM (DYNAMIC_FORM_IID)
/

alter table ${ordersUser}.DYNAMIC_FORM_FIELD_VALUE
   add constraint FK_DYNAMIC_FORM_FIELD_VALUE_02 foreign key (FORM_FIELD_IID)
      references ${ordersUser}.DYNAMIC_FORM_FIELD (FORM_FIELD_IID)
/

alter table ${ordersUser}.DYNAMIC_FORM_FIELD_VALUE
   add constraint FK_DYNAMIC_FORM_FIELD_VALUE_03 foreign key (ORDER_GUID)
      references ${ordersUser}.ORDER_HEADER (ORDER_GUID)
/

alter table ${ordersUser}.DYNAMIC_FORM_SECTION
   add constraint FK_DYNAMIC_FORM_SECTION_01 foreign key (DYNAMIC_FORM_IID)
      references ${ordersUser}.DYNAMIC_FORM (DYNAMIC_FORM_IID)
/


alter table ${ordersUser}.FORM_RESOURCE_ROLE
   add constraint FK_FORM_RESOURCE_ROLE_02 foreign key (FORM_IID)
      references ${ordersUser}.FORM_MASTER_LIST (FORM_IID)
/

alter table ${ordersUser}.OPTION_VALUE
   add constraint FK_OPTION_VALUE_01 foreign key (OPTION_CDE)
      references ${ordersUser}.SERVICE_OPTION (OPTION_CDE)
      not deferrable
/

alter table ${ordersUser}.ORDER_HEADER
   add constraint FK_ORDER_HEADER_02 foreign key (ORDER_TYPE_CDE)
      references ${ordersUser}.ORDER_TYPE (ORDER_TYPE_CDE)
      not deferrable
/

alter table ${ordersUser}.ORDER_HEADER
   add constraint FK_ORDER_HEADER_03 foreign key (ORDER_STATUS_CDE)
      references ${ordersUser}.ORDER_STATUS (ORDER_STATUS_CDE)
      not deferrable
/

alter table ${ordersUser}.ORDER_HEADER
   add constraint FK_ORDER_HEADER_06 foreign key (LINKED_ORDER_GUID)
      references ${ordersUser}.ORDER_HEADER (ORDER_GUID)
/

alter table ${ordersUser}.ORDER_HEADER
   add constraint FK_ORDER_HEADER_07 foreign key (CLOSE_REASON_CDE)
      references ${ordersUser}.CLOSE_REASON (CLOSE_REASON_CDE)
      not deferrable
/

alter table ${ordersUser}.ORDER_LINE_ITEM
   add constraint FK_ORDER_LINE_ITEM_01 foreign key (ORDER_GUID)
      references ${ordersUser}.ORDER_HEADER (ORDER_GUID)
      not deferrable
/

alter table ${ordersUser}.ORDER_LINE_ITEM
   add constraint FK_ORDER_LINE_ITEM_02 foreign key (LINKED_ORDER_LINE_ITEM_IID)
      references ${ordersUser}.ORDER_LINE_ITEM (ORDER_LINE_ITEM_IID)
      not deferrable
/

alter table ${ordersUser}.ORDER_LINE_ITEM
   add constraint FK_ORDER_LINE_ITEM_03 foreign key (SERVICE_CDE)
      references ${ordersUser}.SERVICE (SERVICE_CDE)
      not deferrable
/

alter table ${ordersUser}.ORDER_LINE_ITEM
   add constraint FK_ORDER_LINE_ITEM_04 foreign key (CANCEL_REASON_CDE)
      references ${ordersUser}.CANCEL_REASON (CANCEL_REASON_CDE)
      not deferrable
/

alter table ${ordersUser}.ORDER_NOTIFICATION
   add constraint FK_ORDER_NOTIFICATION_02 foreign key (ORDER_NOTIFICATION_TYPE_CDE)
      references ${ordersUser}.ORDER_NOTIFICATION_TYPE (ORDER_NOTIFICATION_TYPE_CDE)
/

alter table ${ordersUser}.ORDER_NOTIFICATION_EVENT
   add constraint FK_ORDER_NOTIFICATION_EVENT_02 foreign key (ORDER_GUID)
      references ${ordersUser}.ORDER_HEADER (ORDER_GUID)
/

alter table ${ordersUser}.ORDER_NOTIFICATION_EVENT
   add constraint FK_ORDER_NOTIFICATION_EVENT_03 foreign key (ORDER_NOTIFICATION_STATUS_IID)
      references ${ordersUser}.ORDER_NOTIFICATION_STATUS (ORDER_NOTIFICATION_STATUS_IID)
/

alter table ${ordersUser}.ORDER_NOTIFICATION_EVENT
   add constraint FK_ORDER_NOTIFICATION_EVENT_04 foreign key (ORDER_NOTIFICATION_IID)
      references ${ordersUser}.ORDER_NOTIFICATION (ORDER_NOTIFICATION_IID)
/

alter table ${ordersUser}.ORDER_NOTIFICATION_EVENT
   add constraint FK_ORDER_NOTIFICATION_EVENT_05 foreign key (TRANSPORTATION_REQUEST_IID)
      references ${ordersUser}.TRANSPORTATION_REQUEST (TRANSPORTATION_REQUEST_IID)
/

alter table ${ordersUser}.ORDER_NOTIFICATION_STATUS
   add constraint FK_ORDER_NOTIFICATION_STS_01 foreign key (ORDER_NOTIFICATION_TYPE_CDE)
      references ${ordersUser}.ORDER_NOTIFICATION_TYPE (ORDER_NOTIFICATION_TYPE_CDE)
/

alter table ${ordersUser}.ORDER_OPTION
   add constraint FK_ORDER_OPTION_01 foreign key (ORDER_LINE_ITEM_IID)
      references ${ordersUser}.ORDER_LINE_ITEM (ORDER_LINE_ITEM_IID)
      not deferrable
/

alter table ${ordersUser}.ORDER_OPTION
   add constraint FK_ORDER_OPTION_02 foreign key (OPTION_VALUE_IID)
      references ${ordersUser}.OPTION_VALUE (OPTION_VALUE_IID)
      not deferrable
/

alter table ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE
   add constraint FK_ORDER_SUBJECT_FACTOR_VAL_01 foreign key (ORDER_SUBJECT_FACTOR_CDE)
      references ${ordersUser}.ORDER_SUBJECT_FACTOR (ORDER_SUBJECT_FACTOR_CDE)
      not deferrable
/

alter table ${ordersUser}.ORDER_TRACKING
   add constraint FK_ORDER_TRACKING_01 foreign key (ORDER_LINE_ITEM_IID)
      references ${ordersUser}.ORDER_LINE_ITEM (ORDER_LINE_ITEM_IID)
      not deferrable
/

alter table ${ordersUser}.ORDER_TRACKING
   add constraint FK_ORDER_TRACKING_02 foreign key (TRACKING_CDE)
      references ${ordersUser}.TRACKING (TRACKING_CDE)
      not deferrable
/

alter table ${ordersUser}.PROPOSED_ORDER_TRACKING
   add constraint FK_PROPOSED_ORDER_TRACKING_01 foreign key (TRACKING_CDE)
      references ${ordersUser}.TRACKING (TRACKING_CDE)
/

alter table ${ordersUser}.PROPOSED_ORDER_TRACKING
   add constraint FK_PROPOSED_ORDER_TRACKING_02 foreign key (ORDER_LINE_ITEM_IID)
      references ${ordersUser}.ORDER_LINE_ITEM (ORDER_LINE_ITEM_IID)
/

alter table ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE
   add constraint FK_PROPOSED_ORD_TRACK_STATE_01 foreign key (PROPOSED_TRACKING_STATUS_CDE)
      references ${ordersUser}.PROPOSED_ORDER_TRACKING_STATUS (PROPOSED_TRACKING_STATUS_CDE)
/

alter table ${ordersUser}.PROPOSED_ORDER_TRACKING_STATE
   add constraint FK_PROPOSED_ORD_TRACK_STATE_02 foreign key (ORDER_LINE_ITEM_IID, TRACKING_CDE)
      references ${ordersUser}.PROPOSED_ORDER_TRACKING (ORDER_LINE_ITEM_IID, TRACKING_CDE)
/

alter table ${ordersUser}.SALABLE_SERVICE
   add constraint FK_SALABLE_SERVICE_01 foreign key (SERVICE_CDE)
      references ${ordersUser}.SERVICE (SERVICE_CDE)
/

alter table ${ordersUser}.SALABLE_SERVICE
   add constraint FK_SALABLE_SERVICE_02 foreign key (SOURCE_TYPE_CDE)
      references ${ordersUser}.SOURCE_TYPE (SOURCE_TYPE_CDE)
/

alter table ${ordersUser}.SALABLE_SERVICE
   add constraint FK_SALABLE_SERVICE_03 foreign key (ORDER_SUBJECT_FACTOR_VALUE_IID)
      references ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE (ORDER_SUBJECT_FACTOR_VALUE_IID)
/

alter table ${ordersUser}.SERVICE
   add constraint FK_SERVICE_01 foreign key (SERVICE_TYPE_CDE)
      references ${ordersUser}.SERVICE_TYPE (SERVICE_TYPE_CDE)
/

alter table ${ordersUser}.SERVICE_ITEMIZATION
   add constraint FK_SERVICE_ITEMIZATION_01 foreign key (DETAIL_SERVICE_CDE)
      references ${ordersUser}.SERVICE (SERVICE_CDE)
      not deferrable
/

alter table ${ordersUser}.SERVICE_ITEMIZATION
   add constraint FK_SERVICE_ITEMIZATION_02 foreign key (SERVICE_CDE)
      references ${ordersUser}.SERVICE (SERVICE_CDE)
      not deferrable
/

alter table ${ordersUser}.SERVICE_ITEMIZATION
   add constraint FK_SERVICE_ITEMIZATION_03 foreign key (SERVICE_ITEMIZATION_TYPE_CDE)
      references ${ordersUser}.SERVICE_ITEMIZATION_TYPE (SERVICE_ITEMIZATION_TYPE_CDE)
      not deferrable
/

alter table ${ordersUser}.SERVICE_ITEMIZATION
   add constraint FK_SERVICE_ITEMIZATION_04 foreign key (ORDER_SUBJECT_FACTOR_VALUE_IID)
      references ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE (ORDER_SUBJECT_FACTOR_VALUE_IID)
      not deferrable
/

alter table ${ordersUser}.SERVICE_ITEMIZATION
   add constraint FK_SERVICE_ITEMIZATION_05 foreign key (OPTION_VALUE_IID)
      references ${ordersUser}.OPTION_VALUE (OPTION_VALUE_IID)
      not deferrable
/

alter table ${ordersUser}.SERVICE_ITEMIZATION
   add constraint FK_SERVICE_ITEMIZATION_06 foreign key (SOURCE_TYPE_CDE)
      references ${ordersUser}.SOURCE_TYPE (SOURCE_TYPE_CDE)
      not deferrable
/

alter table ${ordersUser}.SERVICE_OPTION_VALUE
   add constraint FK_SERVICE_OPTION_VALUE_02 foreign key (SERVICE_CDE)
      references ${ordersUser}.SERVICE (SERVICE_CDE)
      not deferrable
/

alter table ${ordersUser}.SERVICE_OPTION_VALUE
   add constraint FK_SERVICE_OPTION_VALUE_03 foreign key (OPTION_VALUE_IID)
      references ${ordersUser}.OPTION_VALUE (OPTION_VALUE_IID)
      not deferrable
/

alter table ${ordersUser}.SERVICE_OPTION_VALUE
   add constraint FK_SERVICE_OPTION_VALUE_04 foreign key (SOURCE_TYPE_CDE)
      references ${ordersUser}.SOURCE_TYPE (SOURCE_TYPE_CDE)
      not deferrable
/

alter table ${ordersUser}.SERVICE_OPTION_VALUE
   add constraint FK_SERVICE_OPTION_VALUE_05 foreign key (ORDER_SUBJECT_FACTOR_VALUE_IID)
      references ${ordersUser}.ORDER_SUBJECT_FACTOR_VALUE (ORDER_SUBJECT_FACTOR_VALUE_IID)
/

alter table ${ordersUser}.SERVICE_PROVIDER
   add constraint FK_SERVICE_PROVIDER_01 foreign key (ORDER_LINE_ITEM_IID)
      references ${ordersUser}.ORDER_LINE_ITEM (ORDER_LINE_ITEM_IID)
/

alter table ${ordersUser}.SERVICE_TRACKING
   add constraint FK_SERVICE_TRACKING_01 foreign key (TRACKING_CDE)
      references ${ordersUser}.TRACKING (TRACKING_CDE)
      not deferrable
/

alter table ${ordersUser}.SERVICE_TRACKING
   add constraint FK_SERVICE_TRACKING_02 foreign key (SERVICE_CDE)
      references ${ordersUser}.SERVICE (SERVICE_CDE)
      not deferrable
/

alter table ${ordersUser}.TRACKING_VALUE
   add constraint FK_TRACKING_VALUE_01 foreign key (TRACKING_CDE)
      references ${ordersUser}.TRACKING (TRACKING_CDE)
      not deferrable
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint FK_TRANSPORTATION_REQUEST_02 foreign key (TRANSPORT_PARTNER_IID)
      references ${ordersUser}.TRANSPORT_PARTNER (TRANSPORT_PARTNER_IID)
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint FK_TRANSPORTATION_REQUEST_03 foreign key (TRANSPORT_REQUEST_STATUS_CDE)
      references ${ordersUser}.TRANSPORT_REQUEST_STATUS (TRANSPORT_REQUEST_STATUS_CDE)
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint FK_TRANSPORTATION_REQUEST_04 foreign key (TRANSPORT_TEMPERATURE_CDE)
      references ${ordersUser}.TRANSPORT_TEMPERATURE (TRANSPORT_TEMPERATURE_CDE)
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint FK_TRANSPORTATION_REQUEST_05 foreign key (ORDER_LINE_ITEM_IID)
      references ${ordersUser}.ORDER_LINE_ITEM (ORDER_LINE_ITEM_IID)
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint FK_TRANSPORTATION_REQUEST_06 foreign key (PREFERRED_TRANSPORT_PARTNER_II)
      references ${ordersUser}.TRANSPORT_PARTNER (TRANSPORT_PARTNER_IID)
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint FK_TRANSPORTATION_REQUEST_07 foreign key (PICK_UP_FROM_ADDRESS_IID)
      references ${ordersUser}.TRANSPORT_ADDRESS (TRANSPORT_ADDRESS_IID)
/

alter table ${ordersUser}.TRANSPORTATION_REQUEST
   add constraint FK_TRANSPORTATION_REQUEST_08 foreign key (DELIVER_TO_ADDRESS_IID)
      references ${ordersUser}.TRANSPORT_ADDRESS (TRANSPORT_ADDRESS_IID)
/

alter table ${ordersUser}.TRANSPORT_ADDRESS
   add constraint FK_TRANSPORT_ADDRESS_01 foreign key (TRANSPORT_ADDRESS_TYPE_CDE)
      references ${ordersUser}.TRANSPORT_ADDRESS_TYPE (TRANSPORT_ADDRESS_TYPE_CDE)
/

alter table ${ordersUser}.TRANSPORT_ADDRESS
   add constraint FK_TRANSPORT_ADDRESS_02 foreign key (TRANSPORT_CONTACT_IID)
      references ${ordersUser}.TRANSPORT_CONTACT (TRANSPORT_CONTACT_IID)
/

alter table ${ordersUser}.TRANSPORT_DETAIL_RULES
   add constraint FK_TRANSPORT_DETAIL_RULES_01 foreign key (OPTION_VALUE_IID)
      references ${ordersUser}.OPTION_VALUE (OPTION_VALUE_IID)
/

alter table ${ordersUser}.TRANSPORT_DETAIL_RULES
   add constraint FK_TRANSPORT_DETAIL_RULES_02 foreign key (TRANSPORT_DETAIL_METHOD_CDE)
      references ${ordersUser}.TRANSPORT_DETAIL_METHOD (TRANSPORT_DETAIL_METHOD_CDE)
/

