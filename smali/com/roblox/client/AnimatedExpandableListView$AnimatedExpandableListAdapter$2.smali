.class Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;
.super Ljava/lang/Object;
.source "AnimatedExpandableListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

.field final synthetic val$groupPosition:I

.field final synthetic val$info:Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

.field final synthetic val$listView:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;ILandroid/widget/ExpandableListView;Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->this$0:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    iput p2, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->val$groupPosition:I

    iput-object p3, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->val$listView:Landroid/widget/ExpandableListView;

    iput-object p4, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->val$info:Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->this$0:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    iget v1, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->val$groupPosition:I

    invoke-static {v0, v1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$600(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;I)V

    .line 411
    iget-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->val$listView:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->val$groupPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 412
    iget-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->this$0:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-virtual {v0}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->notifyDataSetChanged()V

    .line 413
    iget-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;->val$info:Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    .line 414
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 417
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 420
    return-void
.end method
