
const checkDigit = (barcode) => {
    const strBarcode = String(barcode).split('');
    let total = 0;

    strBarcode.forEach((value, key) => {
        total += key %2 == 0 ? value * 1 : value * 3;
    });

    const result = String(barcode) + ((10 - total % 10) % 10);
    return parseInt(result);
};

const barcode = 275036569845;
const barcodeWithCheckDigit = checkDigit(barcode);
console.log('barcodeWithCheckDigit => ', barcodeWithCheckDigit);