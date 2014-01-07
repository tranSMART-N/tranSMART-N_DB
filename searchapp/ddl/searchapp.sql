
drop sequence hibernate_sequence;

CREATE SEQUENCE hibernate_sequence;

ALTER SEQUENCE searchapp.hibernate_sequence OWNER TO searchapp;


drop table  plugin;

CREATE TABLE plugin (
    plugin_seq bigint NOT NULL,
    name character varying(200) NOT NULL,
    plugin_name character varying(90) NOT NULL,
    has_modules character(1) DEFAULT 'N',
    has_form character(1) DEFAULT 'N',
    default_link character varying(70) NOT NULL,
    form_link character varying(70),
    form_page character varying(100),
    active character(1)
);

ALTER TABLE searchapp.plugin OWNER TO searchapp;


drop table plugin_module;

CREATE TABLE plugin_module (
    module_seq bigint NOT NULL,
    plugin_seq bigint NOT NULL,
    name character varying(70) NOT NULL,
    params varchar(16000),
    version character varying(10) DEFAULT 0.1,
    active character(1) DEFAULT 'Y',
    has_form character(1) DEFAULT 'N',
    form_link character varying(90),
    form_page character varying(90),
    module_name character varying(50) NOT NULL,
    category character varying(50)
);

ALTER TABLE searchapp.plugin_module OWNER TO searchapp;


drop sequence  plugin_module_seq ;

CREATE SEQUENCE plugin_module_seq;

ALTER SEQUENCE searchapp.plugin_module_seq OWNER TO searchapp;


drop sequence  plugin_seq;

CREATE SEQUENCE plugin_seq;

ALTER TABLE searchapp.plugin_seq OWNER TO searchapp;


drop table search_app_access_log;

--	changed access_time to timestamp 20121127 jea

CREATE TABLE search_app_access_log (
    id bigint,
    access_time timestamp,
    event character varying(255),
    request_url character varying(255),
    user_name character varying(255),
    event_message varchar(2000)
);

ALTER TABLE searchapp.search_app_access_log OWNER TO searchapp;


drop table search_auth_group;

CREATE TABLE search_auth_group (
    id bigint NOT NULL,
    group_category character varying(255)
);

ALTER TABLE searchapp.search_auth_group OWNER TO searchapp;


drop table search_auth_group_member;

CREATE TABLE search_auth_group_member (
    auth_user_id bigint,
    auth_group_id bigint
);

ALTER TABLE searchapp.search_auth_group_member OWNER TO searchapp;


drop table  search_auth_principal;

CREATE TABLE search_auth_principal (
    id bigint NOT NULL,
    principal_type character varying(255),
    date_created date, -- without time zone NOT NULL,
    description character varying(255),
    last_updated date, -- without time zone NOT NULL,
    name character varying(255),
    unique_id character varying(255),
    enabled boolean
);

ALTER TABLE searchapp.search_auth_principal OWNER TO searchapp;


drop table  search_auth_sec_object_access;

CREATE TABLE search_auth_sec_object_access (
    auth_sec_obj_access_id bigint NOT NULL,
    auth_principal_id bigint,
    secure_object_id bigint,
    secure_access_level_id bigint
);

ALTER TABLE searchapp.search_auth_sec_object_access OWNER TO searchapp;


drop table search_auth_user;

CREATE TABLE search_auth_user (
    id bigint NOT NULL,
    email character varying(255),
    email_show boolean,
    passwd character varying(255),
    user_real_name character varying(255),
    username character varying(255)
);

ALTER TABLE searchapp.search_auth_user OWNER TO searchapp;


drop table  search_auth_user_sec_access;

CREATE TABLE search_auth_user_sec_access (
    search_auth_user_sec_access_id bigint NOT NULL,
    search_auth_user_id bigint,
    search_secure_object_id bigint,
    search_sec_access_level_id bigint
);

