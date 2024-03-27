<?php

namespace App\Http\Controllers;

use App\Models\Data;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use PhpOffice\PhpSpreadsheet\IOFactory;
use App\Http\Requests\ImportDataRequest;
use Illuminate\Support\Facades\Validator;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;


class HomeController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $allData = DB::table('data')->get();
        return view('data_table', compact('allData'));
    }



    // Data Export controller
    public function export()
    {
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Get all data from DB
        $allData = Data::all();

        // Set the header row for the excel file
        $sheet->setCellValue('A1', 'Full Name');
        $sheet->setCellValue('B1', 'Telephone Number');
        $sheet->setCellValue('C1', 'Email');

        // Add data rows
        $rowNumber = 2;
        foreach ($allData as $data) {
            $sheet->setCellValue('A' . $rowNumber, $data->full_name);
            $sheet->setCellValue('B' . $rowNumber, $data->phone_number);
            $sheet->setCellValue('C' . $rowNumber, $data->email);
            $rowNumber++;
        }

        // Generate the file now..
        $writer = new Xlsx($spreadsheet);
        $fileName = 'users_export.xlsx';
        $writer->save($fileName);

        // Download the file
        return response()->download($fileName)->deleteFileAfterSend(true);
    }



    // Data Import controller
    public function import(Request $request)
    {

        // // var_dump($request);
        // // die();

        // Check if the request has the file or not
        if ($request->hasFile('excel_file')) {
            $file = $request->file('excel_file');
            $spreadsheet = IOFactory::load($file->getPathName());

            $worksheet = $spreadsheet->getActiveSheet();
            $rows = [];
            foreach ($worksheet->getRowIterator() as $row) {
                $cellIterator = $row->getCellIterator();
                $cellIterator->setIterateOnlyExistingCells(false);
                $cells = [];
                foreach ($cellIterator as $cell) {
                    $cells[] = $cell->getValue();
                }
                $rows[] = $cells;
            }


            // // $request->validated(); // Get the validation rules

            foreach ($rows as $row) {
                // Prepare the data for validation
                $data = [
                    'full_name' => $row[0],
                    'phone_number' => $row[1],
                    'email' => $row[2],
                ];

                // // Validate the data
                // // $validator = Validator::make($data, $rules);

                // // ($validator->fails()) {
                // //  Handle the failed validation
                // //     return back()->withErrors($validator)->withInput();
                // //}

                //  create the record
                Data::create($data);
            }

            return back()->with('success', 'Data imported successfully.');
        } else {

            return back()->with('error', 'You have an issue with your imported file.');
        }
    }
}
