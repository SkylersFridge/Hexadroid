.class Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;
.super Landroid/view/View;
.source "AdColonyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonOverlay"
.end annotation


# instance fields
.field bounds:Landroid/graphics/Rect;

.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyBrowser;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyBrowser;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    .line 377
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->bounds:Landroid/graphics/Rect;

    .line 373
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->paint:Landroid/graphics/Paint;

    .line 378
    return-void
.end method


# virtual methods
.method public addProgress()V
    .locals 3

    .prologue
    .line 439
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 440
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 441
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 442
    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->first_draw:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 445
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->first_draw:Z

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 452
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public clicked(Lcom/jirbo/adcolony/ADCImage;II)Z
    .locals 2
    .param p1, "image"    # Lcom/jirbo/adcolony/ADCImage;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v0

    iget v1, p1, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v0

    iget v1, p1, Lcom/jirbo/adcolony/ADCImage;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    if-ge p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    if-le p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw_upstates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button_down:Z

    .line 543
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button_down:Z

    .line 544
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button_down:Z

    .line 545
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button_down:Z

    .line 546
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    .line 547
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 383
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 386
    .local v0, "y":I
    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_back_button:Z

    if-nez v1, :cond_4

    .line 388
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 394
    :goto_0
    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_forward_button:Z

    if-nez v1, :cond_5

    .line 396
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 402
    :goto_1
    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->loading:Z

    if-eqz v1, :cond_6

    .line 404
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 410
    :goto_2
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 413
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button_down:Z

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 416
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;)V

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button_down:Z

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 421
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;)V

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button_down:Z

    if-eqz v1, :cond_2

    .line 425
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 426
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;)V

    .line 428
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button_down:Z

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 431
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;)V

    .line 434
    :cond_3
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->addProgress()V

    .line 436
    return-void

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button_enabled:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0

    .line 400
    :cond_5
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button_enabled:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_1

    .line 408
    :cond_6
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 461
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 462
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 465
    .local v2, "y":I
    if-nez v0, :cond_3

    .line 467
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_back_button:Z

    if-eqz v5, :cond_0

    .line 469
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v3, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button_down:Z

    .line 470
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    .line 536
    :goto_0
    return v3

    .line 473
    :cond_0
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_forward_button:Z

    if-eqz v5, :cond_1

    .line 475
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v3, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button_down:Z

    .line 476
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 481
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v3, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button_down:Z

    .line 482
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    goto :goto_0

    .line 485
    :cond_2
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 487
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iput-boolean v3, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button_down:Z

    .line 488
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    goto :goto_0

    .line 494
    :cond_3
    if-ne v0, v3, :cond_9

    .line 496
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_back_button:Z

    if-eqz v5, :cond_4

    .line 498
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->goBack()V

    .line 499
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->draw_upstates()V

    goto :goto_0

    .line 502
    :cond_4
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_forward_button:Z

    if-eqz v5, :cond_5

    .line 504
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->goForward()V

    .line 505
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->draw_upstates()V

    goto :goto_0

    .line 508
    :cond_5
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/jirbo/adcolony/AdColonyBrowser;->loading:Z

    if-eqz v5, :cond_6

    .line 510
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    .line 511
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->draw_upstates()V

    goto/16 :goto_0

    .line 514
    :cond_6
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/jirbo/adcolony/AdColonyBrowser;->loading:Z

    if-nez v5, :cond_7

    .line 516
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->reload()V

    .line 517
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->draw_upstates()V

    goto/16 :goto_0

    .line 520
    :cond_7
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 523
    sput-boolean v3, Lcom/jirbo/adcolony/AdColonyBrowser;->finishing:Z

    .line 524
    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    const-string v6, ""

    const-string v7, "text/html"

    const-string v8, "utf-8"

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sput-boolean v4, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_forward_button:Z

    .line 526
    sput-boolean v4, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_back_button:Z

    .line 527
    sput-boolean v4, Lcom/jirbo/adcolony/AdColonyBrowser;->loading:Z

    .line 528
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->draw_upstates()V

    .line 529
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/AdColonyBrowser;->finish()V

    goto/16 :goto_0

    .line 532
    :cond_8
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->draw_upstates()V

    :cond_9
    move v3, v4

    .line 536
    goto/16 :goto_0
.end method
