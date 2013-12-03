

-- ***********************************
--   custom_meta
-- ***********************************

insert into custom_meta (c_hlevel, c_fullname, c_name, c_synonym_cd, c_visualattributes, c_totalnum, c_basecode,
                         c_metadataxml, c_facttablecolumn, c_tablename, c_columnname, c_columndatatype, c_operator,
                         c_dimcode, c_comment, c_tooltip, m_applied_path, update_date, download_date, import_date,
                         sourcesystem_cd, valuetype_cd, m_exclusion_cd, c_path, c_symbol)
values(0,'\Custom Metadata\','Custom Metadata','N','CAE',null,null,null,'concept_cd','concept_dimension',
       'concept_path','T','LIKE','\Custom Metadata\',null,'Custom Metadata','@','2010-05-12',null,null,null,
       null,null,null,null);


-- ***********************************
--   schemes
-- ***********************************

INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('NDC:', 'NDC', 'National Drug Code');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DSG-NLP:', 'DSG-NLP', 'Natural Language Processing Data');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('UMLS:', 'UMLS', 'United Medical Language System');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('LCS-I2B2:', 'LCS-I2B2', NULL);
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('ICD9:', 'ICD9', 'ICD9 code for diagnoses and procedures');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('LOINC:', 'LOINC', 'Lab codes');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|AGE:', 'DEM|AGE', 'Age of patient from demographics data');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|DATE:', 'DEM|DATE', 'Patient date of birth from demographics data');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|MARITAL:', 'DEM|MARITAL', 'Marital Status of patient');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|LANGUAGE:', 'DEM|LANGUAGE', 'Primary language spoken by patient');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|RACE:', 'DEM|RACE', 'Race of patient');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|RELIGION:', 'DEM|RELIGION', 'Religion of patient');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|SEX:', 'DEM|SEX', 'Gender of patient');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|VITAL:', 'DEM|VITAL', 'Vital status of patient');
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES('DEM|ZIPCODE:', 'DEM|ZIPCODE', NULL);
INSERT INTO SCHEMES(C_KEY, C_NAME, C_DESCRIPTION) VALUES(null, 'None', 'No scheme');


-- ***********************************
--   table_access
-- ***********************************

-- insert into table_access (c_table_cd, c_table_name, c_protected_access, c_hlevel, c_fullname, c_name, c_synonym_cd, c_visualattributes,
--   c_totalnum, c_basecode, c_metadataxml, c_facttablecolumn, c_dimtablename, c_columnname, c_columndatatype, c_operator, c_dimcode,
--   c_comment, c_tooltip, c_entry_date, c_change_date, c_status_cd, valuetype_cd)
-- values ('Public Studies', 'i2b2', 'N', '0', '\Public Studies\', 'Public Studies', 'N', 'CA', 0, null, null, 'concept_cd', 'concept_dimension',
--         'concept_path', 'T', 'LIKE', '\Public Studies\', null, '\Public Studies\', null, null, null, null);
