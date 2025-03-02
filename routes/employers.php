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

function postEmployer($newEmployerData)
{
    global $db;
    $query = $db->prepare("INSERT INTO employers VALUES (NULL, :login, :genPassword, :email, :position)");
    $query->bindValue(":login", $newEmployerData["login"], PDO::PARAM_STR);
    $query->bindValue(":genPassword", $newEmployerData["password"], PDO::PARAM_STR);
    $query->bindValue(":email", $newEmployerData["email"], PDO::PARAM_STR);
    $query->bindValue(":position", $newEmployerData["position"], PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
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

function editEmployer($employerData)
{
    global $db;
    $query = $db->prepare("UPDATE employers SET login = :login, password = :password, email = :email, position = :position WHERE id = :id");
    $query->bindValue(":id", $employerData['id'], PDO::PARAM_INT);
    $query->bindValue(":login", $employerData['nLogin'], PDO::PARAM_STR);
    $query->bindValue(":password", $employerData['nPass'], PDO::PARAM_STR);
    $query->bindValue(":email", $employerData['nEmail'], PDO::PARAM_STR);
    $query->bindValue(":position", $employerData['nPosition'], PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}

function deleteEmployer($ID)
{
    global $db;

    $query = $db->prepare("DELETE FROM employers WHERE id = :employerID");
    $query->bindValue(":employerID", $ID, PDO::PARAM_INT);
    $query->execute();

    $dropIdColumn = $db->prepare("ALTER TABLE employers DROP id");
    $dropIdColumn->execute();

    $addIdColumn = $db->prepare("ALTER TABLE employers ADD `id` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`id`)");
    $addIdColumn->execute();
    $result = $query->fetchAll();
    echo json_encode($result);
}