ALTER TABLE searchapp.search_auth_user_sec_access OWNER TO searchapp;


drop view search_auth_user_sec_access_v;

CREATE VIEW search_auth_user_sec_access_v AS
    (SELECT sasoa.auth_sec_obj_access_id AS search_auth_user_sec_access_id,
            sasoa.auth_principal_id AS search_auth_user_id,
            sasoa.secure_object_id AS search_secure_object_id,
            sasoa.secure_access_level_id AS search_sec_access_level_id
     FROM search_auth_user sau, search_auth_sec_object_access sasoa
     WHERE (sau.id = sasoa.auth_principal_id)
     UNION
     SELECT sasoa.auth_sec_obj_access_id AS search_auth_user_sec_access_id,
            sagm.auth_user_id AS search_auth_user_id,
            sasoa.secure_object_id AS search_secure_object_id,
            sasoa.secure_access_level_id AS search_sec_access_level_id
     FROM search_auth_group sag, search_auth_group_member sagm, search_auth_sec_object_access sasoa
     WHERE ((sag.id = sagm.auth_group_id) AND (sag.id = sasoa.auth_principal_id)))
    UNION
    SELECT sasoa.auth_sec_obj_access_id AS search_auth_user_sec_access_id,
           NULL::bigint AS search_auth_user_id,
           sasoa.secure_object_id AS search_secure_object_id,
           sasoa.secure_access_level_id AS search_sec_access_level_id
    FROM search_auth_group sag, search_auth_sec_object_access sasoa
    WHERE (((sag.group_category)::text = 'EVERYONE_GROUP'::text) AND (sag.id = sasoa.auth_principal_id));

ALTER TABLE searchapp.search_auth_user_sec_access_v OWNER TO searchapp;


drop table  search_bio_mkr_correl_fast_mv;

CREATE TABLE search_bio_mkr_correl_fast_mv (
    domain_object_id bigint,
    asso_bio_marker_id bigint,
    correl_type character varying(19),
    value_metric bigint,
    mv_id bigint
);

ALTER TABLE searchapp.search_bio_mkr_correl_fast_mv OWNER TO searchapp;


drop table search_gene_signature;

CREATE TABLE search_gene_signature (
    search_gene_signature_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(1000),
    unique_id character varying(50),
    create_date date, -- without time zone NOT NULL,
    created_by_auth_user_id bigint NOT NULL,
    last_modified_date date, -- without time zone,
    modified_by_auth_user_id bigint,
    version_number character varying(50),
    public_flag boolean DEFAULT false,
    deleted_flag boolean DEFAULT false,
    parent_gene_signature_id bigint,
    source_concept_id bigint,
    source_other character varying(255),
    owner_concept_id bigint,
    stimulus_description character varying(1000),
    stimulus_dosing character varying(255),
    treatment_description character varying(1000),
    treatment_dosing character varying(255),
    treatment_bio_compound_id bigint,
    treatment_protocol_number character varying(50),
    pmid_list character varying(255),
    species_concept_id bigint NOT NULL,
    species_mouse_src_concept_id bigint,
    species_mouse_detail character varying(255),
    tissue_type_concept_id bigint,
    experiment_type_concept_id bigint,
    experiment_type_in_vivo_descr character varying(255),
    experiment_type_atcc_ref character varying(255),
    analytic_cat_concept_id bigint,
    analytic_cat_other character varying(255),
    bio_assay_platform_id bigint NOT NULL,
    analyst_name character varying(100),
    norm_method_concept_id bigint,
    norm_method_other character varying(255),
    analysis_method_concept_id bigint,
    analysis_method_other character varying(255),
    multiple_testing_correction boolean,
    p_value_cutoff_concept_id bigint NOT NULL,
    upload_file character varying(255) NOT NULL,
    search_gene_sig_file_schema_id bigint DEFAULT 1,
    fold_chg_metric_concept_id bigint,
    experiment_type_cell_line_id bigint,
	QC_PERFORMED NUMERIC(1,0),
    QC_DATE DATE,
	QC_INFO CHARACTER VARYING(255),
	DATA_SOURCE CHARACTER VARYING(255),
	CUSTOM_VALUE1 CHARACTER VARYING(255),
	CUSTOM_NAME1 CHARACTER VARYING(255),
	CUSTOM_VALUE2 CHARACTER VARYING(255),
	CUSTOM_NAME2 CHARACTER VARYING(255),
	CUSTOM_VALUE3 CHARACTER VARYING(255),
	CUSTOM_NAME3 CHARACTER VARYING(255),
	CUSTOM_VALUE4 CHARACTER VARYING(255),
	CUSTOM_NAME4 CHARACTER VARYING(255),
	CUSTOM_VALUE5 CHARACTER VARYING(255),
	CUSTOM_NAME5 CHARACTER VARYING(255),
	VERSION CHARACTER VARYING(255)

);

