<?php

function API()
{

    $users = require_once('./routes/users.php');
    $updates = require_once('./routes/updates.php');
    $products  = require_once('./routes/products.php');
    $sales = require_once('./routes/sales.php');

    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        $users . getUsers();
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        $requestData = json_decode(file_get_contents('php://input'), true);

        if (isset($requestData['usersOrders']) && $requestData['usersOrders'] != false) {
            $userLogin = $requestData['login'];
            $users . getUsersOrders($userLogin);
        }

        if (isset($requestData['getUpdates']) && $requestData['getUpdates'] != false) {
            $updates . getUpdates();
        }

        if (isset($requestData['getProducts']) && $requestData['getProducts'] != false) {
            $products . getProducts();
        }

        if (isset($requestData['getSales']) && $requestData['getSales'] != false) {
            $sales . getSales();
        }

        if (isset($requestData['postUpdate']) && $requestData['postUpdate'] != false) {
            $newUpdate = [
                'name' => $requestData['name'],
                'date' => $requestData['date'],
                'desc' => $requestData['desc']
            ];
            $updates . postUpdate($newUpdate);
        }

        if (isset($requestData['postProduct']) && $requestData['postProduct'] != false) {
            $newProduct = [
                'name' => $requestData['name'],
                'price' => $requestData['price'],
                'mass' => $requestData['weight'],
                'elements' => $requestData['components'],
                'description' => $requestData['description']
            ];
            $products . postProduct($newProduct);
        }

        if (isset($requestData['postSale']) && $requestData['postSale'] != false) {
            $newSale = [
                'name' => $requestData['name'],
                'sDate' => $requestData['sDate'],
                'eDate' => $requestData['eDate'],
                'val' => $requestData['value']
            ];
            $sales . postSales($newSale);
        }

        if (isset($requestData['editUpdate']) && $requestData['editUpdate'] != false) {
            $editUpdate = [
                'name' => $requestData['name'],
                'date' => $requestData['date'],
                'desc' => $requestData['desc'],
                'id' => $requestData['id']
            ];
            $updates . editUpdate($editUpdate);
        }

        if (isset($requestData['editProduct']) && $requestData['editProduct'] != false) {
            $editedProduct = [
                'name' => $requestData['name'],
                'price' => $requestData['price'],
                'mass' => $requestData['weight'],
                'elements' => $requestData['components'],
                'description' => $requestData['description'],
                'id' => $requestData['id']
            ];
            $products . editProduct($editedProduct);
        }

        if (isset($requestData['deleteProduct']) && $requestData['deleteProduct'] != false) {
            $deletedProduct = [
                'id' => $requestData['id']
            ];
            $products . deleteProduct($deletedProduct);
        }

        if (isset($requestData['deleteSale']) && $requestData['deleteSale'] != false) {
            $deletedSale = [
                'id' => $requestData['id']
            ];
            $sales . deleteSales($deletedSale);
        }
    }
}
