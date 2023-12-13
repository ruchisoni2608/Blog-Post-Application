 @extends('layouts.apps')


 @section('content')
     <div class="container">
         @if (session('success'))
             <div class="alert alert-success">
                 {{ session('success') }}
             </div>
         @endif
         <form class="card" method="POST" action="{{ route('posts.store') }}" enctype="multipart/form-data">
             @csrf
             <div class="card-header pb-0">
                 <h4 class="card-title mb-0">Crete Post</h4>
                 <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i
                             class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#"
                         data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
             </div>
             <div class="card-body">
                 <div class="row">
                     <div class="col-md-6">
                         <div class="mb-3">
                             <label class="form-label">Title</label>
                             <input class="form-control" type="text" name="title" placeholder="Enter Title" required>
                         </div>
                     </div>

                     <div class="col-md-12">
                         <label for="content">Content:</label>
                         <textarea name="content" id="content" class="form-control ckeditor" rows="5" required></textarea>
                     </div>



                     <div class="col-sm-6 col-md-6">
                         <div class="mb-3">
                             <label class="form-label">Profile Photo</label>
                             <input class="form-control" type="file" name="image" required>                             
                         </div>
                     </div>

                 </div>
             </div>
             <div class="card-footer text-end">
                 <button class="btn btn-primary" type="submit">Update Profile</button>
             </div>
         </form>


     </div>
        <!-- Include CKEditor -->
    <script>
        CKEDITOR.replace('content');
    </script>
 @endsection



