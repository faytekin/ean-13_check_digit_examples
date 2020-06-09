<%
Function checkDigit(barcode)
    If IsNull(barcode) Then Exit Function
    total = 0

    For i = 1 To Len(barcode)
        number = CInt(Mid(barcode, i, 1))

        If i Mod 2 = 0 Then
            total = total + (number * 3)
        Else
            total = total + (number * 1)
        End If
    Next

    checkDigit = CDbl(barcode & ((10 - total Mod 10) Mod 10))
End Function

barcode = 275036569845
barcodeWithCheckDigit = checkDigit(barcode)
%>
