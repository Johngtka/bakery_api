<?php

function getUpdates(){
    global $db;
    $query = $db->prepare("SELECT * FROM aktualizacje ORDER BY id DESC");
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}

?>