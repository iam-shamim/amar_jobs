@extends('layouts.index')
@section('container')
    <link rel="stylesheet" href="{!! url('plugins/jquery-ui/jquery-ui.css') !!}" />
    <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>

    <section class="main no-padding">
        @include('include/profileHeader')
        <div class="container">
            <div class="row">
                @section('LeftMenuMyProfileJob','active-profile')
                @include('include.profileLeftMenuJobs')
                <div class="col-md-9 col-sm-9">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"> <a href="#collapseB1" data-toggle="collapse">Job Create</a></h4>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <label for="jobTitle" class="m-l5">Job Title</label>
                                <input type="text" class="form-control" id="jobTitle">
                            </div>
                            <div class="form-group">
                                <label for="jobSummary" class="m-l5">Job Summary</label>
                                <textarea name="jobSummary" class="form-control" id="jobSummary" cols="30" rows="10"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="jobDescription" class="m-l5">Job Description</label>
                                <textarea name="jobDescription" class="form-control" id="jobDescription" cols="30" rows="15"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="jobType" class="m-l5">Job Type</label>
                                <select id="jobType" class="form-control" name="jobType">
                                    <option>FullTime</option>
                                    <option>ParTime</option>
                                    <option>Internship</option>
                                    <option>Contractual</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="jobLocation" class="m-l5">Job Location</label>
                                <input type="text" id="jobLocation" class="form-control" name="jobLocation">
                            </div>
                            <div class="form-group">
                                <label for="salary" class="m-l5">Salary</label>
                                <input type="text" id="salary" class="form-control" name="salary">
                            </div>
                            <div class="form-group">
                                <label for="jobCategory" class="m-l5">jobCategory</label>
                                <select id="jobCategory" class="form-control" name="jobCategory">
                                    <option value="">Select a category</option>
                                    @while(list($key,$val)=each($category))
                                        <option value="{!! $key !!}">{!! $val !!}</option>
                                    @endwhile
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="applicationInstruction" class="m-l5">Application Instruction</label>
                                <input type="text" id="applicationInstruction" class="form-control" name="applicationInstruction">
                            </div>
                            <div class="form-group">
                                <label for="numberOfPosition" class="m-l5">Number Of Position</label>
                                <input type="number" id="numberOfPosition" class="form-control" name="numberOfPosition">
                            </div>
                            <div class="form-group">
                                <label for="minimumExperience" class="m-l5">Minimum Experience</label>
                                <input type="text" id="minimumExperience" class="form-control" name="minimumExperience">
                            </div>
                            <div class="form-group">
                                <label for="minimumAge" class="m-l5">Minimum Age</label>
                                <input type="text" id="minimumAge" class="form-control" name="minimumAge">
                            </div>
                            <div class="form-group">
                                <label for="others" class="m-l5">Others</label>
                                <textarea name="others" id="others" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="applicationEndDate" class="m-l5">Application End Date</label>
                                <input type="text" id="applicationEndDate" class="form-control" name="applicationEndDate">
                            </div>
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-xs btn-primary"><i class="fa fa-print"></i> Publish</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="{!! url('plugins/jquery-ui/jquery-ui.min.js') !!}"></script>
    <script>
        $(function() {
            $( "#applicationEndDate" ).datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd/mm/yy'

            });
        });
    </script>
    <script>tinymce.init({ selector:'#jobDescription' });</script>

@endsection