.class Lcom/jirbo/adcolony/ADCVideoHUD$7;
.super Ljava/lang/Object;
.source "ADCVideoHUD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;->on_video_finish()V
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
    .line 1193
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$7;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$7;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$7;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setVisibility(I)V

    .line 1197
    :cond_0
    return-void
.end method
