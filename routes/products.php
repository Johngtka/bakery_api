<?php

    function getProducts(){
        global $db;
        $query = $db -> prepare("SELECT * FROM produkty");
        $query -> execute();
        $result = $query -> fetchAll();
        echo json_encode($result);
    }

    function postProduct($newProduct){
        global $db;
        $query = $db -> prepare("INSERT INTO produkty VALUES(NULL, :name, :cost, :weight, :components, :description )");
        $query -> bindValue(":name", $newProduct['name'], PDO::PARAM_STR);
        $query -> bindValue(":cost", $newProduct['price']);
        $query -> bindValue(":weight", $newProduct['mass'], PDO::PARAM_INT);
        $query -> bindValue(":components", $newProduct['elements'], PDO::PARAM_STR);
        $query -> bindValue(":description", $newProduct['description'], PDO::PARAM_STR);
        $query -> execute();
    }
?>