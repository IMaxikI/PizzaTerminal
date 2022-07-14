<?php
include_once 'DataBase.php';

class PizzaOrder extends PizzaInfo
{
    public function totalPriceCalculation($mysql): float
    {
        settype($this->sizeName, 'integer');
        $query = 'SELECT price FROM configuration
                JOIN pizza ON configuration.idPizza = pizza.idPizza
                JOIN size ON configuration.idSize = size.idSize
                WHERE pizza.PizzaName = ? AND size.SizeName = ?';
        $pricePizza = DataBase::executeQueryStmt($mysql, $query, 'si', [$this->pizzaName,$this->sizeName],'price');


        $query = 'SELECT price FROM sauce WHERE sauceName = ?';
        $priceSauce = DataBase::executeQueryStmt($mysql, $query, 's', [$this->sauceName],'price');

        $rateUSD = $this->getRateUSD();
        $totalPrice = ($pricePizza[0] + $priceSauce[0]) * $rateUSD;
        return round($totalPrice, 2);
    }

    private function getRateUSD(){
        $curl = curl_init('https://www.nbrb.by/api/exrates/rates/431');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
        $data = curl_exec($curl);
        curl_close($curl);
        $data = json_decode($data, true);
        return $data["Cur_OfficialRate"];
    }
}