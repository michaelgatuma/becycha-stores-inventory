<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Stock_transaction_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function getInvoiceNumber() {
        $query = $this->db->select('id')
            ->order_by('id','DESC')
            ->get('bs_stock_transactions');
        $result = $query->row();
        $n = ($result) ? ($result->id+1) : 1;
        return 'BSI-'.str_pad($n, 3, '0', STR_PAD_LEFT);
    }

    public function getReceiptNumber() {
        $query = $this->db->select('id')
            ->order_by('id','DESC')
            ->get('bs_stock_transactions');
        $result = $query->row();
        $n = ($result) ? ($result->id+1) : 1;
        return 'BSO-'.str_pad($n, 3, '0', STR_PAD_LEFT);
    }

    public function recordTransaction($transactionRef, $productId, $vehicleNo, $transactionType, $quantity, $transactionDate) {
        $data = array(
            'product_id' => $productId,
            'transaction_type' => $transactionType,
            'transaction_ref' => $transactionRef,
            'vehicle_no' => $vehicleNo,
            'quantity' => $quantity,
            'transaction_date' => $transactionDate
        );
        $this->db->insert('bs_stock_transactions', $data);
    }

    // Get all the transactions from the database
    public function getAllTransactions() {
        $query = $this->db->get('bs_stock_transactions');
        return $query->result();
    }

    public function getTransactionList() {
        $this->db->select('bs_stock_transactions.*, bs_products.product_name, bs_products.flavour, bs_products.volume_size');
        $this->db->from('bs_stock_transactions');
        $this->db->join('bs_products', 'bs_stock_transactions.product_id = bs_products.id', 'left');
        $query = $this->db->get();
        $result = $query->result();

        return $result;
    }

    public function getTransactionsByProduct($productId) {
        $query = $this->db->get_where('bs_stock_transactions', array('product_id' => $productId));
        return $query->result();
    }
}
