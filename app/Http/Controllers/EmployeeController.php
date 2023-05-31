<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;

class EmployeeController extends Controller
{
    public function addEmployeePage(){
        return view('pages.addEmployee');
    }

    public function addEmployee(Request $req){
        $newEmployee = new Employee();

        $newEmployee->name = $req->name;
        $newEmployee->designation = $req->designation;
        $newEmployee->parmanent_address = $req->parmanent_address;
        $newEmployee->current_address = $req->current_address;
        $newEmployee->nid_number = $req->nid_number;
        $newEmployee->personal_contract_number = $req->personal_contract_number;
        $newEmployee->office_contract_number = $req->office_contract_number;
        $newEmployee->whatsapp_number = $req->whatsapp_number;
        $newEmployee->email = $req->email;
        $newEmployee->others = $req->others;
        if ($req->hasFile('photo')) {
            $newEmployee->photo = $req->file('photo');

            // Customize the destination path and file name as per your requirements
            $destinationPath = 'uploads';
            $filename = $newEmployee->photo->getClientOriginalName();

            // Move the uploaded file to the destination folder
            $newEmployee->photo->move($destinationPath, $filename);

            // Save it to database
            $newEmployee->photo = $destinationPath . '/' . $filename;
            $newEmployee->save();
        }

        $newEmployee->save();

        return redirect('/employee/list');
    }

    public function employeeList(){
        $employees = Employee::all();
            // $allProducts = Product::orderBy('id', 'desc')->get();
 
            return view('pages.employeeList',['employees'=> $employees]);
    }
}
