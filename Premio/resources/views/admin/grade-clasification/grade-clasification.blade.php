<?php
/**
 * Created by PhpStorm.
 * User: DamarPermadany
 * Date: 5/8/2019
 * Time: 12:54 PM
 */
?>
@extends('admin.layouts.app')

@section('title')
    {{ __('Grades Clasification') }}
@endsection

@section('content')
    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">Grades Clasification</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <b><a href="{{ route('premio') }}" class=" text-danger">Premio</a></b>
                </li>
                <li class="breadcrumb-item active">Grades Clasification</li>
            </ol>
        </div>
    </div>
    <div class="row">
        @foreach ($grades as $grade)
        <div class="col-lg-3 col-md-6">
                <a href="{{ route('admin.grade-clasification-detail', $grade->id) }}" data-toggle="tooltip"
                   data-original-title="Click for more details">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex flex-row">
                                <div class="round round-lg align-self-center round-info">
                                    <i class="mdi mdi-account-outline"></i>
                                </div>
                                <div class="m-l-10 align-self-center">
                                    <h3 class="m-b-0 font-light">29</h3>
                                    <h5 class="text-muted m-b-0">Grade: {{ $grade->grade_name }}</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>    
        @endforeach
    </div>
@endsection

@section('this-page-script')
    <script src="{{ asset('material-pro/assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
            $(document).ready(function () {
                var table = $('#example').DataTable({
                    "columnDefs": [{
                        "visible": false,
                        "targets": 2
                    }],
                    "order": [
                        [2, 'asc']
                    ],
                    "displayLength": 25,
                    "drawCallback": function (settings) {
                        var api = this.api();
                        var rows = api.rows({
                            page: 'current'
                        }).nodes();
                        var last = null;
                        api.column(2, {
                            page: 'current'
                        }).data().each(function (group, i) {
                            if (last !== group) {
                                $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                                last = group;
                            }
                        });
                    }
                });
                // Order by the grouping
                $('#example tbody').on('click', 'tr.group', function () {
                    var currentOrder = table.order()[0];
                    if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                        table.order([2, 'desc']).draw();
                    } else {
                        table.order([2, 'asc']).draw();
                    }
                });
            });
        });
        $('#example23').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'copy', 'csv', 'excel', 'pdf', 'print'
            ]
        });
    </script>
@endsection
