<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;
use App\Models\Comment;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
         $post = Post::orderBy('created_at', 'desc')->get();
        return view('posts.index', compact('post'));
    }
    public function personalpost()
    {
        $userid=Auth::id();
        $post = Post::where('user_id',$userid)->get();
        return view('posts.personalpost', compact('post'));
    }
    
    public function show($id)
    {
        $post = Post::find($id);
        return view('posts.show', ['post' => $post]);
    }
    public function create()
    {
        return view('posts.create');
    }

    public function store(Request $request)
    {
        //dd($request->all());
       $request->validate([
            'title' => 'required',
            'content' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $post = new Post;

        $file_name = time() . '.' . request()->image->getClientOriginalExtension();
        request()->image->move(public_path('images'), $file_name);

        $post->user_id=Auth::id();
        //dd(Auth()->id());
        $post->title = $request->title;
        $post->content = html_entity_decode($request->content);

        $post->image = $file_name;
        $post->save();

        return redirect()->route('posts.index')->with('success', 'Post created successfully.');
    }

    public function edit(Post $post)
    {
        return view('posts.edit', compact('post'));
    }

   public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $post = Post::findOrFail($id);

        // If a new image is provided, update the image
        if ($request->hasFile('image')) {
            $file_name = time() . '.' . request()->image->getClientOriginalExtension();
            request()->image->move(public_path('images'), $file_name);
            $post->image = $file_name;
        }

        $post->title = $request->title;
        //$post->content = $request->content;
        $post->content = html_entity_decode($request->content);

        $post->save();

        return redirect()->route('posts.index')->with('success', 'Post updated successfully.');
    }


   public function destroy($id)
{
    $post = Post::findOrFail($id);

    // Delete the associated image file if it exists
    if (file_exists(public_path('images/' . $post->image))) {
        unlink(public_path('images/' . $post->image));
    }

    $post->delete();

    return redirect()->route('posts.index')->with('success', 'Post deleted successfully.');
}

}
