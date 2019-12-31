<template>

<div>
    <Alert :firstName="firstName" :lastName="lastName" :spec="spec"  ></Alert>
    <!--Call your modal-->
    <ul style="display:none">
        <li><a id="demo02" href="#modal-02">DEMO02</a></li>
    </ul>

    <!--DEMO02-->
    <div id="modal-02">
        <!--"THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID-->
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-b-160 p-t-50">
                    <div class="login100-form validate-form">
                        <div class="doctorsVerification container">
                        <span class="login100-form-title p-b-43">
                            DOCTOR'S VERIFICATION
                        </span>
                        </div>

                         <p v-text="ceridentialsValidation" class="validateDoctor "></p>

                        <div class="wrap-input100 rs1 " >
                            <input id="folio" v-model="folio" class="input100" autocomplete="off">
                            <span class="label-input100">Folio Number</span>
                        </div>

                        <div class="wrap-input100 rs2 " >
                            <input id="reg" v-model.lazy="reg" class="input100" autocomplete="off">
                            <span class="label-input100">Registration Number</span>
                        </div>

                       

                        <div class="container-login100-form-btn">
                            <button style="display:none" id="closeDoctorsVerification" class="close-modal-02">
                                dddddddd
                            </button>
                            <button v-on:click="verify" class="login100-form-btn">
                                Verify
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</template>

<script>
import Vue from 'vue';
import axios from 'axios';
import VueAxios from 'vue-axios';
Vue.use(VueAxios, axios);
import Alert from './Alert.vue';

export default {
    components:{Alert},
    name: "CertifiedDoctor",
    mounted() {
        const certifiedDoctorApi = 'http://127.0.0.1:8000/certifiedDoctor';
        this.axios.get(certifiedDoctorApi).then((response) => {
            this.doctors = response.data.data;
        });
        
    },

    data: function () {
        return {
           
            ceridentialsValidation: "",
            doctors: [],           
            folio: '',
            reg: '',
            firstName: 'ssss',
            lastName: '',
            spec: '',
            year: null,
            

        }
    },

    methods: {

       verify: function () {
            this.folio = this.folio.toUpperCase();
            this.reg = this.reg.toUpperCase();
            this.doctors.forEach(doctor => {
                if (doctor.folioNo === this.folio) {
                  if (doctor.registerNo === this.reg) {
                       document.getElementById('alertSuccess').click()
                            this.firstName=doctor.firstName;
                                this.lastName=doctor.lastName;
                            this.spec=doctor.specialization_1;
                        this.year=doctor.registerNo;
                        document.getElementById("first_name").value=this.firstName;
                        document.getElementById("last_name").value=this.lastName;
                        document.getElementById("specialization").value=this.spec;
                        document.getElementById("year").value=this.yearOfPrac;
                        document.getElementById("folio_number").value=this.reg;
                        document.getElementById("reg_number").value=this.folio;
                     
                  }
                  else{
                    if (this.folio.lenght<1 || this.reg.length<1) {
                        this.ceridentialsValidation="both fields are required"
                    } else {
                        this.ceridentialsValidation="records where no found"
                    }
                  
                }}
            });}


        },
        


    }


</script>

<style scoped>
@import url('https://fonts.googleapis.com/css?family=Varela+Round&display=swap');
@import url('https://fonts.googleapis.com/icon?family=Material+Icons');
@import url('https://fonts.googleapis.com/css?family=Crimson+Text&display=swap');
@import url('https://fonts.googleapis.com/css?family=Knewave&display=swap');
@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap');
.validateDoctor{
    background: n!important;
    padding: 10px !important;
    border-radius: 0 !important;
    position: relative;   
    color:  #c51244;
    margin: 10px auto;
    font-style: italic;
}


* {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
}

body,
html {
    height: 100%;
    font-family: 'Open Sans', sans-serif;
}

/*---------------------------------------------*/
a {
    font-family: 'Open Sans', sans-serif;
    font-size: 14px;
    line-height: 1.7;
    color: #666666;
    margin: 0px;
    transition: all 0.4s;
    -webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
}

