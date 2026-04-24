.class Lcom/roblox/client/SidebarAdapter$1;
.super Ljava/lang/Object;
.source "SidebarAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/SidebarAdapter;->getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/SidebarAdapter;

.field final synthetic val$item:Lcom/roblox/client/SidebarItem$Detail;


# direct methods
.method constructor <init>(Lcom/roblox/client/SidebarAdapter;Lcom/roblox/client/SidebarItem$Detail;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/roblox/client/SidebarAdapter$1;->this$0:Lcom/roblox/client/SidebarAdapter;

    iput-object p2, p0, Lcom/roblox/client/SidebarAdapter$1;->val$item:Lcom/roblox/client/SidebarItem$Detail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/roblox/client/SidebarAdapter$1;->this$0:Lcom/roblox/client/SidebarAdapter;

    invoke-static {v0}, Lcom/roblox/client/SidebarAdapter;->access$000(Lcom/roblox/client/SidebarAdapter;)Lcom/roblox/client/ActivityNativeSidebar;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/SidebarAdapter$1;->val$item:Lcom/roblox/client/SidebarItem$Detail;

    iget-object v1, v1, Lcom/roblox/client/SidebarItem$Detail;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/roblox/client/ActivityNativeSidebar;->onPageSelected(Ljava/lang/String;)V

    .line 62
    return-void
.end method
