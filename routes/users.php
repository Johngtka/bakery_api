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

function getUsersOrders($userLogin)
{
    global $db;
    $query = $db->prepare("SELECT * FROM zamowienia WHERE userLogin=:login ORDER BY id DESC");
    $query->bindValue(':login', $userLogin, PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetchAll();

    if (!empty($result)) {
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
    } else {
        echo json_encode([]);
    }
}

function userOrderDiscountCodeChecker($orderDiscountCode)
{
    global $db;
    $query = $db->prepare("SELECT zamowienia.SaleCode AS orderCode, promocje.SaleCode as discountCode FROM zamowienia JOIN promocje ON zamowienia.SaleCode = promocje.SaleCode WHERE zamowienia.SaleCode = :discountCode");
    $query->bindValue(':discountCode', $orderDiscountCode, PDO::PARAM_STR);
    $query->execute();
    $result = $query->fetchAll();

    if (!empty($result)) {
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
    } else {
        echo json_encode([]);
    }
}
