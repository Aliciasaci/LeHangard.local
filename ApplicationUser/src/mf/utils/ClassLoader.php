<?php
namespace mf\utils;
use \mf\utils\AbstractClassLoader as AbsClassLoad;

class ClassLoader extends AbsClassLoad {

    /**
     * Constructeur: enregistre le chemin vers la racine des espaces de noms
     * dans l'attribut $prefix 
     *
     */
    
    public function __construct($file_root) {
        parent::__construct($file_root);
    }

    /**
     * Méthode loadClass: charge le fichier de définition d'une classe.
     *
     * Paramètres:
     *
     *  - $classname (string): le nom complet d'une classe
     *  
     *  
     * Algorithme:
     *
     * - transforme le non de la classe en un chemin vers le fichier 
     *   de définition avec la methode $this->getFilename
     *
     * - ajoute le prefix pour avoir le chemin complet depuis la racine du
     *   de l'application avec la méthode $this->makePath
     *
     * - si le fichier existe :
     *   
     *   - le charger avec l'instruction require_once
     * 
     * - sinon : rien (surtout ne pas générer d'exception ou d'erreur)
     *        
     */
    
    public function loadClass(string $classname) {
        $filePathEnd = $this->getFilename($classname);
        $filePath = $this->makePath($filePathEnd);
        if(file_exists($filePath)){
            require_once($filePath);
        }
    }

    /**
     * Méthode makePath: ajoute le préfix au chemin
     * vers le fichier de définition d'une classe.
     *
     * Paramètres:
     *
     * - $filename (string): le chemin ver le fichier d'une classe
     *
     * Retourne:
     *  
     * - string : le même chemin avec le préfixe au début 
     *
     * Algorithme:
     *
     * - ajoute $this->prefix et DIRECTORY_SEPARATOR au début de $filename
     *  
     * - retourne la nouvelle chaine 
     *
     */
    
    protected function makePath(string $filename): string {
        return $this->prefix.DIRECTORY_SEPARATOR.$filename;
    }

     /**
     * Méthode getFilename: transfomre le nom d'une classe espace de noms 
     * compris en un chemain vers la définition de la classe.
     * 
     * Exemple: 
     *
     *   peopleapp\personne\Etudiant -> peopleapp/personne/Etudiant.php
     *
     * Paramètres:
     *
     * - $classname (string): le nom complet d'une classe
     *
     * Retourne:
     *  
     * - string : le chemin ver le fichier depuis la racine des espaces de nom 
     *
     * Algorithme:
     *
     * 
     * - remplacer toute les autres occurrences du caractère "\"
	 *   par la constante DIRECTORY_SEPARATOR
     *
     * - ajouter ".php" a la fin de la chaine 
     *
     * - retourner la chaine finale.
     *
     */
   
    protected function getFilename(string $classname): string {
        $chaine = str_replace("\\", DIRECTORY_SEPARATOR, $classname);
        return $chaine.".php";
    }

    /**
     * Méthode register : enregistre le chargeur de classe au près de
     * l'interprète PHP 
     * 
     * Note : 
     * 
     * Comme le chargeur de classe est une méthode, on doit donner une
     * une instance sur laquelle sera appelée cette méthode.
     * 
     */
    
    public function register () {
        spl_autoload_register( array($this, 'loadClass') );
    }
}