<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Mail\CompanyAdded;
use Illuminate\Http\Request;
use App\Http\Requests\StoreCompany;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Storage;

class CompanyController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $companies = Company::with('employees')->paginate(10);
        return view('companies.index', ['companies' => $companies]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('companies.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCompany $request)
    {
        $validatedData = $request->validated();

        // $company = Company::create($validatedData);
        $company = new Company;

        $company->name = $validatedData['name'];
        $company->email = $validatedData['email'];
        $company->website = $request->website;
        
        if($request->hasFile('logo')) {

            $path = $request->file('logo')->store('img');
            $company->logo = $path;
        }
        $company->save();

        Mail::to(Auth::user())->send(new CompanyAdded($company));

        return redirect()->back()->withSuccess('Company is sucsess added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $company_details = Company::with('employees')->findOrFail($id);
        return view('companies.show', ['company' => $company_details]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $company = Company::findOrFail($id);
        return view('companies.edit', ['company' => $company]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function update(StoreCompany $request, $id)
    {
        $company = Company::findOrFail($id);

        $validatedData = $request->validated();

        $company->name = $validatedData['name'];
        $company->email = $validatedData['email'];
        $company->website = $request->website;
        
        if($request->hasFile('logo')) {
            $path = $request->file('logo')->store('img');
            
            if($company->logo) {
                Storage::delete($company->logo);
            }
            $company->logo = $path;
        }

        $company->save();

        return redirect()->route('companies.show', ['company' => $company->id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Company  $company
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $company = Company::findOrFail($id);
        $company->delete();

        return redirect()->route('companies.index');
    }
}