ALTER TABLE searchapp.search_gene_signature OWNER TO searchapp;


drop table search_gene_signature_item;

CREATE TABLE search_gene_signature_item (
    search_gene_signature_id bigint NOT NULL,
    bio_marker_id bigint,
    fold_chg_metric bigint,
    bio_data_unique_id character varying(200),
    id bigint NOT NULL,
    bio_assay_feature_group_id bigint
);

ALTER TABLE searchapp.search_gene_signature_item OWNER TO searchapp;


drop view  search_bio_mkr_correl_fast_view;

CREATE VIEW search_bio_mkr_correl_fast_view AS
    SELECT i.search_gene_signature_id AS domain_object_id,
      i.bio_marker_id AS asso_bio_marker_id,
      'GENE_SIGNATURE_ITEM' AS correl_type,
      CASE WHEN (i.fold_chg_metric IS NULL) THEN (1)::bigint ELSE i.fold_chg_metric END AS value_metric,
      3 AS mv_id
    FROM search_gene_signature_item i, search_gene_signature gs
    WHERE ((i.search_gene_signature_id = gs.search_gene_signature_id) AND (gs.deleted_flag = false));

ALTER TABLE searchapp.search_bio_mkr_correl_fast_view OWNER TO searchapp;


drop table search_custom_filter;

CREATE TABLE search_custom_filter (
    search_custom_filter_id bigint NOT NULL,
    search_user_id bigint NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(2000),
    private character(1) DEFAULT 'N'
);

ALTER TABLE searchapp.search_custom_filter OWNER TO searchapp;


drop table search_custom_filter_item;

CREATE TABLE search_custom_filter_item (
    search_custom_filter_item_id bigint NOT NULL,
    search_custom_filter_id bigint NOT NULL,
    unique_id character varying(200) NOT NULL,
    bio_data_type character varying(100) NOT NULL
);

ALTER TABLE searchapp.search_custom_filter_item OWNER TO searchapp;


drop table search_gene_sig_file_schema;

CREATE TABLE search_gene_sig_file_schema (
    search_gene_sig_file_schema_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(255),
    number_columns bigint DEFAULT 2,
    supported boolean DEFAULT false
);

ALTER TABLE searchapp.search_gene_sig_file_schema OWNER TO searchapp;


drop table  search_keyword;

CREATE TABLE search_keyword (
    keyword character varying(200),
    bio_data_id bigint,
    unique_id character varying(500) NOT NULL,
    search_keyword_id bigint NOT NULL,
    data_category character varying(200) NOT NULL,
    source_code character varying(100),
    display_data_category character varying(200),
    owner_auth_user_id bigint
)
DISTRIBUTE ON (search_keyword_id);

ALTER TABLE searchapp.search_keyword OWNER TO searchapp;


drop table search_keyword_term;

