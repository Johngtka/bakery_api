<?php

    function API(){

        $users = require_once('./routes/users.php');

        if($_SERVER['REQUEST_METHOD'] === 'GET'){
            $users.getUsers();
        }
    
    }

?>