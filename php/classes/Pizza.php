<?php
include_once 'DataBase.php';

class Pizza extends PizzaInfo
{
    function getOptions($mysql)
    {
        $query = 'SELECT pizzaName FROM pizza';
        $this->pizzaName = DataBase::executeQuery($mysql, $query, 'pizzaName');

        $query = 'SELECT sizeName FROM size';
        $this->sizeName = DataBase::executeQuery($mysql,$query,'sizeName');

        $query = 'SELECT sauceName FROM sauce';
        $this->sauceName = DataBase::executeQuery($mysql, $query, 'sauceName');

        return[ 'pizza' => $this->pizzaName,
                'size' => $this->sizeName,
                'sauce' => $this->sauceName];
    }

}