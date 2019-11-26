@extends('layouts.auth')

@section('content')
{{--  <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="firstName" class="col-md-4 col-form-label text-md-right">{{ __('First Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('firstName') is-invalid @enderror" name="firstName" value="{{ old('firstName') }}" required autocomplete="name" autofocus>

                                @error('firstName')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>  --}}

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
                    <input onchange="personnel()" type="checkbox" class="red" id="personnelCheckBox">
                    <span class="lever "  ></span>
                   <span id="doctorChecked" class=""> Doctor </span>
                </label>
            </div>
        </div>
        <div class="input-field">
          <input placeholder="First Name" id="first_name" name="firstName" type="text" class="validate"> 
          @error('firstName')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror    
        </div>
        <div class="input-field">
          <input placeholder="Last Name" id="last_name" name="lastName" type="text" class="validate"> 
          @error('lastName')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror      
        </div>   
        <div class="input-field">
          <input placeholder="Email"  value="" id="email" name="email" type="email" class="validate">    
          @error('email')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror     
        </div>    
        <div class="input-field ">
          <input id="password" type="password" placeholder="Password" name="password" class="validate">
          @error('password')
          <span class="invalid-feedback" role="alert">
              <strong>{{ $message }}</strong>
          </span>
      @enderror
        </div> 
          <div class="input-field ">
          <input  type="password" placeholder="Confirm Password" name="password" class="validate">
        </div>
        <button type="submit" class="btn-large blue btn-primary">
            {{ __('Register') }} and Proceed
        </button>


    </form>
  </div>


@endsection
