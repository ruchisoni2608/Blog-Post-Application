<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
    use HasFactory;
    use SoftDeletes;
  
    protected $dates = ['deleted_at'];
    protected $tabel="posts";
    protected $fillable=['user_id','title','content','image'];
      public function user()
    {   
        return $this->belongsTo(User::class);
    }
//     public function comments()
// {
//     return $this->hasMany(Comment::class);
// }
    public function comments()
    {
        return $this->hasMany(Comment::class)->whereNull('parent_id');
    }
      public function mentions()
    {
        return $this->hasMany(Mention::class);
    }
}
