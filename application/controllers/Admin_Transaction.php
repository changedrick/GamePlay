<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_Transaction extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('Admin_Transaction_Model');
	}

	public function index()
	{
		$data['js'] = $this->load->view('include/javascript.php', NULL, TRUE);
		$data['css'] = $this->load->view('include/css.php', NULL, TRUE);
		$data['header'] = $this->load->view('pages/Admin_header.php', NULL, TRUE);
		$data['footer'] = $this->load->view('pages/Admin_footer.php', NULL, TRUE);

		// $data['product'] = $this->Admin_Home_Model->get_product();
		// $data['genre'] = $this->Admin_Home_Model->get_genre();

		$this->load->view('pages/Admin_Transaction_View.php', $data);
	}
}
