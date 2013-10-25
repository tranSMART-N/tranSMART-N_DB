
CREATE SCHEMA i2b2demodata authorization TO i2b2demodata;


DROP TABLE ARCHIVE_OBSERVATION_FACT;

CREATE TABLE archive_observation_fact (
    encounter_num bigint,
    patient_num int,
    concept_cd character varying(50),
    provider_id character varying(50),
    start_date date,
    modifier_cd character varying(100),
    instance_num int,
    valtype_cd character varying(50),
    tval_char character varying(255),
    nval_num numeric(18,5),
    valueflag_cd character varying(50),
    quantity_num numeric(18,5),
    units_cd character varying(50),
    end_date date,
    location_cd character varying(50),
    observation_blob character varying(500),
    confidence_num numeric(18,5),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int,
    archive_upload_id int
);

ALTER TABLE i2b2demodata.archive_observation_fact OWNER TO i2b2demodata;


DROP TABLE async_job;

CREATE TABLE async_job (
    id integer,
    job_name character varying(200),
    job_status character varying(200),
    run_time character varying(200),
    last_run_on date,
    viewer_url character varying(4000),
    alt_viewer_url character varying(600),
    job_results character varying(500)
    job_type character varying(20)
);

ALTER TABLE i2b2demodata.async_job OWNER TO i2b2demodata;


drop table code_lookup;

