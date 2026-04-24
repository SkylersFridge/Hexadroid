.class Lcom/roblox/client/ActivityNativeSidebar$8;
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
    .line 198
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeSidebar$8;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x3

    .line 201
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$8;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeSidebar;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$8;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeSidebar;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$8;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeSidebar;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0
.end method
