@extends('layouts.apps')
<style>
    #proimg {
        width: 100%;
        height: 321px;
    }

    /*#commentList {
        display: none;
    }*/
    .highlight {
        border: yellow solid;
        padding: 10px;
    }
</style>
@section('content')
    {{-- <div class="container">

        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        <div class="card-header pb-0">
            <h4 class="card-title mb-0">My Post</h4>

            <div class="col-lg-12 margin-tb">

                <div class="pull-right">
                    <a class="btn btn-primary" href="{{ route('posts.index') }}"> Back</a>
                </div>
            </div>

            <div class="card-options"><a class="card-options-collapse" href="#" data-bs-toggle="card-collapse"><i
                        class="fe fe-chevron-up"></i></a><a class="card-options-remove" href="#"
                    data-bs-toggle="card-remove"><i class="fe fe-x"></i></a></div>
        </div>
        <div class="card" style="width:62rem;">

            @if ($post->image)
                <img src="{{ asset('images/' . $post->image) }}" width="50%" alt="Profile Image" id="proimg">
            @endif
            <div class="card-body">
                <h5 class="card-title">Title: {{ $post->title }}</h5>
                <h6 class="card-subtitle mb-2 text-muted "> Post Contnet :</h6>
                <p class="card-text">{!! $post->content !!}</p>
                <p>Post Created At: {{ \Carbon\Carbon::parse($post->created_at)->format('dS F, Y') }}</p>
            </div>
        </div>
        <div class="row">
            <!-- Display comments -->
          

         
        </div>

    </div> --}}
    <div class="container">
    @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        <div class="col-lg-12 margin-tb">

            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('posts.index') }}"> Back</a>
            </div>
        </div>
        @if ($post)
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h3 class="text-center text-success">My Post</h3>
                        <br />
                        @if ($post->image)
                            <img src="{{ asset('images/' . $post->image) }}" width="50%" alt="Profile Image"
                                id="proimg">
                                                    @endif
                        <h2>Title: {{ $post->title }}</h2>
                        <p>
                            {!! $post->content !!}
                        </p>
                        <p>Post Created At: {{ \Carbon\Carbon::parse($post->created_at)->format('dS F, Y') }}</p>
                        <hr />
                        <h4>Display Comments</h4>

                        @include('posts.commentsDisplay', [
                            'comments' => $post->comments,
                            'post_id' => $post->id,
                        ])

                        <hr />
                        <h4>Add comment</h4>
                        <form method="post" action="{{ route('comments.store') }}">
                            @csrf
                            <div class="form-group">
                                <textarea class="form-control" name="content"></textarea>
                                <input type="hidden" name="post_id" value="{{ $post->id }}" />
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-success" value="Add Comment" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
            @else
            <div class="alert alert-danger">
                This post does not exist or has been deleted.
            </div>
              <div class="col-lg-12 margin-tb">

            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('posts.index') }}"> Back</a>
            </div>
        </div>
        @endif

    </div>
    @if (request()->has('comment_id'))
        <script>
            $(document).ready(function() {
                // Scroll to or highlight the comment
                var commentId = '{{ request()->get('comment_id') }}';
                var commentElement = $('#comment-' + commentId);

                if (commentElement.length > 0) {
                    // Scroll to the comment
                    $('html, body').animate({
                        scrollTop: commentElement.offset().top - 100 // Adjust the offset as needed
                    }, 1000); // Adjust the duration as needed

                    // Highlight the comment (optional)
                    commentElement.addClass('highlight'); // Add a CSS class for highlighting

                    // Remove the highlight class after 10 seconds
                    setTimeout(function() {
                        commentElement.removeClass('highlight');
                    }, 10000); // 10000 milliseconds = 10 seconds
                }
            });
        </script>
    @endif
@endsection