CREATE TABLE search_keyword_term (
    keyword_term character varying(200),
    search_keyword_id bigint,
    rank bigint,
    search_keyword_term_id bigint NOT NULL,
    term_length bigint,
    owner_auth_user_id bigint
)
DISTRIBUTE ON (search_keyword_term_id);

ALTER TABLE searchapp.search_keyword_term OWNER TO searchapp;


drop table search_request_map;

CREATE TABLE search_request_map (
    id bigint,
    version bigint,
    config_attribute character varying(255),
    url character varying(255)
);

ALTER TABLE searchapp.search_request_map OWNER TO searchapp;


drop table search_role;

CREATE TABLE search_role (
    id bigint NOT NULL,
    version bigint,
    authority character varying(255),
    description character varying(255)
);

ALTER TABLE searchapp.search_role OWNER TO searchapp;


drop table search_role_auth_user;

CREATE TABLE search_role_auth_user (
    people_id bigint,
    authorities_id bigint
);

ALTER TABLE searchapp.search_role_auth_user OWNER TO searchapp;


drop table search_sec_access_level;

CREATE TABLE search_sec_access_level (
    search_sec_access_level_id bigint NOT NULL,
    access_level_name character varying(200),
    access_level_value bigint
);

ALTER TABLE searchapp.search_sec_access_level OWNER TO searchapp;


drop table search_secure_object;

CREATE TABLE search_secure_object (
    search_secure_object_id bigint NOT NULL,
    bio_data_id bigint,
    display_name character varying(100),
    data_type character varying(200),
    bio_data_unique_id character varying(200)
);

ALTER TABLE searchapp.search_secure_object OWNER TO searchapp;


drop table search_secure_object_path;

CREATE TABLE search_secure_object_path (
    search_secure_object_id bigint,
    i2b2_concept_path character varying(2000),
    search_secure_obj_path_id bigint NOT NULL
);

ALTER TABLE searchapp.search_secure_object_path OWNER TO searchapp;


drop table search_user_settings;

CREATE TABLE search_user_settings (
    id bigint NOT NULL,
    setting_name character varying(255) NOT NULL,
    user_id bigint NOT NULL,
    setting_value character varying(255) NOT NULL
);

ALTER TABLE searchapp.search_user_settings OWNER TO biomart_user;

  CREATE TABLE SEARCHAPP.SUBSET 
   (SUBSET_ID BIGINT NOT NULL, 
	DESCRIPTION character varying(1000) NOT NULL , 
	CREATE_DATE TIMESTAMP NOT NULL , 
	CREATING_USER character varying(200) NOT NULL , 
	PUBLIC_FLAG boolean DEFAULT false NOT NULL , 
	DELETED_FLAG boolean DEFAULT false NOT NULL , 
	QUERY_MASTER_ID_1 bigint NOT NULL , 
	QUERY_MASTER_ID_2 bigint, 
	STUDY character varying(200) 
   ) ;
  



drop sequence  seq_search_data_id;

CREATE SEQUENCE seq_search_data_id;

--	added 20131127 jea

CREATE TABLE SEARCHAPP.REPORT
(
	REPORT_ID BIGINT,
	NAME CHARACTER VARYING(200),
	DESCRIPTION CHARACTER VARYING(1000),
	CREATINGUSER CHARACTER VARYING(200),
	PUBLIC_FLAG CHARACTER(1),
	CREATE_DATE TIMESTAMP,
	STUDY CHARACTER VARYING(200)
)
DISTRIBUTE ON (REPORT_ID);


CREATE TABLE SEARCHAPP.REPORT_ITEM
(
	REPORT_ITEM_ID NUMERIC(18,0),
	REPORT_ID NUMERIC(18,0),
	CODE CHARACTER VARYING(200)
)
DISTRIBUTE ON (REPORT_ITEM_ID);

