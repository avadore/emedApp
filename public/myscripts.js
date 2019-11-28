function personnel() {
    let state=document.getElementById("personnelCheckBox").checked;
    console.log(state);
    let element = document.getElementById("patientChecked");
    let element1 = document.getElementById("doctorChecked");
    if (state===false)
    {
    element.classList.add("choosen");
    element1.classList.remove("doctorchoosen");
        document.getElementById('first_name').style.display='';
        document.getElementById('last_name').style.display="";
    }
    else
    {
        element.classList.remove("choosen");
        element1.classList.add("doctorchoosen");
        document.getElementById('demo02').click()
    }
}

$(document).ready(function(){
    $('.modal').modal();
});

$("#demo02").animatedModal({
    animatedIn:'zoomInLeft',
    animatedOut:'bounceOutDown',
    color:'rgba(4,4,14,0.85)',
    animationDuration:'.2s',
    // Callbacks
    beforeOpen: function() {
        console.log("The animation was called");
    },
    afterOpen: function() {
        console.log("The animation is completed");
    },
    beforeClose: function() {
        if (document.getElementById('personnelCheckBox').checked==true) {
            document.getElementById('first_name').style.display='none';
            document.getElementById('last_name').style.display="none";
            console.log(document.getElementById('personnelCheckBox').checked);
        }
        else
            {

            }
    },
    afterClose: function() {
        console.log("The animation is completed");
    }
});

function choosePatient(){
  document.getElementById("patientChecked").click();

}



