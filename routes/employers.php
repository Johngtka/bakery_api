<?php

function getEmployers()
{
    global $db;
    $query = $db->prepare("SELECT * FROM employers");
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

function employerLogin($loginData)
{
    global $db;
    $query = $db->prepare("SELECT * FROM employers WHERE login = :login AND password = :password");
    $query->bindValue(":login", $loginData['login'], PDO::PARAM_STR);
    $query->bindValue(":password", $loginData['password'], PDO::PARAM_STR);
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

    if ($result) {
        $employerName = $filteredResult[0]['login'];
        $_SESSION[$employerName] = $filteredResult;
        // echo var_dump($employerName, $_SESSION[$employerName]);
        echo json_encode($_SESSION[$employerName]);
    } else {
        echo json_encode(false);
    }
}

function employerLogout($login)
{
    // echo isset($_SESSION[$login]) ? "Sesja istnieje" : "Sesja nie istnieje";

    if (isset($_SESSION[$login])) {
        unset($_SESSION[$login]);
        echo json_encode(true);
    }
}
