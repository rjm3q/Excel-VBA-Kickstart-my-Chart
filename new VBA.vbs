Option Explicit

Sub Nextcells()

Dim firstrow As String
Dim total As Double
Dim writeToRow As Double
Dim lastrow As Double

Cells(1, 9).Value = "Ticker"
Cells(1, 10).Value = "Total Stock Value"

writeToRow = 2

firstrow = Range("A2").Value
total = Range("G2").Value

Dim row As Double
lastrow = ActiveSheet.Cells(ActiveSheet.Rows.Count, 1).End(xlUp).row



For row = 3 To lastrow
If Cells(row, 1).Value = firstrow Then
total = total + Cells(row, 7).Value
Else
Cells(writeToRow, 9).Value = firstrow
Cells(writeToRow, 10).Value = total
writeToRow = writeToRow + 1

firstrow = Cells(row, 1).Value
total = Cells(row, 2).Value


End If
Next row

End Sub