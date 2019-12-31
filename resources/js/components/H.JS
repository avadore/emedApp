// Welcome to Debenu Quick PDF Library Engine
// ------------------------------- 
// Use 'QP' to access the Debenu Quick PDF Library object
// Use MsgBox(string text) to display a popup dialog
// Use Preview.OpenFromFile(string filename) to load a PDF in the Preview PDF tab
// Use DisplayPDFReader(string filename) to display a PDF in the default PDF reader
// Use GetOutputFolder() to access the default output folder
// Use GetInputFolder() to access the default input folder
// -------------------------------

/* Create a simple PDF form with multiple form fields */

// Tell the library that all co-ordinates should
// begin from the top left corner of the page.

QP.SetOrigin(1);

// Add the first new form field

var iDf1 = QP.NewFormField("First Name", 1);
QP.SetFormFieldValue(iDf1, "Jane");
QP.SetNeedAppearances(1);
QP.SetFormFieldBounds(iDf1, 20, 20, 100, 20);
QP.SetFormFieldAlignment(iDf1, 2);

// Add the second new form field

var iDf2 = QP.NewFormField("Second Name", 1);
QP.SetFormFieldValue(iDf2, "Doe");
QP.SetNeedAppearances(1);
QP.SetFormFieldBounds(iDf2, 20, 50, 100, 20);

fID = QP.AddTrueTypeFont("Myriad Pro Cond", 1);
ffID = QP.AddFormFont(fID);
QP.SetFormFieldFont(iDf2, ffID);

// Add the third new form field

var iDf3 = QP.NewFormField("Age", 1);
QP.SetFormFieldValue(iDf3, "31");
QP.SetNeedAppearances(1);
QP.SetFormFieldBounds(iDf3, 20, 80, 100, 20);

// Add the fourth new form field

var iDf3 = QP.NewFormField("Nationality", 1);
QP.SetFormFieldValue(iDf3, "Australian");
QP.SetNeedAppearances(1);
QP.SetFormFieldBounds(iDf3, 20, 110, 100, 20);

// Save the new PDF form to the hard disk

QP.SaveToFile(GetOutputFolder() + "new_pdf_form.pdf");

// This line will automatically open the saved PDF in Adobe Reader.

DisplayPDFReader(GetOutputFolder() + "new_pdf_form.pdf");