.class Lcom/jirbo/adcolony/ADCCustomVideoView$1;
.super Ljava/lang/Object;
.source "ADCCustomVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 305
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    .line 308
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    .line 309
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v0, v0, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v1, v1, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoWidth:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCCustomVideoView$1;->this$0:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget v2, v2, Lcom/jirbo/adcolony/ADCCustomVideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 312
    :cond_0
    return-void
.end method