CREATE TABLE code_lookup (
    table_cd character varying(100) NOT NULL,
    column_cd character varying(100) NOT NULL,
    code_cd character varying(50) NOT NULL,
    name_char character varying(650),
    lookup_blob character varying(500),
    upload_date date,
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.code_lookup OWNER TO i2b2demodata;


drop table concept_counts;

CREATE TABLE concept_counts (
    concept_path character varying(500),
    parent_concept_path character varying(500),
    patient_count int
);

ALTER TABLE i2b2demodata.concept_counts OWNER TO i2b2demodata;


drop table concept_dimension;

CREATE TABLE concept_dimension (
    concept_path character varying(700) NOT NULL,
    concept_cd character varying(50) NOT NULL,
    name_char character varying(2000),
    concept_blob character varying(500),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.concept_dimension OWNER TO i2b2demodata;


drop sequence concept_id;

CREATE SEQUENCE concept_id;

ALTER TABLE i2b2demodata.concept_id OWNER TO i2b2demodata;


drop table datamart_report;

CREATE TABLE datamart_report (
    total_patient int,
    total_observationfact int,
    total_event int,
    report_date date
);

ALTER TABLE i2b2demodata.datamart_report OWNER TO i2b2demodata;


drop table encounter_mapping;

CREATE TABLE encounter_mapping (
    encounter_ide character varying(200) NOT NULL,
    encounter_ide_source character varying(50) NOT NULL,
    encounter_num bigint NOT NULL,
    patient_ide character varying(200),
    patient_ide_source character varying(50),
    encounter_ide_status character varying(50),
    upload_date date,
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.encounter_mapping OWNER TO i2b2demodata;


drop table modifier_dimension;

CREATE TABLE modifier_dimension (
    modifier_path character varying(700) NOT NULL,
    modifier_cd character varying(50),
    name_char character varying(2000),
    modifier_blob character varying(500),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.modifier_dimension OWNER TO i2b2demodata;


drop table  news_updates;

CREATE TABLE news_updates (
    newsid integer,
    ranbyuser character varying(200),
    rowsaffected integer,
    operation character varying(200),
    datasetname character varying(200),
    updatedate date,
    commentfield character varying(200)
);

ALTER TABLE i2b2demodata.news_updates OWNER TO i2b2demodata;


drop table  observation_fact;

CREATE TABLE observation_fact (
    encounter_num bigint,
    patient_num int NOT NULL,
    concept_cd character varying(50) NOT NULL,
    provider_id character varying(50) NOT NULL,
    start_date date,
    modifier_cd character varying(100) NOT NULL,
    instance_num int NOT NULL,
    valtype_cd character varying(50),
    tval_char character varying(255),
    nval_num numeric(18,5),
    valueflag_cd character varying(50),
    quantity_num numeric(18,5),
    units_cd character varying(50),
    end_date date,
    location_cd character varying(50),
    observation_blob character varying(500),
    confidence_num numeric(18,5),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.observation_fact OWNER TO i2b2demodata;


drop table patient_dimension;

CREATE TABLE patient_dimension (
    patient_num int NOT NULL,
    vital_status_cd character varying(50),
    birth_date date,
    death_date date,
    sex_cd character varying(50),
    age_in_years_num int,
    language_cd character varying(50),
    race_cd character varying(50),
    marital_status_cd character varying(50),
    religion_cd character varying(50),
    zip_cd character varying(10),
    statecityzip_path character varying(700),
    income_cd character varying(50),
    patient_blob character varying(500),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.patient_dimension OWNER TO i2b2demodata;


drop table patient_mapping;

CREATE TABLE patient_mapping (
    patient_ide character varying(200) NOT NULL,
    patient_ide_source character varying(50) NOT NULL,
    patient_num int NOT NULL,
    patient_ide_status character varying(50),
    upload_date date,
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.patient_mapping OWNER TO i2b2demodata;


drop table patient_trial;

CREATE TABLE patient_trial (
    patient_num int,
    trial character varying(30),
    secure_obj_token character varying(50)
);

ALTER TABLE i2b2demodata.patient_trial OWNER TO i2b2demodata;


drop table provider_dimension;

CREATE TABLE provider_dimension (
    provider_id character varying(50) NOT NULL,
    provider_path character varying(700) NOT NULL,
    name_char character varying(850),
    provider_blob character varying(500),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.provider_dimension OWNER TO i2b2demodata;


drop table  qt_analysis_plugin;

CREATE TABLE qt_analysis_plugin (
    plugin_id int NOT NULL,
    plugin_name character varying(2000),
    description character varying(2000),
    version_cd character varying(50),
    parameter_info character varying(500),
    parameter_info_xsd character varying(2000),
    command_line character varying(2000),
    working_folder character varying(2000),
    commandoption_cd character varying(2000),
    plugin_icon character varying(2000),
    status_cd character varying(50),
    user_id character varying(50),
    group_id character varying(50),
    create_date date,
    update_date date
);

ALTER TABLE i2b2demodata.qt_analysis_plugin OWNER TO i2b2demodata;


drop table  qt_analysis_plugin_result_type;

CREATE TABLE qt_analysis_plugin_result_type (
    plugin_id int NOT NULL,
    result_type_id int NOT NULL
);

ALTER TABLE i2b2demodata.qt_analysis_plugin_result_type OWNER TO i2b2demodata;


drop table  qt_breakdown_path;

CREATE TABLE qt_breakdown_path (
    name character varying(100),
    value character varying(2000),
    create_date date,
    update_date date,
    user_id character varying(50)
);

ALTER TABLE i2b2demodata.qt_breakdown_path OWNER TO i2b2demodata;


drop sequence qt_sq_qper_pecid;

CREATE SEQUENCE qt_sq_qper_pecid;

ALTER TABLE i2b2demodata.qt_sq_qper_pecid OWNER TO i2b2demodata;


drop table qt_patient_enc_collection;

CREATE TABLE qt_patient_enc_collection (
    patient_enc_coll_id int NOT NULL,
    result_instance_id int,
    set_index int,
    patient_num int,
    encounter_num int
);

ALTER TABLE i2b2demodata.qt_patient_enc_collection OWNER TO i2b2demodata;


dro psequence qt_sq_qpr_pcid;

CREATE SEQUENCE qt_sq_qpr_pcid;

ALTER TABLE i2b2demodata.qt_sq_qpr_pcid OWNER TO i2b2demodata;


drop table qt_patient_set_collection;

CREATE TABLE qt_patient_set_collection (
    patient_set_coll_id int NOT NULL,
    result_instance_id int,
    set_index int,
    patient_num int
);

ALTER TABLE i2b2demodata.qt_patient_set_collection OWNER TO i2b2demodata;


drop sequence qt_sq_pqm_qmid;

CREATE SEQUENCE qt_sq_pqm_qmid;

ALTER TABLE i2b2demodata.qt_sq_pqm_qmid OWNER TO i2b2demodata;


drop table qt_pdo_query_master;

CREATE TABLE qt_pdo_query_master (
    query_master_id int NOT NULL,
    user_id character varying(50) NOT NULL,
    group_id character varying(50) NOT NULL,
    create_date date NOT NULL,
    request_xml character varying(500),
    i2b2_request_xml character varying(500)
);

ALTER TABLE i2b2demodata.qt_pdo_query_master OWNER TO i2b2demodata;


drop table  qt_privilege;

CREATE TABLE qt_privilege (
    protection_label_cd character varying(1500),
    dataprot_cd character varying(1000),
    hivemgmt_cd character varying(1000),
    plugin_id int
);

ALTER TABLE i2b2demodata.qt_privilege OWNER TO i2b2demodata;


drop sequence qt_sq_qi_qiid;

CREATE SEQUENCE qt_sq_qi_qiid;

ALTER TABLE i2b2demodata.qt_sq_qi_qiid OWNER TO i2b2demodata;


drop table qt_query_instance;

CREATE TABLE qt_query_instance (
    query_instance_id int NOT NULL,
    query_master_id int,
    user_id character varying(50) NOT NULL,
    group_id character varying(50) NOT NULL,
    batch_mode character varying(50),
    start_date date NOT NULL,
    end_date date,
    delete_flag character varying(3),
    status_type_id int,
    message character varying(500)
);

ALTER TABLE i2b2demodata.qt_query_instance OWNER TO i2b2demodata;


drop sequence qt_sq_qm_qmid;

CREATE SEQUENCE qt_sq_qm_qmid;

ALTER TABLE i2b2demodata.qt_sq_qm_qmid OWNER TO i2b2demodata;


drop table qt_query_master;

CREATE TABLE qt_query_master (
    query_master_id int  NOT NULL,
    name character varying(250) NOT NULL,
    user_id character varying(50) NOT NULL,
    group_id character varying(50) NOT NULL,
    master_type_cd character varying(2000),
    plugin_id int,
    create_date date NOT NULL,
    delete_date date,
    delete_flag character varying(3),
    generated_sql character varying(500),
    request_xml character varying(500),
    i2b2_request_xml character varying(500)
);

ALTER TABLE i2b2demodata.qt_query_master OWNER TO i2b2demodata;


drop sequence qt_sq_qri_qriid;

CREATE SEQUENCE qt_sq_qri_qriid;

ALTER TABLE i2b2demodata.qt_sq_qri_qriid OWNER TO i2b2demodata;


drop sequence qt_query_result_instance;

CREATE TABLE qt_query_result_instance (
    result_instance_id int  NOT NULL,
    query_instance_id int,
    result_type_id int NOT NULL,
    set_size int,
    start_date date NOT NULL,
    end_date date,
    delete_flag character varying(3),
    status_type_id int NOT NULL,
    message character varying(500),
    description character varying(200),
    real_set_size int,
    obfusc_method character varying(500)
);

ALTER TABLE i2b2demodata.qt_query_result_instance OWNER TO i2b2demodata;


drop sequence qt_sq_qr_qrid;

CREATE SEQUENCE qt_sq_qr_qrid;

ALTER TABLE i2b2demodata.qt_sq_qr_qrid OWNER TO i2b2demodata;


drop table qt_query_result_type;

CREATE TABLE qt_query_result_type (
    result_type_id int  NOT NULL,
    name character varying(100),
    description character varying(200),
    display_type_id character varying(500),
    visual_attribute_type_id character varying(3)
);

ALTER TABLE i2b2demodata.qt_query_result_type OWNER TO i2b2demodata;


drop sequence qt_sq_qs_qsid;

CREATE SEQUENCE qt_sq_qs_qsid;

ALTER TABLE i2b2demodata.qt_sq_qs_qsid OWNER TO i2b2demodata;


drop table qt_query_status_type;

CREATE TABLE qt_query_status_type (
    status_type_id int NOT NULL,
    name character varying(100),
    description character varying(200)
);

ALTER TABLE i2b2demodata.qt_query_status_type OWNER TO i2b2demodata;


drop sequence qt_sq_qxr_xrid;

CREATE SEQUENCE qt_sq_qxr_xrid;

ALTER TABLE i2b2demodata.qt_sq_qxr_xrid OWNER TO i2b2demodata;


drop table qt_xml_result;

CREATE TABLE qt_xml_result (
    xml_result_id int  NOT NULL,
    result_instance_id int,
    xml_value character varying(4000)
);

ALTER TABLE i2b2demodata.qt_xml_result OWNER TO i2b2demodata;


drop table sample_categories;

CREATE TABLE sample_categories (
    trial_name character varying(100),
    tissue_type character varying(2000),
    data_types character varying(2000),
    disease character varying(2000),
    tissue_state character varying(2000),
    sample_id character varying(250),
    biobank character varying(3),
    source_organism character varying(255),
    treatment character varying(255),
    sample_treatment character varying(2000),
    subject_treatment character varying(2000),
    timepoint character varying(250)
);

ALTER TABLE i2b2demodata.sample_categories OWNER TO i2b2demodata;


drop sequence seq_patient_num;

CREATE SEQUENCE seq_patient_num;

ALTER TABLE i2b2demodata.seq_patient_num OWNER TO i2b2demodata;


drop sequence sq_up_patdim_patientnum;

CREATE SEQUENCE sq_up_patdim_patientnum;

ALTER TABLE i2b2demodata.sq_up_patdim_patientnum OWNER TO i2b2demodata;


drop table set_type;

CREATE TABLE set_type (
    id integer  NOT NULL,
    name character varying(500),
    create_date date
);

ALTER TABLE i2b2demodata.set_type OWNER TO i2b2demodata;


drop table set_upload_status;

CREATE TABLE set_upload_status (
    upload_id int NOT NULL,
    set_type_id integer NOT NULL,
    source_cd character varying(50) NOT NULL,
    no_of_record int,
    loaded_record int,
    deleted_record int,
    load_date date NOT NULL,
    end_date date,
    load_status character varying(100),
    message character varying(500),
    input_file_name character varying(500),
    log_file_name character varying(500),
    transform_name character varying(500)
);

ALTER TABLE i2b2demodata.set_upload_status OWNER TO i2b2demodata;


drop table source_master;

CREATE TABLE source_master (
    source_cd character varying(50) NOT NULL,
    description character varying(300),
    create_date date
);

ALTER TABLE i2b2demodata.source_master OWNER TO i2b2demodata;


drop sequence sq_up_encdim_encounternum;

CREATE SEQUENCE sq_up_encdim_encounternum;

ALTER TABLE i2b2demodata.sq_up_encdim_encounternum OWNER TO i2b2demodata;


drop sequence sq_uploadstatus_uploadid;

CREATE SEQUENCE sq_uploadstatus_uploadid;

ALTER TABLE i2b2demodata.sq_uploadstatus_uploadid OWNER TO i2b2demodata;


drop table upload_status;

CREATE TABLE upload_status (
    upload_id int NOT NULL,
    upload_label character varying(500) NOT NULL,
    user_id character varying(100) NOT NULL,
    source_cd character varying(50) NOT NULL,
    no_of_record int,
    loaded_record int,
    deleted_record int,
    load_date date NOT NULL,
    end_date date,
    load_status character varying(100),
    message character varying(500),
    input_file_name character varying(500),
    log_file_name character varying(500),
    transform_name character varying(500)
);

ALTER TABLE i2b2demodata.upload_status OWNER TO i2b2demodata;


drop table visit_dimension;

CREATE TABLE visit_dimension (
    encounter_num bigint NOT NULL,
    patient_num int NOT NULL,
    active_status_cd character varying(50),
    start_date date,
    end_date date,
    inout_cd character varying(50),
    location_cd character varying(50),
    location_path character varying(900),
    length_of_stay int,
    visit_blob character varying(500),
    update_date date,
    download_date date,
    import_date date,
    sourcesystem_cd character varying(50),
    upload_id int
);

ALTER TABLE i2b2demodata.visit_dimension OWNER TO i2b2demodata;


ALTER TABLE qt_analysis_plugin
    ADD CONSTRAINT analysis_plugin_pk PRIMARY KEY (plugin_id);


ALTER TABLE qt_analysis_plugin_result_type
    ADD CONSTRAINT analysis_plugin_result_pk PRIMARY KEY (plugin_id, result_type_id);


ALTER TABLE code_lookup
    ADD CONSTRAINT code_lookup_pk PRIMARY KEY (table_cd, column_cd, code_cd);


ALTER TABLE concept_dimension
    ADD CONSTRAINT concept_dimension_pk PRIMARY KEY (concept_path);


ALTER TABLE encounter_mapping
    ADD CONSTRAINT encounter_mapping_pk PRIMARY KEY (encounter_ide, encounter_ide_source);


ALTER TABLE modifier_dimension
    ADD CONSTRAINT modifier_dimension_pk PRIMARY KEY (modifier_path);


ALTER TABLE observation_fact
    ADD CONSTRAINT observation_fact_pkey PRIMARY KEY (patient_num, concept_cd, provider_id, modifier_cd);


ALTER TABLE patient_dimension
    ADD CONSTRAINT patient_dimension_pk PRIMARY KEY (patient_num);


ALTER TABLE patient_mapping
    ADD CONSTRAINT patient_mapping_pk PRIMARY KEY (patient_ide, patient_ide_source);


ALTER TABLE source_master
    ADD CONSTRAINT pk_sourcemaster_sourcecd PRIMARY KEY (source_cd);


ALTER TABLE set_type
    ADD CONSTRAINT pk_st_id PRIMARY KEY (id);

ALTER TABLE set_upload_status
    ADD CONSTRAINT pk_up_upstatus_idsettypeid PRIMARY KEY (upload_id, set_type_id);


ALTER TABLE upload_status
    ADD CONSTRAINT pk_up_upstatus_uploadid PRIMARY KEY (upload_id);


ALTER TABLE provider_dimension
    ADD CONSTRAINT provider_dimension_pk PRIMARY KEY (provider_path, provider_id);


ALTER TABLE qt_patient_enc_collection
    ADD CONSTRAINT qt_patient_enc_collection_pkey PRIMARY KEY (patient_enc_coll_id);


ALTER TABLE qt_patient_set_collection
    ADD CONSTRAINT qt_patient_set_collection_pkey PRIMARY KEY (patient_set_coll_id);


ALTER TABLE qt_pdo_query_master
    ADD CONSTRAINT qt_pdo_query_master_pkey PRIMARY KEY (query_master_id);


ALTER TABLE qt_query_instance
    ADD CONSTRAINT qt_query_instance_pkey PRIMARY KEY (query_instance_id);


ALTER TABLE qt_query_master
    ADD CONSTRAINT qt_query_master_pkey PRIMARY KEY (query_master_id);


ALTER TABLE qt_query_result_instance
    ADD CONSTRAINT qt_query_result_instance_pkey PRIMARY KEY (result_instance_id);


ALTER TABLE qt_query_result_type
    ADD CONSTRAINT qt_query_result_type_pkey PRIMARY KEY (result_type_id);


ALTER TABLE qt_query_status_type
    ADD CONSTRAINT qt_query_status_type_pkey PRIMARY KEY (status_type_id);


ALTER TABLE qt_xml_result
    ADD CONSTRAINT qt_xml_result_pkey PRIMARY KEY (xml_result_id);


ALTER TABLE visit_dimension
    ADD CONSTRAINT visit_dimension_pk PRIMARY KEY (encounter_num, patient_num);


ALTER TABLE set_upload_status
    ADD CONSTRAINT fk_up_set_type_id FOREIGN KEY (set_type_id) REFERENCES set_type(id);


ALTER TABLE qt_patient_enc_collection
    ADD CONSTRAINT qt_fk_pesc_ri FOREIGN KEY (result_instance_id) REFERENCES qt_query_result_instance(result_instance_id);


ALTER TABLE qt_patient_set_collection
    ADD CONSTRAINT qt_fk_psc_ri FOREIGN KEY (result_instance_id) REFERENCES qt_query_result_instance(result_instance_id);


ALTER TABLE qt_query_instance
    ADD CONSTRAINT qt_fk_qi_mid FOREIGN KEY (query_master_id) REFERENCES qt_query_master(query_master_id);


ALTER TABLE qt_query_instance
    ADD CONSTRAINT qt_fk_qi_stid FOREIGN KEY (status_type_id) REFERENCES qt_query_status_type(status_type_id);


ALTER TABLE qt_query_result_instance
    ADD CONSTRAINT qt_fk_qri_rid FOREIGN KEY (query_instance_id) REFERENCES qt_query_instance(query_instance_id);


ALTER TABLE qt_query_result_instance
    ADD CONSTRAINT qt_fk_qri_rtid FOREIGN KEY (result_type_id) REFERENCES qt_query_result_type(result_type_id);


ALTER TABLE qt_query_result_instance
    ADD CONSTRAINT qt_fk_qri_stid FOREIGN KEY (status_type_id) REFERENCES qt_query_status_type(status_type_id);


ALTER TABLE qt_xml_result
    ADD CONSTRAINT qt_fk_xmlr_riid FOREIGN KEY (result_instance_id) REFERENCES qt_query_result_instance(result_instance_id);
