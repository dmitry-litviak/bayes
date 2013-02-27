<?php defined('SYSPATH') or die('No direct script access.');
class Model_Message extends ORM {

    protected $_belongs_to = array('user'   => array( 'model' => 'User' ));

    public function save_message($values){
        return $this->values($values)->save();
    }
  
}