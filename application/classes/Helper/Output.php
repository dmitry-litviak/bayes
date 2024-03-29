<?php
class Helper_Output
{
	protected static $_css 		= array();
	protected static $_js 		= array();
	protected static $_csspath	= 'css/';
	protected static $_jspath	= 'js/';

	public static function factory() 
	{
		return new Helper_Output();
	}

	public function link_css($css)
	{
		self::$_css[] = $css;
		return $this;
	}

	public function link_js($js)
	{
		self::$_js[] = $js;
		return $this;
	}

	public static function renderCss()
	{
		if(!empty(self::$_css)) {
			foreach (self::$_css as $key => $value) {

				$http = substr($value, 0, 4);
				if($http == 'http') {
					echo '<link rel="stylesheet" type="text/css" href="'. $value .'" />';
				} else {
					echo '<link rel="stylesheet" type="text/css" href="'. URL::base( ) . self::$_csspath . $value .'.css" />';
				}

				
			}
		}
	}

	public static function renderJS()
	{
		if(!empty(self::$_js)) {
			foreach (self::$_js as $key => $value) {
				$http = substr($value, 0, 4);
				if($http == 'http') {
					echo '<script type="text/javascript" src="'. $value .'" /></script>';
				} else {
					echo '<script type="text/javascript" src="'. URL::base( ) . self::$_jspath . $value .'.js" ></script>';
				}
			}
		}
	}

        
        public static function getDateFromUnixTime($time = false){
            if(!$time)
                $time = time();
            return date(Kohana::$config->load('config')->get('date_format'), $time);
        }
        
        public static function siteDate($date) {
            if($date == '0000-00-00 00:00:00' || !$date) {
                    return date(Kohana::$config->load('config')->get('date_format'), time());
            } else {
                    return DateTime::CreateFromFormat('Y-m-d H:i:s', $date)->format(Kohana::$config->load('config')->get('date_format'));
            }
	}
        
        static function hightLight($what, $where) {
            return str_replace($what, "<b>" . $what . "</b>", $where);
        }
        
        public static function timestampForDB ($date) 
        {
            if($date == '00-00-0000' || !$date) {
                    return date('Y-m-d H:i:s', time());
            } else {
                    return DateTime::CreateFromFormat('d-m-Y', $date)->format('Y-m-d H:i:s');
            }
        }

        
        
}