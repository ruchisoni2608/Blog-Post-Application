@extends('layouts.apps')
<style>
    #proimg {
        width: 48%;
        height: 321px;
    }
</style>
@section('content')
    <div class="container">

        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        <div class="card-header pb-0">
            <h4 class="card-title mb-0">My Profile</h4>
            <a href="{{ route('profile.edit') }}" class="edit-comment">
                <i class="fa fa-edit"></i> Edit
            </a>

        </div>
        <div class="card" style="width:62rem;">

            @if ($user->image)
                <img src="{{ asset($user->image) }}" alt="Profile Image" id="proimg">
            @endif
            <div class="card-body">
                <h5 class="card-title">Name: {{ $user->name }} {{ $user->lastname }}</h5>
                <h6 class="card-subtitle mb-2 text-muted ">Address :{{ $user->Address }}</h6>
                <h6 class="card-subtitle mb-2 text-muted ">Email:{{ $user->email }}</h6>
                <h6 class="card-subtitle mb-2 text-muted ">About Me:</h6>
                <p class="card-text">{{ $user->bio }}</p>

            </div>
        </div>
    </div>
@endsection
