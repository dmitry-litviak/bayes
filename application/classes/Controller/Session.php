<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Session extends My_Layout_User_Controller {

	public function action_login()
	{
        if (Auth::instance()->logged_in())
        {
            $this->redirect('home/index');
        }
        else
        {
            if ($this->request->post())
            {
                $status = Auth::instance()->login($this->request->post('email'), $this->request->post('password'));
                if ($status)
                {
                    $this->redirect('/');
                }
                else
                {
                    Helper_Alert::setStatus('error');
                    Helper_Alert::set_flash(Kohana::$config->load('errors')->get('001'));
                }
            }
        }

        $this->setTitle('Landing page')->view('home/index')->render();
	}
            
    public function action_logout()
    {
        if (Auth::instance()->logout()) {
            $this->redirect('/');
        } else {
            Helper_Alert::setStatus('error');
            Helper_Alert::set_flash(Kohana::$config->load('errors')->get('002'));
        }
    }
        
} // End Session Controller
