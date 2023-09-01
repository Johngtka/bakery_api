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

    function editProduct($editedProduct){
        global $db;
        $query = $db -> prepare("UPDATE produkty SET Nazwa = :name, Cena = :cost, Masa = :weight, Skladniki = :components, Opis = :description WHERE id = :productID");
        $query -> bindValue(":name", $editedProduct['name'], PDO::PARAM_STR);
        $query -> bindValue(":cost", $editedProduct['price']);
        $query -> bindValue(":weight", $editedProduct['mass'], PDO::PARAM_INT);
        $query -> bindValue(":components", $editedProduct['elements'], PDO::PARAM_STR);
        $query -> bindValue(":description", $editedProduct['description'], PDO::PARAM_STR);
        $query -> bindValue(":productID", $editedProduct['id'], PDO::PARAM_INT);
        $query -> execute();
    }

    function deleteProduct($productID){
        global $db;
        $query = $db -> prepare("DELETE FROM produkty WHERE id = :productID");
        $query -> bindValue(":productID", $productID['id'], PDO::PARAM_INT);
        $query -> execute();
        $dropIdColumn = $db -> prepare("ALTER TABLE produkty DROP id");
        $dropIdColumn -> execute();
        $addIdColumn = $db -> prepare("ALTER TABLE produkty ADD `id` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`id`)");
        $addIdColumn -> execute();        
    }
?>