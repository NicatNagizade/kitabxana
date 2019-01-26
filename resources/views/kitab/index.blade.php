@extends('kitab/app')
@section('content')
<div class="container-fluid">
    <div class="row">
        @include('kitab/inc/solteref')

        <div class="col-7">
            <div class="orta">
                <?php foreach ($kitab as $key): ?>
                    <ul type=none style="float: left;">
                    <a href="/kitabxana/{{$key->id}}" method='GET'><li><img height="200" width="140" src="/images/kitablar/<?php echo $key['sekil'] ?>"></li>
                        <li><b>@php
                         if (mb_strlen($key->ad) >18) {
                            echo substr($key->ad,0,15).'..';
                        } else {
                            echo $key->ad;
                        }
                             @endphp</b></li>
                        <li><?php echo $key['yazar'] ?></li></a>
                    </ul>
                <?php endforeach ?>
            <div style="clear:both;">
                <br>
                {{$kitab->links()}}
            </div>
            </div>
        </div>

        @include('kitab/inc/sagteref')
    </div>
</div>



@endsection