@extends('layout')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h3>Quản Lý Sản Phẩm</h3>
                </div>
                <div class="col-md-6">
                    <a href="{{route('product.create')}}" class="btn btn-primary float-end">Thêm mới</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            @if(Session::has('thongbao'))
             <div class="alert alert-success">
                {{Session::get('thongbao')}}
             </div>
             @endif
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Hình Sản Phẩm</th>
                        <th>Tên Sản Phẩm</th>
                        <th>Mô tả</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($product as $sp)
                        <tr>
                           <td>{{++$i}}</td>
                           <td>
                            <img src="/image/{{$sp->Hinh}}" alt="" style="width: 150px; height: 100px;">
                            </td>
                           <td>{{$sp->TenSP}}</td>
                           <td>{{$sp->Mota}}</td>
                           <td>{{$sp->Gia}}</td>
                           <td>{{$sp->Soluong}}</td>
                           <td>
                            <form action="{{route('product.destroy', $sp->id)}}" method="POST">
                                
                            <a href="{{route('product.edit', $sp->id)}}" class="btn btn-info">Sửa</a>
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Xóa</button>
                            </form>
                           </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        {{$product->links()}}
    </div>
</div>
    
@endsection