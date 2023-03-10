<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dokter extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->library('form_validation');
        $this->load->library('upload');
        $this->form_validation->set_error_delimiters('<small class="text-danger">', '</small>');
        $this->form_validation->set_message('required', 'Kolom {field} harus diisi');
        $this->form_validation->set_message('numeric', 'Kolom {field} hanya bisa diisi oleh angka');

        // Jika bukan admin block
        is_role(2, true);
    }

    public function index()
    {
        $data['title']  = "Data Dokter";
        $data['setting'] = $this->MainModel->get_where('pengaturan', array('idPengaturan' => '1'));
        $data['dokter'] = $this->MainModel->get('dokter');

        template_view('dokter/data', $data);
    }

    private function _validasi($add = true)
    {
        if ($add) {
            $this->form_validation->set_rules('nip', 'NIP', 'required|trim|numeric|min_length[18]|max_length[18]');
        }
        $this->form_validation->set_rules('namaDokter', 'Nama Dokter', 'required|trim');
        $this->form_validation->set_rules('spesialis', 'Spesialis', 'required|trim');
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
        $this->form_validation->set_rules('noTelp', 'Nomor Telepon', 'required|trim|numeric');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required|trim');
        $this->form_validation->set_rules('biayaDokter', 'Biaya Dokter', 'required|numeric');
    }

    public function add()
    {
        $data['title']  = "Tambah Dokter";
        $data['setting'] = $this->MainModel->get_where('pengaturan', array('idPengaturan' => '1'));

        $this->_validasi();
        if ($this->form_validation->run() == false) {
            template_view('dokter/add', $data);
        } else {
            $config['upload_path'] = 'assets/images/foto-dokter'; //path folder
            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
            $this->upload->initialize($config);
            if (!empty($_FILES['file_path']['name'])) {
                if ($this->upload->do_upload('file_path')) {
                    $file = $this->upload->data();
                    //Compress Image
                    $config['image_library'] = 'gd2';
                    $config['source_image'] = $config['upload_path'] . "/" . $file['file_name'];
                    $config['create_thumb'] = FALSE;
                    $config['maintain_ratio'] = FALSE;
                    $config['width'] = 354;
                    $config['height'] = 472;
                    $config['new_image'] = $config['upload_path'] . "/" . $file['file_name'];
                    $this->load->library('image_lib', $config);
                    $this->image_lib->resize();
                   
                }
                $input = array(
                    'nip' => $this->input->post('nip', true),
                    'namaDokter' => $this->input->post('namaDokter', true),
                    'spesialis' => $this->input->post('spesialis', true),
                    'email' => $this->input->post('email', true),
                    'noTelp' => $this->input->post('noTelp', true),
                    'alamat' => $this->input->post('alamat', true),
                    'fotoDokter' => $config['upload_path'] . "/" . $file['file_name'],
                    'biayaDokter' => $this->input->post('biayaDokter', true),
                    'created_at' => date('Y-m-d H:i:s')
                );
            } else {
                $input = $this->input->post(null, true);
            }
            $save = $this->MainModel->insert('dokter', $input);
            if ($save) {
                msgBox('save');
                redirect('dokter');
            } else {
                msgBox('save', false);
                redirect('dokter/add');
            }
        }
    }

    public function edit($getNip)
    {
        $nip = encode_php_tags($getNip);
        $data['title']  = "Edit Dokter";
        $data['setting'] = $this->MainModel->get_where('pengaturan', array('idPengaturan' => '1'));
        $data['dokter'] = $this->MainModel->get_where('dokter', ['nip' => $nip]);

        $this->_validasi(false);
        if ($this->form_validation->run() == false) {
            template_view('dokter/edit', $data);
        } else {
            $config['upload_path'] = 'assets/images/foto-dokter'; //path folder
            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
            $this->upload->initialize($config);
            if (!empty($_FILES['file_path']['name'])) {
                if ($this->upload->do_upload('file_path')) {
                    $file = $this->upload->data();
                    //Compress Image
                    $config['image_library'] = 'gd2';
                    $config['source_image'] = $config['upload_path'] . "/" . $file['file_name'];
                    $config['create_thumb'] = FALSE;
                    $config['maintain_ratio'] = FALSE;
                    $config['width'] = 354;
                    $config['height'] = 472;
                    $config['new_image'] = $config['upload_path'] . "/" . $file['file_name'];
                    $this->load->library('image_lib', $config);
                    $this->image_lib->resize();
                   
                }
                $input = array(
                    'namaDokter' => $this->input->post('namaDokter', true),
                    'spesialis' => $this->input->post('spesialis', true),
                    'email' => $this->input->post('email', true),
                    'noTelp' => $this->input->post('noTelp', true),
                    'alamat' => $this->input->post('alamat', true),
                    'fotoDokter' => $config['upload_path'] . "/" . $file['file_name'],
                    'biayaDokter' => $this->input->post('biayaDokter', true),
                    'updated_at' => date('Y-m-d H:i:s')
                );
            } else {
                $input = $this->input->post(null, true);
            }
            $edit = $this->MainModel->update('dokter', $input, ['nip' => $nip]);
            if ($edit) {
                msgBox('edit');
                redirect('dokter');
            } else {
                msgBox('edit', false);
                redirect('dokter/edit/' . $nip);
            }
            redirect('dokter');
        }
    }

    public function delete($getNip)
    {
        $nip = encode_php_tags($getNip);
        $del = $this->MainModel->delete('dokter', ['nip' => $nip]);
        if ($del) {
            msgBox('delete');
        } else {
            msgBox('delete', false);
        }
        redirect('dokter');
    }
}
