@extends('layouts.admin')

@section('content')
    <section class="content-header">
        <a class="btn btn-info btn-sm" href="{{ route('companies.create') }}">
            <i class="fas fa-plus">
            </i>
            Create new company
        </a>
    </section>

    <!-- Main content -->
    <section class="content">

    <!-- Default box -->
    <div class="card">
        <div class="card-header">
        <h3 class="card-title">Companies</h3>

        <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
            <i class="fas fa-minus"></i>
            </button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
            <i class="fas fa-times"></i>
            </button>
        </div>
        </div>
        <div class="card-body p-0">
        <table class="table table-striped projects">
            <thead>
                <tr>
                    <th style="width: 20%">
                        Name
                    </th>
                    <th style="width: 20%">
                        Website
                    </th>
                    <th style="width: 20%">
                        Email
                    </th>
                    <th style="width: 20%">
                    </th>
                </tr>
            </thead>
            <tbody>
                
                @foreach ($companies as $company)
                    <tr>
                        <td>{{ $company->name }}</td>
                        <td>{{ $company->website }}</td>
                        <td>{{ $company->email }}</td>
                        <td class="project-actions text-right">
                            <a class="btn btn-primary btn-sm" href="{{ route('companies.show', ['company' => $company->id]) }}">
                                <i class="fas fa-folder">
                                </i>
                                View
                            </a>
                            <a class="btn btn-info btn-sm" href="{{ route('companies.edit', ['company' => $company->id]) }}">
                                <i class="fas fa-pencil-alt">
                                </i>
                                Edit
                            </a>
                            <form method="POST" id="delete-form" action="{{ route('companies.destroy', ['company' => $company->id]) }}" class="d-inline-block">
                                @csrf
                                @method('DELETE')
                                
                                <button type="submit" class="btn btn-danger btn-sm" ><i class="fas fa-trash"></i> {{ __('Delete') }}</button>
                            </form>
                        </td>
                    </tr>
                @endforeach

            </tbody>
        </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
    <div>
        <ul style="display: flex">
            @for ($i = 1; $i <= $companies->lastPage(); $i++)
                <li class="{{ ($companies->currentPage() == $i) ? ' active' : '' }}" style="list-style-type: none; padding: 10px; border: solid 1px; background-color: white; line-height: 0">
                    <a href="{{ $companies->url($i) }}">{{ $i }}</a>
                </li>
            @endfor
        </ul>
    </div>

    </section>
    <!-- /.content -->
@endsection
