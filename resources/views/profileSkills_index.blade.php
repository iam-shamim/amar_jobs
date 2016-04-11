@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/js/select2.min.js"></script>
    <section class="main no-padding">
        <div class="account-header">
            <div class="container">
                <div class="row">
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
                @section('LeftMenuMyProfileSkills','active-profile')
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
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse"> My Profile </a> </h4>
                        </div>
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <a href="" onclick="return false;" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus-circle btn btn-primary m-b5"> Add New Skill </i></a>
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title text-center" id="myModalLabel">Add New Skill</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <div>
                                                        <select class="js-example-basic-single form-control">
                                                            <option value="AL">Alabama</option>
                                                            <option value="AL">Alabfsdfssama</option>
                                                            <option value="AL">s dfsf</option>
                                                            <option value="WY">Wyoming</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save Skill</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <td width="10%">#</td>
                                                <td>Skills</td>
                                                <td width="20%">Action</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $sl=1; ?>
                                            @foreach($mySkills AS $key=>$val)
                                                <tr>
                                                    <td>{!! $sl++ !!}</td>
                                                    <td>{!! $val->skillName !!}</td>
                                                    <td>
                                                        <a href=""><i class="fa fa-pencil-square btn-sm btn-info"></i></a>
                                                        <a href=""><i class="fa fa-trash-o btn-sm btn-danger"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
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
        $(document).ready(function() {
            $(".js-example-basic-single").select2();
        });
    </script>
    <script>
        var loadFile = function(event) {
            var showFunc = document.getElementById('show');
            showFunc.src = URL.createObjectURL(event.target.files[0]);
        };
    </script>
@endsection