<?php
class Connection{
    static public function connector(){
        $link = new PDO("mysql:host=127.0.0.1;dbname=company_management","root","password");
        if(!$link)
        {
            echo "<h1> Incorrect Connection </h1>";
        }
        $link -> exec("set names utf8");
        return $link;
    }
}
?>