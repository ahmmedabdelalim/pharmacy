@extends('layouts.admin.app')

@section('title','Update product')

@push('css_or_js')
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="{{asset('public/assets/admin/css/tags-input.min.css')}}" rel="stylesheet">
@endpush

@section('content')
    <div class="content container-fluid">
        <!-- Page Header -->
        <div class="page-header">
            <div class="row align-items-center">
                <div class="col-sm mb-2 mb-sm-0">
                    <h1 class="page-header-title"><i
                            class="tio-edit"></i> {{\App\CentralLogics\translate('product')}} {{\App\CentralLogics\translate('update')}}</h1>
                </div>
            </div>
        </div>
        <!-- End Page Header -->
        <div class="row gx-2 gx-lg-3">
            <div class="col-sm-12 col-lg-12 mb-3 mb-lg-2">
                <form action="javascript:" method="post" id="product_form"
                      enctype="multipart/form-data">
                    @csrf
                    @php($language=\App\Model\BusinessSetting::where('key','language')->first())
                    @php($language = $language->value ?? null)
                    @if($language)
                        <ul class="nav nav-tabs mb-4">
                        </ul>


                            <div class="card p-4  lang_form" id="form">
                                <div class="form-group">
                                    <label class="input-label" for="name">{{\App\CentralLogics\translate('name')}} </label>
                                    <input type="text" name="name[]" id="name" value="{{$product['name']}}" class="form-control" placeholder="New Product" >
                                </div>
                                <div class="form-group">
                                    <label class="input-label" for="indication">{{\App\CentralLogics\translate('indication')}} </label>
                                    <input type="text"  name="indication[]" id="indication" value="{{$product['indication']}}" class="form-control" placeholder="New Product" >
                                </div>
                                <div class="form-group">
                                    <label class="input-label" for="composition">{{\App\CentralLogics\translate('composition')}} </label>
                                    <input type="text"  name="composition[]" id="composition" value="{{$product['composition']}}" class="form-control" placeholder="New Product" >
                                </div>
                                <div class="form-group">
                                    <label class="input-label" for="dosage">{{\App\CentralLogics\translate('dosage')}} </label>
                                    <input type="text"  name="dosage[]" id="dosage" value="{{$product['dosage']}}" class="form-control" placeholder="New Product" >
                                </div>
                                <div class="form-group">
                                    <label class="input-label" for="warnings">{{\App\CentralLogics\translate('warnings')}} </label>
                                    <input type="text"  name="warnings[]" id="warnings" value="{{$product['warnings']}}" class="form-control" placeholder="New Product" >
                                </div>
                                <input type="hidden" name="lang[]" value="">
                                {{-- <div class="form-group pt-4">
                                    <label class="input-label"
                                           for="{{$lang}}_description">{{\App\CentralLogics\translate('short')}} {{\App\CentralLogics\translate('description')}}  ({{strtoupper($lang)}})</label>
                                    <div id="{{$lang}}_editor" style="min-height: 15rem;">{!! $translate[$lang]['description']??$product['description'] !!}</div>
                                    <textarea name="description[]" style="display:none" id="{{$lang}}_hiddenArea"></textarea>
                                </div> --}}
                                <div class="form-group pt-4">
                                    <label class="input-label"
                                           for="description">{{\App\CentralLogics\translate('short')}} {{\App\CentralLogics\translate('description')}}  </label>
                                    {{-- <div id="{{$lang}}_editor" style="min-height: 15rem;">{!! $translate[$lang]['description']??$product['description'] !!}</div> --}}
                                    <textarea name="description[]" style="min-height: 15rem;width:100%" id="hiddenArea">{!! $product['description'] !!}</textarea>
                                </div>
                            </div>

                    @else
                        <div class="card p-4" id="english-form">
                            <div class="form-group">
                                <label class="input-label" for="exampleFormControlInput1">{{\App\CentralLogics\translate('name')}} (EN)</label>
                                <input type="text" name="name[]" value="{{$product['name']}}" class="form-control" placeholder="New Product" required>
                            </div>
                            <div class="form-group">
                                <label class="input-label" for="exampleFormControlInput1">{{\App\CentralLogics\translate('name')}} (EN)</label>
                                <input type="text" name="name[]" value="{{$product['name']}}" class="form-control" placeholder="New Product" required>
                            </div>

                            <input type="hidden" name="lang[]" value="en">
                            {{-- <div class="form-group pt-4">
                                <label class="input-label"
                                       for="exampleFormControlInput1">{{\App\CentralLogics\translate('short')}} {{\App\CentralLogics\translate('description')}} (EN)</label>
                                <div id="editor" style="min-height: 15rem;">{!! $product['description'] !!}</div>
                                <textarea name="description[]" style="display:none" id="hiddenArea"></textarea>
                            </div> --}}
                            <div class="form-group pt-4">
                                <label class="input-label"
                                       for="exampleFormControlInput1">{{\App\CentralLogics\translate('short')}} {{\App\CentralLogics\translate('description')}} (EN)</label>
                                {{-- <div id="editor" style="min-height: 15rem;">{!! $product['description'] !!}</div> --}}
                                <textarea name="description[]" style="min-height: 15rem;width:100%" id="hiddenArea"></textarea>
                            </div>
                        </div>
                    @endif
                    <div id="from_part_2">
                        {{-- <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('price')}}</label>
                                    <input type="number" value="{{$product['price']}}" min="1" max="100000000" name="price"
                                           class="form-control" step="0.01"
                                           placeholder="Ex : 100" required>
                                </div>
                            </div>
                        </div> --}}

                        <div class="row">


                            {{-- <div class="col-md-4 col-4">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('stock')}}</label>
                                    <input type="number" min="0" max="100000000" value="{{$product['stock']}}" name="total_stock" class="form-control"
                                           placeholder="Ex : 100">
                                </div>
                            </div> --}}
                        </div>

                        <div class="row">

                            <div class="col-md-4 col-4">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlSelect1">{{\App\CentralLogics\translate('category')}}<span
                                            class="input-label-secondary">*</span></label>
                                            <select name="category_id" class="form-control js-select2-custom"
                                            onchange="getRequest('{{url('/')}}/admin/product/get-categories?parent_id='+this.value,'sub-categories')">
                                        <option value="{{$product['category_id']}}">---{{\App\CentralLogics\translate('select')}}---</option>
                                        @foreach($categories as $category)
                                            <option value="{{$category['id']}}">{{$category['name']}}</option>
                                        @endforeach
                                    </select>
                                </div>

                            </div>
                            <div class="col-md-4 col-12">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlSelect1">{{\App\CentralLogics\translate('sub_category')}}<span
                                            class="input-label-secondary"></span></label>
                                    <select name="sub_category_id" id="sub-categories"
                                            class="form-control js-select2-custom"
                                            onchange="getRequest('{{url('/')}}/admin/product/get-categories?parent_id='+this.value,'sub-sub-categories')">

                                    </select>
                                </div>
                            </div> 

                        </div>



                        <div class="form-group">
                            <label>{{\App\CentralLogics\translate('product')}} {{\App\CentralLogics\translate('image')}}</label><small
                                style="color: red">* ( {{\App\CentralLogics\translate('ratio')}} 1:1 )</small>
                            <div>
                                <div class="row mb-3">

                                        <div class="col-3">
                                            <img style="height: 200px;width: 100%"
                                                 src="{{asset('storage/app/public/product')}}/{{$product['image']}}">
                                            <a href="{{route('admin.product.remove-image',[$product['id'],$product['image']])}}"
                                               style="margin-top: -35px;border-radius: 0"
                                               class="btn btn-danger btn-block btn-sm">Remove</a>
                                        </div>

                                </div>
                                <div class="row" id="coba"></div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <button type="submit" class="btn btn-primary">{{\App\CentralLogics\translate('update')}}</button>
                </form>
            </div>
        </div>
    </div>

