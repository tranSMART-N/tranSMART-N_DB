

CREATE TABLE de_chromosomal_region (
    region_id bigint NOT NULL,
    gpl_id character varying(50),
    chromosome character varying(2),
    start_bp bigint,
    end_bp bigint,
    num_probes integer,
    region_name character varying(100),
    gene_symbol character varying(100),
    gene_id bigint,
    organism character varying(200)
);


--ALTER TABLE deapp.de_chromosomal_region OWNER TO deapp;


CREATE SEQUENCE de_chromosomal_region_region_id_seq;


--ALTER TABLE deapp.de_chromosomal_region_region_id_seq OWNER TO deapp;


-- ALTER SEQUENCE de_chromosomal_region_region_id_seq OWNED BY de_chromosomal_region.region_id;


--	changed release_nbr to character varying  20131127 jea
--

CREATE TABLE de_gpl_info (
    platform character varying(50) NOT NULL,
    title character varying(500),
    organism character varying(100),
    annotation_date date, -- timestamp without time zone,
    marker_type character varying(100),
    genome_build character varying(20),
    release_nbr character varying(50)
);


--ALTER TABLE deapp.de_gpl_info OWNER TO deapp;


CREATE TABLE de_mrna_annotation (
    gpl_id character varying(100),
    probe_id character varying(100),
    gene_symbol character varying(100),
    probeset_id bigint,
    gene_id bigint,
    organism character varying(200)
);


--ALTER TABLE deapp.de_mrna_annotation OWNER TO deapp;


CREATE SEQUENCE de_parent_cd_seq;


--ALTER TABLE deapp.de_parent_cd_seq OWNER TO deapp;


CREATE TABLE de_pathway (
    name character varying(300),
    description character varying(510),
    id bigint NOT NULL,
    type character varying(100),
    source character varying(100),
    externalid character varying(100),
    pathway_uid character varying(200),
    user_id bigint
);


--ALTER TABLE deapp.de_pathway OWNER TO deapp;


CREATE TABLE de_pathway_gene (
    id bigint NOT NULL,
    pathway_id bigint,
    gene_symbol character varying(200),
    gene_id character varying(200)
);


--ALTER TABLE deapp.de_pathway_gene OWNER TO deapp;


CREATE TABLE de_saved_comparison (
    comparison_id bigint NOT NULL,
    query_id1 bigint,
    query_id2 bigint
);


--ALTER TABLE deapp.de_saved_comparison OWNER TO deapp;


CREATE TABLE de_snp_calls_by_gsm (
    gsm_num character varying(10),
    patient_num bigint,
    snp_name character varying(100),
    snp_calls character varying(4)
);


--ALTER TABLE deapp.de_snp_calls_by_gsm OWNER TO deapp;


CREATE TABLE de_snp_copy_number (
    patient_num bigint,
    snp_name character varying(50),
    chrom character varying(2),
    chrom_pos bigint,
    copy_number smallint
);


--ALTER TABLE deapp.de_snp_copy_number OWNER TO deapp;


CREATE TABLE de_snp_data_by_patient (
    snp_data_by_patient_id bigint NOT NULL,
    snp_dataset_id bigint,
    trial_name character varying(255),
    patient_num bigint,
    chrom character varying(16),
    data_by_patient_chr varchar(4000),
    ped_by_patient_chr varchar(4000)
);


--ALTER TABLE deapp.de_snp_data_by_patient OWNER TO deapp;


CREATE TABLE de_snp_data_by_probe (
    snp_data_by_probe_id bigint NOT NULL,
    probe_id bigint,
    probe_name character varying(255),
    snp_id bigint,
    snp_name character varying(255),
    trial_name character varying(255),
    data_by_probe varchar(63000)
);


--ALTER TABLE deapp.de_snp_data_by_probe OWNER TO deapp;


CREATE TABLE de_snp_data_dataset_loc (
    snp_data_dataset_loc_id bigint,
    trial_name character varying(255),
    snp_dataset_id bigint,
    location bigint
);


--ALTER TABLE deapp.de_snp_data_dataset_loc OWNER TO deapp;


CREATE TABLE de_snp_gene_map (
    snp_id bigint,
    snp_name character varying(255),
    entrez_gene_id bigint
);


--ALTER TABLE deapp.de_snp_gene_map OWNER TO deapp;


CREATE TABLE de_snp_info (
    snp_info_id bigint NOT NULL,
    name character varying(255),
    chrom character varying(16),
    chrom_pos bigint
);


