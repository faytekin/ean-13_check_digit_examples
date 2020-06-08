package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	const barcode = 275036569845
	barcodeWithCheckDigit := pttCheckDigit(barcode)
	println(barcodeWithCheckDigit)
}

func pttCheckDigit(barcode int64) int64 {
	strBarcode := strconv.FormatInt(barcode, 10)
	arrBarcode := strings.SplitAfter(strBarcode, "")
	total := 0

	for i, v := range arrBarcode {
		multiplier := map[bool]int{true: 1, false: 3}[i%2 == 0]
		vint, _ := strconv.Atoi(v)

		total = total + (vint * multiplier)
	}

	digit := 10 - total%10
	result, _ := strconv.ParseInt(fmt.Sprintf("%s%d", strBarcode, digit), 10, 64)

	return result
}
