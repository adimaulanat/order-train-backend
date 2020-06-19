<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Train extends Model
{
    public function station() {
        return $this->belongsTo('App\Stations');
    }
}
