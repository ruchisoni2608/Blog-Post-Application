@extends('layouts.adminapp')
<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Include DataTables CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">

<!-- Include DataTables JS -->
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
@section('content')
    <table id="userTable" class="display tabel tabel-responsive" style="width:100%">
        <thead>
            <tr>
                <th>Profile Photo</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Bio</th>
                <th>Registration Date</th>
            </tr>
        </thead>
              @foreach($users as $user)
        <tbody>
  
             <td>{{asset('images/' . $user->image)}}</td>
            <td>{{$user->name }} {{$user->lastname }}</td>
            <td>{{$user->Address}},{{$user->City	}},{{$user->zipcode}}</td>
            <td>{{Str::limit(strip_tags($user->bio), 50)}}</td>
            <td>{{\Carbon\Carbon::parse($user->created_at)->format('dS F, Y') }}</td>       
 
        </tbody>
        @endforeach
    </table>

    <script>
        $(document).ready(function() {
            // Initialize DataTable
           
            new DataTable('#userTable', {
                pagingType: 'full_numbers'
            });
        });
    </script>
@endsection