CREATE TABLE SEARCHAPP.SEARCH_TAXONOMY
(
	TERM_ID NUMERIC(22,0),
	TERM_NAME CHARACTER VARYING(900),
	SOURCE_CD CHARACTER VARYING(900),
	IMPORT_DATE DATE DEFAULT NOW(),
	SEARCH_KEYWORD_ID NUMERIC(38,0)
)
DISTRIBUTE ON (TERM_ID);


CREATE TABLE SEARCHAPP.SEARCH_TAXONOMY_RELS
(
	SEARCH_TAXONOMY_RELS_ID NUMERIC(22,0),
	CHILD_ID NUMERIC(22,0),
	PARENT_ID NUMERIC(22,0)
)
DISTRIBUTE ON (SEARCH_TAXONOMY_RELS_ID);


CREATE TABLE SEARCHAPP.SEARCH_USER_FEEDBACK
(
	SEARCH_USER_FEEDBACK_ID NUMERIC(18,0),
	SEARCH_USER_ID NUMERIC(18,0),
	CREATE_DATE DATE,
	FEEDBACK_TEXT CHARACTER VARYING(2000),
	APP_VERSION CHARACTER VARYING(100)
)
DISTRIBUTE ON (SEARCH_USER_FEEDBACK_ID);



ALTER TABLE  search_auth_group
    ADD CONSTRAINT pk_auth_usr_group PRIMARY KEY (id);


ALTER TABLE  search_auth_principal
    ADD CONSTRAINT pk_search_principal PRIMARY KEY (id);


ALTER TABLE  plugin_module
    ADD CONSTRAINT plugin_module_pk PRIMARY KEY (module_seq);


ALTER TABLE  plugin
    ADD CONSTRAINT plugin_pk PRIMARY KEY (plugin_seq);


ALTER TABLE  search_auth_sec_object_access
    ADD CONSTRAINT sch_sec_a_a_s_a_pk PRIMARY KEY (auth_sec_obj_access_id);


ALTER TABLE  search_custom_filter_item
    ADD CONSTRAINT search_cust_fil_item_pk PRIMARY KEY (search_custom_filter_item_id);


ALTER TABLE  search_custom_filter
    ADD CONSTRAINT search_custom_filter_pk PRIMARY KEY (search_custom_filter_id);


ALTER TABLE  search_gene_signature
    ADD CONSTRAINT search_gene_sig_descr_pk PRIMARY KEY (search_gene_signature_id);


ALTER TABLE  search_gene_sig_file_schema
    ADD CONSTRAINT search_gene_sig_file_sche_pk PRIMARY KEY (search_gene_sig_file_schema_id);


ALTER TABLE  search_gene_signature_item
    ADD CONSTRAINT search_gene_signature_ite_pk PRIMARY KEY (id);


ALTER TABLE  search_keyword
    ADD CONSTRAINT search_keyword_uk UNIQUE (unique_id, data_category);


ALTER TABLE  search_keyword
    ADD CONSTRAINT search_kw_pk PRIMARY KEY (search_keyword_id);


ALTER TABLE  search_keyword_term
    ADD CONSTRAINT search_kw_term_pk PRIMARY KEY (search_keyword_term_id);


ALTER TABLE  search_auth_user_sec_access
    ADD CONSTRAINT search_sec_a_u_s_a_pk PRIMARY KEY (search_auth_user_sec_access_id);


ALTER TABLE  search_sec_access_level
    ADD CONSTRAINT search_sec_ac_level_pk PRIMARY KEY (search_sec_access_level_id);


ALTER TABLE  search_secure_object_path
    ADD CONSTRAINT search_sec_obj__path_pk PRIMARY KEY (search_secure_obj_path_id);


ALTER TABLE  search_secure_object
    ADD CONSTRAINT search_sec_obj_pk PRIMARY KEY (search_secure_object_id);


ALTER TABLE  search_user_settings
    ADD CONSTRAINT search_user_settings_pkey PRIMARY KEY (id);


ALTER TABLE  search_auth_user
    ADD CONSTRAINT sys_c0011119 PRIMARY KEY (id);