a:focus {
    outline: none !important;
}

a:hover {
    text-decoration: none;
    color: #fff;
}

/*---------------------------------------------*/
h1,
h2,
h3,
h4,
h5,
h6 {
    margin: 0px;
}

p {
    font-family: Open Sans;
    font-size: 14px;
    line-height: 1.7;
    color: #666666;
    margin: 0px;
}

ul,
li {
    margin: 0px;
    list-style-type: none;
}

/*---------------------------------------------*/
input {
    outline: none;
    border: none;
}

textarea {
    outline: none;
    border: none;
}

textarea:focus,
input:focus {
    border-color: transparent !important;
}

input:focus::-webkit-input-placeholder {
    color: transparent;
}

input:focus:-moz-placeholder {
    color: transparent;
}

input:focus::-moz-placeholder {
    color: transparent;
}

input:focus:-ms-input-placeholder {
    color: transparent;
}

textarea:focus::-webkit-input-placeholder {
    color: transparent;
}

textarea:focus:-moz-placeholder {
    color: transparent;
}

textarea:focus::-moz-placeholder {
    color: transparent;
}

textarea:focus:-ms-input-placeholder {
    color: transparent;
}

input::-webkit-input-placeholder {
    color: #999999;
}

input:-moz-placeholder {
    color: #999999;
}

input::-moz-placeholder {
    color: #999999;
}

input:-ms-input-placeholder {
    color: #999999;
}

textarea::-webkit-input-placeholder {
    color: #999999;
}

textarea:-moz-placeholder {
    color: #999999;
}

textarea::-moz-placeholder {
    color: #999999;
}

textarea:-ms-input-placeholder {
    color: #999999;
}

label {
    display: block;
    margin: 0;
}

/*---------------------------------------------*/
button {
    outline: none !important;
    border: none;
    background: transparent;
}

button:hover {
    cursor: pointer;
}

iframe {
    border: none !important;
}

/*//////////////////////////////////////////////////////////////////
[ utility ]*/

/*==================================================================
[ Text ]*/
.txt1 {
    font-family: 'Open Sans', sans-serif;
    font-size: 13px;
    line-height: 1.4;
    color: #cccccc;
}

/*//////////////////////////////////////////////////////////////////
[ login ]*/
.limiter {
    width: 100%;
    margin: 0 auto;
}

.container-login100 {
    width: 100%;
    min-height: 100vh;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    padding: 15px;
    
    background: #094683;
    /* background: -webkit-linear-gradient(to left, #6a11cb, #2575fc);
  background: -o-linear-gradient(to left, #6a11cb, #2575fc);
  background: -moz-linear-gradient(to left, #6a11cb, #2575fc);
  background: linear-gradient(to left, #6a11cb, #2575fc); */

}

.wrap-login100 {
    width: 560px;
}

/*==================================================================
[ Form ]*/

.login100-form {
    width: 100%;
    background-color: transparent;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    flex-wrap: wrap;
}

.doctorsVerification{
    width: fit-content;
    padding: 10px;
    background-color: #094683;
    border-radius: 5px;
    margin-top: -30px;

}

.login100-form-title {
    margin-top: 25px;
    width: 100%;
    display: block;
    font-family: Oswald;
    font-size: 28px;
    color: rgb(255, 255, 255);
    line-height: 1.2;
    text-transform: uppercase;
    text-align: center;
}

/*------------------------------------------------------------------
[ Input ]*/

.wrap-input100 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    flex-wrap: wrap;
    align-items: flex-end;
    width: 50%;
    height: 75px;
    position: relative;
    border: none;
    
    background-color: #fff;
    border-radius: none;
}

.wrap-input100.rs1 {
   
    border-right: none;
}

.wrap-input100.rs2 {
   
}

