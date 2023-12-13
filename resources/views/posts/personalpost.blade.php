 @extends('layouts.apps')
 <style>
     #proimg {
         width: 99%;
         height: 236px;
     }
 </style>
 @section('content')
     <div class="container">

         <div class="row">
             @foreach ($post as $item)
                 <div class="col-md-4 mb-4">

                     <div class="card">
                         <div class="card-body">
                             <h3 class="text-center text-success">My Post</h3>
                             <br />
                             @if ($item->image)
                                 <img src="{{ asset('images/' . $item->image) }}" alt="Profile Image" id="proimg">
                             @endif
                             <h2>Title: {{ $item->title }}</h2>
                             <p>Content:
                                 {{-- {!! $item->content !!} --}}
                                 {{ Str::limit(strip_tags($item->content), 90) }}
                                 
                             </p>
                             <p>Post Created At: {{ \Carbon\Carbon::parse($item->created_at)->format('dS F, Y') }}</p>
                             <hr />
                             <a class="btn btn-primary" href="{{ route('posts.show', $item->id) }}"
                                 role="button">Read More </a>


                         </div>
                     </div>

                 </div>
             @endforeach
         </div>
     </div>
 @endsection
