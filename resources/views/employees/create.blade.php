@extends('layouts.admin')

@section('content')
    <!-- Main content -->
    <section class="content">
        <form  method="POST" action="{{ route('employees.store') }}">
            @csrf
            <div class="row">
                <div class="col-md-12 mt-3">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">{{ __('employees.new')}}</h3>

                            <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputFirstname">{{ __('employees.firstname')}}</label>
                                <input type="text" name="firstname" id="inputFirstname" class="form-control" value="{{ old('firstname', $employee->firstname ?? null) }}">
                            </div>
                            <div class="form-group">
                                <label for="inputLastname">{{ __('employees.lastname')}}</label>
                                <input type="text" name="lastname" id="inputLastname" class="form-control" value="{{ old('lastname', $employee->lastname ?? null) }}">
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">{{ __('employees.email')}}</label>
                                <input type="email" name="email" id="inputEmail" class="form-control" value="{{ old('email', $employee->email ?? null) }}">
                            </div>
                            <div class="form-group">
                                <label for="inputPhone">{{ __('employees.phone')}}</label>
                                <input type="text" name="phone" id="inputPhone" class="form-control" value="{{ old('phone', $employee->phone ?? null) }}">
                            </div>
                            <div class="form-group">
                                <label for="inputCompany">{{ __('employees.company') }}</label>
                                <select id="inputCompany" name="company_id" class="form-control custom-select" value="{{ old('company_id', $employee->company_id ?? null) }}">
                                    <option selected disabled>{{ __('employees.select')}}</option>
                                    @foreach ($companies as $company)
                                        <option value="{{ $company->id }}">{{ $company->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <a href="#" class="btn btn-secondary">{{ __('admin.cancel')}}</a>
                    <input type="submit" value="{{ __('employees.create')}}" class="btn btn-success float-right">
                </div>
            </div>
        </form>
    </section>
    <!-- /.content -->
@endsection