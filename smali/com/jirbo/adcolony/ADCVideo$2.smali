.class Lcom/jirbo/adcolony/ADCVideo$2;
.super Ljava/lang/Object;
.source "ADCVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideo;->playVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideo;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideo;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo$2;->this$0:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "media_player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$2;->this$0:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo$2;->this$0:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 562
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$2;->this$0:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 563
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    .line 564
    return-void
.end method
