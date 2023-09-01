<?php

    function API(){

        $users = require_once('./routes/users.php');
        $updates = require_once('./routes/updates.php');
        $products  = require_once('./routes/products.php');

        if($_SERVER['REQUEST_METHOD'] === 'GET'){
            $users.getUsers();
        }

        if($_SERVER['REQUEST_METHOD'] === 'POST'){
            
            $requestData = json_decode(file_get_contents('php://input'), true);


            if(isset($requestData['getUpdates']) && $requestData['getUpdates'] != false){
                $updates.getUpdates();
            }

            if(isset($requestData['getProducts']) && $requestData['getProducts'] != false){
                $products.getProducts();
            }

            if(isset($requestData['postUpdate']) && $requestData['postUpdate'] != false){
                $newUpdate = [
                    'name' => $requestData['name'],
                    'date' => $requestData['date'],
                    'desc' => $requestData['desc']
                ];
                $updates.postUpdate($newUpdate);
            }
            
            if(isset($requestData['editUpdate']) && $requestData['editUpdate'] != false){
                $editUpdate = [
                    'name' => $requestData['name'],
                    'date' => $requestData['date'],
                    'desc' => $requestData['desc'],
                    'id' => $requestData['id']
                ];
                $updates.editUpdate($editUpdate);
            }

        }
    
    }

?>