 @extends('layouts.apps')

 @section('content')
     <div class="container">
         @if (session('success'))
             <div class="alert alert-success">
                 {{ session('success') }}
             </div>
         @endif
         <form class="card" method="POST" action="{{ route('profile.update') }}" enctype="multipart/form-data">
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
                             <label class="form-label">First Name</label>
                             <input class="form-control" type="text" name="name" value="{{ $user->name }}" required>
                         </div>
                     </div>
                     <div class="col-sm-6 col-md-6">
                         <div class="mb-3">
                             <label class="form-label">Lastname</label>
                             <input class="form-control" type="text" name="lastname" value="{{ $user->lastname }}" required>
                         </div>
                     </div>


                     <div class="col-md-12">
                         <div class="mb-3">
                             <label class="form-label">Address</label>
                             <input class="form-control" type="text" name="Address" value="{{ $user->Address }}">
                         </div>
                     </div>
                     <div class="col-sm-6 col-md-4">
                         <div class="mb-3">
                             <label class="form-label">Email address</label>
                             <input class="form-control" type="email" name="email" value="{{ $user->email }}">
                         </div>
                     </div>
                     <div class="col-sm-6 col-md-4">
                         <div class="mb-3">
                             <label class="form-label">City</label>
                             <input class="form-control" type="text" name="City" value="{{ $user->City }}">
                         </div>
                     </div>
                     <div class="col-sm-6 col-md-3">
                         <div class="mb-3">
                             <label class="form-label">Postal Code</label>
                             <input class="form-control" type="number" name="zipcode" value="{{ $user->zipcode }}">
                         </div>
                     </div>

                     <div class="col-md-12">
                         <div>
                             <label class="form-label">About Me</label>
                             <textarea class="form-control" rows="5" name="bio" placeholder="Enter About your description">{{ $user->bio }}</textarea>
                         </div>
                     </div>

                     <div class="col-sm-6 col-md-6">
                         <div class="mb-3">
                             <label class="form-label">Profile Photo</label>
                             <input class="form-control" type="file" name="image">
                             <img src=" {{ asset($user->image) }}" width="300px">
                         </div>
                     </div>

                 </div>
             </div>
             <div class="card-footer text-end">
                 <button class="btn btn-primary" type="submit">Update Profile</button>
             </div>
         </form>


     </div>
 @endsection
