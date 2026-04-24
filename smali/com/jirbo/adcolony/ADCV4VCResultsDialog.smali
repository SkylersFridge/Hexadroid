.class Lcom/jirbo/adcolony/ADCV4VCResultsDialog;
.super Lcom/jirbo/adcolony/ADCDialog;
.source "ADCV4VCResultsDialog.java"


# instance fields
.field done_down:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V
    .locals 4
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCDialog;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 26
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, -0x1

    .line 29
    .local v0, "match_parent":I
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, p0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method calculatePosition()V
    .locals 12

    .prologue
    .line 103
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 104
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 105
    .local v2, "w":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 107
    .local v1, "h":I
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->left_x:I

    .line 108
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x50

    iput v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->top_y:I

    .line 109
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->left_x:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    .line 110
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->top_y:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    .line 112
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->top_y:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_done_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v6, v6, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-double v6, v6

    sget-wide v8, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->scale:D

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_y:I

    .line 113
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_done_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_x1:I

    .line 114
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->calculatePosition()V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 39
    .local v3, "cur_ms":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->start_ms:J

    sub-long v10, v3, v10

    long-to-int v5, v10

    .line 40
    .local v5, "elapsed_ms":I
    mul-int/lit16 v10, v5, 0xff

    div-int/lit16 v2, v10, 0x3e8

    .line 41
    .local v2, "alpha":I
    const/16 v10, 0x80

    if-le v2, v10, :cond_0

    const/16 v2, 0x80

    .line 42
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 44
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->left_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->top_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->fontHeight()I

    move-result v6

    .line 47
    .local v6, "h":I
    mul-int/lit8 v10, v6, 0x3

    div-int/lit8 v9, v10, 0x2

    .line 49
    .local v9, "vspace":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v10}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRemainingViewsUntilReward()I

    move-result v8

    .line 52
    .local v8, "views_to_reward":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v10}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getViewsPerReward()I

    move-result v10

    if-eq v8, v10, :cond_1

    if-nez v8, :cond_4

    .line 54
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount:Ljava/lang/String;

    const-string v11, "video. You earned"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->splitLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-boolean v10, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->one_line:Z

    if-eqz v10, :cond_3

    .line 57
    const-string v10, "Thanks for watching the sponsored"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x4004000000000000L    # 2.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "video. You earned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount_line_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 86
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    iget v12, v12, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    iget v13, v13, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 88
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->done_down:Z

    if-nez v10, :cond_7

    .line 90
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_done_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_x1:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 97
    :goto_1
    const-string v10, "Ok"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_x1:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_y:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 98
    const/16 v10, 0x80

    if-eq v2, v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->invalidate()V

    .line 99
    :cond_2
    return-void

    .line 62
    :cond_3
    const-string v10, "Thanks for watching the sponsored"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4006666666666666L    # 2.8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "video. You earned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount_line_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4000666666666666L    # 2.05

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 64
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount_line_2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 70
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount:Ljava/lang/String;

    const-string v11, "to earn "

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->splitLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v10, 0x1

    if-ne v8, v10, :cond_5

    const-string v7, "video"

    .line 72
    .local v7, "plural_or_not":Ljava/lang/String;
    :goto_2
    sget-boolean v10, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->one_line:Z

    if-eqz v10, :cond_6

    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thank you. Watch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x4004000000000000L    # 2.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "to earn "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount_line_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 71
    .end local v7    # "plural_or_not":Ljava/lang/String;
    :cond_5
    const-string v7, "videos"

    goto :goto_2

    .line 79
    .restart local v7    # "plural_or_not":Ljava/lang/String;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Thank you. Watch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4006666666666666L    # 2.8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "to earn "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount_line_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4000666666666666L    # 2.05

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->amount_line_2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 94
    .end local v7    # "plural_or_not":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->img_done_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_x1:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 120
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 121
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 123
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_x1:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->done_down:Z

    if-eqz v3, :cond_1

    .line 125
    const/4 v3, 0x0

    sput-object v3, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    .line 126
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    sget-object v3, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 129
    sput-boolean v5, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 132
    .end local v0    # "i":I
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->done_down:Z

    .line 133
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->invalidate()V

    .line 135
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 138
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_x1:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->button_y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->done_down:Z

    .line 142
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;->invalidate()V

    .line 145
    :cond_3
    return v5
.end method
