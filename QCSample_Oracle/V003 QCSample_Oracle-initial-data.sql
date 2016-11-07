INSERT INTO ADERCO."USER" (id, login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, create_by_id, create_ts, reset_date, update_by_id, update_ts) VALUES
	(1, 'system', '$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG', 'System', 'System', 'system@localhost', 1, 'en', NULL, NULL, 'system', '2016-06-13 19:31:58', NULL, NULL, NULL);
INSERT INTO ADERCO."USER" (id, login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, create_by_id, create_ts, reset_date, update_by_id, update_ts) VALUES  
	(2, 'anonymoususer', '$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO', 'Anonymous', 'User', 'anonymous@localhost', 1, 'en', NULL, NULL, 'system', '2016-06-13 19:31:58', NULL, NULL, NULL);
INSERT INTO ADERCO."USER" (id, login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, create_by_id, create_ts, reset_date, update_by_id, update_ts) VALUES  
	(3, 'admin', '$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC', 'Administrator', 'Administrator', 'admin@localhost', 1, 'en', NULL, NULL, 'system', '2016-06-13 19:31:58', NULL, NULL, NULL);
INSERT INTO ADERCO."USER" (id, login, password_hash, first_name, last_name, email, activated, lang_key, activation_key, reset_key, create_by_id, create_ts, reset_date, update_by_id, update_ts) VALUES  
	(4, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', 1, 'en', NULL, NULL, 'system', '2016-06-13 19:31:58', NULL, NULL, NULL);

INSERT INTO ADERCO.authority (name) VALUES
  ('ROLE_ADMIN');
INSERT INTO ADERCO.authority (name) VALUES  
  ('ROLE_USER');
	
INSERT INTO ADERCO.user_authority (user_id, authority_name) VALUES
	(1, 'ROLE_ADMIN');
INSERT INTO ADERCO.user_authority (user_id, authority_name) VALUES  
	(3, 'ROLE_ADMIN');
INSERT INTO ADERCO.user_authority (user_id, authority_name) VALUES
	(1, 'ROLE_USER');
INSERT INTO ADERCO.user_authority (user_id, authority_name) VALUES  
	(3, 'ROLE_USER');
INSERT INTO ADERCO.user_authority (user_id, authority_name) VALUES  
	(4, 'ROLE_USER');

	
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('AAFA','African American');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('AFA','Unspecified Black or African American');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('AFB','African');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('AINDI','South Asian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('AISC','American Indian South or Centr');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('ALANAM','Alaska Native or Aleut');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('AMIND','North American Indian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('API','Unspecified Asian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('CARB','Black Caribbean');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('CARHIS','Caribbean Hispanic');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('CARIBI','Caribbean Indian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('CAU','Other White');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('DEC','Declines or No Race Selected');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('EEURO','Eastern European');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('EURWRC','North American or European');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('FILII','Filipino');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('GUAMAN','Guamanian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('HAWAII','Hawaiian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('HAWI','Unspecified Hawaiian or Pacific Islander');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('HIS','Unspecified Hispanic');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('JAPI','Japanese');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('KORI','Korean');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MAFA','Multiple Black');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MAPI','Multiple Asian/Pacific Islndr');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MCAU','Multiple Caucasian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MEDIT','Mediterranean');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MENAFC','MidEast/No. Coast of Africa');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MHAW','Multiple Nat. Hw/Oth Pa. Isln');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MHIS','Multiple Hispanic');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MIDEAS','Middle Eastern');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MNAM','Multiple Native American');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MSWHIS','Mexican or Chicano');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('MULTI','Multiple Race');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('NAM','Unspecified American Indian or Alaska Native');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('NAMB','North American Black');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('NAMER','North American');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('NCAFRI','North Coast of Africa');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('NCHI','Chinese');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('NEURO','Northern European');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('OPI','Other Pacific Islander');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('OTH','Other');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('SAMOAN','Samoan');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('SCAHIS','South/Cntrl Amer. Hisp.');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('SCAMB','Black South or Central America');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('SCSEAI','Other Southeast Asian');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('UNK','Unknown/Question Not Asked');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('VIET','Vietnamese');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('WCARIB','White Caribbean');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('WEURO','Western European');
INSERT INTO ADERCO.race (race_cde, race_desc) VALUES('WSCA','White South or Central America');