@endsection

@push('script')

@endpush

@push('script_2')
    <script src="{{asset('public/assets/admin/js/spartan-multi-image-picker.js')}}"></script>
    <script>
        $(".lang_link").click(function(e){
            e.preventDefault();
            $(".lang_link").removeClass('active');
            $(".lang_form").addClass('d-none');
            $(this).addClass('active');

            let form_id = this.id;
            let lang = form_id.split("-")[0];
            console.log(lang);
            $("#"+lang+"-form").removeClass('d-none');
            if(lang == 'en')
            {
                $("#from_part_2").removeClass('d-none');
            }
            else
            {
                $("#from_part_2").addClass('d-none');
            }


        })
    </script>
    <script type="text/javascript">
        $(function () {
            $("#coba").spartanMultiImagePicker({
                fieldName: 'images[]',
                maxCount: 4,
                rowHeight: '215px',
                groupClassName: 'col-3',
                maxFileSize: '',
                placeholderImage: {
                    image: '{{asset('public/assets/admin/img/400x400/img2.jpg')}}',
                    width: '100%'
                },
                dropFileLabel: "Drop Here",
                onAddRow: function (index, file) {

                },
                onRenderedPreview: function (index) {

                },
                onRemoveRow: function (index) {

                },
                onExtensionErr: function (index, file) {
                    toastr.error('Please only input png or jpg type file', {
                        CloseButton: true,
                        ProgressBar: true
                    });
                },
                onSizeErr: function (index, file) {
                    toastr.error('File size too big', {
                        CloseButton: true,
                        ProgressBar: true
                    });
                }
            });
        });
    </script>

    <script>
        function getRequest(route, id) {
            $.get({
                url: route,
                dataType: 'json',
                success: function (data) {
                    $('#' + id).empty().append(data.options);
                },
            });
        }

        $(document).ready(function () {
            setTimeout(function () {
                           }, 1000)
        });
    </script>

    <script>
        $(document).on('ready', function () {
            $('.js-select2-custom').each(function () {
                var select2 = $.HSCore.components.HSSelect2.init($(this));
            });
        });
    </script>

    <script src="{{asset('public/assets/admin')}}/js/tags-input.min.js"></script>

    <script>
        $('#choice_attributes').on('change', function () {
            $('#customer_choice_options').html(null);
            $.each($("#choice_attributes option:selected"), function () {
                add_more_customer_choice_option($(this).val(), $(this).text());
            });
        });

        function add_more_customer_choice_option(i, name) {
            let n = name.split(' ').join('');
            $('#customer_choice_options').append('<div class="row"><div class="col-md-3"><input type="hidden" name="choice_no[]" value="' + i + '"><input type="text" class="form-control" name="choice[]" value="' + n + '" placeholder="Choice Title" readonly></div><div class="col-lg-9"><input type="text" class="form-control" name="choice_options_' + i + '[]" placeholder="Enter choice values" data-role="tagsinput" onchange="combination_update()"></div></div>');
            $("input[data-role=tagsinput], select[multiple][data-role=tagsinput]").tagsinput();
        }

        function combination_update() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type: "POST",
                url: '{{route('admin.product.variant-combination')}}',
                data: $('#product_form').serialize(),
                success: function (data) {
                    $('#variant_combination').html(data.view);
                    if (data.length > 1) {
                        $('#quantity').hide();
                    } else {
                        $('#quantity').show();
                    }
                }
            });
        }
    </script>

    {{-- <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script> --}}

    <script>


        $('#product_form').on('submit', function () {


            var formData = new FormData(this);

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.post({
                url: '{{route('admin.product.update',[$product['id']])}}',
                // data: $('#product_form').serialize(),
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function (data) {
                    if (data.errors) {
                        for (var i = 0; i < data.errors.length; i++) {
                            toastr.error(data.errors[i].message, {
                                CloseButton: true,
                                ProgressBar: true
                            });
                        }
                    } else {
                        toastr.success('product updated successfully!', {
                            CloseButton: true,
                            ProgressBar: true
                        });
                        setTimeout(function () {
                            location.href = '{{route('admin.product.list')}}';
                        }, 2000);
                    }
                }
            });
        });
    </script>
@endpush