ALTER TABLE  search_role
    ADD CONSTRAINT sys_c0011120 PRIMARY KEY (id);


ALTER TABLE  search_role_auth_user
    ADD CONSTRAINT fkfb14ef79287e0cac FOREIGN KEY (authorities_id) REFERENCES search_auth_user(id);


ALTER TABLE  search_role_auth_user
    ADD CONSTRAINT fkfb14ef798f01f561 FOREIGN KEY (people_id) REFERENCES search_role(id);


ALTER TABLE  search_gene_signature
    ADD CONSTRAINT gene_sig_create_auth_user_fk1 FOREIGN KEY (created_by_auth_user_id) REFERENCES search_auth_user(id);


ALTER TABLE  search_gene_signature
    ADD CONSTRAINT gene_sig_file_schema_fk1 FOREIGN KEY (search_gene_sig_file_schema_id) REFERENCES search_gene_sig_file_schema(search_gene_sig_file_schema_id);


ALTER TABLE  search_gene_signature
    ADD CONSTRAINT gene_sig_mod_auth_user_fk1 FOREIGN KEY (modified_by_auth_user_id) REFERENCES search_auth_user(id);


ALTER TABLE  search_gene_signature
    ADD CONSTRAINT gene_sig_parent_fk1 FOREIGN KEY (parent_gene_signature_id) REFERENCES search_gene_signature(search_gene_signature_id);


ALTER TABLE  plugin_module
    ADD CONSTRAINT plugin_module_plugin_fk1 FOREIGN KEY (plugin_seq) REFERENCES plugin(plugin_seq);


ALTER TABLE  search_auth_sec_object_access
    ADD CONSTRAINT sch_sec_a_u_fk FOREIGN KEY (auth_principal_id) REFERENCES search_auth_principal(id);


ALTER TABLE  search_auth_sec_object_access
    ADD CONSTRAINT sch_sec_s_a_l_fk FOREIGN KEY (secure_access_level_id) REFERENCES search_sec_access_level(search_sec_access_level_id);


ALTER TABLE  search_auth_sec_object_access
    ADD CONSTRAINT sch_sec_s_o_fk FOREIGN KEY (secure_object_id) REFERENCES search_secure_object(search_secure_object_id);


ALTER TABLE  search_auth_group_member
    ADD CONSTRAINT sch_user_gp_m_grp_fk FOREIGN KEY (auth_group_id) REFERENCES search_auth_group(id);


ALTER TABLE  search_auth_group_member
    ADD CONSTRAINT sch_user_gp_m_usr_fk FOREIGN KEY (auth_user_id) REFERENCES search_auth_principal(id);


ALTER TABLE  search_keyword_term
    ADD CONSTRAINT search_kw_fk FOREIGN KEY (search_keyword_id) REFERENCES search_keyword(search_keyword_id);


ALTER TABLE  search_auth_user_sec_access
    ADD CONSTRAINT search_sec_a_u_fk FOREIGN KEY (search_auth_user_id) REFERENCES search_auth_user(id);


ALTER TABLE  search_auth_user_sec_access
    ADD CONSTRAINT search_sec_s_a_l_fk FOREIGN KEY (search_sec_access_level_id) REFERENCES search_sec_access_level(search_sec_access_level_id);


ALTER TABLE  search_auth_user_sec_access
    ADD CONSTRAINT search_sec_s_o_fk FOREIGN KEY (search_secure_object_id) REFERENCES search_secure_object(search_secure_object_id);


ALTER TABLE  search_auth_group
    ADD CONSTRAINT sh_auth_gp_id_fk FOREIGN KEY (id) REFERENCES search_auth_principal(id);


ALTER TABLE  search_auth_user
    ADD CONSTRAINT sh_auth_user_id_fk FOREIGN KEY (id) REFERENCES search_auth_principal(id);
