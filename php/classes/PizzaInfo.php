<?php

abstract class PizzaInfo
{
    protected $pizzaName;
    protected $sizeName;
    protected $sauceName;

    function __construct($pizzaName = null, $sizeName = null, $sauceName = null)
    {
        $this->pizzaName = $pizzaName;
        $this->sizeName = $sizeName;
        $this->sauceName = $sauceName;
    }

}