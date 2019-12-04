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

    public function editAction()
    {
        $this->view->pick('dashboard/edit');
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false);

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

    public function ppdb2Action()
    {
        $this->view->pick('dashboard/ppdb2');
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
    }

    public function loginAction()
    {
        $request = new Request();
        $username = $request->getPost('em');
        $user = Users::findFirst("email='$username'");
        $pass = $request->getPost('pw');
        $users = Users::find();
        $this->view->users = $users;
        // var_dump($pass);die();
        if($user)
        {
            if($user->password == $pass){
                $this->session->set('auth',[
                    'username' => $user->username,
                    'email' => $user->email,
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
                $this->response->redirect('/user');
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

}   