INSERT INTO ADERCO.sex (sex_cde, sex_desc) VALUES('M','Male');
INSERT INTO ADERCO.sex (sex_cde, sex_desc) VALUES('F','Female');
INSERT INTO ADERCO.sex (sex_cde, sex_desc) VALUES('U','Unknown');

INSERT INTO ADERCO.ethnicity (ethnicity_cde, ethnicity_desc) VALUES('HIS','Hispanic or Latino');
INSERT INTO ADERCO.ethnicity (ethnicity_cde, ethnicity_desc) VALUES('NHIS','Not Hispanic or Latino');
INSERT INTO ADERCO.ethnicity (ethnicity_cde, ethnicity_desc) VALUES('U','Unknown');

INSERT INTO ADERCO.subject_class (subject_class_cde, subject_class_desc) VALUES('CBU','Cord');
INSERT INTO ADERCO.subject_class (subject_class_cde, subject_class_desc) VALUES('RECIPIENT','Recipient');
INSERT INTO ADERCO.subject_class (subject_class_cde, subject_class_desc) VALUES('DONOR','Donor');
INSERT INTO ADERCO.subject_class (subject_class_cde, subject_class_desc) VALUES('MOTHER','CordMom');
INSERT INTO ADERCO.subject_class (subject_class_cde, subject_class_desc) VALUES('OTHER','Other');

INSERT INTO ADERCO.sample_source_status (source_status_cde, source_status_desc) VALUES('INACTIVE','Inactive');
INSERT INTO ADERCO.sample_source_status (source_status_cde, source_status_desc) VALUES('ACTIVE','Active');

INSERT INTO ADERCO.sample_status (sample_status_cde, sample_status_desc) VALUES('QUARANTINED','Quarantined');
INSERT INTO ADERCO.sample_status (sample_status_cde, sample_status_desc) VALUES('REMOVED','Removed');
INSERT INTO ADERCO.sample_status (sample_status_cde, sample_status_desc) VALUES('DEPLETED','Depleted');
INSERT INTO ADERCO.sample_status (sample_status_cde, sample_status_desc) VALUES('ACTIVE','Active');

INSERT INTO ADERCO.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('VIAL', 'Vial');
INSERT INTO ADERCO.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('FILTP', 'Filter Paper');
INSERT INTO ADERCO.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('SWAB', 'Swab');
INSERT INTO ADERCO.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('OTHER', 'Other ');
INSERT INTO ADERCO.sample_collection_medium (sample_coll_medium_cde, sample_coll_medium_desc) VALUES ('BAG', 'Bag');


INSERT INTO ADERCO.sample_type (sample_type_cde, sample_type_desc) VALUES('WB','Whole Blood');
INSERT INTO ADERCO.sample_type (sample_type_cde, sample_type_desc) VALUES('DNA','DNA');
INSERT INTO ADERCO.sample_type (sample_type_cde, sample_type_desc) VALUES('BC','Buccal Cell');
INSERT INTO ADERCO.sample_type (sample_type_cde, sample_type_desc) VALUES('CBU','Cord Blood');
INSERT INTO ADERCO.sample_type (sample_type_cde, sample_type_desc) VALUES('BLCL','BLCL');
INSERT INTO ADERCO.sample_type (sample_type_cde, sample_type_desc) VALUES('OTHER','Other');
INSERT INTO ADERCO.sample_type (sample_type_cde, sample_type_desc) VALUES('UNKNOWN','Unknown');

INSERT INTO ADERCO.unit_of_measure (uom_cde, uom_desc) VALUES('mL','mL');
INSERT INTO ADERCO.unit_of_measure (uom_cde, uom_desc) VALUES('µL','µL');
INSERT INTO ADERCO.unit_of_measure (uom_cde, uom_desc) VALUES('cells','cells');
INSERT INTO ADERCO.unit_of_measure (uom_cde, uom_desc) VALUES('µg','µg');
INSERT INTO ADERCO.unit_of_measure (uom_cde, uom_desc) VALUES('unit','unit');
INSERT INTO ADERCO.unit_of_measure (uom_cde, uom_desc) VALUES('mg','mg');




	