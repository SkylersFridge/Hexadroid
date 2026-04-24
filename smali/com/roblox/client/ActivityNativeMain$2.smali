.class Lcom/roblox/client/ActivityNativeMain$2;
.super Ljava/lang/Object;
.source "ActivityNativeMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 205
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$2;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$2;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v1, v1, Lcom/roblox/client/ActivityNativeMain;->mPlaceIdDebugEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$2;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v1, v1, Lcom/roblox/client/ActivityNativeMain;->mPlaceIdDebugEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$2;->this$0:Lcom/roblox/client/ActivityNativeMain;

    const-class v2, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "roblox_placeid"

    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$2;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v2, v2, Lcom/roblox/client/ActivityNativeMain;->mPlaceIdDebugEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "forceLaunchDebug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$2;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v1, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 215
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$2;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v1}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 217
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
