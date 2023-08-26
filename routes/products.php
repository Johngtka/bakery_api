<?php

    function getProducts(){
        global $db;
        $query = $db->prepare("SELECT * FROM produkty");
        $query->execute();
        $result = $query->fetchAll();
        echo json_encode($result);
    }

?>