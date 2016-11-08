INSERT INTO QCSAMPLE."USER" (login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, reset_date) VALUES
	('system', '$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG', 'System', 'System', 'system@localhost', 1, 'en', NULL, NULL,NULL);
INSERT INTO QCSAMPLE."USER" (login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, reset_date) VALUES  
	('anonymoususer', '$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO', 'Anonymous', 'User', 'anonymous@localhost', 1, 'en', NULL, NULL, NULL);
INSERT INTO QCSAMPLE."USER" (login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, reset_date) VALUES  
	('admin', '$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC', 'Administrator', 'Administrator', 'admin@localhost', 1, 'en', NULL, NULL, NULL);
INSERT INTO QCSAMPLE."USER" (login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, reset_date) VALUES  
	('user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', 1, 'en', NULL, NULL, NULL);

INSERT INTO QCSAMPLE.authority (name) VALUES
  ('ROLE_ADMIN');
INSERT INTO QCSAMPLE.authority (name) VALUES  
  ('ROLE_USER');
	
INSERT INTO QCSAMPLE.user_authority (user_id, authority_name) VALUES
	(1, 'ROLE_ADMIN');
INSERT INTO QCSAMPLE.user_authority (user_id, authority_name) VALUES  
	(3, 'ROLE_ADMIN');
INSERT INTO QCSAMPLE.user_authority (user_id, authority_name) VALUES
	(1, 'ROLE_USER');
INSERT INTO QCSAMPLE.user_authority (user_id, authority_name) VALUES  
	(3, 'ROLE_USER');
INSERT INTO QCSAMPLE.user_authority (user_id, authority_name) VALUES  
	(4, 'ROLE_USER');

	
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('AAFA','African American');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('AFA','Unspecified Black or African American');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('AFB','African');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('AINDI','South Asian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('AISC','American Indian South or Centr');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('ALANAM','Alaska Native or Aleut');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('AMIND','North American Indian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('API','Unspecified Asian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('CARB','Black Caribbean');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('CARHIS','Caribbean Hispanic');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('CARIBI','Caribbean Indian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('CAU','Other White');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('DEC','Declines or No Race Selected');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('EEURO','Eastern European');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('EURWRC','North American or European');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('FILII','Filipino');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('GUAMAN','Guamanian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('HAWAII','Hawaiian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('HAWI','Unspecified Hawaiian or Pacific Islander');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('HIS','Unspecified Hispanic');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('JAPI','Japanese');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('KORI','Korean');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MAFA','Multiple Black');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MAPI','Multiple Asian/Pacific Islndr');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MCAU','Multiple Caucasian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MEDIT','Mediterranean');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MENAFC','MidEast/No. Coast of Africa');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MHAW','Multiple Nat. Hw/Oth Pa. Isln');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MHIS','Multiple Hispanic');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MIDEAS','Middle Eastern');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MNAM','Multiple Native American');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MSWHIS','Mexican or Chicano');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('MULTI','Multiple Race');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('NAM','Unspecified American Indian or Alaska Native');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('NAMB','North American Black');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('NAMER','North American');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('NCAFRI','North Coast of Africa');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('NCHI','Chinese');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('NEURO','Northern European');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('OPI','Other Pacific Islander');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('OTH','Other');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('SAMOAN','Samoan');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('SCAHIS','South/Cntrl Amer. Hisp.');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('SCAMB','Black South or Central America');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('SCSEAI','Other Southeast Asian');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('UNK','Unknown/Question Not Asked');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('VIET','Vietnamese');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('WCARIB','White Caribbean');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('WEURO','Western European');
INSERT INTO QCSAMPLE.race (race_cde, race_desc) VALUES('WSCA','White South or Central America');

INSERT INTO QCSAMPLE.sex (sex_cde, sex_desc) VALUES('M','Male');
INSERT INTO QCSAMPLE.sex (sex_cde, sex_desc) VALUES('F','Female');
INSERT INTO QCSAMPLE.sex (sex_cde, sex_desc) VALUES('U','Unknown');

