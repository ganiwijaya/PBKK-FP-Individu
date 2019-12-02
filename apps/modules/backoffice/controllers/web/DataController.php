<?php

namespace Phalcon\Init\BackOffice\Controllers\Web;

use Phalcon\Mvc\Controller;

class DataController extends Controller
{
    public function indexAction()
    {
        $this->view->pick('backoffice/data');  
        $this->assets->addCss('//maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', false);
        $this->assets->addCss('//geniuskaranganyar.com/assets/extra/css/style.css', false);

        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/solid.js', false);
        $this->assets->addJs('//use.fontawesome.com/releases/v5.0.13/js/fontawesome.js', false);
        $this->assets->addJs('//code.jquery.com/jquery-3.3.1.slim.min.js', false);
        $this->assets->addJs('//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js', false);
        $this->assets->addJs('//stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js', false); 
        $this->assets->addJs('//geniuskaranganyar.com/assets/extra/js/style.js', false); 
    }

}