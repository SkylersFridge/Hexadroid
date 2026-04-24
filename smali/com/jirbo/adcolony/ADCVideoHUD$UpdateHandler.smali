.class Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;
.super Landroid/os/Handler;
.source "ADCVideoHUD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideoHUD;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideoHUD;

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1394
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->check_back_later()V

    .line 1395
    return-void
.end method


# virtual methods
.method check_back_later()V
    .locals 3

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1400
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->check_back_later()V

    .line 1406
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v0, :cond_0

    .line 1409
    monitor-enter p0

    .line 1411
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->dissolve_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    if-eqz v0, :cond_3

    .line 1413
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->dissolve_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCUtil$Timer;->expired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1415
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->dissolve_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    .line 1416
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 1417
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCCustomVideoView;->stopPlayback()V

    .line 1418
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->endcard_dissolved:Z

    .line 1419
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_continue()V

    .line 1422
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
