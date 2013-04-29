<?php  
class ControllerModuleShoppaslideshow extends Controller {
	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		
		$this->document->addScript('catalog/view/theme/shoppa/js/camera.min.js');
		$this->document->addScript('catalog/view/theme/shoppa/js/jquery.easing.1.3.js');
		
		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/shoppaslideshow.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/shoppaslideshow.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/shoppaslideshow.css');
		}
		
		$this->data['width'] = $setting['width'];
		$this->data['height'] = $setting['height'];
		
		$this->data['banners'] = array();
		
		if (isset($setting['banner_id'])) {
			$results = $this->model_design_banner->getBanner($setting['banner_id']);
			  
			foreach ($results as $result) {
				if (file_exists(DIR_IMAGE . $result['image'])) {
					$this->data['banners'][] = array(
						'title' => $result['title'],
						'link'  => $result['link'],
						'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
					);
				}
			}
		}
		
		$this->data['module'] = $module++;
						
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/shoppaslideshow.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/shoppaslideshow.tpl';
		} else {
			$this->template = 'default/template/module/shoppaslideshow.tpl';
		}
		
		$this->render();
	}
}
?>