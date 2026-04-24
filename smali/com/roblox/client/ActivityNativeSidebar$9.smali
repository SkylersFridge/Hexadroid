.class Lcom/roblox/client/ActivityNativeSidebar$9;
.super Ljava/lang/Object;
.source "ActivityNativeSidebar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeSidebar;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityNativeSidebar;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeSidebar;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 216
    const-string v1, "roblox_client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMainImageButton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v3, v3, Lcom/roblox/client/ActivityNativeSidebar;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    .line 218
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v1, v1, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    const-string v2, "Opening Webpage."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v1, v1, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f020022

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 220
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v1, v1, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 221
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v1, v1, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 222
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v1, v1, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 224
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    const-class v2, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-virtual {v1, v0}, Lcom/roblox/client/ActivityNativeSidebar;->startActivity(Landroid/content/Intent;)V

    .line 228
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar$9;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-virtual {v1}, Lcom/roblox/client/ActivityNativeSidebar;->finish()V

    .line 230
    return-void
.end method
