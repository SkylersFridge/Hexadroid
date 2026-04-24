.class Lcom/jirbo/adcolony/ADCVideo$3;
.super Ljava/lang/Object;
.source "ADCVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 567
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo$3;->this$0:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "media_player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo$3;->this$0:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 572
    return-void
.end method
