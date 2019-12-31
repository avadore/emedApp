<template>
    <div>
      <ul>
          
            <li><a id="alertSuccess" href="#alert-modal">alert</a></li>
        </ul>
      
     
        <!--alert-->
        <div id="alert-modal">        <!--"THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID-->
        
            <div class="body">
                <div class="card container containerr ">
                    <div class="success content center animated bounceOut ">
                        
                     <img src="img/success_icon.svg" alt="">
                    </div>
                <div class="contents">  
                      <h5 class="welcome">Welcome!</h5>
                      <hr style="background-color:dodgerblue; height:2px; border: none; width: 50px; ">
                      <h5 class="name">Dr. {{ firstName }} {{ lastName }}</h5>
                      <p class="spec-text text-center">{{ spec }}</p>
                        
                </div> 
                <div class="contents continue container">
                  <a  class="linkk text-centre close-alert-modal"><p class="text-cont">CONTINUE</p></a>
                </div>
                  </div> <!--Your modal content goes here-->
            </div>
        </div>
    </div>
</template>

<script>
    export default {
      
        name: "Alert",
       props:['firstName','lastName','spec']

    }
</script>

<style scoped>
@import url('https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css');


.body {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
      justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
      align-items: center;
  height: 100vh;
  background: #094683;
}

.containerr {
  padding: 0px !important;
  background: #FFFFFF;
  background: white;
  width: 332px;
  height: 280px;
  border-radius: 17px;
  -moz-border-radius: 17px;
  -webkit-border-radius: 17px;
  -webkit-box-shadow: 5px 2px 15px rgba(0, 0, 0, 0.75);
          box-shadow: 5px 2px 15px rgba(0, 0, 0, 0.75);
  filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=5, OffY=2, Color='#000000');
}

@media screen and (max-width: 320px) {
  .containerr {
    width: 270px;
  }
}

.contents {
  margin: auto;
}

.content {
  margin: auto 0;
}

.welcome {
  text-align: center;
}

.name {
  text-align: center;
  font-family: Roboto;
  font-weight: bold;
  font-size: 18px;
  letter-spacing: 1.78px;
  text-transform: uppercase;
  color: #125496;
  color: #125496;
}



.text-cont:hover {
  color: #f1f8ff;
  font-weight: bolder;
  font-size: 24px;
  letter-spacing: 1.2px;
  

}
.continue{
 
   -webkit-box-shadow: 5px 2px 15px rgba(0, 0, 0, 0.75);
          box-shadow: 5px 2px 15px rgba(0, 0, 0, 0.75);
  filter: progid:DXImageTransform.Microsoft.dropshadow(OffX=5, OffY=2, Color='#000000');

}

.success {
  width: 120px;
  height: 120px;
  margin-top: -60px;
  -ms-flex-item-align: center;
      -ms-grid-row-align: center;
      align-self: center;
}

.continue {
  background: #125496;
  background: #125496;
  margin: 0 !important;
  margin-bottom: -10px !important;
  width: inherit;
  height: 92px;
  border-radius: 0px 0px 18px 18px;
  -moz-border-radius: 0px 0px 18px 18px;
  -webkit-border-radius: 0px 0px 18px 18px;
}

.text-cont {
  margin-top: 20px !important;
  text-align: center;
  font-family: Roboto;
  font-weight: bold;
  font-size: 18px;
  letter-spacing: 1.78px;
  text-transform: uppercase;
  color: #FFFFFF;
  color: white;
  width: inherit;
  cursor: pointer;
}

.card {
  border: none !important;
}

.hidden {
  visibility: hidden;
}

.spec-text {
  font-family: Roboto;
  font-style: italic;
  font-size: 11px;
  letter-spacing: 1.09px;
  text-transform: uppercase;
  color: #000000;
  color: black;
}
/*# sourceMappingURL=style.css.map */
</style>
