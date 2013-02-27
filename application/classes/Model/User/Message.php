<?php defined('SYSPATH') OR die('No direct access allowed.');

class Model_User_Message extends ORM {

    // Relationships
    protected $_has_one = array(
            'user' => array('model' => 'User'),
    );
    
    public function rules()
    {
            return array(
                    'message' => array(array('not_empty'))
            );
    }
    
    public function create_message($values, $expected)
    {
        $extra_validation = self::get_validation($values);
        return $this->values($values, $expected)->create($extra_validation);
    }
    
    public function save_message($values){
        return $this->values($values)->save();
    }
    
}