<?php  
class ControllerCommonFooter extends Controller {
	protected function index() {
		$this->language->load('common/footer');
		
		$this->data['text_information'] = $this->language->get('text_information');
		$this->data['text_service'] = $this->language->get('text_service');
		$this->data['text_extra'] = $this->language->get('text_extra');
		$this->data['text_contact'] = $this->language->get('text_contact');
		$this->data['text_return'] = $this->language->get('text_return');
    	$this->data['text_sitemap'] = $this->language->get('text_sitemap');
		$this->data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$this->data['text_voucher'] = $this->language->get('text_voucher');
		$this->data['text_affiliate'] = $this->language->get('text_affiliate');
		$this->data['text_special'] = $this->language->get('text_special');
		$this->data['text_account'] = $this->language->get('text_account');
		$this->data['text_order'] = $this->language->get('text_order');
		$this->data['text_wishlist'] = $this->language->get('text_wishlist');
		$this->data['text_newsletter'] = $this->language->get('text_newsletter');
		
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
		$this->load->model('catalog/information');
		
		$this->data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$this->data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
    	}

		$this->data['contact'] = $this->url->link('information/contact');
		$this->data['return'] = $this->url->link('account/return/insert', '', 'SSL');
    	$this->data['sitemap'] = $this->url->link('information/sitemap');
		$this->data['manufacturer'] = $this->url->link('product/manufacturer');
		$this->data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$this->data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$this->data['special'] = $this->url->link('product/special');
		$this->data['account'] = $this->url->link('account/account', '', 'SSL');
		$this->data['order'] = $this->url->link('account/order', '', 'SSL');
		$this->data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$this->data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');		

		$this->data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));
		
		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');
	
			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];	
			} else {
				$ip = ''; 
			}
			
			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];	
			} else {
				$url = '';
			}
			
			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];	
			} else {
				$referer = '';
			}
						
			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/footer.tpl';
		} else {
			$this->template = 'default/template/common/footer.tpl';
		}
		
		$this->render();
	}
}
?>