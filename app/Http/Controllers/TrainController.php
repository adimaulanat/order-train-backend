<?php

namespace App\Http\Controllers;

use App\Train;
use Illuminate\Http\Request;

class TrainController extends Controller
{
    public function index(Request $request, Train $train) {
        if ($request->has('departure_station_id') && $request->has('arrival_station_id')) {
            return $train->where('departure_station_id', $request->input('departure_station_id'))->orWhere('arrival_station_id', $request->input('arrival_station_id'))->get();
        }
        return Train::all();
    }
}
