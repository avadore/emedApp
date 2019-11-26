function personnel() {
    let state=document.getElementById("personnelCheckBox").checked;
    console.log(state);
    let element = document.getElementById("patientChecked");
    let element1 = document.getElementById("doctorChecked");
    if (state===false)
    {
    element.classList.add("choosen");
    element1.classList.remove("doctorchoosen");
    }
    else
    {
        element.classList.remove("choosen");
        element1.classList.add("doctorchoosen");
    }
}





