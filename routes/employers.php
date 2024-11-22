<?php

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

    $_SESSION["loggedEmployer"] = $filteredResult;

    echo json_encode($filteredResult);
}

function employerLogout()
{
    // echo isset($_SESSION["loggedEmployer"]) ? "Sesja istnieje" : "Sesja nie istnieje";

    if (isset($_SESSION["loggedEmployer"])) {
        unset($_SESSION["loggedEmployer"]);
        echo json_encode(true);
    }
}
