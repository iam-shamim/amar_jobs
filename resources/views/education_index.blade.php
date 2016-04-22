@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css" />
    <section class="main no-padding">
        <div class="account-header">
            <div class="container">
                <div class="row">
                    @if(Auth::check())

                    @endif
                    <div class="col-sm-4 col-md-3 col-lg-2">
                        <!-- User avatar -->
                        <div class="profile_avatar">
                            <img src="{!! url('img/people/'.$data->profilePic) !!}" alt="avatar" class="img-responsive" id="show">
                        </div>
                    </div>
                    <div class="col-sm-8 col-md-9 col-lg-10">
                        <div class="profile_summary">
                            <!-- User name -->
                            <h3 class="profile_name">{!! $data->firstName !!} {!! $data->middleName !!} {!! $data->lastName !!}</h3>
                            <!-- User status -->
                            <p>{!! $data->summary !!}</p>
                            <!-- Contact -->
                            <a href="{!! route('logout') !!}" class="btn btn-primary btn-warning btn-sm"><i class="fa fa-sign-out"></i> Sign Out</a>
                        </div> <!-- / .profile__summary -->
                    </div>
                </div> <!-- / .row -->
            </div> <!-- / .container -->
        </div>
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileEducation','active-profile')
                @include('include.profileLeftMenu')
                <div class="col-md-9 col-sm-9">
                    @if($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach($errors->all() as $error)
                                    <li>{!! $error !!}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                </div>
                <div class="col-md-9 col-sm-9">
                    @foreach($education AS $key=>$value)
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> My Education </a> </h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-5 col-md-4 col-lg-3">
                                        <div class="institute_avatar">
                                            <div class="form-group">
                                                <img src="{!! url('img/institutes/'.$value->logo) !!}"  alt="avatar" class="img-responsive" id="showInstituteImage">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-7 col-md-8 col-lg-9">
                                        <h2 class="text-capitalize"><small>{!! $value->instituteName !!}</small></h2>
                                        <p class="pull-left m-r15">City: {!! $value->city !!}</p>
                                        <p class="pull-left m-r15 m-l10">District: {!! $value->district !!}</p>
                                        <p class=" m-l10">Post Code: {!! $value->postcode !!}</p>
                                        <p>{!! $value->address !!}</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <p><strong>Email: </strong> {!! $value->email !!}</p>
                                        <p><strong>Website: </strong> {!! $value->website !!}</p>
                                        <p><strong>Phone: </strong> {!! $value->phone !!}</p>
                                        <p><strong>Institute Code: </strong> {!! $value->instituteCode !!}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <a href="#" type="submit" class="btn btn-success">Edit</a>
                                <a href="#" type="submit" class="btn btn-success">Delete</a>
                            </div>
                        </div>
                    @endforeach;

                </div>
            </div>
        </div>
    </section>
    <script src="{!! url('plugins/filestyle/bootstrap-filestyle.min.js') !!}"></script>
    <script src="{!! url('plugins/jquery-ui/jquery-ui.min.js') !!}"></script>
    <script>
        $(function() {
            $( "#datepicker" ).datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd/mm/yy'

            });
        });
    </script>
    <script>
        var loadFile = function(event) {
            var showFunc = document.getElementById('show');
            showFunc.src = URL.createObjectURL(event.target.files[0]);
        };
    </script>
@endsection