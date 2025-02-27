<?php

function API()
{
    $sales = require_once('./routes/sales.php');
    $users = require_once('./routes/users.php');
    $updates = require_once('./routes/updates.php');
    $products  = require_once('./routes/products.php');
    $employers = require_once('./routes/employers.php');

    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        $users . getUsers();
    }

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        $requestData = json_decode(file_get_contents('php://input'), true);

        if (isset($requestData['getEmployers']) && $requestData['getEmployers'] != false) {
            $employers . getEmployers();
        }

        if (isset($requestData['empLog']) && $requestData['empLog'] != false) {
            $loginData = [
                'login' => $requestData['employerLogin'],
                'password' => $requestData['employerPassword']
            ];
            $employers . employerLogin($loginData);
        }

        if (isset($requestData['empLogout']) && $requestData['empLogout'] != false) {
            $login = $requestData['login'];

            $employers . employerLogout($login);
        }

        if (isset($requestData['usersOrders']) && $requestData['usersOrders'] != false) {
            $userLogin = $requestData['login'];
            $users . getUsersOrders($userLogin);
        }

        if (isset($requestData['orderDiscountCode']) && $requestData['orderDiscountCode'] != false) {
            $orderDataToCheck = [
                'code' => $requestData['code'],
                'orderedProdName' => $requestData['prodName']
            ];
            $users . userOrderDiscountCodeChecker($orderDataToCheck);
        }

        if (isset($requestData['getUpdates']) && $requestData['getUpdates'] != false) {
            $updates . getUpdates();
        }

        if (isset($requestData['getProducts']) && $requestData['getProducts'] != false) {
            $products . getProducts();
        }

        if (isset($requestData['getListOfProducts']) && $requestData['getListOfProducts'] != false) {
            $products . getListOfProducts();
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
                'mass' => $requestData['weight'],
                'name' => $requestData['name'],
                'price' => $requestData['price'],
                'elements' => $requestData['components'],
                'recipe' => $requestData['recipe']
            ];
            $products . postProduct($newProduct);
        }

        if (isset($requestData['postSale']) && $requestData['postSale'] != false) {
            $newSale = [
                'val' => $requestData['value'],
                'name' => $requestData['name'],
                'sDate' => $requestData['sDate'],
                'eDate' => $requestData['eDate'],
                'sCode' => $requestData['sCode']
            ];
            $sales . postSales($newSale);
        }

        if (isset($requestData['editUpdate']) && $requestData['editUpdate'] != false) {
            $editUpdate = [
                'id' => $requestData['id'],
                'name' => $requestData['name'],
                'date' => $requestData['date'],
                'desc' => $requestData['desc']
            ];
            $updates . editUpdate($editUpdate);
        }

        if (isset($requestData['editProduct']) && $requestData['editProduct'] != false) {
            $editedProduct = [
                'id' => $requestData['id'],
                'mass' => $requestData['weight'],
                'name' => $requestData['name'],
                'price' => $requestData['price'],
                'elements' => $requestData['components'],
                'recipe' => $requestData['recipe']
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
