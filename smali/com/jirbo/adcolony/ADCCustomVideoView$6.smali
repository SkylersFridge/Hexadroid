.class Lcom/jirbo/adcolony/ADCCustomVideoView$6;
.super Ljava/lang/Object;
.source "ADCCustomVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 475
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 479
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iput p3, v4, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceWidth:I

    .line 480
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iput p4, v4, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHeight:I

    .line 481
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v4, v4, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 482
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v4, v4, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v4, v4, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 483
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 484
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSeekWhenPrepared:I

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v3, v3, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->seekTo(I)V

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->start()V

    .line 488
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_1

    .line 489
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 492
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 481
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 482
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iput-object p1, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 498
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 501
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->resume()V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-static {v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->access$000(Lcom/jirbo/adcolony/ADCCustomVideoView;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 511
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$6;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->access$100(Lcom/jirbo/adcolony/ADCCustomVideoView;Z)V

    .line 515
    :cond_1
    return-void
.end method
