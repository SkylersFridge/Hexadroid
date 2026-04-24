.class Lcom/roblox/client/ActivityNativeSidebar$4;
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
    .line 157
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeSidebar$4;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

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
    .line 159
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$4;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/ActivityNativeSidebar;->onExecuteLogin(Landroid/view/View;)V

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
