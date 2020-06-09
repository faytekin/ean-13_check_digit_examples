
def pttCheckDigit(barcode):
    arrBarcode = enumerate(str(barcode))
    total = 0

    for index, value in arrBarcode:
        value = int(value)
        total += index % 2 == 0 and value * 1 or value * 3

    return int(str(barcode) + str((10 - total % 10) % 10))


barcode = 275036569845
barcodeWithCheckDigit = pttCheckDigit(barcode)
print(barcodeWithCheckDigit)
