<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
    protected $casts = [
//        'tax' => 'float',
        'price' => 'float',
//        'capacity' => 'float',
        'status' => 'integer',
        'discount' => 'float',
//        'total_stock' => 'integer',
//        'set_menu' => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];
    protected $fillable = ['name', 'description', 'warnings', 'price', 'composition', 'category_id', 'discount', 'indication', 'status'];

    public function translations()
    {
        return $this->morphMany('App\Model\Translation', 'translationable');
    }

    public function scopeActive($query)
    {
        return $query->where('status', '=', 1);
    }

    public function reviews()
    {
        return $this->hasMany(Review::class)->latest();
    }

    public function wishlist()
    {
        return $this->hasMany(Wishlist::class)->latest();
    }

    public function rating()
    {
        return $this->hasMany(Review::class)
            ->select(DB::raw('avg(rating) average, product_id'))
            ->groupBy('product_id');
    }

    protected static function booted()
    {
        static::addGlobalScope('translate', function (Builder $builder) {
            $builder->with(['translations' => function ($query) {
                return $query->where('locale', app()->getLocale());
            }]);
        });
    }

    //scopes
    public function scopeSearch($query)
    {
        $query->when(request()->search, function ($q) {
            return $q->where('name', 'like', '%' . request()->search . '%')
                ->orWhere('description', 'like', '%' . request()->search . '%')
                ->orWhere('dosage', 'like', '%' . request()->search . '%');
        })->when(request()->category_id, function ($q) {
            return $q->where('category_id', request()->category_id);
        });
    }
}