--ALTER TABLE deapp.de_snp_info OWNER TO deapp;


CREATE TABLE de_snp_probe (
    snp_probe_id bigint NOT NULL,
    probe_name character varying(255),
    snp_id bigint,
    snp_name character varying(255),
    vendor_name character varying(255)
);


--ALTER TABLE deapp.de_snp_probe OWNER TO deapp;


CREATE TABLE de_snp_probe_sorted_def (
    snp_probe_sorted_def_id bigint NOT NULL,
    platform_name character varying(255),
    num_probe bigint,
    chrom character varying(16),
    probe_def varchar(4000),
    snp_id_def varchar(4000)
);


--ALTER TABLE deapp.de_snp_probe_sorted_def OWNER TO deapp;


CREATE TABLE de_snp_subject_sorted_def (
    snp_subject_sorted_def_id bigint NOT NULL,
    trial_name character varying(255),
    patient_position integer,
    patient_num bigint,
    subject_id character varying(255)
);


--ALTER TABLE deapp.de_snp_subject_sorted_def OWNER TO deapp;


CREATE TABLE de_subject_acgh_data (
    trial_name character varying(50),
    region_id bigint NOT NULL,
    assay_id bigint NOT NULL,
    patient_id bigint,
    chip double precision,
    segmented double precision,
    flag smallint,
    probloss double precision,
    probnorm double precision,
    probgain double precision,
    probamp double precision
);


--ALTER TABLE deapp.de_subject_acgh_data OWNER TO deapp;


COMMENT ON COLUMN de_subject_acgh_data.chip IS 'log2ratio';


COMMENT ON COLUMN de_subject_acgh_data.segmented IS 'segmented log2ratio';


COMMENT ON COLUMN de_subject_acgh_data.flag IS 'call  -1:loss, 0:normal, 1:gain, 2:amplification';


CREATE TABLE de_subject_microarray_data (
    trial_name character varying(50),
    probeset_id bigint,
    assay_id bigint,
    patient_id bigint,
    raw_intensity double precision,
    log_intensity double precision,
    zscore double precision,
    raw_intensity_4 double precision,
    partition_id numeric
);


--ALTER TABLE deapp.de_subject_microarray_data OWNER TO deapp;


CREATE TABLE de_subject_microarray_logs (
    probeset character varying(50),
    raw_intensity bigint,
    pvalue double precision,
    refseq character varying(50),
    gene_symbol character varying(50),
    assay_id bigint,
    patient_id bigint,
    subject_id character varying(20),
    trial_name character varying(15),
    timepoint character varying(30),
    log_intensity bigint
);


--ALTER TABLE deapp.de_subject_microarray_logs OWNER TO deapp;


CREATE TABLE de_subject_microarray_med (
    probeset character varying(50),
    raw_intensity bigint,
    log_intensity bigint,
    gene_symbol character varying(50),
    assay_id bigint,
    patient_id bigint,
    subject_id character varying(20),
    trial_name character varying(15),
    timepoint character varying(30),
    pvalue double precision,
    refseq character varying(50),
    mean_intensity bigint,
    stddev_intensity bigint,
    median_intensity bigint,
    zscore bigint
);


--ALTER TABLE deapp.de_subject_microarray_med OWNER TO deapp;


CREATE TABLE de_subject_protein_data (
    trial_name character varying(15),
    component character varying(15),
    intensity bigint,
    patient_id bigint,
    subject_id character varying(10),
    gene_symbol character varying(100),
    gene_id integer,
    assay_id bigint,
    timepoint character varying(20),
    n_value bigint,
    mean_intensity bigint,
    stddev_intensity bigint,
    median_intensity bigint,
    zscore bigint
);


--ALTER TABLE deapp.de_subject_protein_data OWNER TO deapp;


CREATE TABLE de_subject_rbm_data (
    trial_name character varying(15),
    antigen_name character varying(100),
    n_value bigint,
    patient_id bigint,
    gene_symbol character varying(100),
    gene_id integer,
    assay_id bigint,
    normalized_value double precision,
    concept_cd character varying(100),
    timepoint character varying(100),
    data_uid character varying(100),
    value bigint,
    log_intensity bigint,
    mean_intensity bigint,
    stddev_intensity bigint,
    median_intensity bigint,
    zscore bigint,
    rbm_panel character varying(50)
);


--ALTER TABLE deapp.de_subject_rbm_data OWNER TO deapp;


