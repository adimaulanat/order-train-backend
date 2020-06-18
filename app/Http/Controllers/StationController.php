<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Station;
use SebastianBergmann\CodeCoverage\Driver\Driver;
use Spatie\QueryBuilder\QueryBuilder;

class StationController extends Controller
{
    //
    public function index(Request $request, Station $station) {
        if ($request->has('keyword')) {
            return $station->where('name', $request->input('keyword'))->orWhere('city', $request->input('keyword'))->get();
        }
        return Station::all();
    }
}
