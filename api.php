<?php

    function API(){

        $users = require_once('./routes/users.php');
        $updates = require_once('./routes/updates.php');

        if($_SERVER['REQUEST_METHOD'] === 'GET'){
            $users.getUsers();
        }

        if($_SERVER['REQUEST_METHOD']=== 'POST'){
            
            $requestData = json_decode(file_get_contents('php://input'), true);


            if(isset($requestData['getUpdates']) && $requestData['getUpdates'] != false){
                $updates.getUpdates();
            }

        }
    
    }

?>