CREATE TABLE de_subject_sample_mapping (
    patient_id bigint,
    site_id character varying(100),
    subject_id character varying(100),
    subject_type character varying(100),
    concept_code character varying(1000),
    assay_id bigint NOT NULL,
    patient_uid character varying(50),
    sample_type character varying(100),
    assay_uid character varying(100),
    trial_name character varying(30),
    timepoint character varying(100),
    timepoint_cd character varying(50),
    sample_type_cd character varying(50),
    tissue_type_cd character varying(50),
    platform character varying(50),
    platform_cd character varying(50),
    tissue_type character varying(100),
    data_uid character varying(100),
    gpl_id character varying(20),
    rbm_panel character varying(50),
    sample_id bigint,
    sample_cd character varying(200),
    category_cd character varying(1000),
    source_cd character varying(50),
    omic_source_study character varying(200),
    omic_patient_id bigint,
    partition_id numeric
) distribute on (assay_id);


--ALTER TABLE deapp.de_subject_sample_mapping OWNER TO deapp;


CREATE TABLE de_subject_snp_dataset (
    subject_snp_dataset_id bigint NOT NULL,
    dataset_name character varying(255),
    concept_cd character varying(255),
    platform_name character varying(255),
    trial_name character varying(255),
    patient_num bigint,
    timepoint character varying(255),
    subject_id character varying(255),
    sample_type character varying(255),
    paired_dataset_id bigint,
    patient_gender character varying(1)
);


--ALTER TABLE deapp.de_subject_snp_dataset OWNER TO deapp;


CREATE TABLE de_xtrial_child_map (
    concept_cd character varying(50) NOT NULL,
    parent_cd bigint NOT NULL,
    manually_mapped bigint,
    study_id character varying(50)
);


--ALTER TABLE deapp.de_xtrial_child_map OWNER TO deapp;


CREATE TABLE de_xtrial_parent_names (
    parent_cd bigint NOT NULL,
    across_path character varying(500),
    manually_created bigint
);


--ALTER TABLE deapp.de_xtrial_parent_names OWNER TO deapp;


CREATE TABLE deapp_annotation (
    annotation_type character varying(50),
    annotation_value character varying(100),
    gene_id bigint,
    gene_symbol character varying(200)
);


--ALTER TABLE deapp.deapp_annotation OWNER TO deapp;


CREATE TABLE haploview_data (
    i2b2_id bigint,
    jnj_id character varying(30),
    father_id integer,
    mother_id integer,
    sex smallint,
    affection_status smallint,
    chromosome character varying(10),
    gene character varying(50),
    release smallint,
    release_date date, -- timestamp without time zone,
    trial_name character varying(50),
    snp_data varchar(4000)
);


--ALTER TABLE deapp.haploview_data OWNER TO deapp;


CREATE SEQUENCE seq_assay_id;


--ALTER TABLE deapp.seq_assay_id OWNER TO deapp;


CREATE SEQUENCE seq_data_id;


--ALTER TABLE deapp.seq_data_id OWNER TO deapp;

CREATE SEQUENCE deapp.seq_mrna_partition_id;

--ALTER TABLE deapp.seq_mrna_partition_id OWNER TO deapp;

ALTER TABLE de_chromosomal_region
    ADD CONSTRAINT de_chromosomal_region_pkey PRIMARY KEY (region_id);


--
-- TOC entry 3845 (class 2606 OID 25855)
-- Name: de_gpl_info_pkey; Type: CONSTRAINT; Schema: deapp; Owner: deapp; Tablespace: 
--

ALTER TABLE   de_gpl_info
    ADD CONSTRAINT de_gpl_info_pkey PRIMARY KEY (platform);


ALTER TABLE   de_subject_acgh_data
    ADD CONSTRAINT de_subject_acgh_data_pkey PRIMARY KEY (assay_id, region_id);


ALTER TABLE   de_xtrial_parent_names
    ADD CONSTRAINT dextpn_parent_node_u UNIQUE (across_path);


ALTER TABLE   de_snp_probe_sorted_def
    ADD CONSTRAINT sys_c0020600 PRIMARY KEY (snp_probe_sorted_def_id);


ALTER TABLE   de_snp_data_by_probe
    ADD CONSTRAINT sys_c0020601 PRIMARY KEY (snp_data_by_probe_id);


ALTER TABLE   de_snp_data_by_patient
    ADD CONSTRAINT sys_c0020602 PRIMARY KEY (snp_data_by_patient_id);


ALTER TABLE   de_xtrial_parent_names
    ADD CONSTRAINT sys_c0020604 PRIMARY KEY (parent_cd);


