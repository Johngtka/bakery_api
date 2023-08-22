<?php

    function API(){

        $users = require_once('./routes/users.php');
        $updates = require_once('./routes/updates.php');

        if($_SERVER['REQUEST_METHOD'] === 'GET'){
            $users.getUsers();
            $users.getUpdates();
        }
    
    }

?>