.class Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;
.super Lcom/jirbo/adcolony/ADCDialog;
.source "ADCV4VCConfirmationDialog.java"


# instance fields
.field cancel_down:Z

.field confirm_down:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V
    .locals 4
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCDialog;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 28
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v0, -0x1

    .line 31
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
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->calculatePosition()V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 42
    .local v3, "cur_ms":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->start_ms:J

    sub-long v10, v3, v10

    long-to-int v5, v10

    .line 43
    .local v5, "elapsed_ms":I
    mul-int/lit16 v10, v5, 0xff

    div-int/lit16 v2, v10, 0x3e8

    .line 44
    .local v2, "alpha":I
    const/16 v10, 0x80

    if-le v2, v10, :cond_0

    const/16 v2, 0x80

    .line 45
    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 47
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->left_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->top_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->fontHeight()I

    move-result v6

    .line 50
    .local v6, "h":I
    mul-int/lit8 v10, v6, 0x3

    div-int/lit8 v9, v10, 0x2

    .line 52
    .local v9, "vspace":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v10}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRemainingViewsUntilReward()I

    move-result v8

    .line 55
    .local v8, "views_to_reward":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v10}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getViewsPerReward()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 57
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount:Ljava/lang/String;

    const-string v11, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->splitLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-boolean v10, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->one_line:Z

    if-nez v10, :cond_2

    .line 60
    const-string v10, "Watch a video to earn"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4006666666666666L    # 2.8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 61
    sget-object v10, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount_line_1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4000666666666666L    # 2.05

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount_line_2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 91
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    iget v12, v12, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    iget v13, v13, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 93
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->confirm_down:Z

    if-nez v10, :cond_6

    .line 95
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x1:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 102
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->cancel_down:Z

    if-nez v10, :cond_7

    .line 104
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_cancel_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x2:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 111
    :goto_2
    const-string v10, "Yes"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x1:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 112
    const-string v10, "No"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x2:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 114
    const/16 v10, 0x80

    if-eq v2, v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->invalidate()V

    .line 115
    :cond_1
    return-void

    .line 67
    :cond_2
    const-string v10, "Watch a video to earn"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x4004000000000000L    # 2.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount_line_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 74
    :cond_3
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    const-string v7, "video"

    .line 75
    .local v7, "plural_or_not":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " more "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to earn )?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->splitLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-boolean v10, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->one_line:Z

    if-nez v10, :cond_5

    .line 78
    const-string v10, "Watch a sponsored video now (Only"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4006666666666666L    # 2.8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to earn "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount_line_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x4000666666666666L    # 2.05

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount_line_2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 74
    .end local v7    # "plural_or_not":Ljava/lang/String;
    :cond_4
    const-string v7, "videos"

    goto/16 :goto_3

    .line 85
    .restart local v7    # "plural_or_not":Ljava/lang/String;
    :cond_5
    const-string v10, "Watch a sponsored video now (Only"

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x4004000000000000L    # 2.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 86
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " more "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to earn "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->amount_line_1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_x:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->center_y:I

    int-to-double v12, v12

    int-to-double v14, v9

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 99
    .end local v7    # "plural_or_not":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_confirm_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x1:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_1

    .line 108
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->img_cancel_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x2:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 121
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 122
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 124
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x1:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->confirm_down:Z

    if-eqz v3, :cond_3

    .line 126
    sput-object v7, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    .line 127
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 128
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v3, v5}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->on_dialog_finished(Z)V

    .line 140
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->cancel_down:Z

    .line 141
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->confirm_down:Z

    .line 142
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->invalidate()V

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 148
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x1:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 150
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->confirm_down:Z

    .line 151
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->invalidate()V

    .line 159
    :cond_2
    :goto_1
    return v5

    .line 130
    :cond_3
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x2:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->cancel_down:Z

    if-eqz v3, :cond_0

    .line 132
    sput-object v7, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    .line 133
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-virtual {v3, v6}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->on_dialog_finished(Z)V

    .line 135
    sput-boolean v5, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v3, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    sget-object v3, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 137
    :cond_4
    sget-object v3, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_5
    iget v3, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_x2:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->button_y:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->buttonContains(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->cancel_down:Z

    .line 156
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;->invalidate()V

    goto :goto_1
.end method
