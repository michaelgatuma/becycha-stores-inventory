<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Product_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    // Insert a new product into the database
    public function insertProduct($productData) {
        $this->db->insert('bs_products', $productData);
        return $this->db->insert_id();
    }
    // Get the product details from the database
    public function getProduct($productId) {
        $query = $this->db->get_where('bs_products', array('id' => $productId));
        return $query->row();
    }
    // Get all the products from the database
    public function getAllProducts() {
        $query = $this->db->get('bs_products');
        return $query->result();
    }
