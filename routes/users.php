<?php

function getUsers(){
    global $db;
    $query = $db->prepare("SELECT * FROM klijeci");
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}

?>