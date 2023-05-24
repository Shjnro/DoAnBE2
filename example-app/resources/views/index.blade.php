@extends('layout')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-md-6">
                    <h3>Quản Lý Danh Mục</h3>
                </div>
                <div class="col-md-6">
                    <a href="{{route('categories.create')}}" class="btn btn-primary float-end">Thêm mới</a>
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
                        <th>Hình Danh Mục</th>
                        <th>Tên Danh Mục</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($categories as $dm)
                        <tr>
                           <td>{{++$i}}</td>
                           <td>
                            <img src="/image/{{$dm->Hinh}}" alt="" style="width: 150px; height: 100px;">
                            </td>
                           <td>{{$dm->TenDM}}</td>
                           <td>
                            <form action="{{route('categories.destroy', $dm->id)}}" method="POST">
                                
                            <a href="{{route('categories.edit', $dm->id)}}" class="btn btn-info">Sửa</a>
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
        {{$categories->links()}}
    </div>
</div>
    
@endsection