@extends('layouts.admin')

@section('content')
    <section class="content-header">
        <a class="btn btn-info btn-sm" href="{{ route('employees.create') }}">
            <i class="fas fa-plus">
            </i>
            {{ __('employees.create') }}
        </a>
    </section>

    <!-- Main content -->
    <section class="content">

    <!-- Default box -->
    <div class="card">
        <div class="card-header">
        <h3 class="card-title">{{ __('employees.employees')}}</h3>

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
                    <th style="width: 10%">
                        {{ __('employees.firstname')}}
                    </th>
                    <th style="width: 10%">
                        {{ __('employees.lastname')}}
                    </th>
                    <th style="width: 20%">
                        {{ __('employees.email')}}
                    </th>
                    <th style="width: 20%">
                        {{ __('employees.phone')}}
                    </th>
                    <th style="width: 40%">
                    </th>
                </tr>
            </thead>
            <tbody>
                
                @foreach ($employees as $employee)
                    <tr>
                        <td>{{ $employee->firstname }}</td>
                        <td>{{ $employee->lastname }}</td>
                        <td>{{ $employee->email }}</td>
                        <td>{{ $employee->phone }}</td>
                        <td class="project-actions text-right">
                            <a class="btn btn-primary btn-sm" href="{{ route('employees.show', ['employee' => $employee->id]) }}">
                                <i class="fas fa-folder">
                                </i>
                                {{ __('admin.view') }}
                            </a>
                            <a class="btn btn-info btn-sm" href="{{ route('employees.edit', ['employee' => $employee->id]) }}">
                                <i class="fas fa-pencil-alt">
                                </i>
                                {{ __('admin.edit') }}
                            </a>
                            <form method="POST" id="delete-form" action="{{ route('employees.destroy', ['employee' => $employee->id]) }}" class="d-inline-block">
                                @csrf
                                @method('DELETE')
                                
                                <button type="submit" class="btn btn-danger btn-sm" ><i class="fas fa-trash"></i> {{ __('admin.delete') }}</button>
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
        <ul class="pagination">  
            <li class="page-item {{ ($employees->currentPage() == 1) ? ' disabled' : '' }}">
                <a class="page-link" href="{{ $employees->url($employees->currentPage()-1) }}">Previous</a>
            </li>
            @for ($i = 1; $i <= $employees->lastPage(); $i++)
                <li class="page-link {{ ($employees->currentPage() == $i) ? ' active' : '' }}">
                    <a href="{{ $employees->url($i) }}">{{ $i }}</a>
                </li>
            @endfor
            <li class="page-item {{ ($employees->currentPage() == $employees->lastPage()) ? ' disabled' : '' }}">
                <a class="page-link" href="{{ $employees->url($employees->currentPage()+1) }}">Next</i></a>
            </li>
        </ul>
    </div>

    </section>
    <!-- /.content -->
@endsection
