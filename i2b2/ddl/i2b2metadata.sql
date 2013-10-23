
CREATE SCHEMA i2b2metadata authorization TO i2b2metadata;


CREATE TABLE birn (
    c_hlevel int NOT NULL,
    c_fullname character varying(700) NOT NULL,
    c_name character varying(2000) NOT NULL,
    c_synonym_cd character(1) NOT NULL,
    c_visualattributes character(3) NOT NULL,
    c_totalnum int,
    c_basecode character varying(50),
    c_metadataxml character varying(1000),
    c_facttablecolumn character varying(50) NOT NULL,
    c_tablename character varying(50) NOT NULL,
    c_columnname character varying(50) NOT NULL,
    c_columndatatype character varying(50) NOT NULL,
    c_operator character varying(10) NOT NULL,
    c_dimcode character varying(700) NOT NULL,
    c_comment character varying(1000),
    c_tooltip character varying(900),
    m_applied_path character varying(700) NOT NULL,
    update_date date NOT NULL,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    valuetype_cd character varying(50),
    m_exclusion_cd character varying(25),
    c_path character varying(700),
    c_symbol character varying(50)
);

ALTER TABLE i2b2metadata.birn OWNER TO i2b2metadata;


CREATE TABLE custom_meta (
    c_hlevel int NOT NULL,
    c_fullname character varying(700) NOT NULL,
    c_name character varying(2000) NOT NULL,
    c_synonym_cd character(1) NOT NULL,
    c_visualattributes character(3) NOT NULL,
    c_totalnum int,
    c_basecode character varying(50),
    c_metadataxml character varying(1000),
    c_facttablecolumn character varying(50) NOT NULL,
    c_tablename character varying(50) NOT NULL,
    c_columnname character varying(50) NOT NULL,
    c_columndatatype character varying(50) NOT NULL,
    c_operator character varying(10) NOT NULL,
    c_dimcode character varying(700) NOT NULL,
    c_comment character varying(1000),
    c_tooltip character varying(900),
    m_applied_path character varying(700) NOT NULL,
    update_date date NOT NULL,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    valuetype_cd character varying(50),
    m_exclusion_cd character varying(25),
    c_path character varying(700),
    c_symbol character varying(50)
);

ALTER TABLE i2b2metadata.custom_meta OWNER TO i2b2metadata;


CREATE TABLE i2b2 (
    c_hlevel int NOT NULL,
    c_fullname character varying(700) NOT NULL,
    c_name character varying(2000) NOT NULL,
    c_synonym_cd character(1) NOT NULL,
    c_visualattributes character(3) NOT NULL,
    c_totalnum int,
    c_basecode character varying(50),
    c_metadataxml character varying(1000),
    c_facttablecolumn character varying(50) NOT NULL,
    c_tablename character varying(150) NOT NULL,
    c_columnname character varying(50) NOT NULL,
    c_columndatatype character varying(50) NOT NULL,
    c_operator character varying(10) NOT NULL,
    c_dimcode character varying(700) NOT NULL,
    c_comment character varying(1000),
    c_tooltip character varying(900),
    m_applied_path character varying(700) NOT NULL,
    update_date date NOT NULL,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    valuetype_cd character varying(50),
    m_exclusion_cd character varying(25),
    c_path character varying(700),
    c_symbol character varying(50)
);

ALTER TABLE i2b2metadata.i2b2 OWNER TO i2b2metadata;


CREATE TABLE i2b2_secure (
    c_hlevel int,
    c_fullname character varying(700),
    c_name character varying(2000),
    c_synonym_cd character(1),
    c_visualattributes character(3),
    c_totalnum int,
    c_basecode character varying(50),
    c_metadataxml character varying(1000),
    c_facttablecolumn character varying(50),
    c_tablename character varying(150),
    c_columnname character varying(50),
    c_columndatatype character varying(50),
    c_operator character varying(10),
    c_dimcode character varying(700),
    c_comment character varying(1000),
    c_tooltip character varying(900),
    m_applied_path character varying(700),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    valuetype_cd character varying(50),
    m_exclusion_cd character varying(25),
    c_path character varying(700),
    c_symbol character varying(50),
    i2b2_id numeric(18,0),
    secure_obj_token character varying(50)
);

ALTER TABLE i2b2metadata.i2b2_secure OWNER TO i2b2metadata;


CREATE TABLE i2b2_tags (
    tag_id integer NOT NULL,
    path character varying(400),
    tag character varying(400),
    tag_type character varying(400),
    tags_idx integer NOT NULL
);

ALTER TABLE i2b2metadata.i2b2_tags OWNER TO i2b2metadata;


CREATE SEQUENCE ont_sq_ps_prid;


ALTER TABLE i2b2metadata.ont_sq_ps_prid OWNER TO i2b2metadata;


CREATE TABLE ont_process_status (
    process_id byteint NOT NULL,
    process_type_cd character varying(50),
    start_date date,
    end_date date,
    process_step_cd character varying(50),
    process_status_cd character varying(50),
    crc_upload_id numeric(38,0),
    status_cd character varying(50),
    message character varying(2000),
    entry_date date,
    change_date date,
    changedby_char character(50)
);

ALTER TABLE i2b2metadata.ont_process_status OWNER TO i2b2metadata;


CREATE TABLE schemes (
    c_key character varying(50) NOT NULL,
    c_name character varying(50) NOT NULL,
    c_description character varying(100)
);

ALTER TABLE i2b2metadata.schemes OWNER TO i2b2metadata;


CREATE TABLE table_access (
    c_table_cd character varying(50) NOT NULL,
    c_table_name character varying(50) NOT NULL,
    c_protected_access character(1),
    c_hlevel int NOT NULL,
    c_fullname character varying(700) NOT NULL,
    c_name character varying(2000) NOT NULL,
    c_synonym_cd character(1) NOT NULL,
    c_visualattributes character(3) NOT NULL,
    c_totalnum int,
    c_basecode character varying(50),
    c_metadataxml character varying(1000),
    c_facttablecolumn character varying(50) NOT NULL,
    c_dimtablename character varying(50) NOT NULL,
    c_columnname character varying(50) NOT NULL,
    c_columndatatype character varying(50) NOT NULL,
    c_operator character varying(10) NOT NULL,
    c_dimcode character varying(700) NOT NULL,
    c_comment character varying(1000),
    c_tooltip character varying(900),
    c_entry_date date,
    c_change_date date,
    c_status_cd character(1),
    valuetype_cd character varying(50)
);

ALTER TABLE i2b2metadata.table_access OWNER TO i2b2metadata;


ALTER TABLE ont_process_status
    ADD CONSTRAINT ont_process_status_pkey PRIMARY KEY (process_id);


ALTER TABLE schemes
    ADD CONSTRAINT schemes_pk PRIMARY KEY (c_key);


ALTER TABLE table_access
    ADD CONSTRAINT table_access_pk PRIMARY KEY (c_table_cd);