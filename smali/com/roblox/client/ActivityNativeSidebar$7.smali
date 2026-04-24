.class Lcom/roblox/client/ActivityNativeSidebar$7;
.super Ljava/lang/Object;
.source "ActivityNativeSidebar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 188
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeSidebar$7;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 190
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 191
    const-string v0, "roblox_client"

    const-string v1, "TODO: Search"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