ALTER TABLE   de_xtrial_child_map
    ADD CONSTRAINT sys_c0020605 PRIMARY KEY (concept_cd);


ALTER TABLE   de_subject_snp_dataset
    ADD CONSTRAINT sys_c0020606 PRIMARY KEY (subject_snp_dataset_id);


ALTER TABLE   de_snp_subject_sorted_def
    ADD CONSTRAINT sys_c0020607 PRIMARY KEY (snp_subject_sorted_def_id);


ALTER TABLE   de_snp_probe
    ADD CONSTRAINT sys_c0020609 PRIMARY KEY (snp_probe_id);


ALTER TABLE   de_snp_info
    ADD CONSTRAINT sys_c0020611 PRIMARY KEY (snp_info_id);


ALTER TABLE   de_snp_info
    ADD CONSTRAINT u_snp_info_name UNIQUE (name);


ALTER TABLE   de_snp_probe
    ADD CONSTRAINT u_snp_probe_name UNIQUE (probe_name);


CREATE INDEX de_microarray_data_idx1 ON de_subject_microarray_data USING btree (trial_name, assay_id, probeset_id);


ALTER TABLE   de_subject_acgh_data
    ADD CONSTRAINT de_subject_acgh_data_region_id_fkey FOREIGN KEY (region_id) REFERENCES de_chromosomal_region(region_id);


ALTER TABLE   de_snp_gene_map
    ADD CONSTRAINT fk_snp_gene_map_snp_id FOREIGN KEY (snp_id) REFERENCES de_snp_info(snp_info_id);


ALTER TABLE   de_snp_data_dataset_loc
    ADD CONSTRAINT fk_snp_loc_dataset_id FOREIGN KEY (snp_dataset_id) REFERENCES de_subject_snp_dataset(subject_snp_dataset_id);


ALTER TABLE   de_snp_probe
    ADD CONSTRAINT fk_snp_probe_snp_id FOREIGN KEY (snp_id) REFERENCES de_snp_info(snp_info_id);



--	added 2013/11/20	J Avitabile

CREATE TABLE DEAPP.DE_OBS_ENROLL_DAYS 
   (ENCOUNTER_NUM numeric(38,0), 
	DAYS_SINCE_ENROLL numeric(18,5), 
	STUDY_ID VARCHAR(200), 
	VISIT_DATE timestamp
   )  ;
  
CREATE TABLE DEAPP.DE_CONCEPT_VISIT 
   (CONCEPT_CD VARCHAR(50) NOT NULL, 
	VISIT_NAME VARCHAR(100) NOT NULL, 
	SOURCESYSTEM_CD VARCHAR(50)
   )   ;  
  
CREATE TABLE DEAPP.DE_ENCOUNTER_LEVEL 
   (	STUDY_ID VARCHAR(50), 
	CONCEPT_CD VARCHAR(500), 
	LINK_TYPE VARCHAR(50)
   )   ;
   
CREATE TABLE DEAPP.DE_ENCOUNTER_TYPE 
   (	STUDY_ID VARCHAR(200), 
	LINK_TYPE VARCHAR(50), 
	LINK_VALUE VARCHAR(200), 
	ENCOUNTER_NUM numeric(38,0)
   )  ;


 -- added 2013/12/10 HX

create table  DE_RC_SNP_INFO
(
 SNP_INFO_ID           bigint,
 RS_ID                 VARCHAR(50),
 CHROM                 VARCHAR(4),
 POS                   bigint,
 REF                   VARCHAR(1000),
 ALT                   VARCHAR(1000),
 GENE_INFO             VARCHAR(1000),
 VARIATION_CLASS       VARCHAR(10),
 STRAND                VARCHAR(1),
 -- CLINSIG               VARCHAR(100),
 -- DISEASE               VARCHAR(500),
 GMAF                  int,
 GENE_BIOTYPE          VARCHAR(100),
 IMPACT                VARCHAR(50),
 TRANSCRIPT_ID         VARCHAR(100),
 FUNCTIONAL_CLASS      VARCHAR(100),
 EFFECT                VARCHAR(100),
 EXON_ID               VARCHAR(100),
 AMINO_ACID_CHANGE     VARCHAR(50),
 CODON_CHANGE          VARCHAR(100),
 HG_VERSION            VARCHAR(10),
 GENE_NAME             VARCHAR(50),
 ENTREZ_ID             VARCHAR(50),
 RECOMBINATION_RATE    numeric(18,6),
 RECOMBINATION_MAP     numeric(18,6),
 REGULOME_SCORE        VARCHAR(10)
);
