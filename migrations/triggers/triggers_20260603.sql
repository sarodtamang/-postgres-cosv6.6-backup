CREATE FUNCTION public.analyze_dry_run_charges(p_operation_id bigint, p_eligible_count integer) RETURNS void
CREATE FUNCTION public.build_where_condition(p_column_name text, p_operator text, p_value text) RETURNS text
CREATE FUNCTION public.cancel_duplicate_annual_charges() RETURNS json
CREATE FUNCTION public.check_annual_fees_status(current_year integer DEFAULT NULL::integer) RETURNS TABLE(card_id character varying, card_number character varying, annual_fee_applied boolean, fee_amount numeric, charge_date date, status character varying)
CREATE FUNCTION public.customer_action_handler(action character varying, p_fname character varying DEFAULT NULL::character varying, p_lname character varying DEFAULT NULL::character varying, p_middlename character varying DEFAULT NULL::character varying, p_mobileno character varying DEFAULT NULL::character varying, p_customercode character varying DEFAULT NULL::character varying, p_accountnumber character varying DEFAULT NULL::character varying, p_cardnumber character varying DEFAULT NULL::character varying) RETURNS TABLE(customercode character varying, fname character varying, lname character varying, middlename character varying, mobileno character varying, accountid character varying, accountnumber character varying, accounttype character varying, balance numeric, cardid character varying, cardnumber character varying, cardtype character varying, schemetype character varying, status character)
CREATE FUNCTION public.dispatch_updated_at_column() RETURNS trigger
CREATE FUNCTION public.evaluate_card_condition(p_cardid character varying, p_productid character varying, p_field_name character varying, p_operator character varying, p_value text, p_data_type character varying) RETURNS boolean
CREATE FUNCTION public.fbulk_uploadinstant_cards(p_batchid character varying, p_records_json jsonb, p_debuglevel integer DEFAULT 0, OUT p_result_code integer, OUT p_result_message character varying, OUT p_result_data jsonb) RETURNS record
CREATE FUNCTION public.fcard_request_cycle(action character varying, p_request_id character varying DEFAULT NULL::character varying, p_full_name character varying DEFAULT NULL::character varying, p_mobile character varying DEFAULT NULL::character varying, p_account_no character varying DEFAULT NULL::character varying, p_request_type character varying DEFAULT NULL::character varying, p_card_type character varying DEFAULT NULL::character varying, p_currency_type character varying DEFAULT NULL::character varying, p_card_scheme character varying DEFAULT NULL::character varying, p_request_branch_id character varying DEFAULT NULL::character varying, p_delivery_branch_id character varying DEFAULT NULL::character varying, p_remarks text DEFAULT NULL::text, p_status character varying DEFAULT NULL::character varying, p_userid integer DEFAULT NULL::integer, p_pintype character varying DEFAULT NULL::character varying) RETURNS TABLE(request_id character varying, full_name character varying, mobile character varying, account_no character varying, request_type character varying, card_type character varying, currency_type character varying, card_scheme character varying, request_branch_id character varying, delivery_branch_id character varying, customer_branch_id character varying, customer_branch_code character varying, account_type character varying, instcode character varying, remarks text, status character varying, created_at timestamp without time zone, updated_at timestamp without time zone, requstor_branch_code character varying, receiver_branch_code character varying, pintype character varying)
CREATE FUNCTION public.fcard_request_cycle(action character varying, p_request_id character varying DEFAULT NULL::character varying, p_full_name character varying DEFAULT NULL::character varying, p_mobile character varying DEFAULT NULL::character varying, p_account_no character varying DEFAULT NULL::character varying, p_request_type character varying DEFAULT NULL::character varying, p_card_type character varying DEFAULT NULL::character varying, p_currency_type character varying DEFAULT NULL::character varying, p_card_scheme character varying DEFAULT NULL::character varying, p_request_branch_id character varying DEFAULT NULL::character varying, p_delivery_branch_id character varying DEFAULT NULL::character varying, p_remarks text DEFAULT NULL::text, p_status character varying DEFAULT NULL::character varying, p_userid integer DEFAULT NULL::integer, p_pintype character varying DEFAULT NULL::character varying, p_filelocation text DEFAULT NULL::text) RETURNS TABLE(request_id character varying, full_name character varying, mobile character varying, account_no character varying, request_type character varying, card_type character varying, currency_type character varying, card_scheme character varying, request_branch_id character varying, delivery_branch_id character varying, customer_branch_id character varying, customer_branch_code character varying, account_type character varying, instcode character varying, remarks text, status character varying, created_at timestamp without time zone, updated_at timestamp without time zone, requstor_branch_code character varying, receiver_branch_code character varying, pintype character varying, file_location text)
CREATE FUNCTION public.fcard_request_cycle_feb242026(action character varying, p_request_id character varying DEFAULT NULL::character varying, p_full_name character varying DEFAULT NULL::character varying, p_mobile character varying DEFAULT NULL::character varying, p_account_no character varying DEFAULT NULL::character varying, p_request_type character varying DEFAULT NULL::character varying, p_card_type character varying DEFAULT NULL::character varying, p_currency_type character varying DEFAULT NULL::character varying, p_card_scheme character varying DEFAULT NULL::character varying, p_request_branch_id character varying DEFAULT NULL::character varying, p_delivery_branch_id character varying DEFAULT NULL::character varying, p_remarks text DEFAULT NULL::text, p_status character varying DEFAULT NULL::character varying, p_userid integer DEFAULT NULL::integer, p_pintype character varying DEFAULT NULL::character varying) RETURNS TABLE(request_id character varying, full_name character varying, mobile character varying, account_no character varying, request_type character varying, card_type character varying, currency_type character varying, card_scheme character varying, request_branch_id character varying, delivery_branch_id character varying, customer_branch_id character varying, customer_branch_code character varying, account_type character varying, instcode character varying, remarks text, status character varying, created_at timestamp without time zone, updated_at timestamp without time zone, requstor_branch_code character varying, receiver_branch_code character varying, pintype character varying)
CREATE FUNCTION public.fcardprofilemappingcrud(p_action character varying, p_card_profile_id character varying DEFAULT NULL::character varying, p_cardid character varying DEFAULT NULL::character varying, p_profileid character varying DEFAULT NULL::character varying, p_status character varying DEFAULT NULL::character varying, p_effective_date date DEFAULT NULL::date, p_expiry_date date DEFAULT NULL::date, p_assigned_by character varying DEFAULT NULL::character varying) RETURNS json
CREATE FUNCTION public.fchargeconfigcrud(p_action character varying, p_chargeid character varying DEFAULT NULL::character varying, p_chargename character varying DEFAULT NULL::character varying, p_charge_type character varying DEFAULT NULL::character varying, p_productid character varying DEFAULT NULL::character varying, p_percentage double precision DEFAULT NULL::double precision, p_amount numeric DEFAULT NULL::numeric, p_currency character varying DEFAULT 'NPR'::character varying, p_status character varying DEFAULT NULL::character varying, p_paymentmethod character varying DEFAULT NULL::character varying, p_graceperiod integer DEFAULT NULL::integer, p_applies_to character varying DEFAULT NULL::character varying, p_calculation_rule text DEFAULT NULL::text, p_istaxable boolean DEFAULT NULL::boolean, p_isactive boolean DEFAULT NULL::boolean, p_effectivedate date DEFAULT NULL::date, p_expirydate date DEFAULT NULL::date, p_user_id character varying DEFAULT NULL::character varying, p_ip_address inet DEFAULT NULL::inet, p_user_agent text DEFAULT NULL::text) RETURNS jsonb
CREATE FUNCTION public.fcreateaccountcode() RETURNS text
CREATE FUNCTION public.fcreateactionid() RETURNS text
CREATE FUNCTION public.fcreateassessmentcode() RETURNS text
CREATE FUNCTION public.fcreatecardcode() RETURNS text
CREATE FUNCTION public.fcreatecardcyclecode() RETURNS text
CREATE FUNCTION public.fcreatecardcyclelogid() RETURNS text
CREATE FUNCTION public.fcreatechargeconfigidid() RETURNS text
CREATE FUNCTION public.fcreatechargeid() RETURNS text
CREATE FUNCTION public.fcreateconditionid() RETURNS text
CREATE FUNCTION public.fcreatecustomercode() RETURNS text
CREATE FUNCTION public.fcreatecustomid() RETURNS text
CREATE FUNCTION public.fcreatedocumentcode() RETURNS text
CREATE FUNCTION public.fcreatefeesidanual() RETURNS text
CREATE FUNCTION public.fcreatefineid() RETURNS text
CREATE FUNCTION public.fcreateinstantcarduploadcode() RETURNS text
CREATE FUNCTION public.fcreateinstantrequestcode() RETURNS text
CREATE FUNCTION public.fcreateproductid() RETURNS trigger
CREATE FUNCTION public.fcreateprofilecardmappingid() RETURNS character varying
CREATE FUNCTION public.fcreateprofileid() RETURNS text
CREATE FUNCTION public.fcreateprofilerulemappingid() RETURNS text
CREATE FUNCTION public.fcreatereportcode() RETURNS text
CREATE FUNCTION public.fcreateruleid() RETURNS text
CREATE FUNCTION public.fcredit_get_score_calculation_log(p_request_id character varying DEFAULT NULL::character varying, p_start_date date DEFAULT NULL::date, p_end_date date DEFAULT NULL::date, p_min_score integer DEFAULT NULL::integer, p_max_score integer DEFAULT NULL::integer) RETURNS TABLE(log_id integer, request_id character varying, assessment_id character varying, calculation_timestamp timestamp without time zone, final_score integer, dbr_percentage numeric, monthly_income numeric, suggested_limit numeric, score_breakdown jsonb, calculations jsonb, remarks text)
CREATE FUNCTION public.fcredit_getrequestdetailsbybatchidforswitch(p_action character varying, p_batch_ids character varying[], p_user character varying, p_new_status character varying DEFAULT NULL::character varying, p_search_criteria json DEFAULT NULL::json, p_debug_level integer DEFAULT 0, p_page_number integer DEFAULT 1, p_page_size integer DEFAULT 100, p_include_data boolean DEFAULT true) RETURNS jsonb
CREATE FUNCTION public.fcreditcard_calculate_credit_assessment(p_request_id character varying, p_request_limit_amount numeric, p_vehicle_type character varying, p_residential_status character varying, p_occupation_type character varying, p_monthly_income numeric, p_monthly_expenditure numeric, p_existing_emi numeric, p_education_level character varying, p_other_loan_count integer, p_risk_category character varying, p_employment_years integer, p_organization_type character varying, p_calculated_by character varying, p_debug_level integer DEFAULT 0, p_limit_justification text DEFAULT NULL::text) RETURNS TABLE(assessment_id character varying, final_score integer, dbr_percentage numeric, suggested_limit numeric, status character varying, message text)
CREATE FUNCTION public.fcreditcard_cycle(p_action character varying, p_debug_level integer DEFAULT 0, p_full_name character varying DEFAULT NULL::character varying, p_mobile character varying DEFAULT NULL::character varying, p_account_no character varying DEFAULT NULL::character varying, p_request_type character varying DEFAULT NULL::character varying, p_card_type character varying DEFAULT NULL::character varying, p_currency_type character varying DEFAULT NULL::character varying, p_card_scheme character varying DEFAULT NULL::character varying, p_request_branch_id character varying DEFAULT NULL::character varying, p_delivery_branch_id character varying DEFAULT NULL::character varying, p_customer_branch_id character varying DEFAULT NULL::character varying, p_customer_branch_code character varying DEFAULT NULL::character varying, p_account_type character varying DEFAULT NULL::character varying, p_instcode character varying DEFAULT NULL::character varying, p_remarks text DEFAULT NULL::text, p_requstor_branch_code character varying DEFAULT NULL::character varying, p_receiver_branch_code character varying DEFAULT NULL::character varying, p_pintype character varying DEFAULT NULL::character varying, p_document_remarks character varying DEFAULT NULL::character varying, p_limitapproval_remarks character varying DEFAULT NULL::character varying, p_forwarddoc bit DEFAULT NULL::"bit", p_forwardapproval bit DEFAULT NULL::"bit", p_request_limit_amount numeric DEFAULT NULL::numeric, p_vehicle_type character varying DEFAULT NULL::character varying, p_residential_status character varying DEFAULT NULL::character varying, p_occupation_type character varying DEFAULT NULL::character varying, p_monthly_income numeric DEFAULT NULL::numeric, p_monthly_expenditure numeric DEFAULT NULL::numeric, p_existing_emi numeric DEFAULT NULL::numeric, p_education_level character varying DEFAULT NULL::character varying, p_other_loan_count integer DEFAULT NULL::integer, p_risk_category character varying DEFAULT NULL::character varying, p_employment_years integer DEFAULT NULL::integer, p_organization_type character varying DEFAULT NULL::character varying, p_calculated_by character varying DEFAULT NULL::character varying, p_limit_justification text DEFAULT NULL::text, p_documents jsonb DEFAULT NULL::jsonb, p_request_id character varying DEFAULT NULL::character varying, p_search_criteria jsonb DEFAULT NULL::jsonb, p_userid integer DEFAULT NULL::integer, p_status character varying DEFAULT NULL::character varying, OUT result_status character varying, OUT result_message text, OUT result_data jsonb) RETURNS record
CREATE FUNCTION public.fcrud_card_cycle_log(p_action character varying, p_log_id character varying DEFAULT NULL::character varying, p_request_id character varying DEFAULT NULL::character varying, p_user_id character varying DEFAULT NULL::character varying, p_full_name character varying DEFAULT NULL::character varying, p_mobile character varying DEFAULT NULL::character varying, p_account_no character varying DEFAULT NULL::character varying, p_branch_code character varying DEFAULT NULL::character varying, p_status_old character varying DEFAULT NULL::character varying, p_status_new character varying DEFAULT NULL::character varying, p_limit integer DEFAULT 100, p_offset integer DEFAULT 0, p_search_term character varying DEFAULT NULL::character varying, p_date_from timestamp with time zone DEFAULT NULL::timestamp with time zone, p_date_to timestamp with time zone DEFAULT NULL::timestamp with time zone) RETURNS json
CREATE FUNCTION public.fcustomer(action text, p_customercode character varying DEFAULT NULL::character varying, p_fname character varying DEFAULT NULL::character varying, p_lname character varying DEFAULT NULL::character varying, p_middlename character varying DEFAULT NULL::character varying, p_mobileno character varying DEFAULT NULL::character varying, p_branchcode character varying DEFAULT NULL::character varying, p_bankcode character varying DEFAULT NULL::character varying, p_accountid integer DEFAULT NULL::integer, p_accountnumber character varying DEFAULT NULL::character varying, p_cardid integer DEFAULT NULL::integer, p_schemetype character varying DEFAULT NULL::character varying, p_cardnumber character varying DEFAULT NULL::character varying, p_cardtype character varying DEFAULT NULL::character varying) RETURNS TABLE(customerid character varying, customercode character varying, fname character varying, lname character varying, middlename character varying, salutation character varying, emailid character varying, mobileno character varying, branchcode character varying, bankcode character varying, maritalstatus character, status character, dob date, address character varying, notes text, createddate timestamp without time zone, updateddate timestamp without time zone, accountid integer, accountnumber character varying, accounttype character varying, balance numeric, acc_branchcode character varying, acc_status character, acc_createddate timestamp without time zone, acc_updateddate timestamp without time zone, cardid integer, schemetype character varying, cardnumber character varying, cardtype character varying, expirydate date, issuedate date, card_status character, profileid character varying, card_createddate timestamp without time zone, card_updateddate timestamp without time zone)
CREATE FUNCTION public.fcustomer(action text, p_customercode character varying DEFAULT NULL::character varying, p_fname character varying DEFAULT NULL::character varying, p_lname character varying DEFAULT NULL::character varying, p_middlename character varying DEFAULT NULL::character varying, p_mobileno character varying DEFAULT NULL::character varying, p_branchcode character varying DEFAULT NULL::character varying, p_bankcode character varying DEFAULT NULL::character varying, p_accountid integer DEFAULT NULL::integer, p_accountnumber character varying DEFAULT NULL::character varying, p_cardid integer DEFAULT NULL::integer, p_schemetype character varying DEFAULT NULL::character varying, p_cardnumber character varying DEFAULT NULL::character varying, p_cardtype character varying DEFAULT NULL::character varying, p_userid integer DEFAULT NULL::integer) RETURNS TABLE(customerid character varying, customercode character varying, fname character varying, lname character varying, middlename character varying, salutation character varying, emailid character varying, mobileno character varying, branchcode character varying, bankcode character varying, maritalstatus character, status character, dob date, address character varying, notes text, createddate timestamp without time zone, updateddate timestamp without time zone, accountid integer, accountnumber character varying, accounttype character varying, balance numeric, acc_branchcode character varying, acc_status character, acc_createddate timestamp without time zone, acc_updateddate timestamp without time zone, cardid integer, schemetype character varying, cardnumber character varying, cardtype character varying, expirydate date, issuedate date, card_status character, profileid character varying, card_createddate timestamp without time zone, card_updateddate timestamp without time zone)
CREATE FUNCTION public.fdaemonapply_dynamic_charges(p_debug_level integer DEFAULT 1, p_batch_size integer DEFAULT 1000, p_dry_run boolean DEFAULT false) RETURNS TABLE(operation_status character varying, records_processed integer, total_amount numeric, message text, operation_id bigint, performance_metrics jsonb)
CREATE FUNCTION public.fdebit_getrequestdetailsbybatchidforswitch(p_action character varying, p_batch_ids character varying[], p_user character varying, p_new_status character varying DEFAULT NULL::character varying, p_search_criteria json DEFAULT NULL::json, p_debug_level integer DEFAULT 0, p_page_number integer DEFAULT 1, p_page_size integer DEFAULT 100, p_include_data boolean DEFAULT true) RETURNS jsonb
CREATE FUNCTION public.fdiag_comprehensivefunctionaltestv1_0_0() RETURNS TABLE(test_id text, test_phase text, test_result text, details text, debug_info text, recommendation text)
CREATE FUNCTION public.femail_logs(p_action character varying, p_data jsonb, p_debug_level integer DEFAULT 0, p_id uuid DEFAULT NULL::uuid) RETURNS jsonb
CREATE FUNCTION public.femail_queue(p_action character varying, p_data jsonb, p_debug_level integer DEFAULT 0, p_id uuid DEFAULT NULL::uuid) RETURNS jsonb
CREATE FUNCTION public.femail_templates(p_action character varying, p_data jsonb, p_debug_level integer DEFAULT 0, p_id uuid DEFAULT NULL::uuid) RETURNS jsonb
CREATE FUNCTION public.femail_variables(p_action character varying, p_data jsonb, p_debug_level integer DEFAULT 0, p_id uuid DEFAULT NULL::uuid) RETURNS jsonb
CREATE FUNCTION public.fgenerate_instant_cardsrequest_from_cycle(p_requestids text[] DEFAULT NULL::text[], p_status text DEFAULT 'VERIFIED'::text, p_debug_flag boolean DEFAULT true) RETURNS jsonb
CREATE FUNCTION public.fget_batch_data_by_status(p_statusflag text DEFAULT 'PENDING'::text, p_limit integer DEFAULT 100, p_offset integer DEFAULT 0) RETURNS jsonb
CREATE FUNCTION public.fget_batch_summary_by_status(p_status text DEFAULT 'PROCESSING'::text, p_limit integer DEFAULT 100, p_offset integer DEFAULT 0) RETURNS jsonb
CREATE FUNCTION public.fget_creditbatchid(p_username character varying DEFAULT NULL::character varying, p_debug_level integer DEFAULT 1) RETURNS json
CREATE FUNCTION public.fget_debitbatchid(p_username character varying DEFAULT NULL::character varying, p_debug_level integer DEFAULT 1) RETURNS json
CREATE FUNCTION public.fgetinstantalldatabybatchid(p_batchid character varying DEFAULT NULL::character varying) RETURNS json
CREATE FUNCTION public.fgetinstantuniqueuploadbatchid() RETURNS TABLE(batchid character varying)
CREATE FUNCTION public.finsert_credit_card_application(p_request_ids text[] DEFAULT NULL::text[], p_debug_level integer DEFAULT 1, p_batch_id text DEFAULT NULL::text, p_username character varying DEFAULT NULL::character varying) RETURNS jsonb
CREATE FUNCTION public.finsert_debit_card_application(p_request_ids text[] DEFAULT NULL::text[], p_debug_level integer DEFAULT 1, p_batch_id text DEFAULT NULL::text, p_username character varying DEFAULT NULL::character varying) RETURNS jsonb
CREATE FUNCTION public.finstant_getrequestdetailsbybatchidforswitch(p_action character varying, p_batch_ids character varying[], p_user character varying, p_new_status character varying DEFAULT NULL::character varying, p_search_criteria json DEFAULT NULL::json, p_debug_level integer DEFAULT 0, p_page_number integer DEFAULT 1, p_page_size integer DEFAULT 100, p_include_data boolean DEFAULT true) RETURNS jsonb
CREATE FUNCTION public.finstant_statusupdatebothflagtrue() RETURNS trigger
CREATE FUNCTION public.finstant_update_card_flags(p_requestid character varying, p_booked_flag boolean, p_approved_flag boolean) RETURNS text
CREATE FUNCTION public.finstantbatchidmanagement(p_action text DEFAULT 'LOADING ALL'::text, p_batch_id text DEFAULT NULL::text, p_from_date timestamp without time zone DEFAULT NULL::timestamp without time zone, p_to_date timestamp without time zone DEFAULT NULL::timestamp without time zone, p_status text DEFAULT NULL::text, p_debug_level integer DEFAULT 0) RETURNS jsonb
CREATE FUNCTION public.finstantcardbranchallocation(p_action character varying, p_cardnumbers jsonb, p_userid integer, p_branchcodetoallocate character varying DEFAULT NULL::character varying, p_debuglevel integer DEFAULT 0, p_status character varying DEFAULT 'AVAILABLE'::character varying, p_requestid character varying DEFAULT NULL::character varying) RETURNS jsonb
CREATE FUNCTION public.finstantcardbranchallocation_feb172026_v1(p_action character varying, p_cardnumbers jsonb, p_userid integer, p_branchcodetoallocate character varying DEFAULT NULL::character varying, p_debuglevel integer DEFAULT 0, p_status character varying DEFAULT 'AVAILABLE'::character varying) RETURNS jsonb
CREATE FUNCTION public.finstantcardbranchallocation_feb172026v2(p_action character varying, p_cardnumbers jsonb, p_userid integer, p_branchcodetoallocate character varying DEFAULT NULL::character varying, p_debuglevel integer DEFAULT 0, p_status character varying DEFAULT 'AVAILABLE'::character varying) RETURNS jsonb
CREATE FUNCTION public.finstantcardbranchallocation_feb242026v3(p_action character varying, p_cardnumbers jsonb, p_userid integer, p_branchcodetoallocate character varying DEFAULT NULL::character varying, p_debuglevel integer DEFAULT 0, p_status character varying DEFAULT 'AVAILABLE'::character varying, p_requestid character varying DEFAULT NULL::character varying) RETURNS jsonb
CREATE FUNCTION public.finstantcardcycle(p_action character varying, p_requestid character varying DEFAULT NULL::character varying, p_scheme character varying DEFAULT NULL::character varying, p_cardtype character varying DEFAULT NULL::character varying, p_currency character varying DEFAULT NULL::character varying, p_totalnumberofcard integer DEFAULT NULL::integer, p_flags character varying DEFAULT NULL::character varying, p_pintype character varying DEFAULT NULL::character varying, p_requestedby character varying DEFAULT NULL::character varying, p_requestedbranchname character varying DEFAULT NULL::character varying, p_requestbranchcode character varying DEFAULT NULL::character varying, p_approvedby character varying DEFAULT NULL::character varying, p_approvedbranchcode character varying DEFAULT NULL::character varying, p_approvedbranchname character varying DEFAULT NULL::character varying, p_verifiedby character varying DEFAULT NULL::character varying, p_verifiedbranchname character varying DEFAULT NULL::character varying, p_verifiedbranchcode character varying DEFAULT NULL::character varying, p_status character varying DEFAULT NULL::character varying, p_start_date date DEFAULT NULL::date, p_end_date date DEFAULT NULL::date, p_userid integer DEFAULT 0, OUT p_result_message character varying, OUT p_result_data jsonb) RETURNS record
CREATE FUNCTION public.finstantcardcycle_backup_mar26(p_action character varying, p_requestid character varying DEFAULT NULL::character varying, p_scheme character varying DEFAULT NULL::character varying, p_cardtype character varying DEFAULT NULL::character varying, p_currency character varying DEFAULT NULL::character varying, p_totalnumberofcard integer DEFAULT NULL::integer, p_flags character varying DEFAULT NULL::character varying, p_pintype character varying DEFAULT NULL::character varying, p_requestedby character varying DEFAULT NULL::character varying, p_requestedbranchname character varying DEFAULT NULL::character varying, p_requestbranchcode character varying DEFAULT NULL::character varying, p_approvedby character varying DEFAULT NULL::character varying, p_approvedbranchcode character varying DEFAULT NULL::character varying, p_approvedbranchname character varying DEFAULT NULL::character varying, p_verifiedby character varying DEFAULT NULL::character varying, p_verifiedbranchname character varying DEFAULT NULL::character varying, p_verifiedbranchcode character varying DEFAULT NULL::character varying, p_status character varying DEFAULT NULL::character varying, p_start_date date DEFAULT NULL::date, p_end_date date DEFAULT NULL::date, p_userid integer DEFAULT 0, OUT p_result_message character varying, OUT p_result_data jsonb) RETURNS record
CREATE FUNCTION public.finstantcardcycle_feb112026(p_action character varying, p_requestid character varying DEFAULT NULL::character varying, p_scheme character varying DEFAULT NULL::character varying, p_cardtype character varying DEFAULT NULL::character varying, p_currency character varying DEFAULT NULL::character varying, p_totalnumberofcard integer DEFAULT NULL::integer, p_flags character varying DEFAULT NULL::character varying, p_pintype character varying DEFAULT NULL::character varying, p_requestedby character varying DEFAULT NULL::character varying, p_requestedbranchname character varying DEFAULT NULL::character varying, p_requestbranchcode character varying DEFAULT NULL::character varying, p_approvedby character varying DEFAULT NULL::character varying, p_approvedbranchcode character varying DEFAULT NULL::character varying, p_approvedbranchname character varying DEFAULT NULL::character varying, p_verifiedby character varying DEFAULT NULL::character varying, p_verifiedbranchname character varying DEFAULT NULL::character varying, p_verifiedbranchcode character varying DEFAULT NULL::character varying, p_status character varying DEFAULT NULL::character varying, p_start_date date DEFAULT NULL::date, p_end_date date DEFAULT NULL::date, p_userid integer DEFAULT 0, OUT p_result_message character varying, OUT p_result_data jsonb) RETURNS record
CREATE FUNCTION public.finstantgetrequestcountbooedapproved(p_branchname character varying) RETURNS jsonb
CREATE FUNCTION public.finstantgetrequestcountbooedapproved_backfeb16(p_branchname character varying) RETURNS jsonb
CREATE FUNCTION public.fiso_transaction(p_action character varying DEFAULT NULL::character varying, p_mti character DEFAULT NULL::bpchar, p_pan_2 character DEFAULT NULL::bpchar, p_pcode_3 character DEFAULT NULL::bpchar, p_tran_amount_4 character DEFAULT NULL::bpchar, p_tran_datetime_7 character DEFAULT NULL::bpchar, p_trace_11 character DEFAULT NULL::bpchar, p_local_time_12 character DEFAULT NULL::bpchar, p_local_date_13 character DEFAULT NULL::bpchar, p_expiry_date_14 character DEFAULT NULL::bpchar, p_settlement_date_15 character DEFAULT NULL::bpchar, p_merchant_category_code_18 character DEFAULT NULL::bpchar, p_acquiring_institution_country_code_19 character DEFAULT NULL::bpchar, p_point_of_service_entry_mode_22 character DEFAULT NULL::bpchar, p_point_of_service_conditon_mode_25 character DEFAULT NULL::bpchar, p_acquirer_id_32 character DEFAULT NULL::bpchar, p_track_ii_35 character DEFAULT NULL::bpchar, p_rrn_37 character DEFAULT NULL::bpchar, p_auth_id_38 character DEFAULT NULL::bpchar, p_resp_code_39 character DEFAULT NULL::bpchar, p_authorization_number character DEFAULT NULL::bpchar, p_card_acceptor_terminal_id_41 character DEFAULT NULL::bpchar, p_card_acceptor_identification_code_42 character DEFAULT NULL::bpchar, p_card_acceptor_name_location_43 character DEFAULT NULL::bpchar, p_additional_response_data_44 character DEFAULT NULL::bpchar, p_additional_data_iso_46 character DEFAULT NULL::bpchar, p_additional_data_private_48 character DEFAULT NULL::bpchar, p_currency_code_49 character DEFAULT NULL::bpchar, p_account_103 character DEFAULT NULL::bpchar, p_account_102 character DEFAULT NULL::bpchar, p_additional_amount_54 character DEFAULT NULL::bpchar, p_original_data_90 character DEFAULT NULL::bpchar, p_settlement_inst_identification_code_99 character DEFAULT NULL::bpchar, p_reserved_private_111 character DEFAULT NULL::bpchar, p_reserved_private_116 character DEFAULT NULL::bpchar, p_field_123 character DEFAULT NULL::bpchar, p_field_124 text DEFAULT NULL::text, p_debuglevel integer DEFAULT 2) RETURNS void
CREATE FUNCTION public.fixed_apply_charges() RETURNS TABLE(status text, processed integer, amount numeric, message text)
CREATE FUNCTION public.flog_audit_trail(p_entity_type character varying, p_action_type character varying, p_description text, p_data jsonb DEFAULT NULL::jsonb) RETURNS void
CREATE FUNCTION public.foperationlogdump(p_function_name character varying, p_additional_info text DEFAULT NULL::text) RETURNS bigint
CREATE FUNCTION public.fproductcrud(p_action character varying, p_productid character varying DEFAULT NULL::character varying, p_productname character varying DEFAULT NULL::character varying, p_productdescription character varying DEFAULT NULL::character varying, p_producttype character varying DEFAULT NULL::character varying, p_schemetype character varying DEFAULT NULL::character varying, p_currency character varying DEFAULT NULL::character varying, p_productbin character varying DEFAULT NULL::character varying, p_status character varying DEFAULT NULL::character varying, p_search_term character varying DEFAULT NULL::character varying, p_page_size integer DEFAULT 10, p_page_number integer DEFAULT 1) RETURNS jsonb
CREATE FUNCTION public.fprofilemastercurd(p_action character varying, p_profileid character varying DEFAULT NULL::character varying, p_profilename character varying DEFAULT NULL::character varying, p_description text DEFAULT NULL::text, p_status character varying DEFAULT NULL::character varying, p_user_id character varying DEFAULT NULL::character varying, p_ip_address inet DEFAULT NULL::inet, p_user_agent text DEFAULT NULL::text) RETURNS jsonb
CREATE FUNCTION public.fprofilerulemappingcrud(p_action character varying, p_profile_rule_id character varying DEFAULT NULL::character varying, p_profileid character varying DEFAULT NULL::character varying, p_ruleid character varying DEFAULT NULL::character varying, p_is_active boolean DEFAULT NULL::boolean) RETURNS jsonb
CREATE FUNCTION public.frpt_analyze_search_criteria_v1_0_0_3(p_table_names json) RETURNS json
CREATE FUNCTION public.frpt_generate_dynamic_report_v1_0_0(p_tables json, p_filters json DEFAULT NULL::json, p_columns json DEFAULT NULL::json, p_joins json DEFAULT NULL::json, p_group_by json DEFAULT NULL::json, p_order_by json DEFAULT NULL::json, p_limit integer DEFAULT 100, p_offset integer DEFAULT 0, p_include_metadata boolean DEFAULT true) RETURNS json
CREATE FUNCTION public.frpt_get_database_tables_info_1_0_0() RETURNS json
CREATE FUNCTION public.frpt_getcolumnuniquevalues(p_table_name text, p_column_name text, p_limit integer DEFAULT 100, p_offset integer DEFAULT 0, p_search_pattern text DEFAULT NULL::text) RETURNS jsonb
CREATE FUNCTION public.frpt_table_columns_info_v1_0_1(p_table_names json DEFAULT NULL::json) RETURNS json
CREATE FUNCTION public.fruleactionscurd(p_action character varying, p_actionid character varying DEFAULT NULL::character varying, p_ruleid character varying DEFAULT NULL::character varying, p_action_type character varying DEFAULT NULL::character varying, p_action_value jsonb DEFAULT NULL::jsonb, p_user_id character varying DEFAULT NULL::character varying, p_ip_address inet DEFAULT NULL::inet, p_user_agent text DEFAULT NULL::text) RETURNS jsonb
CREATE FUNCTION public.fruleconditionscurd(p_action character varying, p_conditionid character varying DEFAULT NULL::character varying, p_ruleid character varying DEFAULT NULL::character varying, p_field_name character varying DEFAULT NULL::character varying, p_operator character varying DEFAULT NULL::character varying, p_value text DEFAULT NULL::text, p_data_type character varying DEFAULT NULL::character varying, p_validation_message text DEFAULT NULL::text, p_condition_order integer DEFAULT NULL::integer, p_is_active boolean DEFAULT NULL::boolean, p_user_id character varying DEFAULT NULL::character varying, p_ip_address inet DEFAULT NULL::inet, p_user_agent text DEFAULT NULL::text) RETURNS jsonb
CREATE FUNCTION public.frulecondtionvalidate_condition_value(p_value text, p_data_type character varying, p_operator character varying) RETURNS text
CREATE FUNCTION public.frulesmastercurd(p_action character varying, p_ruleid character varying DEFAULT NULL::character varying, p_rulename character varying DEFAULT NULL::character varying, p_ruletype character varying DEFAULT NULL::character varying, p_appliesto character varying DEFAULT NULL::character varying, p_description text DEFAULT NULL::text, p_priority integer DEFAULT NULL::integer, p_isactive boolean DEFAULT NULL::boolean, p_startdate date DEFAULT NULL::date, p_enddate date DEFAULT NULL::date, p_user_id character varying DEFAULT NULL::character varying, p_ip_address inet DEFAULT NULL::inet, p_user_agent text DEFAULT NULL::text) RETURNS jsonb
CREATE FUNCTION public.func_insert_branch(p_bankcode character varying, p_branchname character varying, p_branchid character varying, p_managername character varying, p_phone character varying) RETURNS text
CREATE FUNCTION public.functionstudent(p_action character varying, p_rollno character varying DEFAULT NULL::character varying, p_name character varying DEFAULT NULL::character varying, p_mobile character varying DEFAULT NULL::character varying, p_subject character varying DEFAULT NULL::character varying, p_college character varying DEFAULT NULL::character varying) RETURNS TABLE(status_code integer, message text, affected_rows integer, action_performed character varying, student_data json)
CREATE FUNCTION public.get_operation_duration_ms(p_operation_id bigint) RETURNS integer
CREATE FUNCTION public.log_debug_information(p_operation_id bigint, p_debug_level integer) RETURNS void
CREATE FUNCTION public.log_error(p_operation_id bigint, p_function_name text, p_error_message text, p_error_detail text, p_sql_state text, p_context text, p_additional_info jsonb DEFAULT NULL::jsonb) RETURNS void
CREATE FUNCTION public.log_error(p_operation_id bigint, p_function_name character varying, p_error_message text, p_error_detail text DEFAULT NULL::text, p_sql_state character varying DEFAULT NULL::character varying, p_failed_query text DEFAULT NULL::text, p_input_parameters jsonb DEFAULT NULL::jsonb) RETURNS bigint
CREATE FUNCTION public.log_operation_completion(p_operation_id bigint, p_status text, p_eligible_count integer DEFAULT 0, p_processed_count integer DEFAULT 0, p_total_amount numeric DEFAULT 0, p_error_message text DEFAULT NULL::text, p_additional_info jsonb DEFAULT NULL::jsonb) RETURNS void
CREATE FUNCTION public.log_operation_event(p_operation_id bigint, p_event_type text, p_event_data jsonb, p_description text DEFAULT NULL::text) RETURNS void
CREATE FUNCTION public.log_operation_start(p_function_name text, p_parameters jsonb DEFAULT NULL::jsonb) RETURNS bigint
CREATE FUNCTION public.log_operation_start(p_function_name character varying, p_additional_info text DEFAULT NULL::text) RETURNS bigint
CREATE FUNCTION public.log_warning(p_operation_id bigint, p_function_name character varying, p_warning_message text, p_additional_info text DEFAULT NULL::text) RETURNS bigint
CREATE FUNCTION public.manage_dispatch(p_action character varying, p_request_id character varying DEFAULT NULL::character varying, p_username character varying DEFAULT NULL::character varying, p_receivername character varying DEFAULT NULL::character varying, p_idtype character varying DEFAULT NULL::character varying, p_mobileno character varying DEFAULT NULL::character varying, p_address text DEFAULT NULL::text, p_urldoclink text DEFAULT NULL::text, p_deliverydate date DEFAULT NULL::date) RETURNS TABLE(request_id character varying, username character varying, receivername character varying, idtype character varying, mobileno character varying, address text, urldoclink text, deliverydate date, created_at timestamp without time zone, updated_at timestamp without time zone)
CREATE FUNCTION public.mark_error_resolved(p_error_id bigint, p_resolved_by character varying DEFAULT NULL::character varying) RETURNS boolean
CREATE PROCEDURE public.pcustomer(IN action text, INOUT p_customercode character varying DEFAULT NULL::character varying, IN p_cbs_customer_code character varying DEFAULT NULL::character varying, IN p_fname character varying DEFAULT NULL::character varying, IN p_middlename character varying DEFAULT NULL::character varying, IN p_lname character varying DEFAULT NULL::character varying, IN p_salutation character varying DEFAULT NULL::character varying, IN p_emailid character varying DEFAULT NULL::character varying, IN p_mobileno character varying DEFAULT NULL::character varying, IN p_branchcode character varying DEFAULT NULL::character varying, IN p_bankcode character varying DEFAULT NULL::character varying, IN p_maritalstatus character DEFAULT NULL::bpchar, IN p_customer_status character DEFAULT NULL::bpchar, IN p_dob date DEFAULT NULL::date, IN p_address character varying DEFAULT NULL::character varying, IN p_nationality character varying DEFAULT NULL::character varying, IN p_gender character varying DEFAULT NULL::character varying, IN p_documenttype character varying DEFAULT NULL::character varying, IN p_documentid character varying DEFAULT NULL::character varying, IN p_occupation character varying DEFAULT NULL::character varying, IN p_employment_type character varying DEFAULT NULL::character varying, IN p_annualincome numeric DEFAULT NULL::numeric, IN p_fathername character varying DEFAULT NULL::character varying, IN p_mothername character varying DEFAULT NULL::character varying, IN p_spousename character varying DEFAULT NULL::character varying, IN p_grandfathername character varying DEFAULT NULL::character varying, IN p_notes text DEFAULT NULL::text, INOUT p_accountid character varying DEFAULT NULL::character varying, IN p_accountnumber character varying DEFAULT NULL::character varying, IN p_accounttype character varying DEFAULT NULL::character varying, IN p_balance numeric DEFAULT NULL::numeric, IN p_accountlimit numeric DEFAULT NULL::numeric, IN p_account_status character DEFAULT NULL::bpchar, INOUT p_cardid character varying DEFAULT NULL::character varying, IN p_schemetype character varying DEFAULT NULL::character varying, IN p_cardnumber character varying DEFAULT NULL::character varying, IN p_cardtype character varying DEFAULT NULL::character varying, IN p_expirydate date DEFAULT NULL::date, IN p_issuedate date DEFAULT NULL::date, IN p_card_status character DEFAULT NULL::bpchar, IN p_productid character varying DEFAULT NULL::character varying, IN p_autorenewal boolean DEFAULT false, IN p_profileid character varying DEFAULT NULL::character varying, IN p_profile_mapping_status character varying DEFAULT 'ACTIVE'::character varying, IN p_effective_date date DEFAULT NULL::date, IN p_expiry_date date DEFAULT NULL::date, IN p_assigned_by character varying DEFAULT 'SYSTEM'::character varying)
CREATE PROCEDURE public.procinsert_branch(IN p_bankcode character varying, IN p_branchname character varying, IN p_branchid character varying, IN p_managername character varying, IN p_phone character varying)
CREATE PROCEDURE public.rulesmonitor()
CREATE FUNCTION public.search_customer_dynamic(p_fname character varying DEFAULT NULL::character varying, p_lname character varying DEFAULT NULL::character varying, p_middlename character varying DEFAULT NULL::character varying, p_mobileno character varying DEFAULT NULL::character varying, p_customercode character varying DEFAULT NULL::character varying, p_accountno character varying DEFAULT NULL::character varying, p_cardno character varying DEFAULT NULL::character varying) RETURNS TABLE(customercode character varying, fname character varying, lname character varying, middlename character varying, mobileno character varying, accountid character varying, accountnumber character varying, accounttype character varying, balance numeric, cardid character varying, cardnumber character varying, cardtype character varying, schemetype character varying, status character)
CREATE FUNCTION public.search_customer_dynamic(p_action character varying DEFAULT NULL::character varying, p_fname character varying DEFAULT NULL::character varying, p_lname character varying DEFAULT NULL::character varying, p_middlename character varying DEFAULT NULL::character varying, p_mobileno character varying DEFAULT NULL::character varying, p_customercode character varying DEFAULT NULL::character varying, p_accountno character varying DEFAULT NULL::character varying, p_cardno character varying DEFAULT NULL::character varying) RETURNS TABLE(customercode character varying, fname character varying, lname character varying, middlename character varying, mobileno character varying, accountid character varying, accountnumber character varying, accounttype character varying, balance numeric, cardid character varying, cardnumber character varying, cardtype character varying, schemetype character varying)
CREATE FUNCTION public.search_customer_dynamic(p_action character varying DEFAULT NULL::character varying, p_fname character varying DEFAULT NULL::character varying, p_lname character varying DEFAULT NULL::character varying, p_middlename character varying DEFAULT NULL::character varying, p_mobileno character varying DEFAULT NULL::character varying, p_customercode character varying DEFAULT NULL::character varying, p_accountno character varying DEFAULT NULL::character varying, p_cardno character varying DEFAULT NULL::character varying, p_userid integer DEFAULT NULL::integer) RETURNS TABLE(customercode character varying, fname character varying, lname character varying, middlename character varying, mobileno character varying, accountid character varying, accountnumber character varying, accounttype character varying, balance numeric, cardid character varying, cardnumber character varying, cardtype character varying, schemetype character varying)
CREATE FUNCTION public.simple_apply_charges() RETURNS TABLE(status text, records integer, amount numeric)
CREATE FUNCTION public.simple_apply_to_all() RETURNS text
CREATE FUNCTION public.simple_wrapper_for_your_function() RETURNS TABLE(operation_status character varying, records_processed integer, total_amount numeric, message text)
CREATE FUNCTION public.test_charge_application() RETURNS TABLE(test_cardid character varying, status text, reason text)
CREATE FUNCTION public.trg_set_productid() RETURNS trigger
CREATE FUNCTION public.update_profile_column() RETURNS trigger
CREATE FUNCTION public.update_status_flag(p_dap_iden character varying, p_batchid character varying, p_status character varying) RETURNS void
CREATE FUNCTION public.update_updated_at_column() RETURNS trigger
CREATE FUNCTION public.update_updatedat_column() RETURNS trigger
CREATE FUNCTION public.update_updatedate_column() RETURNS trigger
CREATE FUNCTION public.working_apply_charges() RETURNS TABLE(status character varying, records_processed integer, total_amount numeric, message text)
CREATE TABLE public.account (
CREATE TABLE public.audit_trail (
CREATE SEQUENCE public.audit_trail_audit_id_seq
CREATE TABLE public.authlogin (
CREATE SEQUENCE public.authlogin_id_seq
CREATE TABLE public.branch (
CREATE SEQUENCE public.branch_id_seq
CREATE TABLE public.cache (
CREATE TABLE public.cache_locks (
CREATE TABLE public.card (
CREATE TABLE public.card_charges (
CREATE TABLE public.card_request_cycle (
CREATE TABLE public.card_request_cycle_action_log (
CREATE TABLE public.cardprofilemapping (
CREATE TABLE public.chargeconfig (
CREATE TABLE public.credit_card_application (
CREATE TABLE public.credit_score_calculation_log (
CREATE SEQUENCE public.credit_score_calculation_log_log_id_seq
CREATE TABLE public.creditcard_credit_assessment (
CREATE TABLE public.creditcard_documents (
CREATE TABLE public.creditcard_stage_history (
CREATE SEQUENCE public.creditcard_stage_history_history_id_seq
CREATE TABLE public.creditcardcycle (
CREATE TABLE public.currencies (
CREATE SEQUENCE public.currencies_id_seq
CREATE TABLE public.customer (
CREATE TABLE public.debit_card_application (
CREATE SEQUENCE public.department_id_seq
CREATE TABLE public.department (
CREATE TABLE public.dispatch (
CREATE TABLE public.email_logs (
CREATE TABLE public.email_queue (
CREATE TABLE public.email_templates (
CREATE TABLE public.email_variables (
CREATE TABLE public.error_log (
CREATE SEQUENCE public.error_log_error_id_seq
CREATE TABLE public.error_logs (
CREATE SEQUENCE public.error_logs_error_id_seq
CREATE TABLE public.excluded_tables (
CREATE SEQUENCE public.excluded_tables_id_seq
CREATE TABLE public.failed_jobs (
CREATE SEQUENCE public.failed_jobs_id_seq
CREATE TABLE public.fineconfigurations (
CREATE TABLE public.form_permission (
CREATE SEQUENCE public.form_permission_id_seq
CREATE TABLE public.instant_card_applications (
CREATE TABLE public.instant_card_applications_backupv1 (
CREATE TABLE public.instant_card_generation_batches (
CREATE SEQUENCE public.instant_card_generation_batches_s_no_seq
CREATE TABLE public.instantcardcycle (
CREATE TABLE public.instantcardstock (
CREATE TABLE public.institution (
CREATE SEQUENCE public.institution_id_seq
CREATE TABLE public.iso_transaction (
CREATE TABLE public.job_batches (
CREATE TABLE public.jobs (
CREATE SEQUENCE public.jobs_id_seq
CREATE TABLE public.ldap_configuration (
CREATE SEQUENCE public.ldap_configuration_id_seq
CREATE TABLE public.ledgers (
CREATE SEQUENCE public.ledgers_id_seq
CREATE TABLE public.log_auth (
CREATE SEQUENCE public.log_auth_id_seq
CREATE TABLE public.log_credit_card_cycle (
CREATE SEQUENCE public.log_credit_card_cycle_log_id_seq
CREATE TABLE public.log_instant_card_allocation (
CREATE SEQUENCE public.log_instant_card_allocation_log_id_seq
CREATE TABLE public.log_user (
CREATE TABLE public.log_user_access (
CREATE SEQUENCE public.log_user_access_id_seq
CREATE SEQUENCE public.log_user_id_seq
CREATE TABLE public.migrations (
CREATE SEQUENCE public.migrations_id_seq
CREATE TABLE public.module_permission (
CREATE SEQUENCE public.module_permission_id_seq
CREATE TABLE public.modules (
CREATE SEQUENCE public.modules_id_seq
CREATE TABLE public.operation_events (
CREATE SEQUENCE public.operation_events_event_id_seq
CREATE TABLE public.operation_log (
CREATE SEQUENCE public.operation_log_operation_id_seq
CREATE TABLE public.operation_logs (
CREATE SEQUENCE public.operation_logs_operation_id_seq
CREATE TABLE public.product_types (
CREATE SEQUENCE public.product_types_id_seq
CREATE TABLE public.products (
CREATE TABLE public.profilemaster (
CREATE TABLE public.profilerulemapping (
CREATE TABLE public.rpt_header_config (
CREATE TABLE public.rpt_raw_data (
CREATE TABLE public.ruleactions (
CREATE TABLE public.ruleconditions (
CREATE TABLE public.rulelogs (
CREATE SEQUENCE public.rulelogs_log_id_seq
CREATE TABLE public.rulesmaster (
CREATE SEQUENCE public.s_accountcode_id_seq
CREATE SEQUENCE public.s_action_id_seq
CREATE SEQUENCE public.s_assessment_id_seq
CREATE SEQUENCE public.s_cardcode_id_seq
CREATE SEQUENCE public.s_cardcyclecode_id_seq
CREATE SEQUENCE public.s_cardprofile_id_seq
CREATE SEQUENCE public.s_cardrequestcyclelog_id_seq
CREATE SEQUENCE public.s_charge_id_seq
CREATE SEQUENCE public.s_chargeidanual_seq
CREATE SEQUENCE public.s_chrg_id_seq
CREATE SEQUENCE public.s_condition_id_seq
CREATE SEQUENCE public.s_customer_id_seq
CREATE SEQUENCE public.s_customercode_id_seq
CREATE SEQUENCE public.s_documentcode_id_seq
CREATE SEQUENCE public.s_fine_id_seq
CREATE SEQUENCE public.s_instantcardupload_id_seq
CREATE SEQUENCE public.s_instantrequest_id_seq
CREATE SEQUENCE public.s_paymentdue_id_seq
CREATE SEQUENCE public.s_product_id_seq
CREATE SEQUENCE public.s_profile_id_seq
CREATE SEQUENCE public.s_report_id_seq
CREATE SEQUENCE public.s_rule_id_seq
CREATE SEQUENCE public.s_ruleprofile_id_seq
CREATE TABLE public.scheme_types (
CREATE SEQUENCE public.scheme_types_id_seq
CREATE TABLE public.sessions (
CREATE TABLE public.student (
CREATE TABLE public.template_categories (
CREATE TABLE public.total_fee (
CREATE SEQUENCE public.users_id_seq
CREATE TABLE public.users (
CREATE TABLE public.usertype (
CREATE SEQUENCE public.usertype_id_seq
CREATE TABLE public.v_eligible_count (
CREATE INDEX idx_audit_created ON public.audit_trail USING btree (created_at DESC);
CREATE INDEX idx_audit_entity ON public.audit_trail USING btree (entity_type, action_type);
CREATE INDEX idx_batch_id ON public.instant_card_generation_batches USING btree (batch_id);
CREATE INDEX idx_batchid ON public.instant_card_applications USING btree (batchid);
CREATE INDEX idx_card_charges_cardid_year_type ON public.card_charges USING btree (cardid, charge_year, charge_type) WHERE ((status)::text <> 'CANCELLED'::text);
CREATE INDEX idx_card_types ON public.instant_card_generation_batches USING gin (card_types);
CREATE INDEX idx_cardprofile_active ON public.cardprofilemapping USING btree (cardid, profileid) WHERE ((status)::text = 'ACTIVE'::text);
CREATE INDEX idx_created_at ON public.instant_card_applications USING btree (created_at);
CREATE INDEX idx_credit_score_log_request_id ON public.credit_score_calculation_log USING btree (request_id);
CREATE INDEX idx_credit_score_log_timestamp ON public.credit_score_calculation_log USING btree (calculation_timestamp);
CREATE INDEX idx_dap_birt_dat1 ON public.debit_card_application USING btree (dap_birt_dat1);
CREATE INDEX idx_dap_bra_code ON public.debit_card_application USING btree (dap_bra_code);
CREATE INDEX idx_dap_cus_iden ON public.instant_card_applications USING btree (dap_cus_iden);
CREATE INDEX idx_dap_cus_idendebit ON public.debit_card_application USING btree (dap_cus_iden);
CREATE INDEX idx_dap_cus_type ON public.instant_card_applications USING btree (dap_cus_type);
CREATE INDEX idx_dap_date ON public.instant_card_applications USING btree (dap_date);
CREATE INDEX idx_dap_firs_ide1 ON public.debit_card_application USING btree (dap_firs_ide1);
CREATE INDEX idx_dap_requ_acc_numb ON public.instant_card_applications USING btree (dap_requ_acc_numb);
CREATE INDEX idx_error_log_operation ON public.error_log USING btree (operation_id);
CREATE INDEX idx_error_log_resolved ON public.error_log USING btree (resolved);
CREATE INDEX idx_error_log_time ON public.error_log USING btree (error_timestamp);
CREATE INDEX idx_instatcardstock_accountnumber ON public.instantcardstock USING btree (accountnumber);
CREATE INDEX idx_instatcardstock_allocatedbranch ON public.instantcardstock USING btree (allocatedbranch);
CREATE INDEX idx_instatcardstock_batchid ON public.instantcardstock USING btree (batchid);
CREATE INDEX idx_instatcardstock_cardnumber ON public.instantcardstock USING btree (cardnumber);
CREATE INDEX idx_instatcardstock_expirydate ON public.instantcardstock USING btree (expirydate);
CREATE INDEX idx_instatcardstock_requestbranch ON public.instantcardstock USING btree (requestbranch);
CREATE INDEX idx_instatcardstock_status ON public.instantcardstock USING btree (status);
CREATE INDEX idx_log_cardnumber ON public.log_instant_card_allocation USING btree (cardnumber);
CREATE INDEX idx_log_cc_action ON public.log_credit_card_cycle USING btree (action_type);
CREATE INDEX idx_log_cc_request_id ON public.log_credit_card_cycle USING btree (request_id);
CREATE INDEX idx_log_cc_timestamp ON public.log_credit_card_cycle USING btree (log_timestamp);
CREATE INDEX idx_log_cc_user ON public.log_credit_card_cycle USING btree (user_id);
CREATE INDEX idx_log_timestamp ON public.log_instant_card_allocation USING btree (log_timestamp DESC);
CREATE INDEX idx_log_user_ops ON public.log_instant_card_allocation USING btree (performed_by, log_timestamp);
CREATE INDEX idx_profilerulemapping_active ON public.profilerulemapping USING btree (profileid, ruleid) WHERE is_active;
CREATE INDEX idx_request_ids ON public.instant_card_generation_batches USING gin (request_ids);
CREATE INDEX idx_rpt_config_type ON public.rpt_header_config USING btree (report_type);
CREATE INDEX idx_rpt_raw_data_batch_id ON public.rpt_raw_data USING btree (batch_id);
CREATE INDEX idx_rpt_raw_data_created_at ON public.rpt_raw_data USING btree (created_at DESC);
CREATE INDEX idx_rpt_raw_data_json ON public.rpt_raw_data USING gin (card_data);
CREATE INDEX idx_rpt_raw_data_report_config ON public.rpt_raw_data USING btree (report_config_id);
CREATE INDEX idx_rpt_raw_data_request_id ON public.rpt_raw_data USING btree (request_id);
CREATE INDEX idx_rpt_raw_data_status ON public.rpt_raw_data USING btree (status);
CREATE INDEX idx_ruleactions_ruleid ON public.ruleactions USING btree (ruleid);
CREATE INDEX idx_ruleactions_type ON public.ruleactions USING btree (action_type);
CREATE INDEX idx_ruleactions_value ON public.ruleactions USING gin (action_value);
CREATE INDEX idx_ruleconditions_ruleid_active ON public.ruleconditions USING btree (ruleid) WHERE is_active;
CREATE INDEX idx_rulesmaster_active ON public.rulesmaster USING btree (ruleid) WHERE (isactive = true);
CREATE INDEX idx_schemes ON public.instant_card_generation_batches USING gin (schemes);
CREATE INDEX idx_status ON public.instant_card_generation_batches USING btree (status);
CREATE INDEX idx_statusflag ON public.instant_card_applications USING btree (statusflag);
CREATE INDEX idx_timestamp ON public.instant_card_generation_batches USING btree ("timestamp");
CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
CREATE INDEX log_user_access_action_index ON public.log_user_access USING btree (action);
CREATE INDEX log_user_access_userid_index ON public.log_user_access USING btree (userid);
CREATE TRIGGER trg_instantcardcycle_status_updatebothflagtrue BEFORE UPDATE OF bookedcardallocated, approvedcardsallocated ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();
CREATE TRIGGER trg_set_productid BEFORE INSERT ON public.products FOR EACH ROW EXECUTE FUNCTION public.fcreateproductid();
CREATE TRIGGER trigger_status_update_both_flags BEFORE UPDATE ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();
CREATE TRIGGER trigger_update_dispatch BEFORE UPDATE ON public.dispatch FOR EACH ROW EXECUTE FUNCTION public.dispatch_updated_at_column();
CREATE TRIGGER update_instant_card_applications_updated_at BEFORE UPDATE ON public.instant_card_applications FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
