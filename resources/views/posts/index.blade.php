@extends('layouts.apps')

@section('content')
    <style>
        #bell1 {
            font-size: x-large !important;
            color: red;
        }

        .badge {
            display: inline-block;
            padding: 0.25em 0.5em;
            font-size: larger;
            font-weight: 900;
            line-height: 2;
            color: #f50000;
            text-align: center;
            /* white-space: nowrap; */
            vertical-align: baseline;
            border-radius: 0.25rem;
        }

        /*Add CSS for notification slide */
  .notification-icon {
        position: relative;
        cursor: pointer;
    }

    .notification-container {
        position: fixed;
        top: 50px;
        right: 10px;
        width: 335px;
        max-height: 300px;
        overflow-y: auto;
        background-color: #6eb4ff;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        display: none;
        padding: 10px;
        z-index: 1000;
    }

    .notification-item {
        margin-bottom: 10px;
    }
</style>
    <link src="https://rawgit.com/sergemazille/reveal-basis/master/dist/reveal-basis.css">

    <div class="container">
        <div class="row">
            <!-- Notification container -->
            <div class="notification-container">
                @foreach (auth()->user()->notifications as $notification)
                    <div class="notification-item">
                        <p>{{ $notification->data['message'] }}<a href="{{ route('notifications.index') }}">View</a> <i class="fa fa-times close-icon" id="closeIcon"></i></p>
                    </div>
                      @break
                @endforeach
                  
            </div>


            <div class="col-lg-12 margin-tb">
                <!-- Add this bell icon to open the notifications index page -->
                <div class="pull-left">
                    <a href="{{ route('notifications.index') }}">
                        <i class="fa fa-bell" id="bell1"></i>
                        @if (auth()->user()->unreadNotifications->count() > 0)
                            <span class="badge badge-danger">{{ auth()->user()->unreadNotifications->count() }}</span>
                        @endif
                    </a>
                </div>
                <div class="pull-left">
                    <h2>Blog Post</h2>
                </div>



                <div class="pull-right">
                    <a class="btn btn-primary" href="{{ route('posts.create') }}"> Create New Post</a>
                </div>
            </div>
        </div>

        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif

        <table class="table table-bordered">
            <tr>
                <th>Image</th>
                <th>Title</th>

                <th>Content</th>
                <th>Action</th>
            </tr>
            @foreach ($post as $item)
                <tr>
                    <td>
                        <div class="product-images">

                            <img src="{{ asset('images/' . $item->image) }}" alt="Image" width="100px" height="100px">

                        </div>
                    </td>

                    <td>{{ $item->title }}</td>
                    <td>{{ strip_tags($item->content) }}</td>


                    <td>
                        <form action="{{ route('posts.destroy', $item->id) }}" method="POST">

                            <a class="btn btn-info" href="{{ route('posts.show', $item->id) }}">Show</a>

                            <a class="btn btn-primary" href="{{ route('posts.edit', $item->id) }}">Edit</a>

                            @csrf
                            @method('DELETE')

                            <button type="submit" class="btn btn-xs btn-danger btn-flat show_confirm" data-toggle="tooltip"
                                title='Delete'>Delete</button>
                        </form>



                    </td>
                </tr>
            @endforeach
        </table>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
    <script></script>
    <script type="text/javascript">
        $('.show_confirm').click(function(event) {
            var form = $(this).closest("form");
            var name = $(this).data("name");
            event.preventDefault();
            swal({
                    title: `Are you sure you want to delete this record?`,
                    text: "If you delete this, it will be gone forever.",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                        form.submit();
                    }
                });
        });
    </script>

    <!-- Add JavaScript for sliding effect -->
<script>
    $(document).ready(function() {
        // Show/hide notification container
        function toggleNotificationContainer() {
            $('.notification-container').slideToggle();
        }

        // Check for unread notifications
        @if (auth()->user()->unreadNotifications->count() > 0)
            // Slide in the notification container automatically
            toggleNotificationContainer();
        @endif

        // Show/hide notification container on icon click
        $('.notification-icon').on('click', function() {
            toggleNotificationContainer();
        });
    });
</script>

<script>
    $(document).ready(function() {
        // Hide the notification container when the close icon is clicked
        $('#closeIcon').click(function() {
            $('.notification-container').hide();
        });
    });
</script>
@endsection
