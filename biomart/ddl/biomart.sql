
CREATE TABLE bio_assay (
    bio_assay_id bigint NOT NULL,
    etl_id character varying(100) NOT NULL,
    study character varying(200),
    protocol character varying(200),
    description varchar(4000), --text,
    sample_type character varying(200),
    experiment_id bigint NOT NULL,
    test_date timestamp, --, --without time zone,
    sample_receive_date timestamp, --, --without time zone,
    requestor character varying(200),
    bio_assay_type character varying(200) NOT NULL,
    bio_assay_platform_id bigint
);


-- ALTER TABLE biomart.bio_assay OWNER TO biomart;


CREATE TABLE bio_assay_analysis (
    analysis_name character varying(500),
    short_description character varying(510),
    analysis_create_date timestamp, --without time zone,
    analyst_id character varying(510),
    bio_assay_analysis_id bigint NOT NULL,
    analysis_version character varying(200),
    fold_change_cutoff double precision,
    pvalue_cutoff double precision,
    rvalue_cutoff double precision,
    bio_asy_analysis_pltfm_id bigint,
    bio_source_import_id bigint,
    analysis_type character varying(200),
    analyst_name character varying(250),
    analysis_method_cd character varying(50),
    bio_assay_data_type character varying(50),
    etl_id character varying(100),
    long_description character varying(4000),
    qa_criteria character varying(4000),
    data_count bigint,
    tea_data_count bigint
);


-- ALTER TABLE biomart.bio_assay_analysis OWNER TO biomart;


CREATE TABLE bio_assay_analysis_data (
    bio_asy_analysis_data_id bigint NOT NULL,
    fold_change_ratio bigint,
    raw_pvalue double precision,
    adjusted_pvalue double precision,
    r_value double precision,
    rho_value double precision,
    bio_assay_analysis_id bigint NOT NULL,
    adjusted_p_value_code character varying(100),
    feature_group_name character varying(100) NOT NULL,
    bio_experiment_id bigint,
    bio_assay_platform_id bigint,
    etl_id character varying(100),
    preferred_pvalue double precision,
    cut_value double precision,
    results_value character varying(100),
    numeric_value double precision,
    numeric_value_code character varying(50),
    tea_normalized_pvalue double precision,
    bio_assay_feature_group_id bigint
);


-- ALTER TABLE biomart.bio_assay_analysis_data OWNER TO biomart;


CREATE TABLE bio_assay_analysis_data_tea (
    bio_asy_analysis_data_id bigint NOT NULL,
    fold_change_ratio bigint,
    raw_pvalue double precision,
    adjusted_pvalue double precision,
    r_value double precision,
    rho_value double precision,
    bio_assay_analysis_id bigint NOT NULL,
    adjusted_p_value_code character varying(100),
    feature_group_name character varying(100) NOT NULL,
    bio_experiment_id bigint,
    bio_assay_platform_id bigint,
    etl_id character varying(100),
    preferred_pvalue double precision,
    cut_value double precision,
    results_value character varying(100),
    numeric_value double precision,
    numeric_value_code character varying(50),
    tea_normalized_pvalue double precision,
    bio_experiment_type character varying(50),
    bio_assay_feature_group_id bigint,
    tea_rank bigint
);


-- ALTER TABLE biomart.bio_assay_analysis_data_tea OWNER TO biomart;


CREATE TABLE bio_assay_data (
    bio_sample_id bigint,
    bio_assay_data_id bigint NOT NULL,
    log2_value double precision,
    log10_value double precision,
    numeric_value bigint,
    text_value character varying(200),
    float_value double precision,
    feature_group_name character varying(100) NOT NULL,
    bio_experiment_id bigint,
    bio_assay_dataset_id bigint,
    bio_assay_id bigint,
    etl_id bigint
);


-- ALTER TABLE biomart.bio_assay_data OWNER TO biomart;


CREATE TABLE bio_assay_data_annotation (
    bio_assay_feature_group_id bigint,
    bio_marker_id bigint NOT NULL,
    data_table character(5)
);


-- ALTER TABLE biomart.bio_assay_data_annotation OWNER TO biomart;


