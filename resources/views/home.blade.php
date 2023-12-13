{{-- @extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Dashboard') }}</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <h1>Welcome, {{ Auth::user()->name }}</h1>
                        {{ __('You are logged in!') }}
                    </div>
                </div>
            </div>
        </div>



    </div>
@endsection --}}
@extends('layouts.apps')

@section('content')

                <div
                    class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2"> User Dashboard</h1>

                </div>
@endsection