<?php
class ControllerTotalPagSeguroDesconto extends Controller {
    
    public function index() {        
        $this->response->redirect($this->url->link('payment/pagseguro', 'token=' . $this->session->data['token'], true));
    }
}