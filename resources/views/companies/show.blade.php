@extends('layouts.admin')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Company details</h1>
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
                            <i class="fas fa-globe"></i> {{ $company->name }}
                            <small class="float-right">Created: {{ $company->created_at->isoFormat('MMMM D, YYYY') }}</small>
                        </h4>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- info row -->
                    <div class="row invoice-info mb-5">
                        <div class="col-sm-4 invoice-col">
                            {{-- <img src="{{ asset('storage/' . $company->logo) }}" alt=""> --}}
                            <img src="{{ Storage::url($company->logo) }}" alt="" style="height: 100px">
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-4 invoice-col">
                        <address>
                            <strong>Detail info</strong><br>
                            @if (isset( $company->website))
                                Website: {{ $company->website }}<br>
                            @endif
                            Email: {{ $company->email }}
                        </address>
                        </div>
                    </div>
                    <!-- /.row -->

                    <!-- Table row -->
                    <div class="row">
                        <div class="col-12 table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                    <th>ID</th>
                                    <th>Employee</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Employeed at</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($company->employees as $employee)
                                        <tr>
                                            <td>{{ $employee->id }}</td>
                                            <td>{{ $employee->firstname }} {{ $employee->lastname }}</td>
                                            <td>{{ $employee->email }}</td>
                                            <td>{{ $employee->phone }}</td>
                                            <td>{{ $employee->created_at->isoFormat('MMMM D, YYYY') }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.col -->
                    </div>

                    <!-- /.invoice -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection