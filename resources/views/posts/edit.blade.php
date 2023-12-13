 @extends('layouts.apps')

 @section('content')
     <div class="container">
         @if (session('success'))
             <div class="alert alert-success">
                 {{ session('success') }}
             </div>
         @endif
         <form class="card" method="POST" action="{{ route('posts.update', $post->id) }}" enctype="multipart/form-data">
             @csrf
             @method('PUT')
             <div class="card-header pb-0">
                 <h4 class="card-title mb-0">Edit Profile</h4>
                 <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i
                             class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#"
                         data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
             </div>
             <div class="card-body">
                 <div class="row">
                     <div class="col-md-6">
                         <div class="mb-3">
                             <label class="form-label">Title</label>
                             <input class="form-control" type="text" name="title" value="{{ $post->title }}">
                         </div>
                     </div>

                     <div class="form-group">
                         <label for="content">Content:</label>
                         <textarea name="content" id="content" class="form-control ckeditor" rows="5" required>{{ $post->content }}</textarea>
                     </div>


                     <div class="col-sm-6 col-md-6">
                         <div class="mb-3">
                             <label class="form-label">Profile Photo</label>
                             <input class="form-control" type="file" name="image">
                             <img src=" {{ asset('images/' . $post->image) }}" width="300px">
                         </div>
                     </div>

                 </div>
             </div>
             <div class="card-footer text-end">
                 <button class="btn btn-primary" type="submit">Update Post</button>
             </div>
         </form>


     </div>
     <script>
         CKEDITOR.replace('content');
     </script>
 @endsection
