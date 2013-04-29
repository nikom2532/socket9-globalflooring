<?php   
class ControllerCommonHeader extends Controller {
	protected function index() {
		$this->data['title'] = $this->document->getTitle();
		
		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		$this->data['base'] = $server;
		$this->data['description'] = $this->document->getDescription();
		$this->data['keywords'] = $this->document->getKeywords();
		$this->data['links'] = $this->document->getLinks();	 
		$this->data['styles'] = $this->document->getStyles();
		$this->data['scripts'] = $this->document->getScripts();
		$this->data['lang'] = $this->language->get('code');
		$this->data['direction'] = $this->language->get('direction');
		$this->data['google_analytics'] = html_entity_decode($this->config->get('config_google_analytics'), ENT_QUOTES, 'UTF-8');
		$this->data['name'] = $this->config->get('config_name');
		
		if ($this->config->get('config_icon') && file_exists(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->data['icon'] = $server . 'image/' . $this->config->get('config_icon');
		} else {
			$this->data['icon'] = '';
		}
		
		if ($this->config->get('config_logo') && file_exists(DIR_IMAGE . $this->config->get('config_logo'))) {
			$this->data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$this->data['logo'] = '';
		}		
		
		$this->language->load('common/header');
		
		$this->data['text_home'] = $this->language->get('text_home');
		$this->data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		$this->data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
    	$this->data['text_search'] = $this->language->get('text_search');
		$this->data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', 'SSL'), $this->url->link('account/register', '', 'SSL'));
		$this->data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));
		$this->data['text_account'] = $this->language->get('text_account');
    	$this->data['text_checkout'] = $this->language->get('text_checkout');
				
		$this->data['home'] = $this->url->link('common/home');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['logged'] = $this->customer->isLogged();
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['shopping_cart'] = $this->url->link('checkout/cart');
		$this->data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		
$this->data['text_call'] = $this->language->get('text_call');
	
			if ($this->config->get('config_ebg') && file_exists(DIR_IMAGE . $this->config->get('config_ebg'))) {
				$this->data['ebg'] = $server . $this->config->get('config_ebg');
			} else {
				$this->data['ebg'] = '';
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

			if (isset($this->request->post['config_enable_responsive_view'])) {
				$this->data['config_enable_responsive_view'] = $this->request->post['config_enable_responsive_view']; 
			} else {
				$this->data['config_enable_responsive_view'] = $this->config->get('config_enable_responsive_view');
			}
			
			if (isset($this->request->post['config_facontact_phone'])) {
				$this->data['config_facontact_phone'] = $this->request->post['config_facontact_phone']; 
			} else {
				$this->data['config_facontact_phone'] = $this->config->get('config_facontact_phone');
			}

			if (isset($this->request->post['config_logo_top_spacing'])) {
				$this->data['config_logo_top_spacing'] = $this->request->post['config_logo_top_spacing']; 
			} else {
				$this->data['config_logo_top_spacing'] = $this->config->get('config_logo_top_spacing');
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

			if (isset($this->request->post['config_activate_theme_color_editor'])) {
				$this->data['config_activate_theme_color_editor'] = $this->request->post['config_activate_theme_color_editor'];
			} else {
				$this->data['config_activate_theme_color_editor'] = $this->config->get('config_activate_theme_color_editor');
			}
		// Daniel's robot detector
		$status = true;
		
		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", trim($this->config->get('config_robots')));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}
		
		// A dirty hack to try to set a cookie for the multi-store feature
		$this->load->model('setting/store');
		
		$this->data['stores'] = array();
		
		if ($this->config->get('config_shared') && $status) {
			$this->data['stores'][] = $server . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();
			
			$stores = $this->model_setting_store->getStores();
					
			foreach ($stores as $store) {
				$this->data['stores'][] = $store['url'] . 'catalog/view/javascript/crossdomain.php?session_id=' . $this->session->getId();
			}
		}
				
		// Search		
		if (isset($this->request->get['search'])) {
			$this->data['search'] = $this->request->get['search'];
		} else {
			$this->data['search'] = '';
		}
		
		// Menu
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		
		$this->data['categories'] = array();
					
		$categories = $this->model_catalog_category->getCategories(0);
		
		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();
				
				$children = $this->model_catalog_category->getCategories($category['category_id']);
				
				foreach ($children as $child) {
					$data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);
					
					$product_total = $this->model_catalog_product->getTotalProducts($data);
									
					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
'category_id' => $child['category_id'],
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);						
				}
				
				// Level 1
				$this->data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
'category_id' => $category['category_id'],
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}
		
		$this->children = array(
			'module/language',
			'module/currency',
			'module/cart'
		);
				
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/header.tpl';
		} else {
			$this->template = 'default/template/common/header.tpl';
		}
		
    	$this->render();
	} 	
}
?>
