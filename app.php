<?php

function pttCheckDigit($barcode)
{
    $arrSplit = str_split($barcode);
    $total = 0;

    foreach ($arrSplit as $key => $value) {
        $total += $key % 2 == 0 ? $value * 1 : $value * 3;
    }

    return $barcode.(10 - $total % 10);
}

$barcode = 275036569845;
$barcodeWithCheckDigit = pttCheckDigit($barcode);
