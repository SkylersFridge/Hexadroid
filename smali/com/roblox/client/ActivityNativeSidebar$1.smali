.class Lcom/roblox/client/ActivityNativeSidebar$1;
.super Ljava/lang/Object;
.source "ActivityNativeSidebar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 131
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeSidebar$1;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$1;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-static {v0, p2}, Lcom/roblox/client/ActivityNativeSidebar;->access$000(Lcom/roblox/client/ActivityNativeSidebar;Z)V

    .line 135
    return-void
.end method
