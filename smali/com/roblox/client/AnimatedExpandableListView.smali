.class public Lcom/roblox/client/AnimatedExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/AnimatedExpandableListView$1;,
        Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;,
        Lcom/roblox/client/AnimatedExpandableListView$DummyView;,
        Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;,
        Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x96


# instance fields
.field private adapter:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method static synthetic access$500(Lcom/roblox/client/AnimatedExpandableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/AnimatedExpandableListView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method private getAnimationDuration()I
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x96

    return v0
.end method


# virtual methods
.method public collapseGroupWithAnimation(I)Z
    .locals 10
    .param p1, "groupPos"    # I

    .prologue
    const/4 v9, -0x1

    .line 164
    invoke-static {p1}, Lcom/roblox/client/AnimatedExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/roblox/client/AnimatedExpandableListView;->getFlatListPosition(J)I

    move-result v3

    .line 165
    .local v3, "groupFlatPos":I
    if-eq v3, v9, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v0, v3, v7

    .line 167
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/roblox/client/AnimatedExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 170
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getBottom()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;->collapseGroup(I)Z

    move-result v7

    .line 201
    .end local v0    # "childIndex":I
    .end local v6    # "v":Landroid/view/View;
    :goto_0
    return v7

    .line 180
    .restart local v0    # "childIndex":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;->collapseGroup(I)Z

    move-result v7

    goto :goto_0

    .line 185
    .end local v0    # "childIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/roblox/client/AnimatedExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v4

    .line 186
    .local v4, "packedPos":J
    invoke-static {v4, v5}, Lcom/roblox/client/AnimatedExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    .line 187
    .local v1, "firstChildPos":I
    invoke-static {v4, v5}, Lcom/roblox/client/AnimatedExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 193
    .local v2, "firstGroupPos":I
    if-eq v1, v9, :cond_2

    if-eq v2, p1, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 197
    :cond_3
    iget-object v7, p0, Lcom/roblox/client/AnimatedExpandableListView;->adapter:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-static {v7, p1, v1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$200(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V

    .line 200
    iget-object v7, p0, Lcom/roblox/client/AnimatedExpandableListView;->adapter:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-virtual {v7}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->notifyDataSetChanged()V

    .line 201
    invoke-virtual {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;->isGroupExpanded(I)Z

    move-result v7

    goto :goto_0
.end method

.method public expandGroupWithAnimation(I)Z
    .locals 5
    .param p1, "groupPos"    # I

    .prologue
    .line 134
    invoke-static {p1}, Lcom/roblox/client/AnimatedExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/roblox/client/AnimatedExpandableListView;->getFlatListPosition(J)I

    move-result v1

    .line 135
    .local v1, "groupFlatPos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v0, v1, v3

    .line 137
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Lcom/roblox/client/AnimatedExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView;->getBottom()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;->expandGroup(I)Z

    move-result v3

    .line 154
    .end local v0    # "childIndex":I
    .end local v2    # "v":Landroid/view/View;
    :goto_0
    return v3

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/roblox/client/AnimatedExpandableListView;->adapter:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$100(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;->expandGroup(I)Z

    move-result v3

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 119
    instance-of v0, p1, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    .end local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    iput-object p1, p0, Lcom/roblox/client/AnimatedExpandableListView;->adapter:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    .line 121
    iget-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView;->adapter:Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;

    invoke-static {v0, p0}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->access$000(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;Lcom/roblox/client/AnimatedExpandableListView;)V

    .line 125
    return-void

    .line 123
    .restart local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must implement AnimatedExpandableListAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
