.class Lcom/jirbo/adcolony/ADCCustomVideoView$2;
.super Ljava/lang/Object;
.source "ADCCustomVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCCustomVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCCustomVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCCustomVideoView;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 317
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    const/4 v2, 0x2

    iput v2, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 319
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iput-boolean v4, v3, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCanSeekForward:Z

    iput-boolean v4, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCanSeekBack:Z

    iput-boolean v4, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCanPause:Z

    .line 321
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    iput v2, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    .line 328
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    iput v2, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    .line 330
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v0, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSeekWhenPrepared:I

    .line 332
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 333
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->seekTo(I)V

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    if-eqz v1, :cond_6

    .line 337
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v3, v3, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 338
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceWidth:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHeight:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    if-ne v1, v2, :cond_3

    .line 342
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    if-ne v1, v5, :cond_4

    .line 343
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->start()V

    .line 344
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 362
    :cond_3
    :goto_0
    return-void

    .line 347
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    .line 348
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 349
    :cond_5
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_3

    .line 351
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 358
    :cond_6
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    if-ne v1, v5, :cond_3

    .line 359
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$2;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->start()V

    goto :goto_0
.end method