INSERT INTO QCSAMPLE.ethnicity (ethnicity_cde, ethnicity_desc) VALUES('HIS','Hispanic or Latino');
INSERT INTO QCSAMPLE.ethnicity (ethnicity_cde, ethnicity_desc) VALUES('NHIS','Not Hispanic or Latino');
INSERT INTO QCSAMPLE.ethnicity (ethnicity_cde, ethnicity_desc) VALUES('U','Unknown');

INSERT INTO QCSAMPLE.subject_class (subject_class_cde, subject_class_desc) VALUES('CBU','Cord');
INSERT INTO QCSAMPLE.subject_class (subject_class_cde, subject_class_desc) VALUES('RECIPIENT','Recipient');
INSERT INTO QCSAMPLE.subject_class (subject_class_cde, subject_class_desc) VALUES('DONOR','Donor');
INSERT INTO QCSAMPLE.subject_class (subject_class_cde, subject_class_desc) VALUES('MOTHER','CordMom');
INSERT INTO QCSAMPLE.subject_class (subject_class_cde, subject_class_desc) VALUES('OTHER','Other');

INSERT INTO QCSAMPLE.sample_source_status (source_status_cde, source_status_desc) VALUES('INACTIVE','Inactive');
INSERT INTO QCSAMPLE.sample_source_status (source_status_cde, source_status_desc) VALUES('ACTIVE','Active');

INSERT INTO QCSAMPLE.sample_status (sample_status_cde, sample_status_desc) VALUES('QUARANTINED','Quarantined');
INSERT INTO QCSAMPLE.sample_status (sample_status_cde, sample_status_desc) VALUES('REMOVED','Removed');
INSERT INTO QCSAMPLE.sample_status (sample_status_cde, sample_status_desc) VALUES('DEPLETED','Depleted');
INSERT INTO QCSAMPLE.sample_status (sample_status_cde, sample_status_desc) VALUES('ACTIVE','Active');

INSERT INTO QCSAMPLE.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('VIAL', 'Vial');
INSERT INTO QCSAMPLE.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('FILTP', 'Filter Paper');
INSERT INTO QCSAMPLE.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('SWAB', 'Swab');
INSERT INTO QCSAMPLE.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('OTHER', 'Other ');
INSERT INTO QCSAMPLE.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('BAG', 'Bag');


INSERT INTO QCSAMPLE.sample_type (sample_type_cde, sample_type_desc) VALUES('WB','Whole Blood');
INSERT INTO QCSAMPLE.sample_type (sample_type_cde, sample_type_desc) VALUES('DNA','DNA');
INSERT INTO QCSAMPLE.sample_type (sample_type_cde, sample_type_desc) VALUES('BC','Buccal Cell');
INSERT INTO QCSAMPLE.sample_type (sample_type_cde, sample_type_desc) VALUES('CBU','Cord Blood');
INSERT INTO QCSAMPLE.sample_type (sample_type_cde, sample_type_desc) VALUES('BLCL','BLCL');
INSERT INTO QCSAMPLE.sample_type (sample_type_cde, sample_type_desc) VALUES('OTHER','Other');
INSERT INTO QCSAMPLE.sample_type (sample_type_cde, sample_type_desc) VALUES('UNKNOWN','Unknown');

INSERT INTO QCSAMPLE.unit_of_measure (uom_cde, uom_desc) VALUES('mL','mL');
INSERT INTO QCSAMPLE.unit_of_measure (uom_cde, uom_desc) VALUES('µL','µL');
INSERT INTO QCSAMPLE.unit_of_measure (uom_cde, uom_desc) VALUES('cells','cells');
INSERT INTO QCSAMPLE.unit_of_measure (uom_cde, uom_desc) VALUES('µg','µg');
INSERT INTO QCSAMPLE.unit_of_measure (uom_cde, uom_desc) VALUES('unit','unit');
INSERT INTO QCSAMPLE.unit_of_measure (uom_cde, uom_desc) VALUES('mg','mg');

COMMIT;


	