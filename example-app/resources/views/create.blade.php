@extends('layout')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <h3>
                            Thêm sản phẩm
                        </h3>
                    </div>
                    <div class="col-md-6">
                        <a href="{{route('product.index')}}" class="btn btn-primary float-end">Danh sách sản phẩm</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <form action="{{route('product.store')}}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-groud" enctype="multipart/form-data">
                            <strong>Hình</strong>
                            
                            <input type="file" name="Hinh" class="form-control" placeholder="Nhap hinh anh">
                        </div>
                        <div class="form-groud">
                            <strong>Tên sản phẩm</strong>
                            <input type="text" name="TenSP" class="form-control" placeholder="Nhap ten san pham">
                        </div>
                        <div class="form-groud">
                            <strong>Mô tả</strong>
                            <input type="text" name="Mota" class="form-control" placeholder="Nhap mo ta">
                        </div>
                        <div class="form-groud">
                            <strong>Giá</strong>
                            <input type="text" name="Gia" class="form-control" placeholder="Nhap gia">
                        </div>
                        <div class="form-groud">
                            <strong>Số lượng</strong>
                            <input type="text" name="Soluong" class="form-control" placeholder="Nhap so luong">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-success mt-2">Lưu</button>
            </form>
            </div>
        </div>
    </div>
@endsection