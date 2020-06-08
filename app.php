<?php

function pttCheckDigit($barcode)
{
    $arrSplit = str_split($barcode);
    $total = [];

    foreach ($arrSplit as $key => $value) {
        $total[] = $key % 2 == 0 ? $value * 1 : $value * 3;
    }

    $totalSum = array_sum($total);
    return $barcode.(10 - $totalSum % 10);
}

$barcode = 275036569845;
$barcodeWithCheckDigit = pttCheckDigit($barcode);
