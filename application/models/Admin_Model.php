<?php

/**
 * Model CRUD AdminDvd
 */
class Admin_Model extends CI_Model{

    function __construct(){
        $this->load->database();
    }
    /**
     * function get
     * @param  boolean $id
     * @return [array]
     */
    public function get_dvd($numD = FALSE){

            $query = $this->db->get('Dvd');
            return $query->result_array();
        }
        public function getByNum($numD){
    $query = $this->db->get_where('Dvd',array('numD' => $numD));
    return $query->row_array();
    }

    public function set_news($numD){
        $this->load->helper('url');
        $poney = $this->input->post('numD');

        $data = array(

            'titreD' => $this->input->post('titreD'),
            'auteurD' => $this->input->post('auteurD'),
            'annéeD' => $this->input->post('annéeD'),
            'catégorieD' => $this->input->post('catégorieD'),
            'nombreD' => $this->input->post('nombreD'),
            'societeD' => $this->input->post('societeD'),
        );
        if($poney) {
            $this->db->where('numD',$poney);
            return $this->db->update('Dvd', $data);
        }else{
            return $this->db->insert('Dvd',$data);
        }
    }
    public function delete($numD){
        $this->db->where('numD', $numD);
        return $this->db->delete('Dvd');
    }
}
