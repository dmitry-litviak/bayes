<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Messages extends My_Layout_User_Logged_Controller {

	public function action_index()
	{
        $this->redirect('message/createt');
	}

    public function action_create()
    {
        Helper_Mainmenu::setActiveItem('message_create');

        Helper_Output::factory()->link_js('libs/jquery.ui.widget')
                                ->link_js('libs/jquery.validate.min')
                                ->link_js('messages/create')
            ;
        if ($this->request->post()) {
            $message = Orm::factory('Message')->save_message(array_merge($this->request->post(), array('user_id' => $this->logged_user->id, 'probability' => B8::factory()->classify($this->request->post('message')))));
            Helper_Alert::set_flash('Вероятность того, что сообщение спам - ' . $message->probability);
        }
        $data['logged_user']  = $this->logged_user;
        $this->setTitle('Анализ Сообщения')
             ->view('messages/create', $data)
             ->render();
    }

    public function action_list()
    {
        Helper_Mainmenu::setActiveItem('list');
        Helper_Output::factory()->link_js('messages/list');
        $data['spams'] = ORM::factory('Message')->where('probability', '>', 0.5)->where('user_id', '=', $this->logged_user->id)->find_all();
        $data['hams'] = ORM::factory('Message')->where('probability', '<', 0.5)->where('user_id', '=', $this->logged_user->id)->find_all();
        $data['logged_user']  = $this->logged_user;
        $this->setTitle('Список Сообщений')
            ->view('messages/list', $data)
            ->render();
    }

    public function action_words_list()
    {
        Helper_Mainmenu::setActiveItem('words_list');
        $data['words'] = ORM::factory('Word')->find_all();
        $data['logged_user']  = $this->logged_user;
        $this->setTitle('Список Сообщений')
            ->view('messages/words_list', $data)
            ->render();
    }

    public function action_learn()
    {
        Helper_Output::factory()->link_js('libs/jquery.ui.widget')
                                ->link_js('libs/jquery.validate.min')
                                ->link_js('messages/learn')
            ;
        Helper_Mainmenu::setActiveItem('learn');
        if ($this->request->post()) {
            if ($this->request->post('type') == "spam") {
                B8::factory()->learn($this->request->post('message'), B8::SPAM);
            } else {
                B8::factory()->learn($this->request->post('message'), B8::HAM);
            }
            Helper_Alert::set_flash('Фильтр успешно обучен');
        }
        $data['logged_user']  = $this->logged_user;
        $this->setTitle('Обучение фильтра')
            ->view('messages/learn', $data)
            ->render();
    }

    public function action_get_text()
    {
        $message = ORM::factory('Message', $this->request->post('id'));
        Helper_Jsonresponse::render_json('success', null, array(
                                                                "text"  => $message->message,
                                                                "title" => $message->title
        ));
    }


} // End Trips Controller
