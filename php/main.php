<?php
include_once 'db.php';
include_once 'classes/PizzaInfo.php';
include_once 'classes/Pizza.php';
include_once 'classes/PizzaOrder.php';



if (isset($_POST['pizzaName']) && isset($_POST['sizeName']) && isset($_POST['sauceName'])) {
    $order = new PizzaOrder($_POST['pizzaName'], $_POST['sizeName'], $_POST['sauceName']);
    $totalPrice = $order->totalPriceCalculation($mysql);
    echo json_encode($totalPrice);
}