.class Lcom/jirbo/adcolony/ADCCustomVideoView$3;
.super Ljava/lang/Object;
.source "ADCCustomVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 366
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 368
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iput v1, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mCurrentState:I

    .line 369
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iput v1, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mTargetState:I

    .line 370
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$3;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 376
    :cond_1
    return-void
.end method
