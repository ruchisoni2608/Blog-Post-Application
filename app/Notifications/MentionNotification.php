<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Log;

class MentionNotification extends Notification
{
    use Queueable;
    protected $postId;
    protected $commentId;
    protected $mentionedUserName;

    /**
     * Create a new notification instance.
     */
      public function __construct($postId, $commentId, $mentionedUserName)
    {
        $this->postId = $postId;
        $this->commentId = $commentId;
          $this->mentionedUserName = $mentionedUserName;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail', 'database'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        return (new MailMessage)
                    ->line('The introduction to the notification.')
                    ->action('Notification Action', url('/'))
                    ->line('Thank you for using our application!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }

    //   public function toDatabase($notifiable)
    // {
    //     return [
    //         'postId' => $this->postId,
    //         'commentId' => $this->commentId,
    //     ];
    // }
    public function toDatabase($notifiable)
    {
         Log::info('Creating notification in toDatabase method', [
        'postId' => $this->postId,
        'commentId' => $this->commentId,
        'link' => route('posts.show', ['post' => $this->postId,]),
        'mentionedUserName' => $this->mentionedUserName,
    ]);
        return [
        //    'message' => auth()->user()->name . ' mentioned you in a post comment.',
           'message' => $this->mentionedUserName . ' mentioned you in a post comment.',
   
          //  'link' => route('posts.show', ['comment' => $this->commentId]),
           'link' => route('posts.show', ['post' => $this->postId,]),
            'postId' => $this->postId,
            'commentId' => $this->commentId,
        ];
    }

}
   