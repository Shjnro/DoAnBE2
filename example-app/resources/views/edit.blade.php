@extends('layout')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <h3>
                            Sửa Sản Phẩm
                        </h3>
                    </div>
                    <div class="col-md-6">
                        <a href="{{route('product.index')}}" class="btn btn-primary float-end">Danh sách sản phẩm</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <form action="{{route('product.update', $product->id)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-groud" enctype="multipart/form-data">
                            <strong>Hình</strong>
                            <img src="/image/{{$product->Hinh}}" alt="" style="width: 150px; height: 100px;">
                            <input type="file" name="Hinh" value="{{$product->Hinh}}" class="form-control" placeholder="Nhap hinh anh">
                        </div>
                        <div class="form-groud">
                            <strong>Tên sản phẩm</strong>
                            <input type="text" name="TenSP" value="{{$product->TenSP}}" class="form-control" placeholder="Nhap ten san pham">
                        </div>
                        <div class="form-groud">
                            <strong>Mô tả</strong>
                            <input type="text" name="Mota" value="{{$product->Mota}}" class="form-control" placeholder="Nhap mo ta">
                        </div>
                        <div class="form-groud">
                            <strong>Giá</strong>
                            <input type="text" name="Gia" value="{{$product->Gia}}" class="form-control" placeholder="Nhap gia">
                        </div>
                        <div class="form-groud">
                            <strong>Số lượng</strong>
                            <input type="text" name="Soluong" value="{{$product->Soluong}}" class="form-control" placeholder="Nhap so luong">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-success mt-2">Cập nhật</button>
            </form>
            </div>
        </div>
    </div>
@endsection