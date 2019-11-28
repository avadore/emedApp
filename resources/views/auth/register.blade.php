@extends('layouts.auth')

@section('content')
<div class="formcontainer">
    <form method="POST" action="{{ route('register') }}" class="form">
        @csrf

    <div class="form-header">
    <h5  class="H5">REGISTER</h5>
        </div>
        <div style="margin-top:20px">

            <div class="switch">
                <label  class="label-personnel" >
                   <span id="patientChecked" class="choosen"> Patient</span>
                    <input onchange="personnel()" type="checkbox" class="red" id="personnelCheckBox" required>
                    <span class="lever "  ></span>
                   <span id="doctorChecked" class=""> Doctor </span>
                </label>
            </div>
            </a>
        </div>
        <div class="input-field">
          <input placeholder="First Name" id="first_name" name="firstName" type="text" class="validate" required> 
          @error('firstName')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror    
        </div>
        <div class="input-field">
          <input placeholder="Last Name" id="last_name" name="lastName" type="text" class="validate" required> 
          @error('lastName')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror      
        </div>   
        <div class="input-field">
          <input placeholder="Email"  value="" id="email" name="email" type="email" class="validate" required>    
          @error('email')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror     
        </div>    
        <div class="input-field ">
          <input id="password" type="password" placeholder="Password" name="password" class="validate" required>
          @error('password')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror
        </div> 
          <div class="input-field ">
          <input  type="password" placeholder="Confirm Password" name="password" class="validate" required>
        </div>
        <button type="submit" class="btn-large btn  ">
            {{ __('Register') }} and Proceed
        </button>





    </form>
  </div>
<certified-doctor></certified-doctor>

@endsection
