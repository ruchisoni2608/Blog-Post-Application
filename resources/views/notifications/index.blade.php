@extends('layouts.apps')

@section('content')
    <div class="container">
        <h1>Notifications</h1>

        @if(Auth::user()->notifications->isEmpty())
            <p>No notifications</p>
        @else
            <ul>
                @foreach(Auth::user()->notifications as $notification)
                    <li>
                        <strong>{{ $notification->data['message'] }}</strong>
                        <p>{{ $notification->created_at->diffForHumans() }}</p>
                        {{-- <a href="{{ $notification->data['link'] }}">View</a> --}}
                        <a href="{{ $notification->data['link'] }}?comment_id={{ $notification->data['commentId'] }}">View</a>

                    </li>
                @endforeach
            </ul>
        @endif
    </div>
@endsection
 
