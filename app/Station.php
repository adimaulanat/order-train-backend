<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Station extends Model
{
    protected $fillable = [
        'code',
        'name',
        'city',
        'provinci',
        'daop'
    ];

    public function trains() {
        return $this->hasMany('App\Train');
    }
}
