<?php

class DataBase
{
    public static function executeQuery($mysql, $query, $field): array
    {
        $result = mysqli_query($mysql, $query);
        $resultArray = [];
        while($row = mysqli_fetch_array($result)) {
            array_push($resultArray, $row[$field]);
        }
        return $resultArray;
    }

    public static function executeQueryStmt($mysql, $query, $types, $vars, $field): array
    {
        $stmt = mysqli_prepare($mysql, $query);
        mysqli_stmt_bind_param($stmt, $types, ...$vars);
        mysqli_stmt_execute($stmt);
        $res = mysqli_stmt_get_result($stmt);
        $resultArray = [];
        while($row = mysqli_fetch_array($res)) {
            array_push($resultArray, $row[$field]);
        }
        return $resultArray;
    }
}