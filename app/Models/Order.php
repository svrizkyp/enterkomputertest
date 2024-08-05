<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
	protected $fillable = ['table_id', 'total_price', 'product_promo_id', 'product_promo_qty'];
    use HasFactory;
}
