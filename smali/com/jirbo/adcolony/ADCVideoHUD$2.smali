.class Lcom/jirbo/adcolony/ADCVideoHUD$2;
.super Landroid/os/Handler;
.source "ADCVideoHUD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideoHUD;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideoHUD;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$2;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$2;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$2;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$2;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->onButton(I)V

    goto :goto_0
.end method
