<?php
/**
 * Created by PhpStorm.
 * User: DamarPermadany
 * Date: 2/5/2019
 * Time: 10:29 AM
 */
?>
@extends('admin.layouts.app')

@section('title')
    {{ __('Message') }}
@endsection

@section('content')
    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">Messages</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <b><a href="{{ route('premio') }}" class=" text-danger">Premio</a></b>
                </li>
                <li class="breadcrumb-item">
                    <b>Users</b>
                </li>
                <li class="breadcrumb-item active">Sent Message</li>
            </ol>
        </div>
    </div>

    <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="row">
                        <div class="col-lg-12 col-md-6">
                            <div class="card-body">
                                <h3 class="card-title">Compose New Message</h3>
                                <div class="form-group">
                                    <input disabled class="form-control" placeholder="To: {{ $student->name }}">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Subject:">
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" rows="15" placeholder="Enter text . . ."></textarea>
                                </div>
                                <button type="submit" class="btn btn-success m-t-20"><i class="fa fa-envelope-o"></i> Send</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection
