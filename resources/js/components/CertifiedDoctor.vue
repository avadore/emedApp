<template>
    <div>
        <!--Call your modal-->
        <ul style="display:none">

            <li><a id="demo02" href="#modal-02">DEMO02</a></li>
        </ul>
        <!--DEMO01-->


        <!--DEMO02-->
        <div id="modal-02">
            <!--"THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID-->
            <div>
                CLOSE MODAL
            </div>
            <div class="modal-content">
                <div class="container Container">
                   <a onclick="choosePatient()"  class="close-modal-02"><i class="medium material-icons red">close</i></a>
                    <h4 class="modal-header text center">Doctor's Authentication</h4>
                    <hr class="line">
                    <p class="text center " style="color: rgb(65, 8, 8); font-family: Oswald; font-style: italic;">
                        Please enter your Doctor Register and Folio Number correctly !!!</p>
                    <div class="row container ">
                        <form class="col s12">
                            <div class="row" style="margin-top:40px;">
                                <div class="input-field col s6" style="text-align: center">
                                    <!-- <i class="material-icons prefix">whatshot</i> -->
                                    <input id="folio" type="text" class="validate" placeholder="Folio Number">
                                    <label for="folio"></label>
                                </div>
                                <div class="input-field col s6" style="text-align: center">
                                    <!-- <i class="material-icons prefix">security</i> -->
                                    <input id="reg" type="tel" class="validate" placeholder="Registration Number">
                                    <label for="reg"></label>
                                </div>
                                <div v-if="loading" class="width" style="text-align: center">
                                    <lottie-player src="lottie/dna.json" background="transparent" speed="1"
                                        style="width: 300px; height: 200px;" loop autoplay>
                                    </lottie-player>
                                </div>
                                <div class="input-field col s12 color btnCenter">
                                    <button id="btn-close-modal"
                                        class="close-modal-02 btn btn-large text center">Verify</button>                                    <!-- <i class="material-icons prefix">security</i> -->
                                </div>

                            </div>

                        </form>
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
// this.axios.get(api).then((response) => {
//     console.log(response.data)
// });
    export default {
        name: "CertifiedDoctor",


        data: function () {
            return {
                loading: false,
                folio: '',
                reg: '',
                firstName: '',
                lastName: '',
                spec: '',

            }
        },
        computed: {
            yearOfPrac: function () {
                return 5000
            },
            methods: {
                check: function () {
                    // if ()
                }
            }
        }
    }

</script>

<style scoped>
    @import url('https://fonts.googleapis.com/icon?family=Material+Icons');



    .Container {
        background-color: aliceblue;
        border-radius: 10px;

    }

    .modal-header {
        padding: 5px;
        margin-top: 10px;
        margin-bottom: 10px;
        font-family: 'Oswald', sans-serif;
        color: #094683;

    }

    .line {
        margin-left: 70px;
        margin-right: 70px;
        height: 7px;
        background-color: #094683 !important;
        border: none;
    }

    .width {
        width: 100%;
    }
</style>
