.class Lcom/roblox/client/ActivityNativeSidebar$5;
.super Ljava/lang/Object;
.source "ActivityNativeSidebar.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    .line 169
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeSidebar$5;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 172
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$5;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeSidebar;->mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

    invoke-virtual {v0, p3}, Lcom/roblox/client/AnimatedExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$5;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeSidebar;->mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

    invoke-virtual {v0, p3}, Lcom/roblox/client/AnimatedExpandableListView;->collapseGroupWithAnimation(I)Z

    .line 177
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$5;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeSidebar;->mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

    invoke-virtual {v0, p3}, Lcom/roblox/client/AnimatedExpandableListView;->expandGroupWithAnimation(I)Z

    goto :goto_0
.end method
