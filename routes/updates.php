<?php

function getUpdates(){
    global $db;
    $query = $db -> prepare("SELECT * FROM aktualizacje ORDER BY id DESC");
    $query -> execute();
    $result = $query -> fetchAll();
    echo json_encode($result);
}

function postUpdate($newUpdate){
    global $db;
    $query = $db -> prepare("INSERT INTO aktualizacje VALUES(NULL,:name, :date, :desc)");
    $query -> bindValue(":name", $newUpdate['name'], PDO::PARAM_STR);
    $query -> bindValue(":date", $newUpdate['date'], PDO::PARAM_STR);
    $query -> bindValue(":desc", $newUpdate['desc'], PDO::PARAM_STR);
    $query -> execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}

function editUpdate($editedLog){
    global $db;
    $query = $db -> prepare("UPDATE aktualizacje SET name = :name, date = :date, description = :desc WHERE id = :updateID");
    $query -> bindValue(":name", $editedLog['name'], PDO::PARAM_STR);
    $query -> bindValue(":date", $editedLog['date'], PDO::PARAM_STR);
    $query -> bindValue(":desc", $editedLog['desc'], PDO::PARAM_STR);
    $query -> bindValue(":updateID", $editedLog['id'], PDO::PARAM_INT);
    $query -> execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}

?>