<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChallanItem extends Model
{
    use HasFactory;

    public function challan(){
        return $this->belongsTo(Challan::class);
    }

    public function product(){
        return $this->belongsTo(Product::class);
    }
}
