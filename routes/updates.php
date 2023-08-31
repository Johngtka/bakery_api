<?php

function getUpdates(){
    global $db;
    $query = $db -> prepare("SELECT * FROM aktualizacje ORDER BY id DESC");
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}

function postUpdate($newUpdate){
    global $db;
    $query = $db -> prepare("INSERT INTO aktualizacje VALUES(NULL,:name, :date, :desc)");
    $query -> bindValue(":name", $newUpdate['name']);
    $query -> bindValue(":date", $newUpdate['date']);
    $query -> bindValue(":desc", $newUpdate['desc']);
    $query -> execute();
}

function editUpdate($editedLog){
    global $db;
    $query = $db -> prepare("UPDATE aktualizacje SET Nazwa = :name, Data = :date, Opis = :desc WHERE id = :updateID");
    $query -> bindValue(":name", $editedLog['name']);
    $query -> bindValue(":date", $editedLog['date']);
    $query -> bindValue(":desc", $editedLog['desc']);
    $query -> bindValue(":updateID", $editedLog['id']);
    $query -> execute();
}

?>