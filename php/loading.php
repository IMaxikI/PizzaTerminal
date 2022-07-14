<?php
include_once 'db.php';
include_once 'classes/PizzaInfo.php';
include_once 'classes/Pizza.php';

$pizza = new Pizza();
echo json_encode($pizza->getOptions($mysql));
