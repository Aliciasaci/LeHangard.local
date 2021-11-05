<?php

namespace mf\router;
use mf\router\AbstractRouter as AbstractRouter;
use tweeterapp\auth\TweeterAuthentification as TweeterAuthentification;

class Router extends AbstractRouter {

    public function __construct() {
        parent::__construct();
    }

    public function addRoute($name, $url, $ctrl, $method, $level=TweeterAuthentification::ACCESS_LEVEL_NONE) {
        $route = [ $ctrl, $method, $level ];
        self::$routes[$url] = $route;
        self::$aliases[$name] = $url;
    }

    public function setDefaultRoute($url) {
        self::$aliases['default'] = $url;
    }

    public function urlFor($route_name, $param_list=[]) {
        $url = $this->http_req->script_name;
        $url .= self::$aliases[$route_name];
        if(!empty($param_list)) {
            $url .= "?";
            for($i = 0; $i < count($param_list); $i++) {
                if($i > 0) {
                    $url .= "&amp;";
                }
                $url .= $param_list[$i][0]."=".$param_list[$i][1];
            }
        }
        
        return $url;
    }

    public function run() {
        $url = $this->http_req->path_info;
        if(array_key_exists($url, self::$routes)) {
            $requested_level = self::$routes[$url][2];
            $auth = new TweeterAuthentification();

            if($auth->checkAccessRight($requested_level)) {
                $ctrl = new self::$routes[$url][0]();
                $method = self::$routes[$url][1];
                $ctrl->$method();
            }
            else {
                self::executeRoute('default');
            }
        }
        else {
            self::executeRoute('default');
        }
    }

    public static function executeRoute($alias, $message=null) {
        $url = self::$aliases[$alias];
        $ctrl = new self::$routes[$url][0]();
        $method = self::$routes[$url][1];
        $ctrl->$method($message);
    }
}