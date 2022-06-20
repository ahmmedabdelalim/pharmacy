<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class sub_category extends Model
{
    //
    protected $table = 'sub_category';

    protected $fillable = ['name', 'image', 'category_id'];
    


}