.label-input100 {
    font-family: 'Open Sans', sans-serif;
    font-style: italic;
    font-weight: bold;
    font-size: 15px;
    color: #094683;
    line-height: 1.2;

    display: block;
    position: absolute;
    pointer-events: none;
    width: 100%;
    padding-left: 30px;
    left: 0;
    top: 28px;

    -webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
    transition: all 0.4s;
}

.input100 {
    font-family: 'Open Sans', sans-serif;
    font-style: oblique;
    font-weight: bolder;
    font-size: 20px;
    color: #555555;
    line-height: 1.2;
    text-transform: uppercase;

    display: block;
    width: 100%;
    background: transparent;
    padding: 0 30px;
}

input.input100 {
    height: 100%;
    -webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
    transition: all 0.4s;
}

.input100:focus {
    height: 55px;
}

.input100:focus+.label-input100 {
    top: 10px;
    font-size: 13px;
    color: #111111;
}

.has-val {
    height: 55px !important;
}

.has-val+.label-input100 {
    top: 10px;
    font-size: 13px;
    color: #111111;
}

/*------------------------------------------------------------------
[ Button ]*/
.container-login100-form-btn {
    width: 100%;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.login100-form-btn {
    font-family: 'Open Sans', sans-serif;
    font-size: 15px;
    color: #fff;
    line-height: 1.2;
    text-transform: uppercase;

    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 20px;
    width: 60%;
    height: 70px;
    border-bottom-left-radius: 12px;
    border-bottom-right-radius: 12px;
    overflow: hidden;
    background: #111111;
    margin-bottom: -20px;

    -webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
    transition: all 0.4s;
    position: relative;
    z-index: 1;
}

.login100-form-btn::before {
    content: "";
    display: block;
    position: absolute;
    z-index: -1;
    width: 100%;
    height: 100%;
    opacity: 0;

    background: #2575fc;
    background: -webkit-linear-gradient(to right, #6a11cb, #2575fc);
    background: -o-linear-gradient(to right, #6a11cb, #2575fc);
    background: -moz-linear-gradient(to right, #6a11cb, #2575fc);
    background: linear-gradient(to right, #6a11cb, #2575fc);

    -webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
    transition: all 0.4s;
}

.login100-form-btn:hover {
    background-color: transparent;
}

.login100-form-btn:hover:before {
    opacity: 1;
}

/*------------------------------------------------------------------
[ Responsive ]*/

/*------------------------------------------------------------------
[ Alert validate ]*/

.validate-input {
    position: relative;
}

.alert-validate::before {
    content: attr(data-validate);
    position: absolute;
    z-index: 100;
    max-width: 70%;
    background-color: #fff;
    border: 1px solid #c80000;
    border-radius: 2px;
    padding: 4px 25px 4px 10px;
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    right: 12px;
    pointer-events: none;

    font-family: OpenSans-Bold;
    color: #c80000;
    font-size: 13px;
    line-height: 1.4;
    text-align: left;

    visibility: hidden;
    opacity: 0;

    -webkit-transition: opacity 0.4s;
    -o-transition: opacity 0.4s;
    -moz-transition: opacity 0.4s;
    transition: opacity 0.4s;
}

.alert-validate::after {
    content: "\f12a";
    font-family: FontAwesome;
    display: block;
    position: absolute;
    z-index: 110;
    color: #c80000;
    font-size: 16px;
    top: 50%;
    -webkit-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    -o-transform: translateY(-50%);
    transform: translateY(-50%);
    right: 18px;
}

.alert-validate:hover:before {
    visibility: visible;
    opacity: 1;
}

@media (max-width: 992px) {
    .alert-validate::before {
        visibility: visible;
        opacity: 1;
    }
}

/*//////////////////////////////////////////////////////////////////
[ Responsive ]*/
@media (max-width: 576px) {
    .wrap-input100 {
        width: 100%;
    }

    .wrap-input100.rs1 {
        border-top-right-radius: 12px;
        border-right: 1px solid #e0e0e0;
    }

    .wrap-input100.rs2 {
        border-top-right-radius: 0px;
    }
}
</style>
