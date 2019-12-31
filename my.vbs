
'
Dim locations(1 To 3) As String
locations(1) = "Auchi"
locations(2) = "Fugar"
locations(3) = "ojirami"

Dim location
For Each location In locations

Columns("A:A").Select
    Application.CutCopyMode = False
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Columns("B:B").Select
    Selection.Delete Shift:=xlToLeft
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Month"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "PRE"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "RainFall"
    Range("C1").Select
    ActiveCell.FormulaR1C1 = "Max Temp"
    Range("D1").Select
    ActiveCell.FormulaR1C1 = "Min Temp"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("A2").Select
    Selection.AutoFill Destination:=Range("A2:A661"), Type:=xlFillDefault
    Range("A2:A661").Select
    ActiveWindow.SmallScroll Down:=-195
    Range("A1").Select
'
Dim wheathers(1 To 3) As String
wheathers(1) = "RainFall"
wheathers(2) = "Min Temp"
wheathers(3) = "Max Temp"

Dim wheather
For Each wheather In wheathers
' Macro2 Macro
Dim Films(1 To 12) As String
Films(1) = "jan"
Films(2) = "feb"
Films(3) = "mar"
Films(4) = "apr"
Films(5) = "may"
Films(6) = "jun"
Films(7) = "jul"
Films(8) = "aug"
Films(9) = "sep"
Films(10) = "oct"
Films(11) = "nov"
Films(12) = "dec"

  Sheets.Add(After:=Sheets(location)).Name = wheather
   Sheets(wheather).Select
   ActiveCell.FormulaR1C1 = "year"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "2051"
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "2052"
    Range("A2:A3").Select
    Selection.AutoFill Destination:=Range("A2:A56")
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("B1").Select
    Selection.AutoFill Destination:=Range("B1:M1")
    Range("B2").Select


Dim month
For Each month In Films
Sheets(location).Select

   Columns("A:A").Select
    Selection.Delete Shift:=xlToLeft
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Month"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("A2").Select
    Selection.AutoFill Destination:=Range("A2:A661"), Type:=xlFillDefault
    Range("A2:A661").Select
    ActiveWindow.SmallScroll Down:=-60

