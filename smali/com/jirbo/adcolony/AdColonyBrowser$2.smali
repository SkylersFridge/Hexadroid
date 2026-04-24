.class Lcom/jirbo/adcolony/AdColonyBrowser$2;
.super Landroid/webkit/WebViewClient;
.source "AdColonyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyBrowser;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyBrowser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyBrowser;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 226
    sget-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->finishing:Z

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->page_loaded:Z

    .line 229
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->loading:Z

    .line 230
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_back_button:Z

    .line 233
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_forward_button:Z

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    .line 236
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 211
    sget-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->finishing:Z

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->loading:Z

    .line 214
    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->page_loaded:Z

    .line 215
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    .line 218
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failing_url"    # Ljava/lang/String;

    .prologue
    .line 221
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Error viewing URL: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 222
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$2;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyBrowser;->finish()V

    .line 223
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "amzn://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    .local v0, "store_intent":Landroid/content/Intent;
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    .line 203
    :cond_1
    const/4 v1, 0x1

    .line 205
    .end local v0    # "store_intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
