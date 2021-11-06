<?php

namespace mf\view;

abstract class AbstractView {

    static protected $style_sheets = []; /* un tableau de fichiers style */
    static protected $app_title    = "MF app Title"; /* un titre de document */
    
    protected $data        = null; /* les données nécessaires */

    public function __construct( $data ){
        $this->data = $data;
    }
    
    static public function addStyleSheet($path_to_css_files){
        self::$style_sheets[] = $path_to_css_files;
    }
    
    static public function setAppTitle($title){
        self::$app_title = $title;
    }

        
    abstract protected function renderBody($selector);
    
    public function render($selector){
        /* le titre du document */
        $title = self::$app_title;
        
        /* les feuilles de style */
        $app_root = (new \mf\utils\HttpRequest())->root;
        $styles = '';
        foreach ( self::$style_sheets as $file )
            $styles .= '<link rel="stylesheet" href="'.$app_root.'/'.$file.'"> ';

        /* on appele la methode renderBody de la sous classe */
        $body = $this->renderBody($selector);
        
                
        $html = <<<EOT
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <title>${title}</title>
	    ${styles}
    </head>

    <body>
        
       ${body}

    </body>
</html>
EOT;
        echo $html;
    }
    
}