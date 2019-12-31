@extends('layouts.auth')

@section('content')
<a href="" style="padding-top: 5px;" class="authlogo" ><img height="50"  src="img/emedlogo.png" ></a>
<div class="container-login100" style="background-image: url('images/bg-01.jpg')">
    <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
        <li style="display: none;"><a id="demo02" href="#modal-02">DEMO02</a></li> 
    <form method="POST" action="{{ route('register') }}" class="login100-form validate-form">
        @csrf
        
        <span class="login100-form-title p-b-5">
            Register As a 
        </span>

        <div class="switch p-b-20 login100-form-title">
            <label  class="label-personnel" >
               <span id="patientChecked" class="choosen"> Patient</span>
                <input  onchange="personnel()" type="checkbox" class="red" id="personnelCheckBox">
                <span class="lever "  ></span>
               <span id="doctorChecked" class=""> Doctor </span>
            </label>
        </div>
     
        <div  class="wrap-input100 validate-input m-b-20 " data-validate="Enter First Name">
          <input  placeholder="First Name" id="first_name" name="firstName" type="text" class="validate input100 " required> 
          <span class="focus-input100"></span>
          @error('firstName')          
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror    
        </div>

        <div class="wrap-input100 validate-input m-b-20" data-validate="Enter last Name">
            <input placeholder="Last Name" id="last_name" name="lastName" type="text" class="validate input100" required> 
            <span class="focus-input100"></span>
            @error('lastName')          
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror    
          </div>
  
          <div class="wrap-input100 validate-input m-b-20" data-validate="Enter email">
            <input placeholder="Email" id="email" name="email" type="text" class="validate input100" required> 
            <span class="focus-input100"></span>
            @error('email')          
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror    
          </div>
        <div class="input-field container" style="display: none">
            <input  value="" id="specialization" name="specOrProfession" >
        </div>
        <div class="input-field container" style="display: none">
            <input  value="" id="yearOfPrac" name="yearOfPractice" type="email" >
        </div>
        <div class="input-field container" style="display: none">
            <input  value="" id="folio_number" name="folioNo" >
        </div>
        <div class="input-field container" style="display: none">
            <input  value="" id="reg_number" name="regNo" type="email">
        </div>

        <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Password">
            <input placeholder="Password" id="password" name="password" type="text" class="validate input100" required> 
            <span class="focus-input100"></span>
            @error('password')          
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror    
          </div>

    
          <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Password">
            <input placeholder="Confirm Password" id="password-confirm" name="password_confirmation" type="text" class="validate input100" required> 
            <span class="focus-input100"></span>
            @error('password')          
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
            @enderror    
          </div>
      
        <div class="container-login100-form-btn">
            <button  type="submit" class="login100-form-btn">
                Proceed 
            </button> 

        </div>

        <div class="text-center p-t-57 p-b-20">
            <span class="txt1">
                already a member login 
            </span>
        </div>
    </form>
  </div>
</div>

  <!--  -->
<certified-doctor></certified-doctor>



@endsection
