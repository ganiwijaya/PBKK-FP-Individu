<?php

namespace Phalcon\Init\Dashboard\Controllers\Web;

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Init\Dashboard\Models\Users;
use Phalcon\Http\Request;
use Phalcon\Events\Manager as EventsManager;

class DashboardController extends Controller
{

    // public function beforeExecuteRoute(Dispatcher $dis)
    // {
    //     // var_dump();die();
    //     // if(!$this->session->has('auth') && $dis->getactionName()!='index') $this->response->redirect('/');
    // }

    public function indexAction()
    {
        $this->view->pick('dashboard/index');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);
        $users = Users::find();

        $this->view->users = $users;
        // $this->db->query("SELECT * FROM logs");
    }

    public function daftarAction()
    {
        $this->view->pick('dashboard/daftar');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);
    }

    public function masukAction()
    {
        $this->view->pick('dashboard/masuk');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);
    }

    public function userAction()
    {
        
        $this->view->pick('dashboard/user');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);
    }

    public function profilAction()
    {
        // if ($this->session->has('auth')) {
        //     $session_user = $this->session->get("id");
        //     $akun = Users::findFirstById($session_user);

        //     $this->view->akun = $akun;
        // }
        
        $this->view->pick('dashboard/profil');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);

    }

    public function editakunAction()
    {
        $this->view->pick('dashboard/editakun');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);

    }

    public function editakun1Action()
    {
        $id = $this->request->getPost("id");
        $users = Users::findFirstById($id);
        $users->username = $this->request->getPost("username");
        $users->email = $this->request->getPost("email");
        $users->password = $this->request->getPost("password");
        $users->kota = $this->request->getPost("kota");
        if (!$users->save()) 
        {
            $this->flashSession->error('Data gagal diperbarui. <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
            $this->response->redirect('/profil');
        }
        else
        {
            $this->flashSession->success('Data berhasil diperbarui <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
            $this->response->redirect('/profil');
        }
    }

    public function editppdbAction()
    {
        $this->view->pick('dashboard/editppdb');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);

    }

    public function editppdb1Action()
    {
        $id = $this->request->getPost("id");
        $users = Users::findFirstById($id);
        $users->nisn = $this->request->getPost("nisn");
        $users->sekolah = $this->request->getPost("sekolah");
        $users->skhun = $this->request->getPost("skhun");
        $users->nun = $this->request->getPost("nun");
        $users->ipa = $this->request->getPost("ipa");
        $users->ind = $this->request->getPost("ind");
        $users->mtk = $this->request->getPost("mtk");
        $users->eng = $this->request->getPost("eng");
        if (!$users->save()) 
        {
            $this->flashSession->error('Data gagal diperbarui. <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
            $this->response->redirect('/ppdb');
        }
        else
        {
            $this->flashSession->success('Data berhasil diperbarui <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
            $this->response->redirect('/ppdb');
        }
    }

    public function ppdbAction()
    {
        $this->view->pick('dashboard/ppdb');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);

        $users = Users::find();
        $this->view->users = $users;
    }

    public function ppdb2019Action()
    {
        $this->view->pick('dashboard/ppdb2019');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);
        
        $users = Users::find();
        $this->view->users = $users;
    }

    public function storeAction()
    {
        $user = new Users();
        $request = new Request();
        $user->nisn = $request->getPost('nisn');
        $user->username = $request->getPost('username');
        $user->email = $request->getPost('email');
        $user->password = $request->getPost('password');
        $user->sekolah = $request->getPost('sekolah');
        $user->kota = $request->getPost('kota');
        $user->hp = $request->getPost('hp');
        $user->skhun = $request->getPost('skhun');
        $user->nun = $request->getPost('nun');
        $user->ipa = $request->getPost('ipa');
        $user->ind = $request->getPost('ind');
        $user->mtk = $request->getPost('mtk');
        $user->eng = $request->getPost('eng');
    	$user->save();
        $this->response->redirect('/masuk');
        $this->flashSession->success('Berhasil mendaftar. <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
    }
    

    public function downloadAction()
    {
        $this->view->disable();

        $id = $this->request->getPost('id');   

        $users = Users::find();
        $pdf = new FPDF();
        $pdf->AddPage();
        $pdf->SetFont("Arial", "B", 16);
        $pdf->Cell(180,10,"PPDB SMA Lawu",1,1);

        $pdf->Cell(90, 10, "ID", 1,0);
        $pdf->SetFont("Arial");
        $pdf->Cell(90, 10, "{$id}", 1,1);

        $pdf->Cell(90, 10, "Nama", 1,0);
        $pdf->SetFont("Arial");
        $pdf->Cell(90, 10, "{$name}", 1,1);

        $pdf->Cell(90, 10, "Asal Sekolah", 1,0);
        $pdf->SetFont("Arial");
        $pdf->Cell(90, 10, "{$school1}", 1,1);

        $pdf->Cell(90, 10, "Sekolah Pilihan 1", 1,0);
        $pdf->SetFont("Arial");
        $pdf->Cell(90, 10, "{$school2}", 1,1);

        $pdf->Cell(90, 10, "Sekolah Pilihan 2", 1,0);
        $pdf->SetFont("Arial");
        $pdf->Cell(90, 10, "{$school3}", 1,1);

        $pdf->output();
    }

    public function loginAction()
    {
        $request = new Request();
        $username = $request->getPost('em');
        $user = Users::findFirst("email='$username'");
        $pass = $request->getPost('pw');
        $users = Users::find();
        // $this->view->users = $users;
        // var_dump($pass);die();
        if($user)
        {
            if($user->password == $pass){
                $this->session->set('auth',[
                    'id' => $user->id,
                    'username' => $user->username,
                    'email' => $user->email,
                    'kota' => $user->kota,
                    'password' => $user->password,
                    'nisn' => $user->nisn,
                    'sekolah' => $user->sekolah,
                    'skhun' => $user->skhun,
                    'nun' => $user->nun,
                    'ipa' => $user->ipa,
                    'ind' => $user->ind,
                    'mtk' => $user->mtk,
                    'eng' => $user->eng
                ]);
                
                $this->response->redirect('/beranda');
                // var_dump("masuk");die();
            }
            else{
                $this->flashSession->error('Password salah <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
                $this->response->redirect('/masuk');
            }
        }
        else{
            $this->flashSession->error('Akun tidak ditemukan <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>');
            $this->response->redirect('/masuk');
        }
        
    }

    public function logoutAction()
    {
        $this->session->destroy();
        $this->response->redirect('/');
    }

    public function hapusAction()
    {
        $users = Users::findFirstById($id);
  
        if (!$users->delete()) {
        echo "Gagal Hapus Data";
        }
        else
        {
        echo "Berhasil Hapus Data";
        }
    }

}   