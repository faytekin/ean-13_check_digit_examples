void main() {
  const barcode = 275036569845;
  var barcodeWithCheckDigit = pttCheckDigit(barcode);
  print(barcodeWithCheckDigit);
}


int pttCheckDigit(int barcode) {
  List arrBarcode = barcode.toString().split('');
  int total = 0;

  arrBarcode.asMap().forEach((index, value) {
    int number = int.parse(value);

    total += index %2 == 0 ? number * 1 : number * 3;
  });

  return int.parse(barcode.toString() + ((10 - total % 10) % 10).toString());
}