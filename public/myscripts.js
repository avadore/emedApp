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
    $('.validate-input .input100').each(function(){
        $(this).on('blur', function(){
            if(validate(this) == false){
                showValidate(this);
            }
            else {
                $(this).parent().addClass('true-validate');
            }
        })    
    })
     
    var input = $('.validate-input .input100');
            
                $('.validate-form').on('submit',function(){
                    var check = true;
            
                    for(var i=0; i<input.length; i++) {
                        if(validate(input[i]) == false){
                            showValidate(input[i]);
                            check=false;
                        }
                    }
            
                    return check;
                });
            
            
                $('.validate-form .input100').each(function(){
                    $(this).focus(function(){
                       hideValidate(this);
                       $(this).parent().removeClass('true-validate');
                    });
                });
            
                 function validate (input) {
                    if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
                        if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                            return false;
                        }
                    }
                    else {
                        if($(input).val().trim() == ''){
                            return false;
                        }
                    }
                }
            
                function showValidate(input) {
                    var thisAlert = $(input).parent();
            
                    $(thisAlert).addClass('alert-validate');
            
                    $(thisAlert).append('<span class="btn-hide-validate">&#xf135;</span>')
                    $('.btn-hide-validate').each(function(){
                        $(this).on('click',function(){
                           hideValidate(this);
                        });
                    });
                }
            
                function hideValidate(input) {
                    var thisAlert = $(input).parent();
                    $(thisAlert).removeClass('alert-validate');
                    $(thisAlert).find('.btn-hide-validate').remove();
                }

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
            // document.getElementById('first_name').style.display='none';
            // document.getElementById('last_name').style.display="none";
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



const element =  document.querySelector('.success')
            $("#alertSuccess").animatedModal({
                animatedIn:'bounceIn',
                animatedOut:'bounceOutDown',
                color:'#3498db',
                // Callbacks
                beforeOpen: function() {
               
                },           
                afterOpen: function() {
                    element.classList.remove('bounceOut')
                    element.classList.add('bounceIn')
                    document.getElementById('closeDoctorsVerification').click()
                    
                }, 
                beforeClose: function() {
                    
                    
                }, 
                afterClose: function() {
                    
                }
            });

     
              