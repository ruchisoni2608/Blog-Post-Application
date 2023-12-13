<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Comment;
use App\Models\Mention;
use App\Models\User;
use App\Notifications\MentionNotification;
use Illuminate\Support\Facades\Log;

class CommentController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'content' => 'required',
        ]);

        $input = $request->all();
        $input['user_id'] = auth()->user()->id;

        // Save the comment
        $comment = Comment::create($input);

        // Extract mentioned users from the comment content
        $mentionedUsers = $this->getMentionedUsers($request->input('content'));

        try {
            // Save mentions in the database
            foreach ($mentionedUsers as $mentionedUser) {
                Mention::create([
                    'user_id' => auth()->id(),
                    'post_id' => $comment->post_id,
                    'comment_id' => $comment->id,
                    'mentioned_user_id' => $mentionedUser->id,
                ]);

            
                Log::info('Before notifying user');
                $mentionedUser->notify(new MentionNotification($comment->post_id, $comment->id, auth()->user()->name));
                Log::info('After notifying user');
            // $mentionedUser->notify(new MentionNotification($comment->post_id, $comment->id, $mentionedUser->name));

            }
         } catch (\Exception $e) {
            // Handle the exception, log it, or display an error message
            Log::error($e->getMessage());
         }

        return back();
    }

    protected function getMentionedUsers($content)
    {
        // Use regular expressions to extract mentioned users from the content
        preg_match_all("/@(\w+)/", $content, $matches);

        // $matches[1] contains the mentioned usernames
        $mentionedUsernames = $matches[1];

        // Retrieve User objects for the mentioned usernames
        $mentionedUsers = User::whereIn('name', $mentionedUsernames)->get();

        return $mentionedUsers;
    }

    public function update(Request $request, $id)
    {
        $comment = Comment::findOrFail($id);

        // Check if the authenticated user is the owner of the comment
        if (auth()->user()->id !== $comment->user_id) {
            return back();
        }

        $request->validate([
            'content' => 'required|string',
        ]);

        $comment->update([
            'content' => $request->input('content'),
        ]);

        return redirect()->back()->with('success', 'Comment updated successfully.');
    }

    public function destroy($id)
    {
        $comment = Comment::findOrFail($id);

        // Check if the authenticated user is the owner of the comment
        if (auth()->user()->id !== $comment->user_id) {
             return back();
        }

        $comment->delete();

        return redirect()->back()->with('success', 'Comment deleted successfully.');
    }
}