CREATE TABLE bio_assay_data_stats (
    bio_assay_data_stats_id bigint NOT NULL,
    bio_sample_count bigint,
    quartile_1 double precision,
    quartile_2 double precision,
    quartile_3 double precision,
    max_value double precision,
    min_value double precision,
    bio_sample_id bigint,
    feature_group_name character varying(120),
    value_normalize_method character varying(50),
    bio_experiment_id bigint,
    mean_value double precision,
    std_dev_value double precision,
    bio_assay_dataset_id bigint,
    bio_assay_feature_group_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_assay_data_stats OWNER TO biomart;


CREATE SEQUENCE bio_assay_data_stats_seq;


-- ALTER TABLE biomart.bio_assay_data_stats_seq OWNER TO biomart;


CREATE TABLE bio_assay_dataset (
    bio_assay_dataset_id bigint NOT NULL,
    dataset_name character varying(400),
    dataset_description character varying(1000),
    dataset_criteria character varying(1000),
    create_date timestamp, --without time zone,
    bio_experiment_id bigint NOT NULL,
    bio_assay_id bigint,
    etl_id character varying(100),
    accession character varying(50)
);


-- ALTER TABLE biomart.bio_assay_dataset OWNER TO biomart;


CREATE TABLE bio_assay_feature_group (
    bio_assay_feature_group_id bigint NOT NULL,
    feature_group_name character varying(100) NOT NULL,
    feature_group_type character varying(50) NOT NULL
);


-- ALTER TABLE biomart.bio_assay_feature_group OWNER TO biomart;


CREATE TABLE bio_assay_platform (
    bio_assay_platform_id bigint NOT NULL,
    platform_name character varying(200),
    platform_version character varying(200),
    platform_description character varying(2000),
    platform_array character varying(50),
    platform_accession character varying(20),
    platform_organism character varying(200),
    platform_vendor character varying(200),
<<<<<<< HEAD
	platform_type character varying(100)
=======
    platform_type character varying(200)
>>>>>>> 0e8862703ddae12f727f93a0495805e7879c683e
);


-- ALTER TABLE biomart.bio_assay_platform OWNER TO biomart;


CREATE TABLE bio_assay_sample (
    bio_assay_id bigint NOT NULL,
    bio_sample_id bigint NOT NULL,
    bio_clinic_trial_timepoint_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_assay_sample OWNER TO biomart;


CREATE TABLE bio_asy_analysis_dataset (
    bio_assay_dataset_id bigint NOT NULL,
    bio_assay_analysis_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_asy_analysis_dataset OWNER TO biomart;


CREATE TABLE bio_asy_analysis_pltfm (
    bio_asy_analysis_pltfm_id bigint NOT NULL,
    platform_name character varying(200),
    platform_version character varying(200),
    platform_description character varying(1000)
);


-- ALTER TABLE biomart.bio_asy_analysis_pltfm OWNER TO biomart;


CREATE TABLE bio_asy_data_stats_all (
    bio_assay_data_stats_id bigint NOT NULL,
    bio_sample_count bigint,
    quartile_1 double precision,
    quartile_2 double precision,
    quartile_3 double precision,
    max_value double precision,
    min_value double precision,
    bio_sample_id bigint,
    feature_group_name character varying(120),
    value_normalize_method character varying(50),
    bio_experiment_id bigint,
    mean_value double precision,
    std_dev_value double precision,
    bio_assay_dataset_id bigint
);


-- ALTER TABLE biomart.bio_asy_data_stats_all OWNER TO biomart;


CREATE TABLE bio_cell_line (
    disease character varying(510),
    primary_site character varying(510),
    metastatic_site character varying(510),
    species character varying(510),
    attc_number character varying(510),
    cell_line_name character varying(510),
    bio_cell_line_id bigint NOT NULL,
    bio_disease_id bigint,
    origin character varying(200),
    description character varying(500),
    disease_stage character varying(100),
    disease_subtype character varying(200),
    etl_reference_link character varying(300)
);


-- ALTER TABLE biomart.bio_cell_line OWNER TO biomart;


CREATE TABLE bio_cgdcp_data (
    evidence_code character varying(200),
    negation_indicator character(1),
    cell_line_id bigint,
    nci_disease_concept_code character varying(200),
    nci_role_code character varying(200),
    nci_drug_concept_code character varying(200),
    bio_data_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_cgdcp_data OWNER TO biomart;


CREATE TABLE bio_clinc_trial_attr (
    bio_clinc_trial_attr_id bigint NOT NULL,
    property_code character varying(200) NOT NULL,
    property_value character varying(200),
    bio_experiment_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_clinc_trial_attr OWNER TO biomart;


CREATE TABLE bio_clinc_trial_pt_group (
    bio_experiment_id bigint NOT NULL,
    bio_clinical_trial_p_group_id bigint NOT NULL,
    name character varying(510),
    description character varying(1000),
    number_of_patients integer,
    patient_group_type_code character varying(200)
);


-- ALTER TABLE biomart.bio_clinc_trial_pt_group OWNER TO biomart;


CREATE TABLE bio_clinc_trial_time_pt (
    bio_clinc_trial_tm_pt_id bigint NOT NULL,
    time_point character varying(200),
    time_point_code character varying(200),
    start_date timestamp, --without time zone,
    end_date timestamp, --without time zone,
    bio_experiment_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_clinc_trial_time_pt OWNER TO biomart;


CREATE TABLE bio_clinical_trial (
    trial_number character varying(510),
    study_owner character varying(510),
    study_phase character varying(100),
    blinding_procedure character varying(1000),
    studytype character varying(510),
    duration_of_study_weeks integer,
    number_of_patients integer,
    number_of_sites integer,
    route_of_administration character varying(510),
    dosing_regimen character varying(3500),
    group_assignment character varying(510),
    type_of_control character varying(510),
    completion_date timestamp, --without time zone,
    primary_end_points character varying(2000),
    secondary_end_points character varying(3500),
    inclusion_criteria varchar(4000),
    exclusion_criteria varchar(4000),
    subjects character varying(2000),
    gender_restriction_mfb character varying(510),
    min_age integer,
    max_age integer,
    secondary_ids character varying(510),
    bio_experiment_id bigint NOT NULL,
    development_partner character varying(100),
    geo_platform character varying(30),
    main_findings character varying(2000),
    platform_name character varying(200),
    search_area character varying(100)
);


-- ALTER TABLE biomart.bio_clinical_trial OWNER TO biomart;


CREATE TABLE bio_clinical_trial_design (
    ref_id character varying(100),
    ref_record_id character varying(100),
    ref_back_reference character varying(100),
    ref_article_pmid character varying(100),
    ref_protocol_id character varying(100),
    ref_title character varying(100),
    study_type character varying(100),
    common_name character varying(100),
    icd10 character varying(100),
    mesh character varying(100),
    disease_type character varying(100),
    physiology_name character varying(100),
    trial_status character varying(100),
    trial_phase character varying(100),
    nature_of_trial character varying(100),
    randomization character varying(100),
    blinded_trial character varying(100),
    trial_type character varying(100),
    run_n_period character varying(100),
    treatment_period character varying(100),
    washout_period character varying(100),
    open_label_extension character varying(100),
    sponsor character varying(100),
    trial_nbr_of_patients_studied character varying(100),
    source_type character varying(100),
    trial_age character varying(100),
    disease_severity character varying(100),
    difficult_to_treat character varying(100),
    asthma_diagnosis character varying(100),
    inhaled_steroid_dose character varying(100),
    laba character varying(100),
    ocs character varying(100),
    xolair character varying(100),
    ltra_inhibitors character varying(100),
    asthma_phenotype character varying(100),
    fev1 character varying(100),
    fev1_reversibility character varying(100),
    tlc character varying(100),
    fev1_fvc character varying(100),
    fvc character varying(100),
    dlco character varying(100),
    sgrq character varying(100),
    hrct character varying(100),
    biopsy character varying(100),
    dyspnea_on_exertion character varying(100),
    concomitant_med character varying(100),
    trial_smokers_pct character varying(100),
    trial_former_smokers_pct character varying(100),
    trial_never_smokers_pct character varying(100),
    trial_pack_years character varying(100),
    exclusion_criteria character varying(100),
    minimal_symptoms character varying(100),
    rescue_medication_use character varying(100),
    control_details character varying(100),
    blinding_procedure character varying(100),
    number_of_arms character varying(100),
    description character varying(100),
    arm character varying(100),
    arm_nbr_of_patients_studied character varying(100),
    arm_classification_type character varying(100),
    arm_classification_value character varying(100),
    arm_asthma_duration character varying(100),
    arm_geographic_region character varying(100),
    arm_age character varying(100),
    arm_gender character varying(100),
    arm_smokers_pct character varying(100),
    arm_former_smokers_pct character varying(100),
    arm_never_smokers_pct character varying(100),
    arm_pack_years character varying(100),
    minority_participation character varying(100),
    baseline_symptom_score character varying(100),
    baseline_rescue_medication_use character varying(100),
    clinical_variable character varying(100),
    clinical_variable_pct character varying(100),
    clinical_variable_value character varying(100),
    prior_med_drug_name character varying(100),
    prior_med_pct character varying(100),
    prior_med_value character varying(100),
    biomarker_name character varying(100),
    biomarker_pct character varying(100),
    biomarkervalue character varying(100),
    cellinfo_type character varying(100),
    cellinfo_count character varying(100),
    cellinfo_source character varying(100),
    pulmonary_pathology_name character varying(100),
    pulmpath_patient_pct character varying(100),
    pulmpath_value_unit character varying(100),
    pulmpath_method character varying(100),
    runin_ocs character varying(100),
    runin_ics character varying(100),
    runin_laba character varying(100),
    runin_ltra character varying(100),
    runin_corticosteroids character varying(100),
    runin_anti_fibrotics character varying(100),
    runin_immunosuppressive character varying(100),
    runin_cytotoxic character varying(100),
    runin_description character varying(100),
    trtmt_ocs character varying(100),
    trtmt_ics character varying(100),
    trtmt_laba character varying(100),
    trtmt_ltra character varying(100),
    trtmt_corticosteroids character varying(100),
    trtmt_anti_fibrotics character varying(100),
    trtmt_immunosuppressive character varying(100),
    trtmt_cytotoxic character varying(100),
    trtmt_description character varying(100),
    drug_inhibitor_common_name character varying(100),
    drug_inhibitor_standard_name character varying(100),
    drug_inhibitor_cas_id character varying(100),
    drug_inhibitor_dose character varying(100),
    drug_inhibitor_route_of_admin character varying(100),
    drug_inhibitor_trtmt_regime character varying(100),
    comparator_name character varying(100),
    comparator_dose character varying(100),
    comparator_time_period character varying(100),
    comparator_route_of_admin character varying(100),
    treatment_regime character varying(100),
    placebo character varying(100),
    experiment_description character varying(100),
    primary_endpoint_type character varying(100),
    primary_endpoint_definition character varying(100),
    primary_endpoint_time_period character varying(100),
    primary_endpoint_change character varying(100),
    primary_endpoint_p_value character varying(100),
    primary_endpoint_stat_test character varying(100),
    secondary_type character varying(100),
    secondary_type_definition character varying(100),
    secondary_type_time_period character varying(100),
    secondary_type_change character varying(100),
    secondary_type_p_value character varying(100),
    secondary_type_stat_test character varying(100),
    clinical_variable_name character varying(100),
    pct_change_from_baseline character varying(100),
    abs_change_from_baseline character varying(100),
    rate_of_change_from_baseline character varying(100),
    average_over_treatment_period character varying(100),
    within_group_changes character varying(100),
    stat_measure_p_value character varying(100),
    definition_of_the_event character varying(100),
    number_of_events character varying(100),
    event_rate character varying(100),
    time_to_event character varying(100),
    event_pct_reduction character varying(100),
    event_p_value character varying(100),
    event_description character varying(100),
    discontinuation_rate character varying(100),
    response_rate character varying(100),
    downstream_signaling_effects character varying(100),
    beneficial_effects character varying(100),
    adverse_effects character varying(100),
    pk_pd_parameter character varying(100),
    pk_pd_value character varying(100),
    effect_description character varying(100),
    biomolecule_name character varying(100),
    biomolecule_id character varying(100),
    biomolecule_type character varying(100),
    biomarker character varying(100),
    biomarker_type character varying(100),
    baseline_expr_pct character varying(100),
    baseline_expr_number character varying(100),
    baseline_expr_value_fold_mean character varying(100),
    baseline_expr_sd character varying(100),
    baseline_expr_sem character varying(100),
    baseline_expr_unit character varying(100),
    expr_after_trtmt_pct character varying(100),
    expr_after_trtmt_number character varying(100),
    expr_aftertrtmt_valuefold_mean character varying(100),
    expr_after_trtmt_sd character varying(100),
    expr_after_trtmt_sem character varying(100),
    expr_after_trtmt_unit character varying(100),
    expr_chg_source_type character varying(100),
    expr_chg_technique character varying(100),
    expr_chg_description character varying(100),
    clinical_correlation character varying(100),
    statistical_test character varying(100),
    statistical_coefficient_value character varying(100),
    statistical_test_p_value character varying(100),
    statistical_test_description character varying(100)
);


-- ALTER TABLE biomart.bio_clinical_trial_design OWNER TO biomart;


CREATE TABLE bio_compound (
    bio_compound_id bigint NOT NULL,
    cnto_number character varying(200),
    jnj_number character varying(200),
    cas_registry character varying(400),
    code_name character varying(300),
    generic_name character varying(200),
    brand_name character varying(200),
    chemical_name character varying(100),
    mechanism character varying(400),
    product_category character varying(200),
    description character varying(1000),
    etl_id_retired bigint,
    etl_id character varying(50),
    source_cd character varying(100)
);


-- ALTER TABLE biomart.bio_compound OWNER TO biomart;


CREATE TABLE bio_concept_code (
    bio_concept_code character varying(200),
    code_name character varying(200),
    code_description character varying(1000),
    code_type_name character varying(200),
    bio_concept_code_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_concept_code OWNER TO biomart;


CREATE TABLE bio_content (
    bio_file_content_id bigint NOT NULL,
    file_name character varying(1000),
    repository_id bigint,
    location character varying(400),
    title character varying(1000),
    abstract character varying(2000),
    file_type character varying(200) NOT NULL,
    etl_id bigint,
    etl_id_c character varying(30),
    study_name character varying(30),
    cel_location character varying(300),
    cel_file_suffix character varying(30)
);


-- ALTER TABLE biomart.bio_content OWNER TO biomart;


CREATE TABLE bio_content_reference (
    bio_content_reference_id bigint NOT NULL,
    bio_content_id bigint NOT NULL,
    bio_data_id bigint NOT NULL,
    content_reference_type character varying(200) NOT NULL,
    etl_id bigint,
    etl_id_c character varying(30)
);


-- ALTER TABLE biomart.bio_content_reference OWNER TO biomart;


CREATE TABLE bio_content_repository (
    bio_content_repo_id bigint NOT NULL,
    location character varying(510),
    active_y_n character(1),
    repository_type character varying(200) NOT NULL,
    location_type character varying(200)
);


-- ALTER TABLE biomart.bio_content_repository OWNER TO biomart;


CREATE TABLE bio_curated_data (
    statement varchar(1000),
    statement_status character varying(200),
    bio_data_id bigint NOT NULL,
    bio_curation_dataset_id bigint NOT NULL,
    reference_id bigint,
    data_type character varying(200)
);


-- ALTER TABLE biomart.bio_curated_data OWNER TO biomart;


CREATE TABLE bio_curation_dataset (
    bio_curation_dataset_id bigint NOT NULL,
    bio_asy_analysis_pltfm_id bigint,
    bio_source_import_id bigint,
    bio_curation_type character varying(200) NOT NULL,
    create_date timestamp, --without time zone,
    creator bigint,
    bio_curation_name character varying(500),
    data_type character varying(100)
);


-- ALTER TABLE biomart.bio_curation_dataset OWNER TO biomart;


CREATE TABLE bio_data_attribute (
    bio_data_attribute_id bigint NOT NULL,
    property_code character varying(200) NOT NULL,
    property_value character varying(200),
    bio_data_id bigint NOT NULL,
    property_unit character varying(100)
);


-- ALTER TABLE biomart.bio_data_attribute OWNER TO biomart;


CREATE TABLE bio_data_compound (
    bio_data_id bigint NOT NULL,
    bio_compound_id bigint NOT NULL,
    etl_source character varying(100)
);


-- ALTER TABLE biomart.bio_data_compound OWNER TO biomart;


CREATE TABLE bio_data_correl_descr (
    bio_data_correl_descr_id bigint NOT NULL,
    correlation character varying(510),
    description character varying(1000),
    type_name character varying(200),
    status character varying(200),
    source character varying(100),
    source_code character varying(200)
);


-- ALTER TABLE biomart.bio_data_correl_descr OWNER TO biomart;


CREATE TABLE bio_data_correlation (
    bio_data_id bigint NOT NULL,
    asso_bio_data_id bigint NOT NULL,
    bio_data_correl_descr_id bigint NOT NULL,
    bio_data_correl_id bigint NOT NULL
);


-- ALTER TABLE biomart.bio_data_correlation OWNER TO biomart;


CREATE TABLE bio_data_disease (
    bio_data_id bigint NOT NULL,
    bio_disease_id bigint NOT NULL,
    etl_source character varying(100)
);


-- ALTER TABLE biomart.bio_data_disease OWNER TO biomart;


CREATE TABLE bio_data_ext_code (
    bio_data_id bigint NOT NULL,
    code character varying(500) NOT NULL,
    code_source character varying(200),
    code_type character varying(200),
    bio_data_type character varying(100),
    bio_data_ext_code_id bigint NOT NULL,
    etl_id character varying(50)
);


-- ALTER TABLE biomart.bio_data_ext_code OWNER TO biomart;


CREATE TABLE bio_data_literature (
    bio_data_id bigint NOT NULL,
    bio_lit_ref_data_id bigint,
    bio_curation_dataset_id bigint NOT NULL,
    statement varchar(4000),
    statement_status character varying(200),
    data_type character varying(200)
);


-- ALTER TABLE biomart.bio_data_literature OWNER TO biomart;


CREATE TABLE bio_data_omic_marker (
    bio_data_id bigint,
    bio_marker_id bigint NOT NULL,
    data_table character varying(5)
);


-- ALTER TABLE biomart.bio_data_omic_marker OWNER TO biomart;


CREATE TABLE bio_data_taxonomy (
    bio_taxonomy_id bigint NOT NULL,
    bio_data_id bigint NOT NULL,
    etl_source character varying(100)
);


-- ALTER TABLE biomart.bio_data_taxonomy OWNER TO biomart;


CREATE TABLE bio_data_uid (
    bio_data_id bigint NOT NULL,
    unique_id character varying(300) NOT NULL,
    bio_data_type character varying(100) NOT NULL
);


-- ALTER TABLE biomart.bio_data_uid OWNER TO biomart;


CREATE TABLE bio_disease (
    bio_disease_id bigint NOT NULL,
    disease character varying(510) NOT NULL,
    ccs_category character varying(510),
    icd10_code character varying(510),
    mesh_code character varying(510),
    icd9_code character varying(510),
    prefered_name character varying(510),
    etl_id_retired bigint,
    primary_source_cd character varying(30),
    etl_id character varying(50)
);


-- ALTER TABLE biomart.bio_disease OWNER TO biomart;


CREATE TABLE bio_experiment (
    bio_experiment_id bigint NOT NULL,
    bio_experiment_type character varying(200),
    title character varying(1000),
    description character varying(2000),
    design character varying(2000),
    start_date timestamp, --without time zone,
    completion_date timestamp, --without time zone,
    primary_investigator character varying(400),
    contact_field character varying(400),
    etl_id character varying(100),
    status character varying(100),
    overall_design character varying(2000),
    accession character varying(100),
    entrydt timestamp, --without time zone,
    updated timestamp, --without time zone,
    institution character varying(100),
    country character varying(50),
    biomarker_type character varying(255),
    target character varying(255),
    access_type character varying(100)
);


-- ALTER TABLE biomart.bio_experiment OWNER TO biomart;


CREATE TABLE bio_lit_alt_data (
    bio_lit_alt_data_id bigint NOT NULL,
    bio_lit_ref_data_id bigint NOT NULL,
    in_vivo_model_id bigint,
    in_vitro_model_id bigint,
    etl_id character varying(50),
    alteration_type character varying(50),
    control character varying(1000),
    effect character varying(500),
    description character varying(1000),
    techniques character varying(1000),
    patients_percent character varying(500),
    patients_number character varying(500),
    pop_number character varying(250),
    pop_inclusion_criteria character varying(1000),
    pop_exclusion_criteria character varying(1000),
    pop_description character varying(1000),
    pop_type character varying(250),
    pop_value character varying(250),
    pop_phase character varying(250),
    pop_status character varying(250),
    pop_experimental_model character varying(250),
    pop_tissue character varying(250),
    pop_body_substance character varying(250),
    pop_localization character varying(1000),
    pop_cell_type character varying(250),
    clin_submucosa_marker_type character varying(250),
    clin_submucosa_unit character varying(250),
    clin_submucosa_value character varying(250),
    clin_asm_marker_type character varying(250),
    clin_asm_unit character varying(250),
    clin_asm_value character varying(250),
    clin_cellular_source character varying(250),
    clin_cellular_type character varying(250),
    clin_cellular_count character varying(250),
    clin_prior_med_percent character varying(250),
    clin_prior_med_dose character varying(250),
    clin_prior_med_name character varying(250),
    clin_baseline_variable character varying(250),
    clin_baseline_percent character varying(250),
    clin_baseline_value character varying(250),
    clin_smoker character varying(250),
    clin_atopy character varying(250),
    control_exp_percent character varying(50),
    control_exp_number character varying(50),
    control_exp_value character varying(50),
    control_exp_sd character varying(50),
    control_exp_unit character varying(100),
    over_exp_percent character varying(50),
    over_exp_number character varying(50),
    over_exp_value character varying(50),
    over_exp_sd character varying(50),
    over_exp_unit character varying(100),
    loss_exp_percent character varying(50),
    loss_exp_number character varying(50),
    loss_exp_value character varying(50),
    loss_exp_sd character varying(50),
    loss_exp_unit character varying(100),
    total_exp_percent character varying(50),
    total_exp_number character varying(50),
    total_exp_value character varying(50),
    total_exp_sd character varying(50),
    total_exp_unit character varying(100),
    glc_control_percent character varying(250),
    glc_molecular_change character varying(250),
    glc_type character varying(50),
    glc_percent character varying(100),
    glc_number character varying(100),
    ptm_region character varying(250),
    ptm_type character varying(250),
    ptm_change character varying(250),
    loh_loci character varying(250),
    mutation_type character varying(250),
    mutation_change character varying(250),
    mutation_sites character varying(250),
    epigenetic_region character varying(250),
    epigenetic_type character varying(250)
);


-- ALTER TABLE biomart.bio_lit_alt_data OWNER TO biomart;


CREATE TABLE bio_lit_amd_data (
    bio_lit_amd_data_id bigint NOT NULL,
    bio_lit_alt_data_id bigint NOT NULL,
    etl_id character varying(50),
    molecule character varying(50),
    molecule_type character varying(50),
    total_exp_percent character varying(50),
    total_exp_number character varying(100),
    total_exp_value character varying(100),
    total_exp_sd character varying(50),
    total_exp_unit character varying(50),
    over_exp_percent character varying(50),
    over_exp_number character varying(100),
    over_exp_value character varying(100),
    over_exp_sd character varying(50),
    over_exp_unit character varying(50),
    co_exp_percent character varying(50),
    co_exp_number character varying(100),
    co_exp_value character varying(100),
    co_exp_sd character varying(50),
    co_exp_unit character varying(50),
    mutation_type character varying(50),
    mutation_sites character varying(50),
    mutation_change character varying(50),
    mutation_percent character varying(50),
    mutation_number character varying(100),
    target_exp_percent character varying(50),
    target_exp_number character varying(100),
    target_exp_value character varying(100),
    target_exp_sd character varying(50),
    target_exp_unit character varying(50),
    target_over_exp_percent character varying(50),
    target_over_exp_number character varying(100),
    target_over_exp_value character varying(100),
    target_over_exp_sd character varying(50),
    target_over_exp_unit character varying(50),
    techniques character varying(250),
    description character varying(1000)
);


-- ALTER TABLE biomart.bio_lit_amd_data OWNER TO biomart;


CREATE TABLE bio_lit_inh_data (
    bio_lit_inh_data_id bigint NOT NULL,
    bio_lit_ref_data_id bigint,
    etl_id character varying(50),
    trial_type character varying(250),
    trial_phase character varying(250),
    trial_status character varying(250),
    trial_experimental_model character varying(250),
    trial_tissue character varying(250),
    trial_body_substance character varying(250),
    trial_description character varying(1000),
    trial_designs character varying(250),
    trial_cell_line character varying(250),
    trial_cell_type character varying(250),
    trial_patients_number character varying(100),
    trial_inclusion_criteria character varying(2000),
    inhibitor character varying(250),
    inhibitor_standard_name character varying(250),
    casid character varying(250),
    description character varying(1000),
    concentration character varying(250),
    time_exposure character varying(500),
    administration character varying(250),
    treatment character varying(2000),
    techniques character varying(1000),
    effect_molecular character varying(250),
    effect_percent character varying(250),
    effect_number character varying(50),
    effect_value character varying(250),
    effect_sd character varying(250),
    effect_unit character varying(250),
    effect_response_rate character varying(250),
    effect_downstream character varying(2000),
    effect_beneficial character varying(2000),
    effect_adverse character varying(2000),
    effect_description character varying(2000),
    effect_pharmacos character varying(2000),
    effect_potentials character varying(2000)
);


-- ALTER TABLE biomart.bio_lit_inh_data OWNER TO biomart;


CREATE TABLE bio_lit_int_data (
    bio_lit_int_data_id bigint NOT NULL,
    bio_lit_ref_data_id bigint NOT NULL,
    in_vivo_model_id bigint,
    in_vitro_model_id bigint,
    etl_id character varying(50),
    source_component character varying(100),
    source_gene_id character varying(50),
    target_component character varying(100),
    target_gene_id character varying(50),
    interaction_mode character varying(250),
    regulation character varying(1000),
    mechanism character varying(250),
    effect character varying(500),
    localization character varying(500),
    region character varying(250),
    techniques character varying(1000)
);


-- ALTER TABLE biomart.bio_lit_int_data OWNER TO biomart;


CREATE TABLE bio_lit_int_model_mv (
    bio_lit_int_data_id bigint,
    experimental_model character varying(250)
);


-- ALTER TABLE biomart.bio_lit_int_model_mv OWNER TO biomart;


CREATE TABLE bio_lit_model_data (
    bio_lit_model_data_id bigint NOT NULL,
    etl_id character varying(50),
    model_type character varying(50),
    description character varying(1000),
    stimulation character varying(1000),
    control_challenge character varying(500),
    challenge character varying(1000),
    sentization character varying(1000),
    zygosity character varying(250),
    experimental_model character varying(250),
    animal_wild_type character varying(250),
    tissue character varying(250),
    cell_type character varying(250),
    cell_line character varying(250),
    body_substance character varying(250),
    component character varying(250),
    gene_id character varying(250)
);


-- ALTER TABLE biomart.bio_lit_model_data OWNER TO biomart;


CREATE VIEW bio_lit_int_model_view AS
  SELECT DISTINCT s.bio_lit_int_data_id, s.experimental_model
  FROM (SELECT a.bio_lit_int_data_id, b.experimental_model
        FROM (bio_lit_int_data a JOIN bio_lit_model_data b ON ((a.in_vivo_model_id = b.bio_lit_model_data_id)))
        WHERE (b.experimental_model IS NOT NULL)
        UNION
        SELECT a.bio_lit_int_data_id, b.experimental_model
        FROM (bio_lit_int_data a JOIN bio_lit_model_data b ON ((a.in_vitro_model_id = b.bio_lit_model_data_id)))
        WHERE (b.experimental_model IS NOT NULL)) s;


-- ALTER TABLE biomart.bio_lit_int_model_view OWNER TO biomart;


CREATE TABLE bio_lit_pe_data (
    bio_lit_pe_data_id bigint NOT NULL,
    bio_lit_ref_data_id bigint NOT NULL,
    in_vivo_model_id bigint,
    in_vitro_model_id bigint,
    etl_id character varying(50),
    description character varying(2000)
);


-- ALTER TABLE biomart.bio_lit_pe_data OWNER TO biomart;


CREATE TABLE bio_lit_ref_data (
    bio_lit_ref_data_id bigint NOT NULL,
    etl_id character varying(50),
    component character varying(100),
    component_class character varying(250),
    gene_id character varying(50),
    molecule_type character varying(50),
    variant character varying(250),
    reference_type character varying(50),
    reference_id character varying(250),
    reference_title character varying(2000),
    back_references character varying(1000),
    study_type character varying(250),
    disease character varying(250),
    disease_icd10 character varying(250),
    disease_mesh character varying(250),
    disease_site character varying(250),
    disease_stage character varying(250),
    disease_grade character varying(250),
    disease_types character varying(250),
    disease_description character varying(1000),
    physiology character varying(250),
    stat_clinical character varying(500),
    stat_clinical_correlation character varying(250),
    stat_tests character varying(500),
    stat_coefficient character varying(500),
    stat_p_value character varying(100),
    stat_description character varying(1000)
);


-- ALTER TABLE biomart.bio_lit_ref_data OWNER TO biomart;


CREATE TABLE bio_lit_sum_data (
    bio_lit_sum_data_id bigint NOT NULL,
    etl_id character varying(50),
    disease_site character varying(250),
    target character varying(50),
    variant character varying(50),
    data_type character varying(50),
    alteration_type character varying(100),
    total_frequency character varying(50),
    total_affected_cases character varying(50),
    summary character varying(1000)
);


-- ALTER TABLE biomart.bio_lit_sum_data OWNER TO biomart;


CREATE TABLE bio_marker (
    bio_marker_id bigint NOT NULL,
    bio_marker_name character varying(200),
    bio_marker_description character varying(1000),
    organism character varying(200),
    primary_source_code character varying(200),
    primary_external_id character varying(200),
    bio_marker_type character varying(200) NOT NULL
);


-- ALTER TABLE biomart.bio_marker OWNER TO biomart;


--CREATE VIEW bio_marker_correl_view AS
--    (SELECT DISTINCT b.bio_marker_id, b.bio_marker_id AS asso_bio_marker_id, 'GENE'::text AS correl_type, 1 AS mv_id FROM bio_marker b WHERE ((b.bio_marker_type)::text = 'GENE'::text) UNION SELECT DISTINCT c.bio_data_id AS bio_marker_id, c.asso_bio_data_id AS asso_bio_marker_id, 'PATHWAY_GENE'::text AS correl_type, 2 AS mv_id FROM bio_marker b, bio_data_correlation c, bio_data_correl_descr d WHERE ((((b.bio_marker_id = c.bio_data_id) AND (c.bio_data_correl_descr_id = d.bio_data_correl_descr_id)) AND ((b.primary_source_code)::text <> 'ARIADNE'::text)) AND ((d.correlation)::text = 'PATHWAY GENE'::text))) UNION SELECT DISTINCT c.bio_data_id AS bio_marker_id, c.asso_bio_data_id AS asso_bio_marker_id, 'HOMOLOGENE_GENE'::text AS correl_type, 3 AS mv_id FROM bio_marker b, bio_data_correlation c, bio_data_correl_descr d WHERE (((b.bio_marker_id = c.bio_data_id) AND (c.bio_data_correl_descr_id = d.bio_data_correl_descr_id)) AND ((d.correlation)::text = 'HOMOLOGENE GENE'::text));
--	replaced all text conversions, Netezza treated as CLOB

CREATE OR REPLACE VIEW BIOMART.BIO_MARKER_CORREL_MV AS 
(SELECT DISTINCT B.BIO_MARKER_ID, B.BIO_MARKER_ID AS ASSO_BIO_MARKER_ID, 'GENE' AS CORREL_TYPE, 1 AS MV_ID 
 FROM BIOMART.BIO_MARKER B 
 WHERE B.BIO_MARKER_TYPE = 'GENE'
UNION 
 SELECT DISTINCT C.BIO_DATA_ID AS BIO_MARKER_ID, C.ASSO_BIO_DATA_ID AS ASSO_BIO_MARKER_ID, 'PATHWAY_GENE' AS CORREL_TYPE, 2 AS MV_ID 
 FROM BIOMART.BIO_MARKER B
     ,BIOMART.BIO_DATA_CORRELATION C
	 ,BIOMART.BIO_DATA_CORREL_DESCR D 
 WHERE B.BIO_MARKER_ID = C.BIO_DATA_ID
   AND C.BIO_DATA_CORREL_DESCR_ID = D.BIO_DATA_CORREL_DESCR_ID
   AND B.PRIMARY_SOURCE_CODE <> 'ARIADNE'
   AND D.CORRELATION = 'PATHWAY GENE'
UNION 
 SELECT DISTINCT C.BIO_DATA_ID AS BIO_MARKER_ID, C.ASSO_BIO_DATA_ID AS ASSO_BIO_MARKER_ID, 'HOMOLOGENE_GENE' AS CORREL_TYPE, 3 AS MV_ID 
 FROM BIOMART.BIO_MARKER B
	 ,BIOMART.BIO_DATA_CORRELATION C
	 ,BIOMART.BIO_DATA_CORREL_DESCR D 
 WHERE B.BIO_MARKER_ID = C.BIO_DATA_ID
   AND C.BIO_DATA_CORREL_DESCR_ID = D.BIO_DATA_CORREL_DESCR_ID
   AND D.CORRELATION = 'HOMOLOGENE GENE'
);

-- ALTER TABLE biomart.bio_marker_correl_view OWNER TO biomart;


CREATE VIEW bio_marker_exp_analysis_mv AS
    SELECT DISTINCT t3.bio_marker_id, t1.bio_experiment_id, t1.bio_assay_analysis_id, ((t1.bio_assay_analysis_id * 100) + t3.bio_marker_id) AS mv_id FROM bio_assay_analysis_data t1, bio_experiment t2, bio_marker t3, bio_assay_data_annotation t4 WHERE ((((t1.bio_experiment_id = t2.bio_experiment_id) AND ((t2.bio_experiment_type)::text = 'Experiment'::text)) AND (t3.bio_marker_id = t4.bio_marker_id)) AND (t1.bio_assay_feature_group_id = t4.bio_assay_feature_group_id));


--ALTER TABLE biomart.bio_marker_exp_analysis_mv OWNER TO biomart;


CREATE TABLE bio_patient (
    bio_patient_id bigint NOT NULL,
    first_name character varying(200),
    last_name character varying(200),
    middle_name character varying(200),
    birth_date timestamp, --without time zone,
    birth_date_orig character varying(200),
    gender_code character varying(200),
    race_code character varying(200),
    ethnic_group_code character varying(200),
    address_zip_code character varying(200),
    country_code character varying(200),
    informed_consent_code character varying(200),
    bio_experiment_id bigint,
    bio_clinical_trial_p_group_id bigint
);


--ALTER TABLE biomart.bio_patient OWNER TO biomart;


CREATE TABLE bio_patient_event (
    bio_patient_event_id bigint NOT NULL,
    bio_patient_id bigint NOT NULL,
    event_code character varying(200),
    event_type_code character varying(200),
    event_date timestamp, --without time zone,
    site character varying(400),
    bio_clinic_trial_timepoint_id bigint NOT NULL
);


--ALTER TABLE biomart.bio_patient_event OWNER TO biomart;


CREATE TABLE bio_patient_event_attr (
    bio_patient_attr_code character varying(200) NOT NULL,
    attribute_text_value character varying(200),
    attribute_numeric_value character varying(200),
    bio_clinic_trial_attr_id bigint NOT NULL,
    bio_patient_attribute_id bigint NOT NULL,
    bio_patient_event_id bigint NOT NULL
);


--ALTER TABLE biomart.bio_patient_event_attr OWNER TO biomart;


CREATE TABLE bio_sample (
    bio_sample_id bigint NOT NULL,
    bio_sample_type character varying(200) NOT NULL,
    characteristics character varying(1000),
    source_code character varying(200),
    experiment_id bigint,
    bio_subject_id bigint,
    source character varying(200),
    bio_bank_id bigint,
    bio_patient_event_id bigint,
    bio_cell_line_id bigint,
    bio_sample_name character varying(100)
);


--ALTER TABLE biomart.bio_sample OWNER TO biomart;


CREATE TABLE bio_stats_exp_marker (
    bio_marker_id bigint NOT NULL,
    bio_experiment_id bigint NOT NULL,
    bio_stats_exp_marker_id bigint
);


--ALTER TABLE biomart.bio_stats_exp_marker OWNER TO biomart;


CREATE TABLE bio_subject (
    bio_subject_id bigint NOT NULL,
    site_subject_id bigint,
    source character varying(200),
    source_code character varying(200),
    status character varying(200),
    organism character varying(200),
    bio_subject_type character varying(200) NOT NULL
);


--ALTER TABLE biomart.bio_subject OWNER TO biomart;


CREATE TABLE bio_taxonomy (
    bio_taxonomy_id bigint NOT NULL,
    taxon_name character varying(200) NOT NULL,
    taxon_label character varying(200) NOT NULL,
    ncbi_tax_id character varying(200)
);


--ALTER TABLE biomart.bio_taxonomy OWNER TO biomart;


CREATE TABLE biobank_sample (
    sample_tube_id character varying(255) NOT NULL,
    accession_number character varying(255) NOT NULL,
    client_sample_tube_id character varying(255) NOT NULL,
    container_id character varying(255) NOT NULL,
    import_date timestamp, -- without time zone NOT NULL,
    source_type character varying(255) NOT NULL
);


--ALTER TABLE biomart.biobank_sample OWNER TO biomart_user;


CREATE SEQUENCE hibernate_sequence;

CREATE SEQUENCE seq_bio_data_fact_id;

CREATE SEQUENCE seq_bio_data_id;

CREATE SEQUENCE seq_clinical_trial_design_id;


ALTER TABLE bio_assay_analysis_data_tea
    ADD CONSTRAINT bio_aa_data_t_pk PRIMARY KEY (bio_asy_analysis_data_id);


ALTER TABLE bio_asy_analysis_pltfm
    ADD CONSTRAINT bio_assay_analysis_platform_pk PRIMARY KEY (bio_asy_analysis_pltfm_id);


ALTER TABLE bio_assay_platform
    ADD CONSTRAINT bio_assay_platform_pk PRIMARY KEY (bio_assay_platform_id);


ALTER TABLE bio_assay_sample
    ADD CONSTRAINT bio_assay_sample_pk PRIMARY KEY (bio_assay_id, bio_sample_id, bio_clinic_trial_timepoint_id);


ALTER TABLE bio_asy_data_stats_all
    ADD CONSTRAINT bio_asy_dt_stats_pk PRIMARY KEY (bio_assay_data_stats_id);

ALTER TABLE bio_assay_data_stats
    ADD CONSTRAINT bio_asy_dt_stats_s_pk PRIMARY KEY (bio_assay_data_stats_id);

ALTER TABLE bio_assay_feature_group
    ADD CONSTRAINT bio_asy_feature_grp_pk PRIMARY KEY (bio_assay_feature_group_id);

ALTER TABLE bio_cgdcp_data
    ADD CONSTRAINT bio_cancer_gene_curation_fact_ PRIMARY KEY (bio_data_id);

ALTER TABLE bio_clinc_trial_attr
    ADD CONSTRAINT bio_clinical_trial_patient_grp PRIMARY KEY (bio_clinc_trial_attr_id);

ALTER TABLE bio_clinc_trial_pt_group
    ADD CONSTRAINT bio_clinical_trial_pt_group PRIMARY KEY (bio_clinical_trial_p_group_id);


ALTER TABLE bio_clinc_trial_time_pt
    ADD CONSTRAINT bio_clinical_trial_time_point_ PRIMARY KEY (bio_clinc_trial_tm_pt_id);


ALTER TABLE bio_concept_code
    ADD CONSTRAINT bio_concept_code_pk PRIMARY KEY (bio_concept_code_id);


ALTER TABLE bio_concept_code
    ADD CONSTRAINT bio_concept_code_uk UNIQUE (bio_concept_code, code_type_name);


ALTER TABLE bio_content_reference
    ADD CONSTRAINT bio_content_ref_n_pk PRIMARY KEY (bio_content_reference_id);


ALTER TABLE bio_asy_analysis_dataset
    ADD CONSTRAINT bio_data_analysis_dataset_pk PRIMARY KEY (bio_assay_dataset_id, bio_assay_analysis_id);


ALTER TABLE bio_assay_analysis
    ADD CONSTRAINT bio_data_anl_pk PRIMARY KEY (bio_assay_analysis_id);


ALTER TABLE bio_data_attribute
    ADD CONSTRAINT bio_data_attr_pk PRIMARY KEY (bio_data_attribute_id);


ALTER TABLE bio_data_compound
    ADD CONSTRAINT bio_data_compound_pk PRIMARY KEY (bio_data_id, bio_compound_id);


ALTER TABLE bio_data_correlation
    ADD CONSTRAINT bio_data_correlation_pk PRIMARY KEY (bio_data_correl_id);


ALTER TABLE bio_data_disease
    ADD CONSTRAINT bio_data_disease_pk PRIMARY KEY (bio_data_id, bio_disease_id);


ALTER TABLE bio_data_ext_code
    ADD CONSTRAINT bio_data_ext_code_pk PRIMARY KEY (bio_data_ext_code_id);


ALTER TABLE bio_data_literature
    ADD CONSTRAINT bio_data_literature_pk PRIMARY KEY (bio_data_id);


ALTER TABLE bio_data_uid
    ADD CONSTRAINT bio_data_uid_pk PRIMARY KEY (bio_data_id);


ALTER TABLE bio_data_uid
    ADD CONSTRAINT bio_data_uid_uk UNIQUE (unique_id);


ALTER TABLE bio_assay_dataset
    ADD CONSTRAINT bio_dataset_pk PRIMARY KEY (bio_assay_dataset_id);


ALTER TABLE bio_assay_data
    ADD CONSTRAINT bio_experiment_data_fact_pk PRIMARY KEY (bio_assay_data_id);


ALTER TABLE bio_curation_dataset
    ADD CONSTRAINT bio_external_analysis_pk PRIMARY KEY (bio_curation_dataset_id);


ALTER TABLE bio_curated_data
    ADD CONSTRAINT bio_externalanalysis_fact_pk PRIMARY KEY (bio_data_id);


ALTER TABLE bio_lit_alt_data
    ADD CONSTRAINT bio_lit_alt_data_pk PRIMARY KEY (bio_lit_alt_data_id);


ALTER TABLE bio_lit_amd_data
    ADD CONSTRAINT bio_lit_amd_data_pk PRIMARY KEY (bio_lit_amd_data_id);


ALTER TABLE bio_lit_inh_data
    ADD CONSTRAINT bio_lit_inh_data_pk PRIMARY KEY (bio_lit_inh_data_id);


ALTER TABLE bio_lit_int_data
    ADD CONSTRAINT bio_lit_int_data_pk PRIMARY KEY (bio_lit_int_data_id);


ALTER TABLE bio_lit_model_data
    ADD CONSTRAINT bio_lit_model_data_pk PRIMARY KEY (bio_lit_model_data_id);


ALTER TABLE bio_lit_pe_data
    ADD CONSTRAINT bio_lit_pe_data_pk PRIMARY KEY (bio_lit_pe_data_id);


ALTER TABLE bio_lit_ref_data
    ADD CONSTRAINT bio_lit_ref_data_pk PRIMARY KEY (bio_lit_ref_data_id);


ALTER TABLE bio_lit_sum_data
    ADD CONSTRAINT bio_lit_sum_data_pk PRIMARY KEY (bio_lit_sum_data_id);


ALTER TABLE bio_data_correl_descr
    ADD CONSTRAINT bio_marker_relationship_pk PRIMARY KEY (bio_data_correl_descr_id);


ALTER TABLE bio_patient_event_attr
    ADD CONSTRAINT bio_patient_attribute_pk PRIMARY KEY (bio_patient_attribute_id);


ALTER TABLE bio_patient_event
    ADD CONSTRAINT bio_patient_event_pk PRIMARY KEY (bio_patient_event_id);


ALTER TABLE bio_patient
    ADD CONSTRAINT bio_patient_pk PRIMARY KEY (bio_patient_id);


ALTER TABLE bio_stats_exp_marker
    ADD CONSTRAINT bio_s_e_m_pk PRIMARY KEY (bio_marker_id, bio_experiment_id);


ALTER TABLE bio_subject
    ADD CONSTRAINT bio_subject_pk PRIMARY KEY (bio_subject_id);


ALTER TABLE bio_taxonomy
    ADD CONSTRAINT bio_taxon_pk PRIMARY KEY (bio_taxonomy_id);


ALTER TABLE biobank_sample
    ADD CONSTRAINT biobank_sample_pkey PRIMARY KEY (sample_tube_id);


ALTER TABLE bio_marker
    ADD CONSTRAINT biomarker_pk PRIMARY KEY (bio_marker_id);


ALTER TABLE bio_sample
    ADD CONSTRAINT biosample_pk PRIMARY KEY (bio_sample_id);


ALTER TABLE bio_cell_line
    ADD CONSTRAINT celllinedictionary_pk PRIMARY KEY (bio_cell_line_id);


ALTER TABLE bio_clinical_trial
    ADD CONSTRAINT clinicaltrialdim_pk PRIMARY KEY (bio_experiment_id);


ALTER TABLE bio_compound
    ADD CONSTRAINT compounddim_pk PRIMARY KEY (bio_compound_id);


ALTER TABLE bio_disease
    ADD CONSTRAINT diseasedim_pk PRIMARY KEY (bio_disease_id);


ALTER TABLE bio_experiment
    ADD CONSTRAINT experimentdim_pk PRIMARY KEY (bio_experiment_id);


ALTER TABLE bio_content
    ADD CONSTRAINT external_file_pk PRIMARY KEY (bio_file_content_id);


ALTER TABLE bio_content_repository
    ADD CONSTRAINT external_file_repository_pk PRIMARY KEY (bio_content_repo_id);


ALTER TABLE bio_assay
    ADD CONSTRAINT rbmorderdim_pk PRIMARY KEY (bio_assay_id);


ALTER TABLE bio_marker
    ADD CONSTRAINT sys_c0020430 UNIQUE (organism, primary_external_id);


CREATE INDEX baad_fgn_idx ON bio_assay_analysis_data USING btree (feature_group_name);


CREATE INDEX baad_idx11 ON bio_assay_analysis_data USING btree (bio_experiment_id, bio_assay_analysis_id, bio_asy_analysis_data_id);


CREATE INDEX baad_idx12 ON bio_assay_analysis_data USING btree (bio_experiment_id, bio_assay_analysis_id, bio_assay_feature_group_id);


CREATE INDEX baad_idx14 ON bio_assay_analysis_data USING btree (bio_assay_feature_group_id, bio_asy_analysis_data_id);


CREATE INDEX baad_idx4 ON bio_assay_analysis_data USING btree (bio_assay_platform_id);


CREATE INDEX baad_idx6 ON bio_assay_analysis_data USING btree (bio_experiment_id, bio_assay_analysis_id);


CREATE INDEX baad_idx7 ON bio_assay_analysis_data USING btree (bio_assay_analysis_id, bio_asy_analysis_data_id);


CREATE INDEX baadt_f_idx13 ON bio_assay_analysis_data_tea USING btree (bio_assay_feature_group_id, bio_asy_analysis_data_id);


CREATE INDEX baadt_idex12 ON bio_assay_analysis_data_tea USING btree (feature_group_name, bio_asy_analysis_data_id);


CREATE INDEX baadt_idx10 ON bio_assay_analysis_data_tea USING btree (bio_assay_feature_group_id, bio_experiment_id);


CREATE INDEX baadt_idx11 ON bio_assay_analysis_data_tea USING btree (bio_experiment_id, bio_assay_analysis_id, bio_asy_analysis_data_id);


CREATE INDEX baadt_idx17 ON bio_assay_analysis_data_tea USING btree (bio_assay_analysis_id, tea_rank);


CREATE INDEX baadt_idx6 ON bio_assay_analysis_data_tea USING btree (bio_experiment_id, bio_assay_analysis_id);


CREATE INDEX baadt_idx7 ON bio_assay_analysis_data_tea USING btree (bio_assay_analysis_id, bio_asy_analysis_data_id);


CREATE INDEX bad_idx13 ON bio_assay_analysis_data USING btree (bio_assay_analysis_id, bio_assay_feature_group_id);


CREATE INDEX bdc_index1 ON bio_data_correlation USING btree (asso_bio_data_id);


CREATE INDEX bio_a__d_s_ds_idx ON bio_asy_data_stats_all USING btree (bio_assay_dataset_id);


CREATE INDEX bio_a__d_s_exp_idx ON bio_asy_data_stats_all USING btree (bio_experiment_id);


CREATE INDEX bio_a__d_s_f_g_idx ON bio_asy_data_stats_all USING btree (feature_group_name);


CREATE INDEX bio_a_d_s_ds__s_idx ON bio_assay_data_stats USING btree (bio_assay_dataset_id);


CREATE INDEX bio_a_d_s_exp__s_idx ON bio_assay_data_stats USING btree (bio_experiment_id);


CREATE INDEX bio_a_d_s_f_g_s_idx ON bio_assay_data_stats USING btree (feature_group_name, bio_assay_data_stats_id);


CREATE INDEX bio_a_d_s_fgi_s_idx ON bio_assay_data_stats USING btree (bio_assay_feature_group_id, bio_assay_data_stats_id);


CREATE INDEX bio_a_o_an_idx2 ON bio_assay_data_annotation USING btree (bio_assay_feature_group_id, bio_marker_id);


CREATE INDEX bio_a_o_fg_id_idx ON bio_assay_data_annotation USING btree (bio_assay_feature_group_id);


CREATE UNIQUE INDEX bio_assay_analysis_pk ON bio_assay_analysis USING btree (bio_assay_analysis_id);


CREATE UNIQUE INDEX bio_assay_data_pk ON bio_assay_data USING btree (bio_assay_data_id);


CREATE UNIQUE INDEX bio_assay_dataset_pk ON bio_assay_dataset USING btree (bio_assay_dataset_id);


CREATE UNIQUE INDEX bio_assay_pk ON bio_assay USING btree (bio_assay_id);


CREATE UNIQUE INDEX bio_asy_analysis_dataset_pk ON bio_asy_analysis_dataset USING btree (bio_assay_dataset_id, bio_assay_analysis_id);


CREATE UNIQUE INDEX bio_asy_analysis_pltfm_pk ON bio_asy_analysis_pltfm USING btree (bio_asy_analysis_pltfm_id);


CREATE INDEX bio_asy_feature_grp_name_idx ON bio_assay_feature_group USING btree (feature_group_name, bio_assay_feature_group_id);


CREATE UNIQUE INDEX bio_cell_line_dict_pk ON bio_cell_line USING btree (bio_cell_line_id);


CREATE INDEX bio_cell_line_name_idx ON bio_cell_line USING btree (cell_line_name, bio_cell_line_id);


CREATE UNIQUE INDEX bio_cgdcp_data_pk ON bio_cgdcp_data USING btree (bio_data_id);


CREATE UNIQUE INDEX bio_clinc_trial_attr_pk ON bio_clinc_trial_attr USING btree (bio_clinc_trial_attr_id);


CREATE UNIQUE INDEX bio_clinc_trial_pt_group_pk ON bio_clinc_trial_pt_group USING btree (bio_clinical_trial_p_group_id);


CREATE UNIQUE INDEX bio_clinc_trial_time_pt_pk ON bio_clinc_trial_time_pt USING btree (bio_clinc_trial_tm_pt_id);


CREATE UNIQUE INDEX bio_clinical_trial_pk ON bio_clinical_trial USING btree (bio_experiment_id);


CREATE UNIQUE INDEX bio_compound_pk ON bio_compound USING btree (bio_compound_id);


CREATE INDEX bio_concept_code_type_index ON bio_concept_code USING btree (code_type_name);


CREATE UNIQUE INDEX bio_content_pk ON bio_content USING btree (bio_file_content_id);


CREATE UNIQUE INDEX bio_content_reference_pk ON bio_content_reference USING btree (bio_content_reference_id);


CREATE UNIQUE INDEX bio_content_repository_pk ON bio_content_repository USING btree (bio_content_repo_id);


CREATE UNIQUE INDEX bio_curated_data_pk ON bio_curated_data USING btree (bio_data_id);


CREATE UNIQUE INDEX bio_curation_dataset_pk ON bio_curation_dataset USING btree (bio_curation_dataset_id);


CREATE INDEX bio_d_e_c_did_ct_idx ON bio_data_ext_code USING btree (bio_data_id, code_type);


CREATE UNIQUE INDEX bio_d_fg_m_marker2_pk ON bio_assay_data_annotation USING btree (bio_marker_id, bio_assay_feature_group_id);


CREATE UNIQUE INDEX bio_d_o_m_marker2_pk ON bio_data_omic_marker USING btree (bio_marker_id, bio_data_id);


CREATE UNIQUE INDEX bio_data_attribute_pk ON bio_data_attribute USING btree (bio_data_attribute_id);


CREATE UNIQUE INDEX bio_data_correl_descr_pk ON bio_data_correl_descr USING btree (bio_data_correl_descr_id);


CREATE INDEX bio_data_e_c_c_idx ON bio_data_ext_code USING btree (code);


CREATE INDEX bio_data_e_c_t_idx ON bio_data_ext_code USING btree (code_type);


CREATE INDEX bio_data_o_m_did_idx ON bio_data_omic_marker USING btree (bio_data_id);


CREATE INDEX bio_dd_idx2 ON bio_data_disease USING btree (bio_disease_id);


CREATE UNIQUE INDEX bio_disease_pk ON bio_disease USING btree (bio_disease_id);


CREATE INDEX bio_dt_dis_did_idx ON bio_data_disease USING btree (bio_data_id);


CREATE INDEX bio_exp_acen_idx ON bio_experiment USING btree (accession);


CREATE INDEX bio_exp_type_idx ON bio_experiment USING btree (bio_experiment_type);


CREATE UNIQUE INDEX bio_experiment_pk ON bio_experiment USING btree (bio_experiment_id);


CREATE INDEX bio_marker_c_mv_idx1 ON bio_marker_correl_mv USING btree (bio_marker_id, asso_bio_marker_id);


CREATE INDEX bio_marker_c_mv_idx2 ON bio_marker_correl_mv USING btree (asso_bio_marker_id, bio_marker_id);


CREATE UNIQUE INDEX bio_marker_pk ON bio_marker USING btree (bio_marker_id);


CREATE INDEX bio_mkr_ext_id ON bio_marker USING btree (primary_external_id);


CREATE INDEX bio_mkr_type_idx ON bio_marker USING btree (bio_marker_type);


CREATE UNIQUE INDEX bio_patient_event_attr_pk ON bio_patient_event_attr USING btree (bio_patient_attribute_id);


CREATE UNIQUE INDEX bio_sample_pk ON bio_sample USING btree (bio_sample_id);


CREATE INDEX bio_stats_exp_mk_exp_idx ON bio_stats_exp_marker USING btree (bio_experiment_id);


CREATE INDEX bio_stats_exp_mk_mk_idx ON bio_stats_exp_marker USING btree (bio_marker_id);


CREATE INDEX idx_baadt_fg_ad ON bio_assay_analysis_data_tea USING btree (bio_assay_feature_group_id, bio_assay_analysis_id);


CREATE INDEX idx_baadt_idx10 ON bio_assay_analysis_data_tea USING btree (bio_experiment_type, bio_asy_analysis_data_id);


CREATE UNIQUE INDEX pk_baad ON bio_assay_analysis_data USING btree (bio_asy_analysis_data_id);


CREATE INDEX tmp_a_d_tea_r_index1 ON tmp_analysis_data_tea_rank USING btree (analysis_data_id);


ALTER TABLE bio_assay_analysis_data
    ADD CONSTRAINT bio_assay_analysis_data_n_fk1 FOREIGN KEY (bio_assay_analysis_id) REFERENCES bio_assay_analysis(bio_assay_analysis_id);


ALTER TABLE bio_assay_analysis_data
    ADD CONSTRAINT bio_assay_analysis_data_n_fk2 FOREIGN KEY (bio_experiment_id) REFERENCES bio_experiment(bio_experiment_id);


ALTER TABLE bio_assay_analysis_data
    ADD CONSTRAINT bio_assay_analysis_data_n_fk3 FOREIGN KEY (bio_assay_platform_id) REFERENCES bio_assay_platform(bio_assay_platform_id);


ALTER TABLE bio_assay_analysis_data_tea
    ADD CONSTRAINT bio_assay_analysis_data_t_fk1 FOREIGN KEY (bio_assay_analysis_id) REFERENCES bio_assay_analysis(bio_assay_analysis_id);


ALTER TABLE bio_assay_analysis_data_tea
    ADD CONSTRAINT bio_assay_analysis_data_t_fk2 FOREIGN KEY (bio_experiment_id) REFERENCES bio_experiment(bio_experiment_id);


ALTER TABLE bio_assay_analysis_data_tea
    ADD CONSTRAINT bio_assay_analysis_data_t_fk3 FOREIGN KEY (bio_assay_platform_id) REFERENCES bio_assay_platform(bio_assay_platform_id);


ALTER TABLE bio_assay_analysis
    ADD CONSTRAINT bio_assay_ans_pltfm_fk FOREIGN KEY (bio_asy_analysis_pltfm_id) REFERENCES bio_asy_analysis_pltfm(bio_asy_analysis_pltfm_id);


ALTER TABLE bio_assay_sample
    ADD CONSTRAINT bio_assay_sample_bio_assay_fk FOREIGN KEY (bio_assay_id) REFERENCES bio_assay(bio_assay_id);


ALTER TABLE bio_assay_sample
    ADD CONSTRAINT bio_assay_sample_bio_sample_fk FOREIGN KEY (bio_sample_id) REFERENCES bio_sample(bio_sample_id);


ALTER TABLE bio_assay_analysis_data
    ADD CONSTRAINT bio_asy_ad_fg_fk FOREIGN KEY (bio_assay_feature_group_id) REFERENCES bio_assay_feature_group(bio_assay_feature_group_id);


ALTER TABLE bio_assay_analysis_data_tea
    ADD CONSTRAINT bio_asy_ad_tea_fg_fk FOREIGN KEY (bio_assay_feature_group_id) REFERENCES bio_assay_feature_group(bio_assay_feature_group_id);


ALTER TABLE bio_assay
    ADD CONSTRAINT bio_asy_asy_pfm_fk FOREIGN KEY (bio_assay_platform_id) REFERENCES bio_assay_platform(bio_assay_platform_id);


ALTER TABLE bio_assay_data
    ADD CONSTRAINT bio_asy_dt_ds_fk FOREIGN KEY (bio_assay_dataset_id) REFERENCES bio_assay_dataset(bio_assay_dataset_id);


ALTER TABLE bio_assay_data_stats
    ADD CONSTRAINT bio_asy_dt_fg_fk FOREIGN KEY (bio_assay_feature_group_id) REFERENCES bio_assay_feature_group(bio_assay_feature_group_id);


ALTER TABLE bio_assay_data_stats
    ADD CONSTRAINT bio_asy_dt_stat_exp_s_fk FOREIGN KEY (bio_experiment_id) REFERENCES bio_experiment(bio_experiment_id);


ALTER TABLE bio_assay_data_stats
    ADD CONSTRAINT bio_asy_dt_stats_ds_s_fk FOREIGN KEY (bio_assay_dataset_id) REFERENCES bio_assay_dataset(bio_assay_dataset_id);


ALTER TABLE bio_asy_data_stats_all
    ADD CONSTRAINT bio_asy_dt_stats_smp_fk FOREIGN KEY (bio_sample_id) REFERENCES bio_sample(bio_sample_id);


ALTER TABLE bio_assay_data_stats
    ADD CONSTRAINT bio_asy_dt_stats_smp_s_fk FOREIGN KEY (bio_sample_id) REFERENCES bio_sample(bio_sample_id);


ALTER TABLE bio_assay_data
    ADD CONSTRAINT bio_asy_exp_fk FOREIGN KEY (bio_experiment_id) REFERENCES bio_experiment(bio_experiment_id);


ALTER TABLE bio_clinc_trial_time_pt
    ADD CONSTRAINT bio_cli_trial_time_trl_fk FOREIGN KEY (bio_experiment_id) REFERENCES bio_clinical_trial(bio_experiment_id);


ALTER TABLE bio_clinc_trial_pt_group
    ADD CONSTRAINT bio_clinc_trl_pt_grp_exp_fk FOREIGN KEY (bio_experiment_id) REFERENCES bio_clinical_trial(bio_experiment_id);


ALTER TABLE bio_clinical_trial
    ADD CONSTRAINT bio_clinical_trial_bio_experim FOREIGN KEY (bio_experiment_id) REFERENCES bio_experiment(bio_experiment_id);


ALTER TABLE bio_clinc_trial_attr
    ADD CONSTRAINT bio_clinical_trial_property_bi FOREIGN KEY (bio_experiment_id) REFERENCES bio_clinical_trial(bio_experiment_id);


ALTER TABLE bio_content_reference
    ADD CONSTRAINT bio_content_ref_cont_fk FOREIGN KEY (bio_content_id) REFERENCES bio_content(bio_file_content_id);


ALTER TABLE bio_asy_analysis_dataset
    ADD CONSTRAINT bio_data_anl_ds_anl_fk FOREIGN KEY (bio_assay_analysis_id) REFERENCES bio_assay_analysis(bio_assay_analysis_id);


ALTER TABLE bio_asy_analysis_dataset
    ADD CONSTRAINT bio_data_anl_ds_fk FOREIGN KEY (bio_assay_dataset_id) REFERENCES bio_assay_dataset(bio_assay_dataset_id);


ALTER TABLE bio_assay_dataset
    ADD CONSTRAINT bio_dataset_experiment_fk FOREIGN KEY (bio_experiment_id) REFERENCES bio_experiment(bio_experiment_id);


ALTER TABLE bio_data_compound
    ADD CONSTRAINT bio_df_cmp_fk FOREIGN KEY (bio_compound_id) REFERENCES bio_compound(bio_compound_id);


ALTER TABLE bio_data_disease
    ADD CONSTRAINT bio_df_disease_fk FOREIGN KEY (bio_disease_id) REFERENCES bio_disease(bio_disease_id);


ALTER TABLE bio_assay_data
    ADD CONSTRAINT bio_exp_data_fact_samp_fk FOREIGN KEY (bio_sample_id) REFERENCES bio_sample(bio_sample_id);


ALTER TABLE bio_curated_data
    ADD CONSTRAINT bio_ext_analys_ext_anl_fk FOREIGN KEY (bio_curation_dataset_id) REFERENCES bio_curation_dataset(bio_curation_dataset_id);


ALTER TABLE bio_curation_dataset
    ADD CONSTRAINT bio_ext_anl_pltfm_fk FOREIGN KEY (bio_asy_analysis_pltfm_id) REFERENCES bio_asy_analysis_pltfm(bio_asy_analysis_pltfm_id);


ALTER TABLE bio_lit_alt_data
    ADD CONSTRAINT bio_lit_alt_ref_fk FOREIGN KEY (bio_lit_ref_data_id) REFERENCES bio_lit_ref_data(bio_lit_ref_data_id);


ALTER TABLE bio_lit_amd_data
    ADD CONSTRAINT bio_lit_amd_alt_fk FOREIGN KEY (bio_lit_alt_data_id) REFERENCES bio_lit_alt_data(bio_lit_alt_data_id);


ALTER TABLE bio_data_literature
    ADD CONSTRAINT bio_lit_curation_dataset_fk FOREIGN KEY (bio_curation_dataset_id) REFERENCES bio_curation_dataset(bio_curation_dataset_id);


ALTER TABLE bio_lit_inh_data
    ADD CONSTRAINT bio_lit_inh_ref_fk FOREIGN KEY (bio_lit_ref_data_id) REFERENCES bio_lit_ref_data(bio_lit_ref_data_id);


ALTER TABLE bio_lit_int_data
    ADD CONSTRAINT bio_lit_int_ref_fk FOREIGN KEY (bio_lit_ref_data_id) REFERENCES bio_lit_ref_data(bio_lit_ref_data_id);


ALTER TABLE bio_lit_pe_data
    ADD CONSTRAINT bio_lit_pe_ref_fk FOREIGN KEY (bio_lit_ref_data_id) REFERENCES bio_lit_ref_data(bio_lit_ref_data_id);


ALTER TABLE bio_data_correlation
    ADD CONSTRAINT bio_marker_link_bio_marker_rel FOREIGN KEY (bio_data_correl_descr_id) REFERENCES bio_data_correl_descr(bio_data_correl_descr_id);


ALTER TABLE bio_patient
    ADD CONSTRAINT bio_patient_bio_clinic_tri_fk FOREIGN KEY (bio_clinical_trial_p_group_id) REFERENCES bio_clinc_trial_pt_group(bio_clinical_trial_p_group_id);


ALTER TABLE bio_patient
    ADD CONSTRAINT bio_patient_bio_clinical_trial FOREIGN KEY (bio_experiment_id) REFERENCES bio_clinical_trial(bio_experiment_id);


ALTER TABLE bio_patient
    ADD CONSTRAINT bio_patient_bio_subject_fk FOREIGN KEY (bio_patient_id) REFERENCES bio_subject(bio_subject_id);


ALTER TABLE bio_patient_event_attr
    ADD CONSTRAINT bio_pt_attr_trl_attr_fk FOREIGN KEY (bio_clinic_trial_attr_id) REFERENCES bio_clinc_trial_attr(bio_clinc_trial_attr_id);


ALTER TABLE bio_patient_event_attr
    ADD CONSTRAINT bio_pt_event_attr_evt_fk FOREIGN KEY (bio_patient_event_id) REFERENCES bio_patient_event(bio_patient_event_id);


ALTER TABLE bio_patient_event
    ADD CONSTRAINT bio_pt_event_bio_pt_fk FOREIGN KEY (bio_patient_id) REFERENCES bio_patient(bio_patient_id);


ALTER TABLE bio_patient_event
    ADD CONSTRAINT bio_pt_event_bio_trl_tp_fk FOREIGN KEY (bio_clinic_trial_timepoint_id) REFERENCES bio_clinc_trial_time_pt(bio_clinc_trial_tm_pt_id);

ALTER TABLE bio_sample
    ADD CONSTRAINT bio_sample_bio_subject_fk FOREIGN KEY (bio_subject_id) REFERENCES bio_subject(bio_subject_id);

ALTER TABLE bio_sample
    ADD CONSTRAINT bio_sample_cl_fk FOREIGN KEY (bio_cell_line_id) REFERENCES bio_cell_line(bio_cell_line_id);

ALTER TABLE bio_sample
    ADD CONSTRAINT bio_sample_pt_evt_fk FOREIGN KEY (bio_patient_event_id) REFERENCES bio_patient_event(bio_patient_event_id);

ALTER TABLE bio_data_taxonomy
    ADD CONSTRAINT bio_taxon_fk FOREIGN KEY (bio_taxonomy_id) REFERENCES bio_taxonomy(bio_taxonomy_id);

ALTER TABLE bio_cell_line
    ADD CONSTRAINT cd_disease_fk FOREIGN KEY (bio_disease_id) REFERENCES bio_disease(bio_disease_id);

ALTER TABLE bio_assay
    ADD CONSTRAINT dataset_experiment_fk FOREIGN KEY (experiment_id) REFERENCES bio_experiment(bio_experiment_id);

ALTER TABLE bio_content
    ADD CONSTRAINT ext_file_cnt_cnt_repo_fk FOREIGN KEY (repository_id) REFERENCES bio_content_repository(bio_content_repo_id);


--	added 20131127	JAvitabile

CREATE TABLE BIOMART.BIO_AD_HOC_PROPERTY
(
	AD_HOC_PROPERTY_ID BIGINT NOT NULL,
	BIO_DATA_ID BIGINT NOT NULL,
	PROPERTY_KEY CHARACTER VARYING(50),
	PROPERTY_VALUE CHARACTER VARYING(2000)
)
DISTRIBUTE ON (AD_HOC_PROPERTY_ID);

CREATE TABLE BIOMART.BIO_ASSAY_ANALYSIS_EQTL
(
	BIO_ASY_ANALYSIS_EQTL_ID BIGINT NOT NULL,
	BIO_ASSAY_ANALYSIS_ID BIGINT NOT NULL,
	RS_ID CHARACTER VARYING(50),
	GENE CHARACTER VARYING(50),
	P_VALUE_CHAR CHARACTER VARYING(100),
	P_VALUE DOUBLE PRECISION,
	LOG_P_VALUE DOUBLE PRECISION,
	CIS_TRANS CHARACTER VARYING(10),
	DISTANCE_FROM_GENE CHARACTER VARYING(10),
	ETL_ID BIGINT,
	EXT_DATA CHARACTER VARYING(4000)
)
DISTRIBUTE ON (BIO_ASY_ANALYSIS_EQTL_ID);


CREATE TABLE BIOMART.BIO_ASSAY_ANALYSIS_EXT
(
	BIO_ASSAY_ANALYSIS_EXT_ID BIGINT NOT NULL,
	BIO_ASSAY_ANALYSIS_ID BIGINT NOT NULL,
	VENDOR CHARACTER VARYING(500),
	VENDOR_TYPE CHARACTER VARYING(500),
	GENOME_VERSION CHARACTER VARYING(500),
	TISSUE CHARACTER VARYING(500),
	CELL_TYPE CHARACTER VARYING(500),
	POPULATION CHARACTER VARYING(500),
	RESEARCH_UNIT CHARACTER VARYING(500),
	SAMPLE_SIZE CHARACTER VARYING(500),
	MODEL_NAME CHARACTER VARYING(100),
	MODEL_DESC CHARACTER VARYING(500),
	SENSITIVE_FLAG INTEGER,
	SENSITIVE_DESC CHARACTER VARYING(500)
)
DISTRIBUTE ON (BIO_ASSAY_ANALYSIS_EXT_ID);



CREATE TABLE BIOMART.BIO_ASSAY_ANALYSIS_GWAS
(
	BIO_ASY_ANALYSIS_GWAS_ID BIGINT NOT NULL,
	BIO_ASSAY_ANALYSIS_ID BIGINT NOT NULL,
	RS_ID CHARACTER VARYING(50),
	P_VALUE_CHAR CHARACTER VARYING(100),
	P_VALUE DOUBLE PRECISION,
	LOG_P_VALUE DOUBLE PRECISION,
	ETL_ID BIGINT,
	EXT_DATA CHARACTER VARYING(4000)
)
DISTRIBUTE ON (BIO_ASY_ANALYSIS_GWAS_ID);

CREATE TABLE BIOMART.BIO_ASY_ANALYSIS_DATA_IDX
(
	BIO_ASY_ANALYSIS_DATA_IDX_ID BIGINT NOT NULL,
	EXT_TYPE CHARACTER VARYING(255) NOT NULL,
	FIELD_IDX NUMERIC(10,0) NOT NULL,
	FIELD_NAME CHARACTER VARYING(255) NOT NULL,
	DISPLAY_IDX NUMERIC(10,0) NOT NULL,
	DISPLAY_NAME CHARACTER VARYING(255) NOT NULL
)
DISTRIBUTE ON (BIO_ASY_ANALYSIS_DATA_IDX_ID);


CREATE TABLE BIOMART.BIO_ASY_ANALYSIS_EQTL_TOP50
(
	BIO_ASSAY_ANALYSIS_ID BIGINT,
	ANALYSIS CHARACTER VARYING(500),
	CHROM CHARACTER VARYING(4),
	POS NUMERIC(10,0),
	RSGENE CHARACTER VARYING(200),
	RSID CHARACTER VARYING(50),
	PVALUE NUMERIC(18,5),
	LOGPVALUE NUMERIC(18,5),
	EXTDATA CHARACTER VARYING(4000),
	RNUM BIGINT
)
DISTRIBUTE ON (BIO_ASSAY_ANALYSIS_ID);


CREATE TABLE BIOMART.BIO_ASY_ANALYSIS_GWAS_TOP50
(
	BIO_ASSAY_ANALYSIS_ID BIGINT,
	ANALYSIS CHARACTER VARYING(500),
	CHROM CHARACTER VARYING(4),
	POS NUMERIC(10,0),
	RSGENE CHARACTER VARYING(200),
	RSID CHARACTER VARYING(50),
	PVALUE NUMERIC(18,5),
	LOGPVALUE NUMERIC(18,5),
	EXTDATA CHARACTER VARYING(4000),
	RNUM BIGINT
)
DISTRIBUTE ON (BIO_ASSAY_ANALYSIS_ID);

  CREATE TABLE BIOMART.BIO_SPECIES_ORGANISM
   (ID BIGINT, 
    SPECIES character varying(200), 
    ORGANISM character varying(200)
   ) 
  distribute on (id);


