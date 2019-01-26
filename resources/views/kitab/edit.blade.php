@extends('kitab/app')
@section('content') 

<div class="container">
    <form class="contact1-form validate-form" action="/kitabxana/{id}" method="POST" enctype="multipart/form-data">
        {{ csrf_field() }}
        <h1> Məlumatları dəyiş <h1>
        <input type="hidden" name="id" value="{{$kitab->id}}">

        <div class="mb-4">
        <input class="form-control" type="text" name="ad" value="{{$kitab->ad}}">
        </div>
        <div class="mb-4">
            <input class="form-control" type="text" name="yazar" value="{{$kitab->yazar}}">
        </div class="mb-4">
        <div class="mb-4">
            <input class="form-control" type="text" name="janr" value="{{$kitab->janr}}">
        </div>
        <div class="mb-4">
            <input class="form-control" type="text" name="link" value="{{$kitab->link}}">
        </div>
        <div class="mb-4">
            <input class="form-control" type="file" name="sekil" value="{{$kitab->sekil}}">
        </div>
        <div class="mb-4">
            <input class="form-control" type="number" name="reytinq" value="{{$kitab->reytinq}}">
        </div>
        <div class="mb-4">
            <textarea class="form-control" name="haqqinda">{{$kitab->haqqinda}}</textarea>
        </div>

        <div>
            <button class="btn btn-success" type="submit">
                <span>
                    Dəyiş
                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                </span>
            </button>
        </div>
    </form>
</div>
@endsection