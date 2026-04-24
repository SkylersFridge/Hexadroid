.class Lcom/roblox/client/AnimatedExpandableListView$DummyView;
.super Landroid/view/View;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/AnimatedExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyView"
.end annotation


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerHeight:I

.field private dividerWidth:I

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    .line 452
    return-void
.end method


# virtual methods
.method public addFakeView(Landroid/view/View;)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 468
    iget-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method public clearViews()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 489
    iget-object v3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->dividerWidth:I

    iget v5, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->dividerHeight:I

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 491
    iget-object v3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 492
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 493
    iget-object v3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 494
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 495
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 496
    iget-object v3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 497
    iget v3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->dividerHeight:I

    int-to-float v3, v3

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 501
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 473
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 474
    iget-object v3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 475
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 476
    iget-object v3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->views:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 477
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
    .param p2, "dividerWidth"    # I
    .param p3, "dividerHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 455
    iput-object p1, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->divider:Landroid/graphics/drawable/Drawable;

    .line 456
    iput p2, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->dividerWidth:I

    .line 457
    iput p3, p0, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->dividerHeight:I

    .line 459
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 460
    return-void
.end method
