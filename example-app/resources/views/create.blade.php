@extends('layout')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <h3>
                            Thêm danh mục
                        </h3>
                    </div>
                    <div class="col-md-6">
                        <a href="{{route('categories.index')}}" class="btn btn-primary float-end">Danh sách danh mục</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <form action="{{route('categories.store')}}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-groud" enctype="multipart/form-data">
                            <strong>Hình</strong>
                            
                            <input type="file" name="Hinh" class="form-control" placeholder="Nhap hinh anh">
                        </div>
                        <div class="form-groud">
                            <strong>Tên danh mục</strong>
                            <input type="text" name="TenDM" class="form-control" placeholder="Nhap ten danh mục">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-success mt-2">Lưu</button>
            </form>
            </div>
        </div>
    </div>
@endsection