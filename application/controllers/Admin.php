<?php

/**
 * CRUD dVd
 */
/**
 *
 */
class Admin extends CI_controller{

    function __construct(){
        parent::__construct();
        $this->load->model('Admin_Model');
        $this->load->helper('url_helper');
    }
    /**
     * View [read] du crud
     *
     */
    public function index(){
        $data['Dvd'] = $this->Admin_Model->get_dvd();
        $this->load->view('admin.php' , $data);
    }
    public function view($numD = NULL){
        $data['Dvd'] = $this->Admin_Model->get_dvd($numD);

        if (empty($data['Dvd'])) {
            show_404();
        }
        $this->load->view('admin', $data);
    }

    public function add($numD = NULL){
         $this->load->helper('form');
         $this->load->library('form_validation');
         $data['Dvd'] = $this->Admin_Model->getByNum($numD);
         $this->form_validation->set_rules('titreD','titreD', 'required');
         $this->form_validation->set_rules('auteurD', 'auteurD' , 'required');
         $this->form_validation->set_rules('annéeD', 'annéeD', 'required');
         $this->form_validation->set_rules('catégorieD', 'catégorieD', 'required');
         $this->form_validation->set_rules('nombreD', 'nombreD', 'required');
         $this->form_validation->set_rules('societeD', 'societeD', 'required');

         if($this->form_validation->run()=== false){
             $this->load->view('create.php',$data);
         }else{
            $this->Admin_Model->set_news($numD);
            redirect ('Admin', 'refresh');

         }
     }
    public function delete($numD){
        $this->Admin_Model->delete($numD);
        redirect ('Admin', 'refresh');
    }

}
