<?php
class ControllerModuleOnwebchat extends Controller {
	public function index() {
		$this->load->language('module/onwebchat');

		$data['heading_title'] = $this->language->get('heading_title');

		$data['code'] = html_entity_decode($this->config->get('onwebchat_chat_id'));

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/onwebchat.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/onwebchat.tpl', $data);
		} else {
			if(VERSION >= '2.2.0.0')
				return $this->load->view($this->config->get('config_template') . 'module/onwebchat.tpl', $data);
			else
				return $this->load->view('default/template/module/onwebchat.tpl', $data);
		}
	}
}