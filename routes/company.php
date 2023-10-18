<?php
function getCompany()
{
    global $db;
    $query = $db->prepare('SELECT * FROM company');
    $query->execute();
    $result = $query->fetchAll();

    $filteredResult = [];

    foreach ($result as $row) {
        $filteredRow = [];
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
