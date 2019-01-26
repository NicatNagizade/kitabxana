@extends('kitab/app')
@section('content')
    
<div class="kitabtap">
<img src="/images/kitablar/{{$kitab->sekil}}" class="kitabtap-sekil">
    <div><a href="<?php echo $kitab['link'] ?>" class="btn btn-success" style="float: right; margin: 8px 8px 0 0">Yüklə</a></div>
    <h1><?php echo $kitab['ad'] ?></h1><br>
    <h2><?php echo $kitab['yazar'] ?></h2><br>
    <h5>Janr : <?php echo $kitab['janr'] ?></h5> <br>
    <h6><?php echo $kitab['haqqinda'] ?></h6>
</div>
@admin('super')
    <a href="/kitabxana/{{$kitab->id}}/edit" class="btn btn-primary">Edit</a><br>
    <a id="delete" onclick="sil()" href = "/kitabxana/delete/{{$kitab->id}}" method = "GET" class="btn btn-danger">Delete</a>
@endadmin

@endsection