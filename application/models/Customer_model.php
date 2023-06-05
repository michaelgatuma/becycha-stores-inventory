<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Customer_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    // Get all the customers from the database
    public function getCustomerList() {
        $query = $this->db->get('customers');
        return $query->result();
    }
}
