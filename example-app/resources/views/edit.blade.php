@extends('layout')

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6">
                        <h3>
                            Sửa Danh Mục
                        </h3>
                    </div>
                    <div class="col-md-6">
                        <a href="{{route('categories.index')}}" class="btn btn-primary float-end">Danh sách danh mục</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <form action="{{route('categories.update', $categories->id)}}" method="POST">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-groud" enctype="multipart/form-data">
                            <strong>Hình</strong>
                            <img src="/image/{{$categories->Hinh}}" alt="" style="width: 150px; height: 100px;">
                            <input type="file" name="Hinh" value="{{$categories->Hinh}}" class="form-control" placeholder="Nhap hinh anh">
                        </div>
                        <div class="form-groud">
                            <strong>Tên danh mục</strong>
                            <input type="text" name="TenDM" value="{{$categories->TenDM}}" class="form-control" placeholder="Nhap ten danh mục">
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-success mt-2">Cập nhật</button>
            </form>
            </div>
        </div>
    </div>
@endsection