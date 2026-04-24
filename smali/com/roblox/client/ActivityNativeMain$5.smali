.class Lcom/roblox/client/ActivityNativeMain$5;
.super Ljava/lang/Object;
.source "ActivityNativeMain.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$5;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 257
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    .line 258
    :cond_0
    const-string v1, ""

    .line 260
    .local v1, "t":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 264
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$5;->this$0:Lcom/roblox/client/ActivityNativeMain;

    const-class v3, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "roblox_url"

    invoke-static {v1}, Lcom/roblox/client/RobloxSettings;->searchGamesUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v2, "roblox_back_activity"

    const-string v3, "ActivityNativeMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$5;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v2, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 268
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$5;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v2}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 270
    const/4 v2, 0x1

    .line 272
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "t":Ljava/lang/String;
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 261
    .restart local v1    # "t":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
