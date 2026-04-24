.class public Lcom/jirbo/adcolony/AdColonyOverlay;
.super Lcom/jirbo/adcolony/ADCVideo;
.source "AdColonyOverlay.java"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field old_seek:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCVideo;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->bounds:Landroid/graphics/Rect;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->old_seek:I

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "new_config"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v9, 0x11

    .line 31
    invoke-super {p0, p1}, Lcom/jirbo/adcolony/ADCVideo;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 32
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyOverlay;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 33
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_width:I

    .line 34
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_height:I

    .line 35
    const/4 v4, 0x1

    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->layout_changed:Z

    .line 37
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "black":Landroid/view/View;
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    sget-boolean v4, Lcom/jirbo/adcolony/AdColonyOverlay;->video_finished:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->web_layout:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_width:I

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_height:I

    iget-object v8, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget v8, v8, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    sub-int/2addr v7, v8

    invoke-direct {v5, v6, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->layout:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_width:I

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->display_height:I

    invoke-direct {v5, v6, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 44
    .local v2, "h":Landroid/os/Handler;
    new-instance v3, Lcom/jirbo/adcolony/AdColonyOverlay$1;

    invoke-direct {v3, p0, v0}, Lcom/jirbo/adcolony/AdColonyOverlay$1;-><init>(Lcom/jirbo/adcolony/AdColonyOverlay;Landroid/view/View;)V

    .line 51
    .local v3, "r":Ljava/lang/Runnable;
    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .end local v2    # "h":Landroid/os/Handler;
    .end local v3    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyOverlay;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCVideoHUD;->adjust_size()V

    .line 55
    return-void
.end method
