.class Lcom/jirbo/adcolony/ADCCustomVideoView;
.super Landroid/view/SurfaceView;
.source "ADCCustomVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field static final STATE_ERROR:I = -0x1

.field static final STATE_IDLE:I = 0x0

.field static final STATE_PAUSED:I = 0x4

.field static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RESUME:I = 0x7

.field static final STATE_SUSPEND:I = 0x6

.field static final STATE_SUSPEND_UNSUPPORTED:I = 0x8


# instance fields
.field TAG:Ljava/lang/String;

.field fd:Ljava/io/FileDescriptor;

.field focus:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field mCanPause:Z

.field mCanSeekBack:Z

.field mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mCurrentBufferPercentage:I

.field mCurrentState:I

.field mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mMediaController:Landroid/widget/MediaController;

.field mMediaPlayer:Landroid/media/MediaPlayer;

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field mStateWhenSuspended:I

.field mSurfaceHeight:I

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceWidth:I

.field mTargetState:I

.field mUri:Landroid/net/Uri;

.field mVideoHeight:I

.field mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "ADCCustomVideoView"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->TAG:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 81
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 84
    iput-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 85
    iput-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 304
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$1;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 315
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$2;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 365
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$3;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 379
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$4;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$4;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 432
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$5;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$5;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 474
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$6;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 105
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->initVideoView()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->initVideoView()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const-string v0, "ADCCustomVideoView"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->TAG:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 81
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 84
    iput-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 85
    iput-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 304
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$1;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 315
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$2;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 365
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$3;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 379
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$4;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$4;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 432
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$5;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$5;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 474
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$6;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 122
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->initVideoView()V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "focus"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "ADCCustomVideoView"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->TAG:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 81
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 84
    iput-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 85
    iput-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 304
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$1;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 315
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$2;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 365
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$3;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 379
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$4;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$4;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 432
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$5;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$5;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 474
    new-instance v0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView$6;-><init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 111
    iput-boolean p2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->focus:Z

    .line 112
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->initVideoView()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/jirbo/adcolony/ADCCustomVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/jirbo/adcolony/ADCCustomVideoView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/jirbo/adcolony/ADCCustomVideoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/jirbo/adcolony/ADCCustomVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->release(Z)V

    return-void
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 297
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 299
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 302
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 298
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    iput v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    .line 178
    iput v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    .line 179
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 180
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 181
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setFocusable(Z)V

    .line 182
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setFocusableInTouchMode(Z)V

    .line 183
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->focus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->requestFocus()Z

    .line 184
    :cond_0
    iput v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 185
    iput v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 186
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 674
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 232
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->fd:Ljava/io/FileDescriptor;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_2

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    invoke-direct {p0, v6}, Lcom/jirbo/adcolony/ADCCustomVideoView;->release(Z)V

    .line 246
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 247
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 248
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 249
    const/4 v2, -0x1

    iput v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mDuration:I

    .line 250
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 251
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 252
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 253
    const/4 v2, 0x0

    iput v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentBufferPercentage:I

    .line 254
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->activity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 256
    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 257
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 258
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 261
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 265
    const/4 v2, 0x1

    iput v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 266
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    :goto_2
    iput v5, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 271
    iput v5, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 272
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 273
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 255
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 275
    :catch_1
    move-exception v0

    .line 276
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    :goto_3
    iput v5, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 279
    iput v5, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 280
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 281
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 269
    .local v0, "ex":Ljava/io/IOException;
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->TAG:Ljava/lang/String;

    const-string v3, "Unable to open content"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 277
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->TAG:Ljava/lang/String;

    const-string v3, "Unable to open content"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 524
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 526
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 527
    if-eqz p1, :cond_0

    .line 528
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 531
    :cond_0
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method activity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 668
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentBufferPercentage:I

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 636
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mDuration:I

    .line 642
    :goto_0
    return v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mDuration:I

    .line 639
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mDuration:I

    goto :goto_0

    .line 641
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mDuration:I

    .line 642
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 552
    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    const/16 v2, 0x52

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    move v0, v1

    .line 558
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_4

    .line 559
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_3

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->pause()V

    .line 563
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 578
    :goto_1
    return v1

    .line 552
    .end local v0    # "isKeyCodeSupported":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 565
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_2
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->start()V

    .line 566
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 569
    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 570
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 571
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->pause()V

    .line 572
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 578
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 574
    :cond_5
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 128
    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getDefaultSize(II)I

    move-result v1

    .line 129
    .local v1, "width":I
    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getDefaultSize(II)I

    move-result v0

    .line 130
    .local v0, "height":I
    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 131
    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 133
    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setMeasuredDimension(II)V

    .line 145
    return-void

    .line 134
    :cond_1
    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 136
    iget v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->toggleMediaControlsVisiblity()V

    .line 538
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->toggleMediaControlsVisiblity()V

    .line 546
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 598
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 601
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 604
    :cond_0
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 605
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 148
    move v0, p1

    .line 149
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 150
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 152
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 173
    :goto_0
    return v0

    .line 157
    :sswitch_0
    move v0, p1

    .line 158
    goto :goto_0

    .line 165
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    goto :goto_0

    .line 170
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 617
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    if-ne v0, v1, :cond_1

    .line 618
    const/4 v0, 0x7

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    if-ne v0, v1, :cond_2

    .line 622
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 623
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mStateWhenSuspended:I

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 624
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mStateWhenSuspended:I

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    goto :goto_0

    .line 627
    :cond_2
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->openVideo()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSeekWhenPrepared:I

    .line 660
    :goto_0
    return-void

    .line 658
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 291
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->attachMediaController()V

    .line 292
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 459
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 472
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 448
    return-void
.end method

.method public setVideoPath(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->fd:Ljava/io/FileDescriptor;

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSeekWhenPrepared:I

    .line 202
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->openVideo()V

    .line 203
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->requestLayout()V

    .line 204
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->invalidate()V

    .line 205
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 196
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mUri:Landroid/net/Uri;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSeekWhenPrepared:I

    .line 214
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->openVideo()V

    .line 215
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->requestLayout()V

    .line 216
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->invalidate()V

    .line 217
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 590
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 592
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 594
    :cond_0
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 595
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 222
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 224
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 225
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 227
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 608
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 610
    iget v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    iput v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mStateWhenSuspended:I

    .line 611
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 612
    iput v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 614
    :cond_0
    return-void
.end method
