@extends('layouts.admin')

@section('content')
    <!-- Main content -->
    <section class="content">
        <form  method="POST" action="{{ route('companies.store') }}" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-12 mt-3">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">{{ __('companies.new') }}</h3>

                            <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputName">{{ __('companies.name') }}</label>
                                <input type="text" name="name" id="inputName" class="form-control" value="{{ old('name', $company->name ?? null) }}">
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">{{ __('companies.email') }}</label>
                                <input type="email" name="email" id="inputEmail" class="form-control" value="{{ old('email', $company->email ?? null) }}">
                            </div>
                            <div class="form-group">
                                <label for="inputWebsite">{{ __('companies.website') }}</label>
                                <input type="text" name="website" id="inputWebsite" class="form-control" value="{{ old('website', $company->website ?? null) }}">
                            </div>
                            <div class="form-group">
                                <label for="inputLogo">{{ __('companies.logo') }}</label>
                                <input type="file" name="logo" id="inputLogo" class="form-control-file"/>
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
                    <a href="#" class="btn btn-secondary">{{ __('admin.cancel') }}</a>
                    <input type="submit" value="{{ __('companies.create') }}" class="btn btn-success float-right">
                </div>
            </div>
        </form>
    </section>
    <!-- /.content -->
@endsection