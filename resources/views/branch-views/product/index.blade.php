@extends('layouts.branch.app')

@section('title','Add new product')

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
                            class="tio-add-circle-outlined"></i> {{\App\CentralLogics\translate('add')}} {{\App\CentralLogics\translate('new')}} {{\App\CentralLogics\translate('product')}}
                    </h1>
                </div>
            </div>
        </div>
        <!-- End Page Header -->
        <div class="row gx-2 gx-lg-3">
            <div class="col-sm-12 col-lg-12 mb-3 mb-lg-2">
                <form action="javascript:" method="post" id="product_form"
                      enctype="multipart/form-data">
                    @csrf





                        <div class="card p-4" id="form">
                            <div class="form-group">
                                <label class="input-label" for="exampleFormControlInput1">{{\App\CentralLogics\translate('name')}} (EN)</label>
                                <input type="text" name="name[]" class="form-control" placeholder="New Product" required>
                            </div>
                            <div class="form-group">
                                <label class="input-label" for="exampleFormControlInput1">{{\App\CentralLogics\translate('composition')}} (EN)</label>
                                <input type="text" name="composition[]" class="form-control" placeholder="composition" required>
                            </div>
                            <div class="form-group">
                                <label class="input-label" for="exampleFormControlInput1">{{\App\CentralLogics\translate('indication')}} (EN)</label>
                                <input type="text" name="indication[]" class="form-control" placeholder="indication" required>
                            </div>
                            <div class="form-group">
                                <label class="input-label" for="exampleFormControlInput1">{{\App\CentralLogics\translate('dosage')}} (EN)</label>
                                <input type="text" name="dosage[]" class="form-control" placeholder="dosage" required>
                            </div>
                            <div class="form-group">
                                <label class="input-label" for="exampleFormControlInput1">{{\App\CentralLogics\translate('warnings')}} (EN)</label>
                                <input type="text" name="warnings[]" class="form-control" placeholder="warnings" required>
                            </div>
                            <input type="hidden" name="lang[]" value="en">
                             <div class="form-group pt-4">
                                <label class="input-label"
                                       for="exampleFormControlInput1">{{\App\CentralLogics\translate('short')}} {{\App\CentralLogics\translate('description')}} (EN)</label>
                                <div id="editor" style="min-height: 15rem;"></div>
                                <textarea name="description[]" style="display:none" id="hiddenArea"></textarea>
                            </div>
                            {{--<div class="form-group pt-4">
                                <label class="input-label"
                                       for="exampleFormControlInput1">{{\App\CentralLogics\translate('short')}} {{\App\CentralLogics\translate('description')}} (EN)</label>

                                <textarea name="description[]" style="min-height: 15rem;width:100%" id="hiddenArea"></textarea>
                            </div>--}}
                        </div>

                    <div id="from_part_2">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('price')}}</label>
                                    <input type="number" min="1" max="100000000" step="0.01" value="1" name="price"
                                           class="form-control"
                                           placeholder="Ex : 100" required>
                                </div>
                            </div>
                            {{-- <div class="col-6">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('unit')}}</label>
                                    <select name="unit" class="form-control js-select2-custom">
                                        <option value="kg">{{\App\CentralLogics\translate('kg')}}</option>
                                        <option value="gm">{{\App\CentralLogics\translate('gm')}}</option>
                                        <option value="ltr">{{\App\CentralLogics\translate('ltr')}}</option>
                                        <option value="pc">{{\App\CentralLogics\translate('pc')}}</option>
                                    </select>
                                </div>
                            </div> --}}
                            {{-- <div class="col-6">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('tax')}}</label>
                                    <input type="number" min="0" value="0" step="0.01" max="100000" name="tax"
                                           class="form-control"
                                           placeholder="Ex : 7" required>
                                </div>
                            </div> --}}
                            {{-- <div class="col-6">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('tax')}} {{\App\CentralLogics\translate('type')}}</label>
                                    <select name="tax_type" class="form-control js-select2-custom">
                                        <option value="percent">{{\App\CentralLogics\translate('percent')}}</option>
                                        <option value="amount">{{\App\CentralLogics\translate('amount')}}</option>
                                    </select>
                                </div>
                            </div> --}}
                        </div>

                        <div class="row">
                            {{-- <div class="ol-md-4 col-4">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('capacity')}}</label>
                                    <input type="number" min="0" step="0.01" value="1" name="capacity"
                                           class="form-control"
                                           placeholder="Ex : 5" required>
                                </div>
                            </div> --}}
                            {{-- <div class="col-md-4 col-4">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('discount')}}</label>
                                    <input type="number" min="0" max="100000" value="0" name="discount" class="form-control"
                                           placeholder="Ex : 100">
                                </div>
                            </div> --}}
                            {{-- <div class="col-md-4 col-4">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('discount')}} {{\App\CentralLogics\translate('type')}}</label>
                                    <select name="discount_type" class="form-control js-select2-custom">
                                        <option value="percent">{{\App\CentralLogics\translate('percent')}}</option>
                                        <option value="amount">{{\App\CentralLogics\translate('amount')}}</option>
                                    </select>
                                </div>
                            </div> --}}
                        </div>

                        <div class="row">
                             <div class="col-md-4 col-12">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlInput1">{{\App\CentralLogics\translate('stock')}}</label>
                                    <input type="number" min="0" max="100000000" value="0" name="stock" class="form-control"
                                           placeholder="Ex : 100">
                                </div>
                            </div>
                            <div class="col-md-4 col-12">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlSelect1">{{\App\CentralLogics\translate('category')}}<span
                                            class="input-label-secondary">*</span></label>
                                    <select name="category_id" class="form-control js-select2-custom"
                                            onchange="getRequest('{{url('/')}}/branch/product/get-categories?parent_id='+this.value,'sub-categories')">
                                        <option value="">---{{\App\CentralLogics\translate('select')}}---</option>
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
                                            onchange="getRequest('{{url('/')}}/branch/product/get-categories?parent_id='+this.value,'sub-sub-categories')">

                                    </select>
                                </div>
                            </div>
                            {{--<div class="col-md-4 col-6">
                                <div class="form-group">
                                    <label class="input-label" for="exampleFormControlSelect1">Sub Sub Category<span
                                            class="input-label-secondary"></span></label>
                                    <select name="sub_sub_category_id" id="sub-sub-categories"
                                            class="form-control js-select2-custom">

                                    </select>
                                </div>
                            </div>--}}
                        </div>

                        {{-- <div class="row"
                             style="border: 1px solid #80808045; border-radius: 10px;padding-top: 10px;margin: 1px">
                            <div class="col-12">
                                <div class="form-group">
                                    <label class="input-label"
                                           for="exampleFormControlSelect1">{{\App\CentralLogics\translate('attribute')}}<span
                                            class="input-label-secondary"></span></label>
                                    <select name="attribute_id[]" id="choice_attributes"
                                            class="form-control js-select2-custom"
                                            multiple="multiple">
                                        @foreach(\App\Model\Attribute::orderBy('name')->get() as $attribute)
                                            <option value="{{$attribute['id']}}">{{$attribute['name']}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-12 mt-2 mb-2">
                                <div class="customer_choice_options" id="customer_choice_options">

                                </div>
                            </div>
                            <div class="col-md-12 mt-2 mb-2">
                                <div class="variant_combination" id="variant_combination">

                                </div>
                            </div>
                        </div> --}}

                        <div class="form-group">
                            <label>{{\App\CentralLogics\translate('product')}} {{\App\CentralLogics\translate('image')}}</label><small
                                style="color: red">* ( {{\App\CentralLogics\translate('ratio')}} 1:1 )</small>
                            <div>
                                <div class="row" id="coba"></div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <button type="submit" class="btn btn-primary">{{\App\CentralLogics\translate('submit')}}</button>
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



        // })
    </script>

    <script>



        //     $.post({
        //         url: '{{route('admin.product.store')}}',
        //         data: formData,
        //         cache: false,
        //         contentType: false,
        //         processData: false,
        //         success: function (data) {
        //             if (data.errors) {
        //                 for (var i = 0; i < data.errors.length; i++) {
        //                     toastr.error(data.errors[i].message, {
        //                         CloseButton: true,
        //                         ProgressBar: true
        //                     });
        //                 }
        //             } else {
        //                 toastr.success('product uploaded successfully!', {
        //                     CloseButton: true,
        //                     ProgressBar: true
        //                 });
        //                 setTimeout(function () {
        //                     location.href = '{{route('admin.product.list')}}';
        //                 }, 2000);
        //             }
        //         }
        //     });
        // });
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

        // function add_more_customer_choice_option(i, name) {
        //     let n = name.split(' ').join('');
        //     $('#customer_choice_options').append('<div class="row"><div class="col-md-3"><input type="hidden" name="choice_no[]" value="' + i + '"><input type="text" class="form-control" name="choice[]" value="' + n + '" placeholder="Choice Title" readonly></div><div class="col-lg-9"><input type="text" class="form-control" name="choice_options_' + i + '[]" placeholder="Enter choice values" data-role="tagsinput" onchange="combination_update()"></div></div>');
        //     $("input[data-role=tagsinput], select[multiple][data-role=tagsinput]").tagsinput();
        // }

        // function combination_update() {
        //     $.ajaxSetup({
        //         headers: {
        //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //         }
        //     });

        //     $.ajax({
        //         type: "POST",
        //         url: '{{route('admin.product.variant-combination')}}',
        //         data: $('#product_form').serialize(),
        //         success: function (data) {
        //             $('#variant_combination').html(data.view);
        //             if (data.length > 1) {
        //                 $('#quantity').hide();
        //             } else {
        //                 $('#quantity').show();
        //             }
        //         }
        //     });
        // }
    </script>

    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

    <script>
        var quill = new Quill('#editor', {
            theme: 'snow'
        });

        $('#product_form').on('submit', function () {

            var myEditor = document.querySelector('#editor')
            $("#hiddenArea").val(myEditor.children[0].innerHTML);

            var formData = new FormData(this);
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.post({
                url: '{{route('branch.product.store')}}',
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
                        toastr.success('product uploaded successfully!', {
                            CloseButton: true,
                            ProgressBar: true
                        });
                        setTimeout(function () {
                            location.href = '{{route('branch.product.list')}}';
                        }, 2000);
                    }
                }
            });
        });
    </script>

    <script>
        function update_qty() {
            var total_qty = 0;
            var qty_elements = $('input[name^="stock_"]');
            for(var i=0; i<qty_elements.length; i++)
            {
                total_qty += parseInt(qty_elements.eq(i).val());
            }
            if(qty_elements.length > 0)
            {
                $('input[name="stock"]').attr("readonly", true);
                $('input[name="stock"]').val(total_qty);
                console.log(total_qty)
            }
            else{
                $('input[name="stock"]').attr("readonly", false);
            }
        }
    </script>
@endpush


