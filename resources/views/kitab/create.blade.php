@extends('kitab/app')
@section('content')
    
<div class="container">
    <form class="mb-1" action="/kitabxana" method="POST" enctype="multipart/form-data">
        {{ csrf_field() }} 
        <h1> Kitab yuklə <h1>

        <div class="mb-4">
            <input class="form-control" type="text" name="ad" placeholder="Kitab adı">
        </div>
        <div class="mb-4">
            <input class="form-control" type="text" name="yazar" placeholder="Yazar">
        </div class="mb-4">
        <div class="mb-4">
            <input class="form-control" type="text" name="janr" placeholder="Janr">
        </div>
        <div class="mb-4">
            <input class="form-control" type="text" name="link" placeholder="Link">
        </div>
        <div class="mb-4">
            <input class="form-control" type="file" name="sekil" placeholder="sekil">
        </div>
        <div class="mb-4">
            <input class="form-control" type="number" name="reytinq" placeholder="Reytinq">
        </div>
        <div class="mb-4">
            <textarea class="form-control" name="haqqinda" placeholder="Kitab haqqında"></textarea>
        </div>

        <div>
            <button class="btn btn-success" type="submit">
                <span>
                    Yaz
                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                </span>
            </button>
        </div>
    </form>
</div>
@endsection