prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.18'
,p_default_workspace_id=>1830779194801783
,p_default_application_id=>2018
,p_default_id_offset=>0
,p_default_owner=>'USER_SERV'
);
end;
/
 
prompt APPLICATION 2018 - User Services
--
-- Application Export:
--   Application:     2018
--   Name:            User Services
--   Date and Time:   11:14 Friday November 12, 2021
--   Exported By:     ALEXANDRU.BASARAB@DIGI-SOFT.RO
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 236834669206884813
--   Manifest End
--   Version:         19.2.0.00.18
--   Instance ID:     113895894385969
--

begin
  -- replace components
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/oahaha_apex_autocomplete_on_character
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(236834669206884813)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'OAHAHA.APEX.AUTOCOMPLETE.ON.CHARACTER'
,p_display_name=>'Oahaha APEX Autocomplete on Character'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://code.jquery.com/jquery-3.6.0.js',
'https://code.jquery.com/ui/1.13.0/jquery-ui.js'))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION F_AJAX (',
'    P_DYNAMIC_ACTION   IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'    P_PLUGIN           IN APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_AJAX_RESULT IS',
'    VR_RESULT         APEX_PLUGIN.T_DYNAMIC_ACTION_AJAX_RESULT;',
'BEGIN',
'    APEX_UTIL.JSON_FROM_SQL( SQLQ   => P_DYNAMIC_ACTION.ATTRIBUTE_02 );',
'    RETURN VR_RESULT;',
'END;',
'',
'FUNCTION F_RENDER (',
'    P_DYNAMIC_ACTION   IN APEX_PLUGIN.T_DYNAMIC_ACTION,',
'    P_PLUGIN           IN APEX_PLUGIN.T_PLUGIN',
') RETURN APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT AS',
'    VR_RESULT         APEX_PLUGIN.T_DYNAMIC_ACTION_RENDER_RESULT;',
'    VR_REQUIRE_ESCAPE BOOLEAN := TRUE;',
'BEGIN',
'',
'   APEX_JAVASCRIPT.ADD_LIBRARY(',
'        P_NAME        => ''oahaha.autocomplete.on.character.min'',',
'        P_DIRECTORY   => P_PLUGIN.FILE_PREFIX,',
'        P_VERSION     => NULL,',
'        P_KEY         => ''oahahaautocompleteonchar''',
'    );',
'    ',
'',
'    VR_RESULT.JAVASCRIPT_FUNCTION   := ''function () {',
'  oahahaAutocompleteOnChar.initialize('' ||',
'    APEX_JAVASCRIPT.ADD_VALUE( P_DYNAMIC_ACTION.ATTRIBUTE_01, TRUE ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE( APEX_PLUGIN.GET_AJAX_IDENTIFIER, TRUE ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE( P_DYNAMIC_ACTION.ATTRIBUTE_03, TRUE ) ||',
'    APEX_JAVASCRIPT.ADD_VALUE( APEX_PLUGIN_UTIL.PAGE_ITEM_NAMES_TO_JQUERY(P_DYNAMIC_ACTION.ATTRIBUTE_02), TRUE ) ||',
'    '');}'';',
'',
'    RETURN VR_RESULT;',
'END;'))
,p_api_version=>2
,p_render_function=>'F_RENDER'
,p_ajax_function=>'F_AJAX'
,p_standard_attributes=>'ITEM'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/AlexandruBasarab/APEX-Autocomplete-on-Character'
,p_files_version=>5
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(236834832275888163)
,p_plugin_id=>wwv_flow_api.id(236834669206884813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(236835163759891682)
,p_plugin_id=>wwv_flow_api.id(236834669206884813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'SQL Source'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_sql_min_column_count=>1
,p_sql_max_column_count=>3
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(236835488398893017)
,p_plugin_id=>wwv_flow_api.id(236834669206884813)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Items to Submit'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220246A203D206A51756572792E6E6F436F6E666C69637428293B0D0A766172206F61686168614175746F636F6D706C6574654F6E43686172203D202866756E6374696F6E2829207B0D0A202020202275736520737472696374223B0D0A20202020';
wwv_flow_api.g_varchar2_table(2) := '7661722073637269707456657273696F6E203D2022312E302E30223B0D0A20202020766172207574696C203D207B0D0A202020202020202076657273696F6E3A2022312E302E30222C0D0A20202020202020206973446566696E6564416E644E6F744E75';
wwv_flow_api.g_varchar2_table(3) := '6C6C3A2066756E6374696F6E2870496E70757429207B0D0A20202020202020202020202069662028747970656F662070496E70757420213D3D2022756E646566696E6564222026262070496E70757420213D3D206E756C6C29207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(4) := '20202020202020202072657475726E20747275653B0D0A2020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202072657475726E2066616C73653B0D0A2020202020202020202020207D0D0A20202020202020207D';
wwv_flow_api.g_varchar2_table(5) := '2C0D0A20202020202020206973415045583A2066756E6374696F6E2829207B0D0A20202020202020202020202069662028747970656F6628617065782920213D3D2027756E646566696E65642729207B0D0A202020202020202020202020202020207265';
wwv_flow_api.g_varchar2_table(6) := '7475726E20747275653B0D0A2020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202072657475726E2066616C73653B0D0A2020202020202020202020207D0D0A20202020202020207D2C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(7) := '64656275673A207B0D0A202020202020202020202020696E666F3A2066756E6374696F6E2873747229207B0D0A20202020202020202020202020202020696620287574696C2E697341504558282929207B0D0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(8) := '202020617065782E64656275672E696E666F28737472293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D2C0D0A2020202020202020202020206572726F723A2066756E6374696F6E2873747229207B0D0A202020';
wwv_flow_api.g_varchar2_table(9) := '20202020202020202020202020696620287574696C2E697341504558282929207B0D0A2020202020202020202020202020202020202020617065782E64656275672E6572726F7228737472293B0D0A202020202020202020202020202020207D20656C73';
wwv_flow_api.g_varchar2_table(10) := '65207B0D0A2020202020202020202020202020202020202020636F6E736F6C652E6572726F7228737472293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020207D2C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(11) := '6C696E6B3A2066756E6374696F6E286C696E6B2C2074616262656429207B0D0A2020202020202020202020206966202874616262656429207B0D0A2020202020202020202020202020202077696E646F772E6F70656E286C696E6B2C20225F626C616E6B';
wwv_flow_api.g_varchar2_table(12) := '22293B0D0A2020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202072657475726E2077696E646F772E6C6F636174696F6E203D206C696E6B3B0D0A2020202020202020202020207D0D0A20202020202020207D2C';
wwv_flow_api.g_varchar2_table(13) := '0D0A20202020202020206973546F7563684465766963653A2066756E6374696F6E2829207B0D0A20202020202020202020202072657475726E20226F6E746F75636873746172742220696E2077696E646F773B0D0A20202020202020207D2C0D0A202020';
wwv_flow_api.g_varchar2_table(14) := '202020202073706C69743A2066756E6374696F6E2876616C29207B0D0A20202020202020202020202072657475726E2076616C2E73706C6974282F5C732B2F293B0D0A20202020202020207D2C0D0A2020202020202020657874726163744C6173743A20';
wwv_flow_api.g_varchar2_table(15) := '66756E6374696F6E287465726D29207B0D0A20202020202020202020202072657475726E207574696C2E73706C6974287465726D292E706F7028293B0D0A20202020202020207D0D0A202020207D3B0D0A0D0A2020202072657475726E207B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(16) := '20202020202020696E697469616C697A653A2066756E6374696F6E28656C656D656E7449442C20616A617849442C206974656D73325375626D697429207B0D0A0D0A2020202020202020202020202F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(17) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0D0A202020202020202020202020202A2A0D0A202020202020202020202020202A2A2066756E6374696F6E20746F20676574';
wwv_flow_api.g_varchar2_table(18) := '20646174612066726F6D20417065780D0A202020202020202020202020202A2A0D0A202020202020202020202020202A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(19) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2F0D0A20202020202020202020202066756E6374696F6E2067657444617461286629207B0D0A20202020202020202020202020202020617065782E7365727665722E706C7567696E280D0A20202020202020';
wwv_flow_api.g_varchar2_table(20) := '20202020202020202020202020616A617849442C207B0D0A202020202020202020202020202020202020202020202020706167654974656D733A206974656D73325375626D69740D0A20202020202020202020202020202020202020207D2C207B0D0A20';
wwv_flow_api.g_varchar2_table(21) := '2020202020202020202020202020202020202020202020737563636573733A2066756E6374696F6E286429207B0D0A20202020202020202020202020202020202020202020202020202020662864293B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(22) := '2020202020207D2C0D0A2020202020202020202020202020202020202020202020206572726F723A2066756E6374696F6E286429207B0D0A202020202020202020202020202020202020202020202020202020207574696C2E64656275672E6572726F72';
wwv_flow_api.g_varchar2_table(23) := '28224572726F72207768696C652074727920746F206C6F616420646174612122293B0D0A202020202020202020202020202020202020202020202020202020207574696C2E64656275672E6572726F7228642E726573706F6E736554657874293B0D0A20';
wwv_flow_api.g_varchar2_table(24) := '20202020202020202020202020202020202020202020207D2C0D0A20202020202020202020202020202020202020202020202064617461547970653A20226A736F6E220D0A20202020202020202020202020202020202020207D293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(25) := '2020202020207D0D0A0D0A20202020202020202020202067657444617461286164644175746F636F6D706C657465293B0D0A0D0A2020202020202020202020202F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(26) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0D0A202020202020202020202020202A2A0D0A202020202020202020202020202A2A205573656420746F20616464206175746F636F6D706C65746520746F2069';
wwv_flow_api.g_varchar2_table(27) := '74656D0D0A202020202020202020202020202A2A0D0A202020202020202020202020202A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(28) := '2A2A2A2A2A2A2F0D0A20202020202020202020202066756E6374696F6E206164644175746F636F6D706C65746528646174614A534F4E29207B0D0A0D0A202020202020202020202020202020207574696C2E64656275672E696E666F28646174614A534F';
wwv_flow_api.g_varchar2_table(29) := '4E293B0D0A0D0A20202020202020202020202020202020246A28272327202B20656C656D656E744944292E62696E6428226B6579646F776E222C2066756E6374696F6E286576656E7429207B0D0A20202020202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(30) := '20286576656E742E6B6579436F6465203D3D3D20246A2E75692E6B6579436F64652E5441422026260D0A202020202020202020202020202020202020202020202020246A2874686973292E6175746F636F6D706C6574652822696E7374616E636522292E';
wwv_flow_api.g_varchar2_table(31) := '6D656E752E61637469766529207B0D0A2020202020202020202020202020202020202020202020206576656E742E70726576656E7444656661756C7428293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(32) := '202020207D292E6175746F636F6D706C657465287B0D0A20202020202020202020202020202020202020206D696E4C656E6774683A20312C0D0A2020202020202020202020202020202020202020736F757263653A2066756E6374696F6E287265717565';
wwv_flow_api.g_varchar2_table(33) := '73742C20726573706F6E736529207B0D0A0D0A2020202020202020202020202020202020202020202020202F2F2064656C6567617465206261636B20746F206175746F636F6D706C6574652C20627574206578747261637420746865206C617374207465';
wwv_flow_api.g_varchar2_table(34) := '726D0D0A202020202020202020202020202020202020202020202020766172206C617374776F7264203D207574696C2E657874726163744C61737428246A2E7472696D28726571756573742E7465726D29293B0D0A0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(35) := '20202020202020202020202F2F2052656765787020666F722066696C746572696E672074686F7365206C6162656C7320746861742073746172742077697468202740270D0A202020202020202020202020202020202020202020202020766172206D6174';
wwv_flow_api.g_varchar2_table(36) := '63686572203D206E65772052656745787028225E22202B20246A2E75692E6175746F636F6D706C6574652E6573636170655265676578286C617374776F7264292C20226922293B0D0A2020202020202020202020202020202020202020202020202F2F20';
wwv_flow_api.g_varchar2_table(37) := '47657420616C6C206C6162656C730D0A202020202020202020202020202020202020202020202020766172206974656D73203D20646174614A534F4E2E726F773B0D0A2020202020202020202020202020202020202020202020207574696C2E64656275';
wwv_flow_api.g_varchar2_table(38) := '672E696E666F286974656D73293B0D0A0D0A2020202020202020202020202020202020202020202020207661722066696C74657264203D20246A2E67726570286974656D732C2066756E6374696F6E286974656D29207B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(39) := '202020202020202020202020202020202072657475726E206D6174636865722E74657374286974656D2E4C4142454C293B0D0A2020202020202020202020202020202020202020202020207D293B0D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(40) := '20202020726573706F6E73652866696C74657264293B0D0A20202020202020202020202020202020202020207D2C0D0A2020202020202020202020202020202020202020666F6375733A2066756E6374696F6E2829207B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(41) := '202020202020202020202020202F2F2070726576656E742076616C756520696E736572746564206F6E20666F6375730D0A20202020202020202020202020202020202020202020202072657475726E2066616C73653B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(42) := '20202020202020207D2C0D0A202020202020202020202020202020202020202073656C6563743A2066756E6374696F6E286576656E742C20756929207B0D0A202020202020202020202020202020202020202020202020766172207465726D73203D2074';
wwv_flow_api.g_varchar2_table(43) := '6869732E76616C75652E73706C6974282F285C732B292F293B0D0A2020202020202020202020202020202020202020202020202F2F2072656D6F7665207468652063757272656E7420696E7075740D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(44) := '202020207465726D732E706F7028293B0D0A2020202020202020202020202020202020202020202020202F2F20616464207468652073656C6563746564206974656D0D0A2020202020202020202020202020202020202020202020207465726D732E7075';
wwv_flow_api.g_varchar2_table(45) := '73682875692E6974656D2E4C4142454C293B0D0A2020202020202020202020202020202020202020202020202F2F2061646420706C616365686F6C64657220746F206765742074686520636F6D6D612D616E642D73706163652061742074686520656E64';
wwv_flow_api.g_varchar2_table(46) := '0D0A2020202020202020202020202020202020202020202020207465726D732E70757368282222293B0D0A2020202020202020202020202020202020202020202020207465726D732E666F72456163682866756E6374696F6E28706172742C20696E6465';
wwv_flow_api.g_varchar2_table(47) := '7829207B0D0A2020202020202020202020202020202020202020202020202020202069662028746869735B696E6465785D2E696E636C75646573282240222929207B0D0A2020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(48) := '6966202821746869735B696E6465785D2E696E636C75646573282220222929207B0D0A2020202020202020202020202020202020202020202020202020202020202020202020206966202821746869735B696E646578202B20315D2E696E636C75646573';
wwv_flow_api.g_varchar2_table(49) := '282220222929207B0D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020746869735B696E6465785D203D20746869735B696E6465785D202B202220223B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(50) := '20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202020202020202020207D0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(51) := '202020202020202020202020207D2C207465726D73293B0D0A202020202020202020202020202020202020202020202020746869732E76616C7565203D207465726D732E6A6F696E282222293B0D0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(52) := '20202072657475726E2066616C73653B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A0D0A20202020202020202020202020202020246A28272327202B20656C656D656E744944292E';
wwv_flow_api.g_varchar2_table(53) := '64617461282275692D6175746F636F6D706C65746522292E5F72656E6465724974656D203D2066756E6374696F6E28756C2C206974656D29207B0D0A2020202020202020202020202020202020202020696620286974656D2E494D414745203D3D202727';
wwv_flow_api.g_varchar2_table(54) := '29207B0D0A20202020202020202020202020202020202020202020202072657475726E20246A28273C6C692F3E272C207B2027646174612D76616C7565273A206974656D2E4C4142454C207D292E617070656E6428246A28273C612F3E272C207B206872';
wwv_flow_api.g_varchar2_table(55) := '65663A20222322207D292E617070656E64286974656D2E4C4142454C29290D0A202020202020202020202020202020202020202020202020202020202E617070656E64546F28756C293B0D0A20202020202020202020202020202020202020207D20656C';
wwv_flow_api.g_varchar2_table(56) := '7365207B0D0A20202020202020202020202020202020202020202020202072657475726E20246A28273C6C692F3E272C207B2027646174612D76616C7565273A206974656D2E4C4142454C207D292E617070656E6428246A28273C612F3E272C207B2068';
wwv_flow_api.g_varchar2_table(57) := '7265663A20222322207D290D0A20202020202020202020202020202020202020202020202020202020202020202E617070656E6428246A28273C696D672F3E272C207B207372633A206974656D2E494D4147452C207374796C653A202277696474683A32';
wwv_flow_api.g_varchar2_table(58) := '3570783B6865696768743A3235707822207D29292E617070656E64286974656D2E4C4142454C29290D0A202020202020202020202020202020202020202020202020202020202E617070656E64546F28756C293B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(59) := '2020202020207D0D0A0D0A202020202020202020202020202020207D0D0A0D0A2020202020202020202020207D0D0A20202020202020207D0D0A202020207D0D0A7D2928293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(236835834156896221)
,p_plugin_id=>wwv_flow_api.id(236834669206884813)
,p_file_name=>'oahaha.autocomplete.on.character.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220246A3D6A51756572792E6E6F436F6E666C69637428292C6F61686168614175746F636F6D706C6574654F6E436861723D66756E6374696F6E28297B2275736520737472696374223B76617220653D7B76657273696F6E3A22312E302E30222C69';
wwv_flow_api.g_varchar2_table(2) := '73446566696E6564416E644E6F744E756C6C3A66756E6374696F6E2865297B72657475726E206E756C6C213D657D2C6973415045583A66756E6374696F6E28297B72657475726E22756E646566696E656422213D747970656F6620617065787D2C646562';
wwv_flow_api.g_varchar2_table(3) := '75673A7B696E666F3A66756E6374696F6E286E297B652E69734150455828292626617065782E64656275672E696E666F286E297D2C6572726F723A66756E6374696F6E286E297B652E69734150455828293F617065782E64656275672E6572726F72286E';
wwv_flow_api.g_varchar2_table(4) := '293A636F6E736F6C652E6572726F72286E297D7D2C6C696E6B3A66756E6374696F6E28652C6E297B696628216E2972657475726E2077696E646F772E6C6F636174696F6E3D653B77696E646F772E6F70656E28652C225F626C616E6B22297D2C6973546F';
wwv_flow_api.g_varchar2_table(5) := '7563684465766963653A66756E6374696F6E28297B72657475726E226F6E746F756368737461727422696E2077696E646F777D2C73706C69743A66756E6374696F6E2865297B72657475726E20652E73706C6974282F5C732B2F297D2C65787472616374';
wwv_flow_api.g_varchar2_table(6) := '4C6173743A66756E6374696F6E286E297B72657475726E20652E73706C6974286E292E706F7028297D7D3B72657475726E7B696E697469616C697A653A66756E6374696F6E286E2C742C69297B766172206F3B6F3D66756E6374696F6E2874297B652E64';
wwv_flow_api.g_varchar2_table(7) := '656275672E696E666F2874292C246A282223222B6E292E62696E6428226B6579646F776E222C2866756E6374696F6E2865297B652E6B6579436F64653D3D3D246A2E75692E6B6579436F64652E5441422626246A2874686973292E6175746F636F6D706C';
wwv_flow_api.g_varchar2_table(8) := '6574652822696E7374616E636522292E6D656E752E6163746976652626652E70726576656E7444656661756C7428297D29292E6175746F636F6D706C657465287B6D696E4C656E6774683A312C736F757263653A66756E6374696F6E286E2C69297B7661';
wwv_flow_api.g_varchar2_table(9) := '72206F3D652E657874726163744C61737428246A2E7472696D286E2E7465726D29292C723D6E65772052656745787028225E222B246A2E75692E6175746F636F6D706C6574652E6573636170655265676578286F292C226922292C753D742E726F773B65';
wwv_flow_api.g_varchar2_table(10) := '2E64656275672E696E666F2875292C6928246A2E6772657028752C2866756E6374696F6E2865297B72657475726E20722E7465737428652E4C4142454C297D2929297D2C666F6375733A66756E6374696F6E28297B72657475726E21317D2C73656C6563';
wwv_flow_api.g_varchar2_table(11) := '743A66756E6374696F6E28652C6E297B76617220743D746869732E76616C75652E73706C6974282F285C732B292F293B72657475726E20742E706F7028292C742E70757368286E2E6974656D2E4C4142454C292C742E70757368282222292C742E666F72';
wwv_flow_api.g_varchar2_table(12) := '45616368282866756E6374696F6E28652C6E297B746869735B6E5D2E696E636C756465732822402229262628746869735B6E5D2E696E636C7564657328222022297C7C746869735B6E2B315D2E696E636C7564657328222022297C7C28746869735B6E5D';
wwv_flow_api.g_varchar2_table(13) := '3D746869735B6E5D2B22202229297D292C74292C746869732E76616C75653D742E6A6F696E282222292C21317D7D292C246A282223222B6E292E64617461282275692D6175746F636F6D706C65746522292E5F72656E6465724974656D3D66756E637469';
wwv_flow_api.g_varchar2_table(14) := '6F6E28652C6E297B72657475726E22223D3D6E2E494D4147453F246A28223C6C692F3E222C7B22646174612D76616C7565223A6E2E4C4142454C7D292E617070656E6428246A28223C612F3E222C7B687265663A2223227D292E617070656E64286E2E4C';
wwv_flow_api.g_varchar2_table(15) := '4142454C29292E617070656E64546F2865293A246A28223C6C692F3E222C7B22646174612D76616C7565223A6E2E4C4142454C7D292E617070656E6428246A28223C612F3E222C7B687265663A2223227D292E617070656E6428246A28223C696D672F3E';
wwv_flow_api.g_varchar2_table(16) := '222C7B7372633A6E2E494D4147452C7374796C653A2277696474683A323570783B6865696768743A32357078227D29292E617070656E64286E2E4C4142454C29292E617070656E64546F2865297D7D2C617065782E7365727665722E706C7567696E2874';
wwv_flow_api.g_varchar2_table(17) := '2C7B706167654974656D733A697D2C7B737563636573733A66756E6374696F6E2865297B6F2865297D2C6572726F723A66756E6374696F6E286E297B652E64656275672E6572726F7228224572726F72207768696C652074727920746F206C6F61642064';
wwv_flow_api.g_varchar2_table(18) := '6174612122292C652E64656275672E6572726F72286E2E726573706F6E736554657874297D2C64617461547970653A226A736F6E227D297D7D7D28293B0A2F2F2320736F757263654D617070696E6755524C3D6F61686168612E6175746F636F6D706C65';
wwv_flow_api.g_varchar2_table(19) := '74652E6F6E2E6368617261637465722E6A732E6D6170';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(236836713984899012)
,p_plugin_id=>wwv_flow_api.id(236834669206884813)
,p_file_name=>'oahaha.autocomplete.on.character.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7B2276657273696F6E223A332C22736F7572636573223A5B226F61686168612E6175746F636F6D706C6574652E6F6E2E6368617261637465722E6A73225D2C226E616D6573223A5B22246A222C226A5175657279222C226E6F436F6E666C696374222C22';
wwv_flow_api.g_varchar2_table(2) := '6F61686168614175746F636F6D706C6574654F6E43686172222C227574696C222C2276657273696F6E222C226973446566696E6564416E644E6F744E756C6C222C2270496E707574222C22697341504558222C226465627567222C22696E666F222C2273';
wwv_flow_api.g_varchar2_table(3) := '7472222C2261706578222C226572726F72222C22636F6E736F6C65222C226C696E6B222C22746162626564222C2277696E646F77222C226C6F636174696F6E222C226F70656E222C226973546F756368446576696365222C2273706C6974222C2276616C';
wwv_flow_api.g_varchar2_table(4) := '222C22657874726163744C617374222C227465726D222C22706F70222C22696E697469616C697A65222C22656C656D656E744944222C22616A61784944222C226974656D73325375626D6974222C2266222C22646174614A534F4E222C2262696E64222C';
wwv_flow_api.g_varchar2_table(5) := '226576656E74222C226B6579436F6465222C227569222C22544142222C2274686973222C226175746F636F6D706C657465222C226D656E75222C22616374697665222C2270726576656E7444656661756C74222C226D696E4C656E677468222C22736F75';
wwv_flow_api.g_varchar2_table(6) := '726365222C2272657175657374222C22726573706F6E7365222C226C617374776F7264222C227472696D222C226D617463686572222C22526567457870222C226573636170655265676578222C226974656D73222C22726F77222C2267726570222C2269';
wwv_flow_api.g_varchar2_table(7) := '74656D222C2274657374222C224C4142454C222C22666F637573222C2273656C656374222C227465726D73222C2276616C7565222C2270757368222C22666F7245616368222C2270617274222C22696E646578222C22696E636C75646573222C226A6F69';
wwv_flow_api.g_varchar2_table(8) := '6E222C2264617461222C225F72656E6465724974656D222C22756C222C22494D414745222C22617070656E64222C2268726566222C22617070656E64546F222C22737263222C227374796C65222C22736572766572222C22706C7567696E222C22706167';
wwv_flow_api.g_varchar2_table(9) := '654974656D73222C2273756363657373222C2264222C22726573706F6E736554657874222C226461746154797065225D2C226D617070696E6773223A22414141412C49414149412C4741414B432C4F41414F432C6141435A432C7942414132422C574143';
wwv_flow_api.g_varchar2_table(10) := '33422C614143412C49414349432C4541414F2C43414350432C514141532C51414354432C6F42414171422C53414153432C47414331422C4F4141492C4D41414F412C47414D66432C4F4141512C5741434A2C4D414171422C6F424141582C4D414D64432C';
wwv_flow_api.g_varchar2_table(11) := '4D41414F2C43414348432C4B41414D2C53414153432C47414350502C4541414B492C5541434C492C4B41414B482C4D41414D432C4B41414B432C4941477842452C4D41414F2C53414153462C47414352502C4541414B492C5341434C492C4B41414B482C';
wwv_flow_api.g_varchar2_table(12) := '4D41414D492C4D41414D462C4741456A42472C51414151442C4D41414D462C4B41493142492C4B41414D2C53414153412C4541414D432C4741436A422C49414149412C454147412C4F41414F432C4F41414F432C53414157482C4541467A42452C4F4141';
wwv_flow_api.g_varchar2_table(13) := '4F452C4B41414B4A2C4541414D2C57414B31424B2C634141652C574143582C4D41414F2C694241416B42482C5141453742492C4D41414F2C53414153432C4741435A2C4F41414F412C45414149442C4D41414D2C5141457242452C594141612C53414153';
wwv_flow_api.g_varchar2_table(14) := '432C4741436C422C4F41414F70422C4541414B69422C4D41414D472C4741414D432C51414968432C4D41414F2C43414548432C574141592C53414153432C45414157432C45414151432C47414F70432C4941416942432C45414141412C454175426A422C';
wwv_flow_api.g_varchar2_table(15) := '5341417942432C474145724233422C4541414B4B2C4D41414D432C4B41414B71422C47414568422F422C474141472C4941414D32422C474141574B2C4B41414B2C574141572C53414153432C4741437243412C4541414D432C554141596C432C47414147';
wwv_flow_api.g_varchar2_table(16) := '6D432C47414147442C51414151452C4B4143684370432C4741414771432C4D41414D432C614141612C59414159432C4B41414B432C5141437643502C4541414D512C6F42414558482C614141612C4341435A492C554141572C45414358432C4F4141512C';
wwv_flow_api.g_varchar2_table(17) := '53414153432C45414153432C47414774422C49414149432C4541415731432C4541414B6D422C5941415976422C474141472B432C4B41414B482C4541415170422C4F4147354377422C454141552C49414149432C4F41414F2C4941414D6A442C47414147';
wwv_flow_api.g_varchar2_table(18) := '6D432C47414147472C61414161592C594141594A2C474141572C4B414572454B2C4541415170422C4541415371422C494143724268442C4541414B4B2C4D41414D432C4B41414B79432C47414B68424E2C4541486337432C4741414771442C4B41414B46';
wwv_flow_api.g_varchar2_table(19) := '2C4741414F2C53414153472C4741436C432C4F41414F4E2C454141514F2C4B41414B442C4541414B452C5941496A43432C4D41414F2C574145482C4F41414F2C47414558432C4F4141512C534141537A422C4541414F452C47414370422C494141497742';
wwv_flow_api.g_varchar2_table(20) := '2C4541415174422C4B41414B75422C4D41414D76432C4D41414D2C5341694237422C4F41664173432C4541414D6C432C4D41454E6B432C4541414D452C4B41414B31422C454141476D422C4B41414B452C4F41456E42472C4541414D452C4B41414B2C49';
wwv_flow_api.g_varchar2_table(21) := '414358462C4541414D472C534141512C53414153432C4541414D432C474143724233422C4B41414B32422C4741414F432C534141532C4F4143684235422C4B41414B32422C4741414F432C534141532C4D41436A4235422C4B41414B32422C454141512C';
wwv_flow_api.g_varchar2_table(22) := '47414147432C534141532C4F4143314235422C4B41414B32422C4741415333422C4B41414B32422C474141532C5141497A434C2C4741434874422C4B41414B75422C4D414151442C4541414D4F2C4B41414B2C4B41436A422C4B4149666C452C47414147';
wwv_flow_api.g_varchar2_table(23) := '2C4941414D32422C4741415777432C4B41414B2C6D4241416D42432C594141632C53414153432C45414149662C4741436E452C4D41416B422C49414164412C4541414B67422C4D41434574452C474141472C514141532C434141452C6141416373442C45';
wwv_flow_api.g_varchar2_table(24) := '41414B452C51414153652C4F41414F76452C474141472C4F4141512C4341414577452C4B41414D2C4D41414F442C4F41414F6A422C4541414B452C5141437A4669422C534141534A2C4741455072452C474141472C514141532C434141452C6141416373';
wwv_flow_api.g_varchar2_table(25) := '442C4541414B452C51414153652C4F41414F76452C474141472C4F4141512C4341414577452C4B41414D2C4D41436C45442C4F41414F76452C474141472C534141552C4341414530452C4941414B70422C4541414B67422C4D41414F4B2C4D41414F2C34';
wwv_flow_api.g_varchar2_table(26) := '42414136424A2C4F41414F6A422C4541414B452C514143334669422C534141534A2C4B416C4674427A442C4B41414B67452C4F41414F432C4F4143526A442C454141512C4341434A6B442C554141576A442C4741435A2C434143436B442C514141532C53';
wwv_flow_api.g_varchar2_table(27) := '414153432C474143646C442C454141456B442C4941454E6E452C4D41414F2C534141536D452C4741435A35452C4541414B4B2C4D41414D492C4D41414D2C694341436A42542C4541414B4B2C4D41414D492C4D41414D6D452C45414145432C6541457642';
wwv_flow_api.g_varchar2_table(28) := '432C534141552C5741784548222C2266696C65223A226F61686168612E6175746F636F6D706C6574652E6F6E2E6368617261637465722E6A73227D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(236837073438899020)
,p_plugin_id=>wwv_flow_api.id(236834669206884813)
,p_file_name=>'oahaha.autocomplete.on.character.js.map'
,p_mime_type=>'application/json'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
