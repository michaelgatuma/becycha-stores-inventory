<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Vehicle_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    // Get all the vehicles from the database
    public function getAllVehicles() {
        $query = $this->db->get('vehicle');
        return $query->result();
    }
}
