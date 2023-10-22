<?php

function getSales()
{
    global $db;
    $query = $db->prepare("SELECT * FROM promocje");
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

function postSales($newSale)
{
    global $db;
    $query = $db->prepare("INSERT INTO promocje VALUES (NULL, :prodName, :startDate, :endDate, :value)");
    $query->bindValue(':prodName', $newSale['name'], PDO::PARAM_STR);
    $query->bindValue(':startDate', $newSale['sDate'], PDO::PARAM_STR);
    $query->bindValue(':endDate', $newSale['eDate'], PDO::PARAM_STR);
    $query->bindValue(':value', $newSale['val'], PDO::PARAM_INT);
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

function deleteSales($saleID)
{
    global $db;
    $query = $db->prepare("DELETE FROM promocje WHERE id = :saleId");
    $query->bindValue(':saleId', $saleID['id'], PDO::PARAM_INT);
    $query->execute();
    $dropIdColumn = $db->prepare("ALTER TABLE promocje DROP id");
    $dropIdColumn->execute();
    $addIdColumn = $db->prepare("ALTER TABLE promocje ADD `id` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`id`)");
    $addIdColumn->execute();
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
