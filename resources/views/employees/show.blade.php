@extends('layouts.admin')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>{{ __('employees.details') }}</h1>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">


                    <!-- Main content -->
                    <div class="invoice p-3 mb-3">
                    <!-- title row -->
                    <div class="row">
                        <div class="col-12">
                        <h4>
                            <i class="fas fa-user-circle"></i> {{ $employee->firstname }} {{ $employee->lastname }}
                            <small class="float-right">{{ __('employees.employed') }}: {{ $employee->created_at->isoFormat('MMMM D, YYYY') }}</small>
                        </h4>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- info row -->
                    <div class="row invoice-info mb-5">
                        <div class="col-sm-4 invoice-col">
                        <address>
                            <strong>{{ __('admin.info') }}</strong><br>
                            {{ __('employees.firstname') }}: {{ $employee->firstname }}<br>
                            {{ __('employees.lastname') }}: {{ $employee->lastname }}<br>
                            @if (isset( $employee->email))
                                {{ __('employees.email') }}: {{ $employee->email }}<br>
                            @endif
                            @if (isset( $employee->phone))
                                {{ __('employees.phone') }}: {{ $employee->phone }}<br>
                            @endif
                                {{ __('employees.employed-in') }}:  <strong>{{ $employee->company->name }}</strong>
                        </address>
                        </div>
                    </div>
                    <!-- /.row -->

                    <!-- /.invoice -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection