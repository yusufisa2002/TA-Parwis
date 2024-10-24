<?php 
	class Data_rekening extends CI_Controller{

		public function index(){
			$this->rental_model->admin_login();
			$data['rekening'] = $this->rental_model->get_data('rekening')->result();
			$this->load->view('templates_admin/header');
			$this->load->view('templates_admin/sidebar');
			$this->load->view('admin/Data_rekening',$data);
			$this->load->view('templates_admin/footer');
		}

		public function tambah_rekening(){
			$this->rental_model->admin_login();
			$this->load->view('templates_admin/header');
			$this->load->view('templates_admin/sidebar');
			$this->load->view('admin/form_tambah_rekening');
			$this->load->view('templates_admin/footer');
		}

		public function tambah_rekening_aksi(){
			$this->rental_model->admin_login();
			$this->_rules();

			if($this->form_validation->run() == FALSE){
				$this->tambah_rekening();
			}else{
				$nama_rekening		= $this->input->post('nama_rekening');
				$no_rekening		= $this->input->post('no_rekening');
				$atas_nama			= $this->input->post('atas_nama')	;

				$data = array(
					'nama_rekening' => $nama_rekening,
					'no_rekening' => $no_rekening,
					'atas_nama' => $atas_nama
				);

				$this->rental_model->insert_data($data, 'rekening');
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
					  Data Rekening Berhasil Ditambahkan
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>');
				redirect('admin/data_rekening');
			}
		}

		public function update_rekening($id){
			$this->rental_model->admin_login();
			$where = array('id_rekening' => $id);

			$data['rekening'] = $this->db->query("SELECT * FROM rekening WHERE id_rekening='$id'")->result();

			$this->load->view('templates_admin/header');
			$this->load->view('templates_admin/sidebar');
			$this->load->view('admin/form_update_rekening',$data);
			$this->load->view('templates_admin/footer');
		}

		public function update_rekening_aksi(){
			$this->rental_model->admin_login();
			$this->_rules();

			if($this->form_validation->run() == FALSE){
				$this->update_rekening($this->input->post('id_rekening'));
			}else{
				$id 			= $this->input->post('id_rekening'	);
				$nama_rekening 	= $this->input->post('nama_rekening');
				$no_rekening 	= $this->input->post('no_rekening');
				$atas_nama 		= $this->input->post('atas_nama');

				$data = array(
					'nama_rekening' => $nama_rekening,
					'no_rekening' => $no_rekening,
					'atas_nama' => $atas_nama
				);

				$where = array(
					'id_rekening' => $id
				);

				$this->rental_model->update_data('rekening', $data, $where);
				$this->session->set_flashdata('pesan','<div class="alert alert-success alert-dismissible fade show" role="alert">
					  Data Rekening Berhasil Diupdate
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>');
				redirect('admin/data_rekening');




			}
		}

		public function _rules(){
			$this->form_validation->set_rules('nama_rekening', 'Nama Rekening', 'required');
			$this->form_validation->set_rules('no_rekening', 'No Rekening', 'required');
			$this->form_validation->set_rules('atas_nama', 'atas_nama', 'required');			
		}

		public function delete_rekening($id){
			$this->rental_model->admin_login();
			
			$where = array('id_rekening' => $id);
			$this->rental_model->delete_data($where, 'rekening');

				$this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">
					  Data Rekening Berhasil Dihapus
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>');
				redirect('admin/data_rekening');

		}
	
	}
?>