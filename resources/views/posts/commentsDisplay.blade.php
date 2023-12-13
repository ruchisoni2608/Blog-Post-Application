@foreach ($comments as $comment)
    <div id="comment-{{ $comment->id }}" class="display-comment"
        @if ($comment->parent_id != null) style="margin-left:40px;" @endif>
        <strong>{{ $comment->user->name }}</strong>
        <p>{{ $comment->content }}</p>
        @if (auth()->check() && auth()->user()->id === $comment->user_id)
            <!-- Edit button (visible to comment owner) -->
            <a   class="edit-comment" data-comment-id="{{ $comment->id }}">
                <i class="fa fa-edit"></i> Edit
            </a>

            <!-- Delete link (visible to comment owner) -->
            <a href="{{ route('comments.destroy', ['comment' => $comment->id]) }}"
                onclick="event.preventDefault(); if (confirm('Are you sure you want to delete this comment?')) document.getElementById('delete-form-{{ $comment->id }}').submit();">
                <i class="fa fa-trash"></i> Delete
            </a>

            <!-- Delete form (hidden) -->
            <form id="delete-form-{{ $comment->id }}" method="post"
                action="{{ route('comments.destroy', ['comment' => $comment->id]) }}" style="display: none;">
                @csrf
                @method('DELETE')
            </form>

            <!-- Edit form (initially hidden) -->
            <form method="post" action="{{ route('comments.update', ['comment' => $comment->id]) }}" class="edit-form"
                style="display: none;">
                @csrf
                @method('put')
                <div class="form-group">
                    <input type="text" name="content" class="form-control" value="{{ $comment->content }}" />
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Update</button>
                </div>
            </form>
        @endif
        {{-- <a href="" id="reply"></a> --}}
        <form method="post" action="{{ route('comments.store') }}">
            @csrf
            <div class="form-group">
                <input type="text" name="content" class="form-control" />
                <input type="hidden" name="post_id" value="{{ $post_id }}" />
                <input type="hidden" name="parent_id" value="{{ $comment->id }}" />
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-warning" value="Reply" />
            </div>
        </form>
        @include('posts.commentsDisplay', ['comments' => $comment->replies])
    </div>
@endforeach
<script>
    $(document).ready(function() {
        // Toggle the visibility of the edit form
        $('.edit-comment').click(function() {
            var commentId = $(this).data('comment-id');
            $('.edit-form').hide(); // Hide all edit forms
            $('#comment-' + commentId + ' .edit-form')
                .show(); // Show the edit form for the clicked comment
        });
    });
</script>














{{-- <button class="btn btn-primary edit-comment" data-comment-id="{{ $comment->id }}">Edit</button> --}}
<!-- Delete button (visible to comment owner) -->
{{-- <form method="post" action="{{ route('comments.destroy', ['comment' => $comment->id]) }}" class="d-inline">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger">Delete</button>
            </form> --}}
