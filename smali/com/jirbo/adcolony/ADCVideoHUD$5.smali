.class Lcom/jirbo/adcolony/ADCVideoHUD$5;
.super Ljava/lang/Object;
.source "ADCVideoHUD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;->complete()V
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
    .line 1062
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$5;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$5;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->graceful_fail:Z

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$5;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$5;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$5;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$5;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_timeout:Z

    .line 1070
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$5;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_continue()V

    .line 1073
    :cond_0
    return-void
.end method
