<?php

function getSales()
{
    global $db;
    $query = $db->prepare("SELECT * FROM promocje");
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}
