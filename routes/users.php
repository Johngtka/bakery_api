<?php

function getUsers()
{
    global $db;
    $query = $db->prepare("SELECT * FROM klijeci");
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}

function getUsersOrders($userEmail)
{
    global $db;
    $query = $db->prepare("SELECT * FROM zamowienia WHERE email=:email");
    $query->bindValue(':email', $userEmail, PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}
