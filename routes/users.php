<?php

function getUsers()
{
    global $db;
    $query = $db->prepare("SELECT * FROM klijeci");
    $query->execute();
    $result = $query->fetchAll();

    foreach ($result as $row) {

        foreach ($row as $key => $value) {
            if (is_numeric($key)) {
                continue;
            }
            $filteredRow[$key] = $value;
        }
        $filteredResult[] = $filteredRow;
    }

    echo json_encode($filteredResult);
}

function getUsersOrders($userEmail)
{
    global $db;
    $query = $db->prepare("SELECT * FROM zamowienia WHERE email=:email");
    $query->bindValue(':email', $userEmail, PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetchAll();

    foreach ($result as $row) {
        foreach ($row as $key => $value) {
            if (is_numeric($key)) {
                continue;
            }
            $filteredRow[$key] = $value;
        }
        $filteredResult[] = $filteredRow;
    }

    echo json_encode($filteredResult);
}
