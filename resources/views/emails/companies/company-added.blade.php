<p>{{ __('email.new') }}</p>
<p>{{ __('email.check') }}
    <a href="{{ route('companies.show', ['company' => $company->id]) }}">{{ $company->name }}</a>
</p>