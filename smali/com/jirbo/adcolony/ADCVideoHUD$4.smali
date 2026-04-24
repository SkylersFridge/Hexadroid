.class Lcom/jirbo/adcolony/ADCVideoHUD$4;
.super Landroid/webkit/WebViewClient;
.source "ADCVideoHUD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;->set_up_web_view()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field end_card_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideoHUD;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideoHUD;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 937
    sget-object v0, Lcom/jirbo/adcolony/ADC;->end_card_url:Ljava/lang/String;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->end_card_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 973
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "DEC onLoad: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 974
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->end_card_url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "DEC disabling mouse events"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 979
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    const-string v1, "if (typeof(CN) != \'undefined\' && CN.div) {\n  if (typeof(cn_dispatch_on_touch_begin) != \'undefined\') CN.div.removeEventListener(\'mousedown\',  cn_dispatch_on_touch_begin, true);\n  if (typeof(cn_dispatch_on_touch_end) != \'undefined\')   CN.div.removeEventListener(\'mouseup\',  cn_dispatch_on_touch_end, true);\n  if (typeof(cn_dispatch_on_touch_move) != \'undefined\')  CN.div.removeEventListener(\'mousemove\',  cn_dispatch_on_touch_move, true);\n}\n"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 986
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->end_card_url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->graceful_fail:Z

    .line 1005
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_finished:Z

    .line 1006
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_loading_finish:J

    .line 1007
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-wide v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_loading_finish:J

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-wide v3, v3, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_loading_start:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_time:D

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->loading_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1010
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->end_card_url:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_started:Z

    .line 994
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_loading_start:J

    .line 996
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 942
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "DEC request: "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 945
    const-string v2, "mraid:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->mraid_handler:Lcom/jirbo/adcolony/ADCMRAIDHandler;

    invoke-virtual {v2, p2}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->handleMRAIDCommand(Ljava/lang/String;)V

    .line 965
    :cond_0
    :goto_0
    return v1

    .line 952
    :cond_1
    const-string v2, "youtube"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 956
    .local v0, "youtube_intent":Landroid/content/Intent;
    const-string v2, "VIDEO_ID"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$4;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 960
    .end local v0    # "youtube_intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "mraid.js"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 965
    const/4 v1, 0x0

    goto :goto_0
.end method