Selection.AutoFilter
    ActiveSheet.Range("$A$1:$B$661").AutoFilter Field:=1, Criteria1:=month
      Sheets(location).Select

      Cells.Find(What:=wheather, After:=ActiveCell, LookIn:=xlFormulas, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy
    Sheets(wheather).Select
    
    Cells.Find(What:=month, After:=ActiveCell, LookIn:=xlFormulas, LookAt:= _
        xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, MatchCase:=False _
        , SearchFormat:=False).Activate
    ActiveSheet.Paste


Next month

Sheets(wheather).Select
Range("B1:M1").Select
    Selection.ClearContents
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("B1").Select
    Selection.AutoFill Destination:=Range("B1:M1")
    Range("B1:M1").Select
Range("A1").Select
Next wheather
    Sheets(location).Select
    ActiveWindow.SelectedSheets.Delete
    Sheets("Max Temp").Select
 Sheets.Add(After:=Sheets("Max Temp")).Name = location
    Sheets("Max Temp").Select
    Range("A1:M51").Select
    Selection.Copy
    Sheets(location).Select
    ActiveSheet.Paste
    Sheets("Min Temp").Select
    Range("A1:M51").Select
    Selection.Copy
    Sheets(location).Select
    Selection.Insert Shift:=xlToRight
    Columns("M:M").Select
    Application.CutCopyMode = False
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Columns("A:A").Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Sheets("RainFall").Select
    Range("A1:M51").Select
    Selection.Copy
    Sheets(location).Select
    Columns("A:A").Select
    Selection.Insert Shift:=xlToRight
    Rows("1:1").Select
    Application.CutCopyMode = False
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("A1:M1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("A1:M1").Select
    ActiveCell.FormulaR1C1 = "RainFall"
    Range("O1").Select
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 8
    Range("O1:AA1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("O1:AA1").Select
    ActiveCell.FormulaR1C1 = "Min Temp"
    Range("AB2").Select
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy
    ActiveWindow.SmallScroll Down:=-30
    Range("AA2").Select
    ActiveSheet.Paste
    Range("AB2").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.ClearContents
    Range("AB3").Select
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 20
    Range("AC1:AO1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("AC1:AO1").Select
    ActiveCell.FormulaR1C1 = "Max Temp"
    Range("AC5").Select
    ActiveWindow.ScrollColumn = 22
    ActiveWindow.ScrollColumn = 21
    ActiveWindow.ScrollColumn = 20
    ActiveWindow.ScrollColumn = 19
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 1
    Rows("1:1").Select
    With Selection.Font
        .Name = "Calibri"
        .Size = 14
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .ThemeColor = xlThemeColorLight1
        .TintAndShade = 0
        .ThemeFont = xlThemeFontMinor
    End With
    Selection.Font.Bold = True
    Rows("2:2").Select
    Selection.Font.Bold = True
    Range("F8").Select
    Sheets("Max Temp").Select
    ActiveWindow.SelectedSheets.Delete
    Sheets("Min Temp").Select
    ActiveWindow.SelectedSheets.Delete
    Sheets("RainFall").Select
    ActiveWindow.SelectedSheets.Delete

Next location
End Sub
Sub Macro12()
'
' Macro12 Macro
'

'
    Columns("A:A").Select
    Selection.Delete Shift:=xlToLeft
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Month"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("A2").Select
    Selection.AutoFill Destination:=Range("A2:A661"), Type:=xlFillDefault
    Range("A2:A661").Select
    ActiveWindow.SmallScroll Down:=-60
End Sub
Sub Macro13()
'
' Macro13 Macro
'
Dim locations(1 To 3) As String
locations(1) = "Auchi"
locations(2) = "Fugar"
locations(3) = "ojirami"

Dim location
For Each location In locations

Columns("A:A").Select
    Application.CutCopyMode = False
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Columns("B:B").Select
    Selection.Delete Shift:=xlToLeft
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Month"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "PRE"
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "RainFall"
    Range("C1").Select
    ActiveCell.FormulaR1C1 = "Max Temp"
    Range("D1").Select
    ActiveCell.FormulaR1C1 = "Min Temp"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("A2").Select
    Selection.AutoFill Destination:=Range("A2:A661"), Type:=xlFillDefault
    Range("A2:A661").Select
    ActiveWindow.SmallScroll Down:=-195
    Range("A1").Select
'
Dim wheathers(1 To 3) As String
wheathers(1) = "RainFall"
wheathers(2) = "Min Temp"
wheathers(3) = "Max Temp"

Dim wheather
For Each wheather In wheathers
' Macro2 Macro
Dim Films(1 To 12) As String
Films(1) = "jan"
Films(2) = "feb"
Films(3) = "mar"
Films(4) = "apr"
Films(5) = "may"
Films(6) = "jun"
Films(7) = "jul"
Films(8) = "aug"
Films(9) = "sep"
Films(10) = "oct"
Films(11) = "nov"
Films(12) = "dec"

  Sheets.Add(After:=Sheets(location)).Name = wheather
   Sheets(wheather).Select
   ActiveCell.FormulaR1C1 = "year"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "1981"
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "1982"
    Range("A2:A3").Select
    Selection.AutoFill Destination:=Range("A2:A31")
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("B1").Select
    Selection.AutoFill Destination:=Range("B1:M1")
    Range("B2").Select


Dim month
For Each month In Films
Sheets(location).Select
Selection.AutoFilter
    ActiveSheet.Range("$A$1:$B$661").AutoFilter Field:=1, Criteria1:=month
      Sheets(location).Select

      Cells.Find(What:=wheather, After:=ActiveCell, LookIn:=xlFormulas, _
        LookAt:=xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, _
        MatchCase:=False, SearchFormat:=False).Activate
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy
    Sheets(wheather).Select
    
    Cells.Find(What:=month, After:=ActiveCell, LookIn:=xlFormulas, LookAt:= _
        xlPart, SearchOrder:=xlByRows, SearchDirection:=xlNext, MatchCase:=False _
        , SearchFormat:=False).Activate
    ActiveSheet.Paste


Next month

Sheets(wheather).Select
Range("B1:M1").Select
    Selection.ClearContents
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "jan"
    Range("B1").Select
    Selection.AutoFill Destination:=Range("B1:M1")
    Range("B1:M1").Select

Range("A52:N56").Select
    Range("A56").Activate
    Selection.ClearContents
Range("A1").Select
Next wheather
    Sheets(location).Select
    ActiveWindow.SelectedSheets.Delete
    Sheets("Max Temp").Select
 Sheets.Add(After:=Sheets("Max Temp")).Name = location
    Sheets("Max Temp").Select
    Range("A1:M51").Select
    Selection.Copy
    Sheets(location).Select
    ActiveSheet.Paste
    Sheets("Min Temp").Select
    Range("A1:M51").Select
    Selection.Copy
    Sheets(location).Select
    Selection.Insert Shift:=xlToRight
    Columns("M:M").Select
    Application.CutCopyMode = False
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Columns("A:A").Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Sheets("RainFall").Select
    Range("A1:M51").Select
    Selection.Copy
    Sheets(location).Select
    Columns("A:A").Select
    Selection.Insert Shift:=xlToRight
    Rows("1:1").Select
    Application.CutCopyMode = False
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("A1:M1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("A1:M1").Select
    ActiveCell.FormulaR1C1 = "RainFall"
    Range("O1").Select
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 8
    Range("O1:AA1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("O1:AA1").Select
    ActiveCell.FormulaR1C1 = "Min Temp"
    Range("AB2").Select
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy
    ActiveWindow.SmallScroll Down:=-30
    Range("AA2").Select
    ActiveSheet.Paste
    Range("AB2").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.ClearContents
    Range("AB3").Select
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 20
    Range("AC1:AO1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("AC1:AO1").Select
    ActiveCell.FormulaR1C1 = "Max Temp"
    Range("AC5").Select
    ActiveWindow.ScrollColumn = 22
    ActiveWindow.ScrollColumn = 21
    ActiveWindow.ScrollColumn = 20
    ActiveWindow.ScrollColumn = 19
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 1
    Rows("1:1").Select
    With Selection.Font
        .Name = "Calibri"
        .Size = 14
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .ThemeColor = xlThemeColorLight1
        .TintAndShade = 0
        .ThemeFont = xlThemeFontMinor
    End With
    Selection.Font.Bold = True
    Rows("2:2").Select
    Selection.Font.Bold = True
    Range("F8").Select
    Sheets("Max Temp").Select
    ActiveWindow.SelectedSheets.Delete
    Sheets("Min Temp").Select
    ActiveWindow.SelectedSheets.Delete
    Sheets("RainFall").Select
    ActiveWindow.SelectedSheets.Delete

Next location




