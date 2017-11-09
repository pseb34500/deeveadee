<?php

class Deeveadee extends CI_Controller {
  function __construct(){
      parent::__construct();
      $this->load->model('Admin_Model');
      $this->load->helper('url_helper');
  }

        public function index()
        {
                $data['Dvd'] = $this->Admin_Model->get_dvd();
                $this->load->view('deeveadee.html', $data);
        }
}
