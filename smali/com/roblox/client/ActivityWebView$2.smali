.class Lcom/roblox/client/ActivityWebView$2;
.super Ljava/lang/Object;
.source "ActivityWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityWebView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityWebView;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityWebView;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/roblox/client/ActivityWebView$2;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView$2;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v0}, Lcom/roblox/client/ActivityWebView;->access$500(Lcom/roblox/client/ActivityWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView$2;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v0}, Lcom/roblox/client/Utils;->killBackgroundProcesses(Landroid/content/Context;)V

    .line 298
    :cond_0
    return-void
.end method
