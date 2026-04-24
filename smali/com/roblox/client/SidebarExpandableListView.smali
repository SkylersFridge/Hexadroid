.class public Lcom/roblox/client/SidebarExpandableListView;
.super Lcom/roblox/client/AnimatedExpandableListView;
.source "SidebarExpandableListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/AnimatedExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/roblox/client/AnimatedExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-super {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 28
    invoke-super {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 31
    :cond_0
    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 37
    const/4 v0, 0x1

    return v0
.end method
