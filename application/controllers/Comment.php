<?php
class Comment extends MY_Controller
{
    function __construct()
    {
        parent::__construct();

        $this->load->helper('form');
        $this->load->library('form_validation');
    }

    /*
     * Kiểm tra email đã tồn tại chưa
     */
    function check_email()
    {
        $email = $this->input->post('email');
        $where = array('email' => $email);
        //kiêm tra xem email đã tồn tại chưa
        if ($this->user_model->check_exists($where)) {
            //trả về thông báo lỗi
            $this->form_validation->set_message(__FUNCTION__, 'Email đã tồn tại');
            return false;
        }
        return true;
    }


    public function index()
    {
        $this->load->model('comment_model');

        $this->load->model('user_model');
        $user_id = 0;
        $user = "";
        // neu thanh vien da dang nhap thi lay thong tin thanh vien
        if ($this->session->userdata('user_id_login')) {
            // lay thong tin cua thanh vien
            $user_id = $this->session->userdata('user_id_login');
            $user = $this->user_model->get_info($user_id);
        }
        $this->data['user'] = $user;
        foreach ($user as $row) {
            $user_name = $row['name'];
            $user_email = $row['email'];
        }
        $id = $this->uri->rsegment(3);
        $product_id = $this->product_model->get_info($id);
        if (!$product_id) redirect();
        $this->data['product'] = $product_id;

        //neu ma co du lieu post len thi kiem tra

        $this->form_validation->set_rules('name', 'First & Last name', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('content', 'Content', 'required');
        $this->form_validation->set_rules('phone', 'Phone', 'required|numeric');
        $this->form_validation->set_rules('address', 'Address', 'required');

        //nhập liệu chính xác
        if ($this->form_validation->run()) {
            $data = array(
                'product_id'            => $product_id,
                'user_name'             => $user_name,
                'user_email'            => $user_email,
                'product_id'            => $product_id,
                'user_id'               => $user_id,
                'content'               => $this->input->post('content'),
                'created'               => now(),

            );
            $this->load->model('comment_model');
            $this->comment_model->create($data);
        }




        //hiển thị ra view
        $this->data['temp'] = 'site/comment/index';
        $this->load->view('site/layout', $this->data);
    }
}
