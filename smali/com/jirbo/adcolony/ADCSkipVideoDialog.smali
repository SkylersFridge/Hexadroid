.class Lcom/jirbo/adcolony/ADCSkipVideoDialog;
.super Lcom/jirbo/adcolony/ADCDialog;
.source "ADCSkipVideoDialog.java"


# static fields
.field static current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

.field static skip_dialog:Z


# instance fields
.field cancel_down:Z

.field confirm_down:Z

.field video:Lcom/jirbo/adcolony/ADCVideo;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/ADCVideo;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V
    .locals 2
    .param p1, "video"    # Lcom/jirbo/adcolony/ADCVideo;
    .param p2, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCDialog;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    .line 29
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 30
    iget-object v1, p1, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->pause()V

    .line 31
    sput-object p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    .line 32
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v0, -0x1

    .line 37
    .local v0, "match_parent":I
    goto :goto_0
.end method


# virtual methods
.method calculatePosition()V
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4030000000000000L    # 16.0

    .line 157
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget v1, v2, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    .line 158
    .local v1, "w":I
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v2, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    .line 160
    .local v0, "h":I
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int v2, v1, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->left_x:I

    .line 161
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->top_y:I

    .line 162
    iget v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->left_x:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_x:I

    .line 163
    iget v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->top_y:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_y:I

    .line 165
    iget v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->top_y:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-double v5, v5

    sget-wide v7, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->scale:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    .line 167
    iget v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->left_x:I

    sget-wide v3, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->scale:D

    mul-double/2addr v3, v9

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x1:I

    .line 168
    iget v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->left_x:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->width:I

    int-to-double v5, v5

    sget-wide v7, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->scale:D

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x2:I

    .line 169
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 41
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-nez v6, :cond_0

    .line 86
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->skip_dialog:Z

    .line 45
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->calculatePosition()V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 49
    .local v1, "cur_ms":J
    iget-wide v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->start_ms:J

    sub-long v6, v1, v6

    long-to-int v3, v6

    .line 50
    .local v3, "elapsed_ms":I
    mul-int/lit16 v6, v3, 0xff

    div-int/lit16 v0, v6, 0x3e8

    .line 51
    .local v0, "alpha":I
    const/16 v6, 0x80

    if-le v0, v6, :cond_1

    const/16 v0, 0x80

    .line 52
    :cond_1
    invoke-virtual {p1, v0, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 54
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->left_x:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->top_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 56
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->fontHeight()I

    move-result v4

    .line 57
    .local v4, "h":I
    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v5, v6, 0x2

    .line 59
    .local v5, "vspace":I
    const-string v6, "Completion is required to receive"

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_y:I

    int-to-double v8, v8

    int-to-double v10, v5

    const-wide/high16 v12, 0x4006000000000000L    # 2.75

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 60
    const-string v6, "your reward."

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_y:I

    mul-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 61
    const-string v6, "Are you sure you want to skip?"

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_x:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_y:I

    int-to-double v8, v8

    int-to-double v10, v5

    const-wide/high16 v12, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 63
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_x:I

    iget-object v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    iget v8, v8, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->center_y:I

    iget-object v9, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    iget v9, v9, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 65
    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->confirm_down:Z

    if-nez v6, :cond_2

    .line 67
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 74
    :goto_1
    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->cancel_down:Z

    if-nez v6, :cond_3

    .line 76
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_cancel_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x2:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 82
    :goto_2
    const-string v6, "Yes"

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 83
    const-string v6, "No"

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x2:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {p0, v6, v7, v8, p1}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 71
    :cond_2
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_confirm_down:Lcom/jirbo/adcolony/ADCImage;

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x1:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto :goto_1

    .line 80
    :cond_3
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->img_cancel_down:Lcom/jirbo/adcolony/ADCImage;

    iget v7, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x2:I

    iget v8, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {v6, p1, v7, v8}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 90
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v3, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v3, :cond_1

    .line 91
    sput-object v6, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    .line 92
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCVideoHUD;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 96
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 98
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 101
    iget v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x1:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->confirm_down:Z

    if-eqz v3, :cond_4

    .line 103
    sput-object v6, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    .line 104
    sput-boolean v5, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->skip_dialog:Z

    .line 105
    sput-boolean v5, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    .line 106
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 107
    sget-object v3, Lcom/jirbo/adcolony/ADC;->end_card_finished_handler:Lcom/jirbo/adcolony/ADC$EndCardFinished;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->notify_canceled(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 108
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyBrowser;->should_recycle:Z

    .line 109
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 119
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->confirm_down:Z

    .line 120
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->cancel_down:Z

    .line 121
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->invalidate()V

    .line 124
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x1:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->confirm_down:Z

    .line 130
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->invalidate()V

    goto :goto_0

    .line 112
    :cond_4
    iget v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x2:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->cancel_down:Z

    if-eqz v3, :cond_2

    .line 114
    sput-object v6, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    .line 115
    sput-boolean v5, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->skip_dialog:Z

    .line 116
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->start()V

    goto :goto_1

    .line 132
    :cond_5
    iget v3, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_x2:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->button_y:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->cancel_down:Z

    .line 136
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->invalidate()V

    goto :goto_0
.end method
