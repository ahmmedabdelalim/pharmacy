<?php

namespace App\Http\Controllers\Branch;

use App\CentralLogics\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Category;
use App\Model\Translation;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CategoryController extends Controller
{
    function index(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if($request->has('search'))
        {
            $key = explode(' ', $request['search']);
            $categories=Category::where(['position'=>0])->where(function ($q) use ($key) {
                        foreach ($key as $value) {
                            $q->orWhere('name', 'like', "%{$value}%");
                        }
            });
            $query_param = ['search' => $request['search']];
        }else{
            $categories=Category::where(['position'=>0]);
        }
        $categories=$categories->latest()->paginate(Helpers::getPagination())->appends($query_param);
        return view('branch-views.category.index',compact('categories','search'));
    }

    function sub_index(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if($request->has('search'))
        {
            $key = explode(' ', $request['search']);
            $categories=Category::with(['parent'])->where(['position'=>1])
                    ->where(function ($q) use ($key) {
                        foreach ($key as $value) {
                            $q->orWhere('name', 'like', "%{$value}%");
                        }
            });
            $query_param = ['search' => $request['search']];
        }else{
            $categories=Category::with(['parent'])->where(['position'=>1]);
        }
        $categories=$categories->latest()->paginate(Helpers::getPagination())->appends($query_param);
        return view('branch-views.category.sub-index',compact('categories' ,'search'));
    }

    public function search(Request $request){
        $key = explode(' ', $request['search']);
        $categories=Category::where(function ($q) use ($key) {
            foreach ($key as $value) {
                $q->orWhere('name', 'like', "%{$value}%");
            }
        })->get();
        return response()->json([
            'view'=>view('branch-views.category.partials._table',compact('categories'))->render()
        ]);
    }

    function sub_sub_index()
    {
        return view('branch-views.category.sub-sub-index');
    }

    function sub_category_index()
    {
        return view('branch-views.category.index');
    }

    function sub_sub_category_index()
    {
        return view('branch-views.category.index');
    }

    function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ], [
            'name.required' => 'Name is required!',
        ]);

        if (!empty($request->file('image'))) {
            $image_name =  Helpers::upload('category/', 'png', $request->file('image'));
        } else {
            $image_name = 'def.png';
        }

        $category = new Category();
        $category->name = $request->name[array_search('en', $request->lang)];
        $category->image = $image_name;
        $category->parent_id = $request->parent_id == null ? 0 : $request->parent_id;
        $category->position = $request->position;
        $category->save();

        $data = [];
        foreach($request->lang as $index=>$key)
        {
            if($request->name[$index] && $key != 'en')
            {
                array_push($data, Array(
                    'translationable_type'  => 'App\Model\Category',
                    'translationable_id'    => $category->id,
                    'locale'                => $key,
                    'key'                   => 'name',
                    'value'                 => $request->name[$index],
                ));
            }
        }
        if(count($data))
        {
          //  Translation::insert($data);
        }

        return back();
    }

    public function edit($id)
    {
        $category = category::withoutGlobalScopes()->with('translations')->find($id);
        return view('branch-views.category.edit', compact('category'));
    }

    public function status(Request $request)
    {
        $category = category::find($request->id);
        $category->status = $request->status;
        $category->save();
        Toastr::success('Category status updated!');
        return back();
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
        ], [
            'name.required' => 'Name is required!',
        ]);
        $category = category::find($id);
        $category->name = $request->name[array_search('en', $request->lang)];
        $category->image = $request->has('image') ? Helpers::update('category/', $category->image, 'png', $request->file('image')) : $category->image;
        $category->save();
        // foreach($request->lang as $index=>$key)
        // {
        //     if($request->name[$index] && $key != 'en')
        //     {
        //         Translation::updateOrInsert(
        //             ['translationable_type'  => 'App\Model\Category',
        //                 'translationable_id'    => $category->id,
        //                 'locale'                => $key,
        //                 'key'                   => 'name'],
        //             ['value'                 => $request->name[$index]]
        //         );
        //     }
        // }
        Toastr::success('Category updated successfully!');
        return back();
    }

    public function delete(Request $request)
    {
        $category = category::find($request->id);
        if (Storage::disk('public')->exists('category/' . $category['image'])) {
            Storage::disk('public')->delete('category/' . $category['image']);
        }
        if ($category->childes->count()==0){
            $category->delete();
            Toastr::success('Category removed!');
        }else{
            Toastr::warning('Remove subcategories first!');
        }
        return back();
    }
}
