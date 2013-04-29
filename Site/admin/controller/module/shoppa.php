<?php
class ControllerModuleShoppa extends Controller {
	private $error = array(); 
	
	public function template() {
		$template = basename($this->request->get['template']);
		
		if (file_exists(DIR_IMAGE . 'templates/' . $template . '.png')) {
			$image = HTTPS_IMAGE . 'templates/' . $template . '.png';
		} else {
			$image = HTTPS_IMAGE . 'no_image.jpg';
		}
		
		$this->response->setOutput('<img src="' . $image . '" alt="" title="" style="border: 1px solid #EEEEEE;" />');
	}		
	
	public function index() {   
		$this->load->language('module/shoppa');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('shoppa', $this->request->post);		
					
			$this->session->data['success'] = $this->language->get('text_success');
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
				
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['tab_general'] = $this->language->get('tab_general');
		$this->data['tab_theme_colors'] = $this->language->get('tab_theme_colors');
		$this->data['tab_fonts'] = $this->language->get('tab_fonts');
		$this->data['tab_social_profiles'] = $this->language->get('tab_social_profiles');
		
		$this->data['entry_enable_responsive_view'] = $this->language->get('entry_enable_responsive_view');
		$this->data['entry_enable_image_border'] = $this->language->get('entry_enable_image_border');
		$this->data['entry_logo_top_spacing'] = $this->language->get('entry_logo_top_spacing');
		$this->data['entry_facontact_email'] = $this->language->get('entry_facontact_email');
		$this->data['entry_facontact_phone'] = $this->language->get('entry_facontact_phone');
		$this->data['entry_facontact_fax'] = $this->language->get('entry_facontact_fax');
		$this->data['entry_facontact_address'] = $this->language->get('entry_facontact_address');
		
		$this->data['entry_activate_theme_color_editor'] = $this->language->get('entry_activate_theme_color_editor');
		$this->data['entry_upload_your_own_pattern'] = $this->language->get('entry_upload_your_own_pattern');
		$this->data['entry_background_repeat'] = $this->language->get('entry_background_repeat');
		$this->data['entry_background_position'] = $this->language->get('entry_background_position');
		$this->data['entry_background_attachment'] = $this->language->get('entry_background_attachment');
		$this->data['entry_choose_background_texture'] = $this->language->get('entry_choose_background_texture');
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');
 		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');	
		$this->data['text_bg_repeat'] = $this->language->get('text_bg_repeat');	
		$this->data['text_bg_norepeat'] = $this->language->get('text_bg_norepeat');	
		$this->data['text_bg_repeatx'] = $this->language->get('text_bg_repeatx');	
		$this->data['text_bg_repeaty'] = $this->language->get('text_bg_repeaty');	
		$this->data['text_bg_left_top'] = $this->language->get('text_bg_left_top');	
		$this->data['text_bg_left_center'] = $this->language->get('text_bg_left_center');	
		$this->data['text_bg_left_bottom'] = $this->language->get('text_bg_left_bottom');	
		$this->data['text_bg_right_top'] = $this->language->get('text_bg_right_top');	
		$this->data['text_bg_right_center'] = $this->language->get('text_bg_right_center');	
		$this->data['text_bg_right_bottom'] = $this->language->get('text_bg_right_bottom');	
		$this->data['text_bg_center_top'] = $this->language->get('text_bg_center_top');	
		$this->data['text_bg_center_center'] = $this->language->get('text_bg_center_center');	
		$this->data['text_bg_center_bottom'] = $this->language->get('text_bg_center_bottom');	
		$this->data['text_bg_texture_no'] = $this->language->get('text_bg_texture_no');
		$this->data['text_bg_texture_1'] = $this->language->get('text_bg_texture_1');
		$this->data['text_bg_texture_2'] = $this->language->get('text_bg_texture_2');
		$this->data['text_bg_texture_3'] = $this->language->get('text_bg_texture_3');
		$this->data['text_bg_texture_4'] = $this->language->get('text_bg_texture_4');
		$this->data['text_bg_texture_5'] = $this->language->get('text_bg_texture_5');
		$this->data['text_bg_texture_6'] = $this->language->get('text_bg_texture_6');
		$this->data['text_bg_texture_7'] = $this->language->get('text_bg_texture_7');
		$this->data['text_bg_texture_8'] = $this->language->get('text_bg_texture_8');
		$this->data['text_bg_texture_9'] = $this->language->get('text_bg_texture_9');
		$this->data['text_bg_texture_10'] = $this->language->get('text_bg_texture_10');
		$this->data['text_bg_texture_11'] = $this->language->get('text_bg_texture_11');
		$this->data['text_bg_texture_12'] = $this->language->get('text_bg_texture_12');
		$this->data['text_bg_texture_13'] = $this->language->get('text_bg_texture_13');
		$this->data['text_bg_texture_14'] = $this->language->get('text_bg_texture_14');
		$this->data['text_bg_texture_15'] = $this->language->get('text_bg_texture_15');
		$this->data['text_bg_texture_16'] = $this->language->get('text_bg_texture_16');
		$this->data['text_bg_texture_17'] = $this->language->get('text_bg_texture_17');
		$this->data['text_bg_texture_18'] = $this->language->get('text_bg_texture_18');
		$this->data['text_bg_texture_19'] = $this->language->get('text_bg_texture_19');
		$this->data['text_bg_texture_20'] = $this->language->get('text_bg_texture_20');
		$this->data['text_bg_texture_21'] = $this->language->get('text_bg_texture_21');
		$this->data['text_bg_texture_22'] = $this->language->get('text_bg_texture_22');
		$this->data['text_bg_texture_23'] = $this->language->get('text_bg_texture_23');
		$this->data['text_bg_texture_24'] = $this->language->get('text_bg_texture_24');
		$this->data['text_bg_texture_25'] = $this->language->get('text_bg_texture_25');
		$this->data['text_bg_texture_26'] = $this->language->get('text_bg_texture_26');
		$this->data['text_bg_texture_27'] = $this->language->get('text_bg_texture_27');
		$this->data['text_bg_texture_28'] = $this->language->get('text_bg_texture_28');
		$this->data['text_bg_texture_29'] = $this->language->get('text_bg_texture_29');
		$this->data['text_bg_texture_30'] = $this->language->get('text_bg_texture_30');
		$this->data['text_bg_texture_31'] = $this->language->get('text_bg_texture_31');
		$this->data['text_bg_texture_32'] = $this->language->get('text_bg_texture_32');
		$this->data['text_bg_texture_33'] = $this->language->get('text_bg_texture_33');
		$this->data['text_bg_texture_34'] = $this->language->get('text_bg_texture_34');
		$this->data['text_bg_texture_35'] = $this->language->get('text_bg_texture_35');
		$this->data['text_bg_texture_36'] = $this->language->get('text_bg_texture_36');
		$this->data['text_bg_scroll'] = $this->language->get('text_bg_scroll');
		$this->data['text_bg_fixed'] = $this->language->get('text_bg_fixed');
		
		$this->data['entry_body_bg'] = $this->language->get('entry_body_bg');
		$this->data['entry_body_colors'] = $this->language->get('entry_body_colors');
		$this->data['entry_background_patterns'] = $this->language->get('entry_background_patterns');
		$this->data['entry_body_links_color'] = $this->language->get('entry_body_links_color');
		$this->data['entry_general_color'] = $this->language->get('entry_general_color');
		
		$this->data['entry_activate_google_custom_fonts'] = $this->language->get('entry_activate_google_custom_fonts');
		$this->data['entry_choose_header_font'] = $this->language->get('entry_choose_header_font');
		$this->data['entry_choose_menu_font'] = $this->language->get('entry_choose_menu_font');
		$this->data['entry_choose_body_font'] = $this->language->get('entry_choose_body_font');
		$this->data['text_font_georgia'] = $this->language->get('text_font_georgia');
		$this->data['text_font_helvetica'] = $this->language->get('text_font_helvetica');
		$this->data['text_font_tahoma'] = $this->language->get('text_font_tahoma');
		$this->data['text_font_trebuchet_ms'] = $this->language->get('text_font_trebuchet_ms');
		$this->data['text_font_verdana'] = $this->language->get('text_font_verdana');
		$this->data['text_font_abel'] = $this->language->get('text_font_abel');
		$this->data['text_font_actor'] = $this->language->get('text_font_actor');
		$this->data['text_font_arial'] = $this->language->get('text_font_arial');
		$this->data['text_font_aclonica'] = $this->language->get('text_font_aclonica');
		$this->data['text_font_allan'] = $this->language->get('text_font_allan');
		$this->data['text_font_annie_use_your_telescope'] = $this->language->get('text_font_annie_use_your_telescope');
		$this->data['text_font_anonymous_pro'] = $this->language->get('text_font_anonymous_pro');
		$this->data['text_font_allerta_stencil'] = $this->language->get('text_font_allerta_stencil');
		$this->data['text_font_allerta'] = $this->language->get('text_font_allerta');
		$this->data['text_font_amaranth'] = $this->language->get('text_font_amaranth');
		$this->data['text_font_anton'] = $this->language->get('text_font_anton');
		$this->data['text_font_architects_daughter'] = $this->language->get('text_font_architects_daughter');
		$this->data['text_font_arimo'] = $this->language->get('text_font_arimo');
		$this->data['text_font_artifika'] = $this->language->get('text_font_artifika');
		$this->data['text_font_arvo'] = $this->language->get('text_font_arvo');
		$this->data['text_font_asset'] = $this->language->get('text_font_asset');
		$this->data['text_font_astloch'] = $this->language->get('text_font_astloch');
		$this->data['text_font_bangers'] = $this->language->get('text_font_bangers');
		$this->data['text_font_bentham'] = $this->language->get('text_font_bentham');
		$this->data['text_font_bevan'] = $this->language->get('text_font_bevan');
		$this->data['text_font_bigshot_one'] = $this->language->get('text_font_bigshot_one');
		$this->data['text_font_bowlby_one'] = $this->language->get('text_font_bowlby_one');
		$this->data['text_font_bowlby_one_sc'] = $this->language->get('text_font_bowlby_one_sc');
		$this->data['text_font_brawler'] = $this->language->get('text_font_brawler');
		$this->data['text_font_buda'] = $this->language->get('text_font_buda');
		$this->data['text_font_cabin'] = $this->language->get('text_font_cabin');
		$this->data['text_font_calligraffitti'] = $this->language->get('text_font_calligraffitti');
		$this->data['text_font_candal'] = $this->language->get('text_font_candal');
		$this->data['text_font_cantarell'] = $this->language->get('text_font_cantarell');
		$this->data['text_font_cardo'] = $this->language->get('text_font_cardo');
		$this->data['text_font_carter_one'] = $this->language->get('text_font_carter_one');
		$this->data['text_font_caudex'] = $this->language->get('text_font_caudex');
		$this->data['text_font_cedarville_cursive'] = $this->language->get('text_font_cedarville_cursive');
		$this->data['text_font_cherry_cream_soda'] = $this->language->get('text_font_cherry_cream_soda');
		$this->data['text_font_chewy'] = $this->language->get('text_font_chewy');
		$this->data['text_font_coda'] = $this->language->get('text_font_coda');
		$this->data['text_font_coming_soon'] = $this->language->get('text_font_coming_soon');
		$this->data['text_font_copse'] = $this->language->get('text_font_copse');
		$this->data['text_font_corben'] = $this->language->get('text_font_corben');
		$this->data['text_font_cousine'] = $this->language->get('text_font_cousine');
		$this->data['text_font_covered_by_your_grace'] = $this->language->get('text_font_covered_by_your_grace');
		$this->data['text_font_crafty_girls'] = $this->language->get('text_font_crafty_girls');
		$this->data['text_font_crimson_text'] = $this->language->get('text_font_crimson_text');
		$this->data['text_font_crushed'] = $this->language->get('text_font_crushed');
		$this->data['text_font_cuprum'] = $this->language->get('text_font_cuprum');
		$this->data['text_font_damion'] = $this->language->get('text_font_damion');
		$this->data['text_font_dancing_script'] = $this->language->get('text_font_dancing_script');
		$this->data['text_font_dawning_of_a_new_day'] = $this->language->get('text_font_dawning_of_a_new_day');
		$this->data['text_font_didact_gothic'] = $this->language->get('text_font_didact_gothic');
		$this->data['text_font_droid_sans'] = $this->language->get('text_font_droid_sans');
		$this->data['text_font_droid_sans_mono'] = $this->language->get('text_font_droid_sans_mono');
		$this->data['text_font_droid_serif'] = $this->language->get('text_font_droid_serif');
		$this->data['text_font_eb_garamond'] = $this->language->get('text_font_eb_garamond');
		$this->data['text_font_expletus_sans'] = $this->language->get('text_font_expletus_sans');
		$this->data['text_font_fontdiner_swanky'] = $this->language->get('text_font_fontdiner_swanky');
		$this->data['text_font_forum'] = $this->language->get('text_font_forum');
		$this->data['text_font_francois_one'] = $this->language->get('text_font_francois_one');
		$this->data['text_font_geo'] = $this->language->get('text_font_geo');
		$this->data['text_font_give_you_glory'] = $this->language->get('text_font_give_you_glory');
		$this->data['text_font_goblin_one'] = $this->language->get('text_font_goblin_one');
		$this->data['text_font_goudy_bookletter_1911'] = $this->language->get('text_font_goudy_bookletter_1911');
		$this->data['text_font_gravitas_one'] = $this->language->get('text_font_gravitas_one');
		$this->data['text_font_gruppo'] = $this->language->get('text_font_gruppo');
		$this->data['text_font_hammersmith_one'] = $this->language->get('text_font_hammersmith_one');
		$this->data['text_font_holtwood_one_sc'] = $this->language->get('text_font_holtwood_one_sc');
		$this->data['text_font_homemade_apple'] = $this->language->get('text_font_homemade_apple');
		$this->data['text_font_inconsolata'] = $this->language->get('text_font_inconsolata');
		$this->data['text_font_indie_flower'] = $this->language->get('text_font_indie_flower');
		$this->data['text_font_im_fell_dw_pica'] = $this->language->get('text_font_im_fell_dw_pica');
		$this->data['text_font_im_fell_dw_pica_sc'] = $this->language->get('text_font_im_fell_dw_pica_sc');
		$this->data['text_font_im_fell_double_pica'] = $this->language->get('text_font_im_fell_double_pica');
		$this->data['text_font_im_fell_double_pica_sc'] = $this->language->get('text_font_im_fell_double_pica_sc');
		$this->data['text_font_im_fell_english'] = $this->language->get('text_font_im_fell_english');
		$this->data['text_font_im_fell_english_sc'] = $this->language->get('text_font_im_fell_english_sc');
		$this->data['text_font_im_fell_french_canon'] = $this->language->get('text_font_im_fell_french_canon');
		$this->data['text_font_im_fell_french_canon_sc'] = $this->language->get('text_font_im_fell_french_canon_sc');
		$this->data['text_font_im_fell_great_primer'] = $this->language->get('text_font_im_fell_great_primer');
		$this->data['text_font_im_fell_great_primer_sc'] = $this->language->get('text_font_im_fell_great_primer_sc');
		$this->data['text_font_irish_grover'] = $this->language->get('text_font_irish_grover');
		$this->data['text_font_irish_growler'] = $this->language->get('text_font_irish_growler');
		$this->data['text_font_istok_web'] = $this->language->get('text_font_istok_web');
		$this->data['text_font_josefin_sans'] = $this->language->get('text_font_josefin_sans');
		$this->data['text_font_josefin_slab'] = $this->language->get('text_font_josefin_slab');
		$this->data['text_font_judson'] = $this->language->get('text_font_judson');
		$this->data['text_font_jura'] = $this->language->get('text_font_jura');
		$this->data['text_font_just_another_hand'] = $this->language->get('text_font_just_another_hand');
		$this->data['text_font_just_me_again_down_here'] = $this->language->get('text_font_just_me_again_down_here');
		$this->data['text_font_kameron'] = $this->language->get('text_font_kameron');
		$this->data['text_font_kenia'] = $this->language->get('text_font_kenia');
		$this->data['text_font_kranky'] = $this->language->get('text_font_kranky');
		$this->data['text_font_kreon'] = $this->language->get('text_font_kreon');
		$this->data['text_font_kristi'] = $this->language->get('text_font_kristi');
		$this->data['text_font_la_belle_aurore'] = $this->language->get('text_font_la_belle_aurore');
		$this->data['text_font_lato'] = $this->language->get('text_font_lato');
		$this->data['text_font_league_script'] = $this->language->get('text_font_league_script');
		$this->data['text_font_lekton'] = $this->language->get('text_font_lekton');
		$this->data['text_font_limelight'] = $this->language->get('text_font_limelight');
		$this->data['text_font_lobster'] = $this->language->get('text_font_lobster');
		$this->data['text_font_lobster_two'] = $this->language->get('text_font_lobster_two');
		$this->data['text_font_lora'] = $this->language->get('text_font_lora');
		$this->data['text_font_love_ya_like_a_sister'] = $this->language->get('text_font_love_ya_like_a_sister');
		$this->data['text_font_loved_by_the_king'] = $this->language->get('text_font_loved_by_the_king');
		$this->data['text_font_luckiest_guy'] = $this->language->get('text_font_luckiest_guy');
		$this->data['text_font_maiden_orange'] = $this->language->get('text_font_maiden_orange');
		$this->data['text_font_mako'] = $this->language->get('text_font_mako');
		$this->data['text_font_maven_pro'] = $this->language->get('text_font_maven_pro');
		$this->data['text_font_meddon'] = $this->language->get('text_font_meddon');
		$this->data['text_font_medievalsharp'] = $this->language->get('text_font_medievalsharp');
		$this->data['text_font_megrim'] = $this->language->get('text_font_megrim');
		$this->data['text_font_merriweather'] = $this->language->get('text_font_merriweather');
		$this->data['text_font_metrophobic'] = $this->language->get('text_font_metrophobic');
		$this->data['text_font_michroma'] = $this->language->get('text_font_michroma');
		$this->data['text_font_miltonian_tattoo'] = $this->language->get('text_font_miltonian_tattoo');
		$this->data['text_font_miltonian'] = $this->language->get('text_font_miltonian');
		$this->data['text_font_moder_antiqua'] = $this->language->get('text_font_moder_antiqua');
		$this->data['text_font_monofett'] = $this->language->get('text_font_monofett');
		$this->data['text_font_molengo'] = $this->language->get('text_font_molengo');
		$this->data['text_font_mountains_of_christmas'] = $this->language->get('text_font_mountains_of_christmas');
		$this->data['text_font_muli'] = $this->language->get('text_font_muli');
		$this->data['text_font_neucha'] = $this->language->get('text_font_neucha');
		$this->data['text_font_neuton'] = $this->language->get('text_font_neuton');
		$this->data['text_font_news_cycle'] = $this->language->get('text_font_news_cycle');
		$this->data['text_font_nixie_one'] = $this->language->get('text_font_nixie_one');
		$this->data['text_font_nobile'] = $this->language->get('text_font_nobile');
		$this->data['text_font_nova_cut'] = $this->language->get('text_font_nova_cut');
		$this->data['text_font_nova_flat'] = $this->language->get('text_font_nova_flat');
		$this->data['text_font_nova_mono'] = $this->language->get('text_font_nova_mono');
		$this->data['text_font_nova_oval'] = $this->language->get('text_font_nova_oval');
		$this->data['text_font_nova_round'] = $this->language->get('text_font_nova_round');
		$this->data['text_font_nova_script'] = $this->language->get('text_font_nova_script');
		$this->data['text_font_nova_slim'] = $this->language->get('text_font_nova_slim');
		$this->data['text_font_nova_square'] = $this->language->get('text_font_nova_square');
		$this->data['text_font_nunito_light'] = $this->language->get('text_font_nunito_light');
		$this->data['text_font_nunito'] = $this->language->get('text_font_nunito');
		$this->data['text_font_ofl_sorts_mill_goudy_tt'] = $this->language->get('text_font_ofl_sorts_mill_goudy_tt');
		$this->data['text_font_old_standard_tt'] = $this->language->get('text_font_old_standard_tt');
		$this->data['text_font_open_sans'] = $this->language->get('text_font_open_sans');
		$this->data['text_font_open_sans_condensed'] = $this->language->get('text_font_open_sans_condensed');
		$this->data['text_font_orbitron'] = $this->language->get('text_font_orbitron');
		$this->data['text_font_oswald'] = $this->language->get('text_font_oswald');
		$this->data['text_font_over_the_rainbow'] = $this->language->get('text_font_over_the_rainbow');
		$this->data['text_font_reenie_beanie'] = $this->language->get('text_font_reenie_beanie');
		$this->data['text_font_pacifico'] = $this->language->get('text_font_pacifico');
		$this->data['text_font_patrick_hand'] = $this->language->get('text_font_patrick_hand');
		$this->data['text_font_paytone_one'] = $this->language->get('text_font_paytone_one');
		$this->data['text_font_permanent_marker'] = $this->language->get('text_font_permanent_marker');
		$this->data['text_font_philosopher'] = $this->language->get('text_font_philosopher');
		$this->data['text_font_play'] = $this->language->get('text_font_play');
		$this->data['text_font_playfair_display'] = $this->language->get('text_font_playfair_display');
		$this->data['text_font_podkova'] = $this->language->get('text_font_podkova');
		$this->data['text_font_pt_sans'] = $this->language->get('text_font_pt_sans');
		$this->data['text_font_pt_sans_narrow'] = $this->language->get('text_font_pt_sans_narrow');
		$this->data['text_font_pt_sans_narrow_regular_bold'] = $this->language->get('text_font_pt_sans_narrow_regular_bold');
		$this->data['text_font_pt_serif'] = $this->language->get('text_font_pt_serif');
		$this->data['text_font_pt_serif_caption'] = $this->language->get('text_font_pt_serif_caption');
		$this->data['text_font_puritan'] = $this->language->get('text_font_puritan');
		$this->data['text_font_quattrocento'] = $this->language->get('text_font_quattrocento');
		$this->data['text_font_quattrocento_sans'] = $this->language->get('text_font_quattrocento_sans');
		$this->data['text_font_radley'] = $this->language->get('text_font_radley');
		$this->data['text_font_raleway'] = $this->language->get('text_font_raleway');
		$this->data['text_font_redressed'] = $this->language->get('text_font_redressed');
		$this->data['text_font_rock_salt'] = $this->language->get('text_font_rock_salt');
		$this->data['text_font_rokkitt'] = $this->language->get('text_font_rokkitt');
		$this->data['text_font_ruslan_display'] = $this->language->get('text_font_ruslan_display');
		$this->data['text_font_schoolbell'] = $this->language->get('text_font_schoolbell');
		$this->data['text_font_shadows_into_light'] = $this->language->get('text_font_shadows_into_light');
		$this->data['text_font_shanti'] = $this->language->get('text_font_shanti');
		$this->data['text_font_sigmar_one'] = $this->language->get('text_font_sigmar_one');
		$this->data['text_font_six_caps'] = $this->language->get('text_font_six_caps');
		$this->data['text_font_slackey'] = $this->language->get('text_font_slackey');
		$this->data['text_font_smythe'] = $this->language->get('text_font_smythe');
		$this->data['text_font_sniglet'] = $this->language->get('text_font_sniglet');
		$this->data['text_font_special_elite'] = $this->language->get('text_font_special_elite');
		$this->data['text_font_stardos_stencil'] = $this->language->get('text_font_stardos_stencil');
		$this->data['text_font_sue_ellen_francisco'] = $this->language->get('text_font_sue_ellen_francisco');
		$this->data['text_font_sunshiney'] = $this->language->get('text_font_sunshiney');
		$this->data['text_font_swanky_and_moo_moo'] = $this->language->get('text_font_swanky_and_moo_moo');
		$this->data['text_font_syncopate'] = $this->language->get('text_font_syncopate');
		$this->data['text_font_tangerine'] = $this->language->get('text_font_tangerine');
		$this->data['text_font_tenor_sans'] = $this->language->get('text_font_tenor_sans');
		$this->data['text_font_terminal_dosis_light'] = $this->language->get('text_font_terminal_dosis_light');
		$this->data['text_font_the_girl_next_door'] = $this->language->get('text_font_the_girl_next_door');
		$this->data['text_font_tinos'] = $this->language->get('text_font_tinos');
		$this->data['text_font_ubuntu'] = $this->language->get('text_font_ubuntu');
		$this->data['text_font_ultra'] = $this->language->get('text_font_ultra');
		$this->data['text_font_unkempt'] = $this->language->get('text_font_unkempt');
		$this->data['text_font_unifrakturcook_bold'] = $this->language->get('text_font_unifrakturcook_bold');
		$this->data['text_font_unifrakturmaguntia'] = $this->language->get('text_font_unifrakturmaguntia');
		$this->data['text_font_varela'] = $this->language->get('text_font_varela');
		$this->data['text_font_varela_round'] = $this->language->get('text_font_varela_round');
		$this->data['text_font_vibur'] = $this->language->get('text_font_vibur');
		$this->data['text_font_vollkorn'] = $this->language->get('text_font_vollkorn');
		$this->data['text_font_vt323'] = $this->language->get('text_font_vt323');
		$this->data['text_font_waiting_for_the_sunrise'] = $this->language->get('text_font_waiting_for_the_sunrise');
		$this->data['text_font_wallpoet'] = $this->language->get('text_font_wallpoet');
		$this->data['text_font_walter_turncoat'] = $this->language->get('text_font_walter_turncoat');
		$this->data['text_font_wire_one'] = $this->language->get('text_font_wire_one');
		$this->data['text_font_yanone_kaffeesatz'] = $this->language->get('text_font_yanone_kaffeesatz');
		$this->data['text_font_yeseva_one'] = $this->language->get('text_font_yeseva_one');
		$this->data['text_font_zeyada'] = $this->language->get('text_font_zeyada');
		$this->data['text_font_nunito_light'] = $this->language->get('text_font_nunito_light');
		
		$this->data['entry_activate_social_profiles'] = $this->language->get('entry_activate_social_profiles');
		$this->data['entry_activate_facebook'] = $this->language->get('entry_activate_facebook');
		$this->data['entry_facebook_url'] = $this->language->get('entry_facebook_url');
		$this->data['entry_activate_twitter'] = $this->language->get('entry_activate_twitter');
		$this->data['entry_twitter_url'] = $this->language->get('entry_twitter_url');
		$this->data['entry_activate_gplus'] = $this->language->get('entry_activate_gplus');
		$this->data['entry_gplus_url'] = $this->language->get('entry_gplus_url');
		$this->data['entry_activate_pinterest'] = $this->language->get('entry_activate_pinterest');
		$this->data['entry_pinterest_url'] = $this->language->get('entry_pinterest_url');
		$this->data['entry_activate_youtube'] = $this->language->get('entry_activate_youtube');
		$this->data['entry_youtube_url'] = $this->language->get('entry_youtube_url');
		$this->data['entry_activate_linkedin'] = $this->language->get('entry_activate_linkedin');
		$this->data['entry_linkedin_url'] = $this->language->get('entry_linkedin_url');
		
		$this->data['entry_enable_cloud_zoom'] = $this->language->get('entry_enable_cloud_zoom');
		
		$this->data['entry_enable_pinterest_button'] = $this->language->get('entry_enable_pinterest_button');
		
		$this->data['text_none'] = $this->language->get('text_none');
		$this->data['text_yes'] = $this->language->get('text_yes');
		$this->data['text_no'] = $this->language->get('text_no');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		
		$this->data['token'] = $this->session->data['token'];
		
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
 		if (isset($this->error['logo_top_spacing'])) {
			$this->data['error_logo_top_spacing'] = $this->error['logo_top_spacing'];
		} else {
			$this->data['error_logo_top_spacing'] = '';
		}
		
 		if (isset($this->error['slideshow_pausetime'])) {
			$this->data['error_slideshow_pausetime'] = $this->error['slideshow_pausetime'];
		} else {
			$this->data['error_slideshow_pausetime'] = '';
		}
		
 		if (isset($this->error['slideshow_animationspeed'])) {
			$this->data['error_slideshow_animationspeed'] = $this->error['slideshow_animationspeed'];
		} else {
			$this->data['error_slideshow_animationspeed'] = '';
		}
		
 		if (isset($this->error['facontact_email'])) {
			$this->data['error_facontact_email'] = $this->error['facontact_email'];
		} else {
			$this->data['error_facontact_email'] = '';
		}
		
 		if (isset($this->error['facontact_fax'])) {
			$this->data['error_facontact_fax'] = $this->error['facontact_fax'];
		} else {
			$this->data['error_facontact_fax'] = '';
		}
		
 		if (isset($this->error['facontact_address'])) {
			$this->data['error_facontact_address'] = $this->error['facontact_address'];
		} else {
			$this->data['error_facontact_address'] = '';
		}
		
 		if (isset($this->error['facontact_phone'])) {
			$this->data['error_facontact_phone'] = $this->error['facontact_phone'];
		} else {
			$this->data['error_facontact_phone'] = '';
		}
		
 		if (isset($this->error['facebook_url'])) {
			$this->data['error_facebook_url'] = $this->error['facebook_url'];
		} else {
			$this->data['error_facebook_url'] = '';
		}
		
 		if (isset($this->error['twitter_url'])) {
			$this->data['error_twitter_url'] = $this->error['twitter_url'];
		} else {
			$this->data['error_twitter_url'] = '';
		}
		
 		if (isset($this->error['gplus_url'])) {
			$this->data['error_gplus_url'] = $this->error['gplus_url'];
		} else {
			$this->data['error_gplus_url'] = '';
		}
		
 		if (isset($this->error['pinterest_url'])) {
			$this->data['error_pinterest_url'] = $this->error['pinterest_url'];
		} else {
			$this->data['error_pinterest_url'] = '';
		}
		
 		if (isset($this->error['youtube_url'])) {
			$this->data['error_youtube_url'] = $this->error['youtube_url'];
		} else {
			$this->data['error_youtube_url'] = '';
		}
		
 		if (isset($this->error['linkedin_url'])) {
			$this->data['error_linkedin_url'] = $this->error['linkedin_url'];
		} else {
			$this->data['error_linkedin_url'] = '';
		}
		
 		if (isset($this->error['paypal_url'])) {
			$this->data['error_paypal_url'] = $this->error['paypal_url'];
		} else {
			$this->data['error_paypal_url'] = '';
		}
		
 		if (isset($this->error['code'])) {
			$this->data['error_code'] = $this->error['code'];
		} else {
			$this->data['error_code'] = '';
		}
		
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/shoppa', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/shoppa', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
		
		if (isset($this->request->post['config_enable_responsive_view'])) {
			$this->data['config_enable_responsive_view'] = $this->request->post['config_enable_responsive_view']; 
		} else {
			$this->data['config_enable_responsive_view'] = $this->config->get('config_enable_responsive_view');
		}

		if (isset($this->request->post['config_enable_hover_image_plugin'])) {
			$this->data['config_enable_hover_image_plugin'] = $this->request->post['config_enable_hover_image_plugin']; 
		} else {
			$this->data['config_enable_hover_image_plugin'] = $this->config->get('config_enable_hover_image_plugin');
		}
		
		if (isset($this->request->post['config_remove_add_to_cart'])) {
			$this->data['config_remove_add_to_cart'] = $this->request->post['config_remove_add_to_cart']; 
		} else {
			$this->data['config_remove_add_to_cart'] = $this->config->get('config_remove_add_to_cart');
		}

		if (isset($this->request->post['config_logo_top_spacing'])) {
			$this->data['config_logo_top_spacing'] = $this->request->post['config_logo_top_spacing']; 
		} else {
			$this->data['config_logo_top_spacing'] = $this->config->get('config_logo_top_spacing');
		}

		if (isset($this->request->post['config_slideshow_pausetime'])) {
			$this->data['config_slideshow_pausetime'] = $this->request->post['config_slideshow_pausetime']; 
		} else {
			$this->data['config_slideshow_pausetime'] = $this->config->get('config_slideshow_pausetime');
		}

		if (isset($this->request->post['config_slideshow_animationspeed'])) {
			$this->data['config_slideshow_animationspeed'] = $this->request->post['config_slideshow_animationspeed']; 
		} else {
			$this->data['config_slideshow_animationspeed'] = $this->config->get('config_slideshow_animationspeed');
		}

		if (isset($this->request->post['config_facontact_email'])) {
			$this->data['config_facontact_email'] = $this->request->post['config_facontact_email']; 
		} else {
			$this->data['config_facontact_email'] = $this->config->get('config_facontact_email');
		}

		if (isset($this->request->post['config_facontact_phone'])) {
			$this->data['config_facontact_phone'] = $this->request->post['config_facontact_phone']; 
		} else {
			$this->data['config_facontact_phone'] = $this->config->get('config_facontact_phone');
		}

		if (isset($this->request->post['config_facontact_fax'])) {
			$this->data['config_facontact_fax'] = $this->request->post['config_facontact_fax']; 
		} else {
			$this->data['config_facontact_fax'] = $this->config->get('config_facontact_fax');
		}

		if (isset($this->request->post['config_facontact_address'])) {
			$this->data['config_facontact_address'] = $this->request->post['config_facontact_address']; 
		} else {
			$this->data['config_facontact_address'] = $this->config->get('config_facontact_address');
		}

		if (isset($this->request->post['config_activate_theme_color_editor'])) {
			$this->data['config_activate_theme_color_editor'] = $this->request->post['config_activate_theme_color_editor'];
		} else {
			$this->data['config_activate_theme_color_editor'] = $this->config->get('config_activate_theme_color_editor');
		}
		
		if (isset($this->request->post['config_choose_background_texture'])) {
			$this->data['config_choose_background_texture'] = $this->request->post['config_choose_background_texture'];
		} else {
			$this->data['config_choose_background_texture'] = $this->config->get('config_choose_background_texture');
		}	

		if (isset($this->request->post['config_upload_your_own_pattern'])) {
			$this->data['config_upload_your_own_pattern'] = $this->request->post['config_upload_your_own_pattern'];
		} else {
			$this->data['config_upload_your_own_pattern'] = $this->config->get('config_upload_your_own_pattern');
		}
		
		if (isset($this->request->post['config_background_repeat'])) {
			$this->data['config_background_repeat'] = $this->request->post['config_background_repeat'];
		} else {
			$this->data['config_background_repeat'] = $this->config->get('config_background_repeat');
		}
		
		if (isset($this->request->post['config_background_position'])) {
			$this->data['config_background_position'] = $this->request->post['config_background_position'];
		} else {
			$this->data['config_background_position'] = $this->config->get('config_background_position');
		}
		
		if (isset($this->request->post['config_background_attachment'])) {
			$this->data['config_background_attachment'] = $this->request->post['config_background_attachment'];
		} else {
			$this->data['config_background_attachment'] = $this->config->get('config_background_attachment');
		}
		
		$this->load->model('tool/image');

		if (isset($this->request->post['config_ebg'])) {
			$this->data['config_ebg'] = $this->request->post['config_ebg'];
		} else {
			$this->data['config_ebg'] = $this->config->get('config_ebg');			
		}

		if ($this->config->get('config_ebg') && file_exists(DIR_IMAGE . $this->config->get('config_ebg')) && is_file(DIR_IMAGE . $this->config->get('config_ebg'))) {
			$this->data['ebg'] = $this->model_tool_image->resize($this->config->get('config_ebg'), 100, 100);		
		} else {
			$this->data['ebg'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		}

		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);
		
		if (isset($this->request->post['body_bg'])) {			
			$this->data['body_bg'] = $this->request->post['body_bg'];
		} else {
			$this->data['body_bg'] = $this->config->get('body_bg');
		}	

		if (isset($this->request->post['body_links_color'])) {			
			$this->data['body_links_color'] = $this->request->post['body_links_color'];
		} else {
			$this->data['body_links_color'] = $this->config->get('body_links_color');
		}

		if (isset($this->request->post['general_color'])) {			
			$this->data['general_color'] = $this->request->post['general_color'];
		} else {
			$this->data['general_color'] = $this->config->get('general_color');
		}

		if (isset($this->request->post['config_activate_google_custom_fonts'])) {
			$this->data['config_activate_google_custom_fonts'] = $this->request->post['config_activate_google_custom_fonts'];
		} else {
			$this->data['config_activate_google_custom_fonts'] = $this->config->get('config_activate_google_custom_fonts');
		}

		if (isset($this->request->post['config_choose_header_font'])) {
			$this->data['config_choose_header_font'] = $this->request->post['config_choose_header_font'];
		} else {
			$this->data['config_choose_header_font'] = $this->config->get('config_choose_header_font');
		}

		if (isset($this->request->post['config_choose_menu_font'])) {
			$this->data['config_choose_menu_font'] = $this->request->post['config_choose_menu_font'];
		} else {
			$this->data['config_choose_menu_font'] = $this->config->get('config_choose_menu_font');
		}
		
		if (isset($this->request->post['config_choose_body_font'])) {
			$this->data['config_choose_body_font'] = $this->request->post['config_choose_body_font'];
		} else {
			$this->data['config_choose_body_font'] = $this->config->get('config_choose_body_font');
		}

		if (isset($this->request->post['config_choose_price_font'])) {
			$this->data['config_choose_price_font'] = $this->request->post['config_choose_price_font'];
		} else {
			$this->data['config_choose_price_font'] = $this->config->get('config_choose_price_font');
		}
		
		if (isset($this->request->post['config_activate_social_profiles'])) {
			$this->data['config_activate_social_profiles'] = $this->request->post['config_activate_social_profiles']; 
		} else {
			$this->data['config_activate_social_profiles'] = $this->config->get('config_activate_social_profiles');
		}

		if (isset($this->request->post['config_activate_facebook'])) {
			$this->data['config_activate_facebook'] = $this->request->post['config_activate_facebook']; 
		} else {
			$this->data['config_activate_facebook'] = $this->config->get('config_activate_facebook');
		}

		if (isset($this->request->post['config_facebook_url'])) {
			$this->data['config_facebook_url'] = $this->request->post['config_facebook_url']; 
		} else {
			$this->data['config_facebook_url'] = $this->config->get('config_facebook_url');
		}

		if (isset($this->request->post['config_activate_twitter'])) {
			$this->data['config_activate_twitter'] = $this->request->post['config_activate_twitter']; 
		} else {
			$this->data['config_activate_twitter'] = $this->config->get('config_activate_twitter');
		}

		if (isset($this->request->post['config_twitter_url'])) {
			$this->data['config_twitter_url'] = $this->request->post['config_twitter_url']; 
		} else {
			$this->data['config_twitter_url'] = $this->config->get('config_twitter_url');
		}

		if (isset($this->request->post['config_activate_gplus'])) {
			$this->data['config_activate_gplus'] = $this->request->post['config_activate_gplus']; 
		} else {
			$this->data['config_activate_gplus'] = $this->config->get('config_activate_gplus');
		}

		if (isset($this->request->post['config_gplus_url'])) {
			$this->data['config_gplus_url'] = $this->request->post['config_gplus_url']; 
		} else {
			$this->data['config_gplus_url'] = $this->config->get('config_gplus_url');
		}

		if (isset($this->request->post['config_activate_pinterest'])) {
			$this->data['config_activate_pinterest'] = $this->request->post['config_activate_pinterest']; 
		} else {
			$this->data['config_activate_pinterest'] = $this->config->get('config_activate_pinterest');
		}

		if (isset($this->request->post['config_pinterest_url'])) {
			$this->data['config_pinterest_url'] = $this->request->post['config_pinterest_url']; 
		} else {
			$this->data['config_pinterest_url'] = $this->config->get('config_pinterest_url');
		}

		if (isset($this->request->post['config_enable_cloud_zoom'])) {
			$this->data['config_enable_cloud_zoom'] = $this->request->post['config_enable_cloud_zoom']; 
		} else {
			$this->data['config_enable_cloud_zoom'] = $this->config->get('config_enable_cloud_zoom');
		}

		if (isset($this->request->post['config_enable_pinterest_button'])) {
			$this->data['config_enable_pinterest_button'] = $this->request->post['config_enable_pinterest_button']; 
		} else {
			$this->data['config_enable_pinterest_button'] = $this->config->get('config_enable_pinterest_button');
		}
		
		$this->data['modules'] = array();
		
		if (isset($this->request->post['shoppa_module'])) {
			$this->data['modules'] = $this->request->post['shoppa_module'];
		} elseif ($this->config->get('shoppa_module')) { 
			$this->data['modules'] = $this->config->get('shoppa_module');
		}			
				
		// $this->load->model('design/layout');
		
		// $this->data['layouts'] = $this->model_design_layout->getLayouts();

		$this->template = 'module/shoppa.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
				
		$this->response->setOutput($this->render());
	}
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/shoppa')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if ($this->error && !isset($this->error['warning'])) {
			$this->error['warning'] = $this->language->get('error_warning');
		}
			
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}
?>