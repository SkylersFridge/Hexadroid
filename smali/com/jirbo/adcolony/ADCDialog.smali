.class Lcom/jirbo/adcolony/ADCDialog;
.super Landroid/view/View;
.source "ADCDialog.java"


# static fields
.field static amount_line_1:Ljava/lang/String;

.field static amount_line_2:Ljava/lang/String;

.field static one_line:Z

.field static scale:D

.field static text_paint:Landroid/graphics/Paint;

.field static widths:[F


# instance fields
.field ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

.field amount:Ljava/lang/String;

.field button_x1:I

.field button_x2:I

.field button_y:I

.field center_x:I

.field center_y:I

.field dialog_type:I

.field img_bg:Lcom/jirbo/adcolony/ADCImage;

.field img_cancel_down:Lcom/jirbo/adcolony/ADCImage;

.field img_cancel_normal:Lcom/jirbo/adcolony/ADCImage;

.field img_confirm_down:Lcom/jirbo/adcolony/ADCImage;

.field img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

.field img_done_down:Lcom/jirbo/adcolony/ADCImage;

.field img_done_normal:Lcom/jirbo/adcolony/ADCImage;

.field img_logo:Lcom/jirbo/adcolony/ADCImage;

.field left_x:I

.field listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

.field start_ms:J

.field top_y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/jirbo/adcolony/ADCDialog;->amount_line_1:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/jirbo/adcolony/ADCDialog;->amount_line_2:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/jirbo/adcolony/ADCDialog;->one_line:Z

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    .line 41
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/jirbo/adcolony/ADCDialog;->widths:[F

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCDialog;->start_ms:J

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyInterstitialAd;)V
    .locals 4
    .param p1, "amount"    # Ljava/lang/String;
    .param p2, "dialog_type"    # I
    .param p3, "ad"    # Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .prologue
    .line 97
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCDialog;->start_ms:J

    .line 98
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDialog;->amount:Ljava/lang/String;

    .line 99
    iput p2, p0, Lcom/jirbo/adcolony/ADCDialog;->dialog_type:I

    .line 100
    iput-object p3, p0, Lcom/jirbo/adcolony/ADCDialog;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .line 102
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCDialog;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, -0x1

    .line 105
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
.method buttonContains(IIII)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "button_x1"    # I
    .param p4, "button_y1"    # I

    .prologue
    const/4 v0, 0x0

    .line 156
    if-ge p1, p3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    if-lt p2, p4, :cond_0

    .line 158
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v1, p3

    if-ge p1, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->height:I

    add-int/2addr v1, p4

    if-ge p2, v1, :cond_0

    .line 160
    const/4 v0, 0x1

    goto :goto_0
.end method

.method calculatePosition()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    .line 211
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 212
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 213
    .local v2, "w":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 215
    .local v1, "h":I
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/jirbo/adcolony/ADCDialog;->left_x:I

    .line 216
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x50

    iput v3, p0, Lcom/jirbo/adcolony/ADCDialog;->top_y:I

    .line 217
    iget v3, p0, Lcom/jirbo/adcolony/ADCDialog;->left_x:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCDialog;->center_x:I

    .line 218
    iget v3, p0, Lcom/jirbo/adcolony/ADCDialog;->top_y:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCDialog;->center_y:I

    .line 220
    iget v3, p0, Lcom/jirbo/adcolony/ADCDialog;->top_y:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v6, v6, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-double v6, v6

    sget-wide v8, Lcom/jirbo/adcolony/ADCDialog;->scale:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCDialog;->button_y:I

    .line 221
    iget v3, p0, Lcom/jirbo/adcolony/ADCDialog;->left_x:I

    sget-wide v4, Lcom/jirbo/adcolony/ADCDialog;->scale:D

    mul-double/2addr v4, v10

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCDialog;->button_x1:I

    .line 222
    iget v3, p0, Lcom/jirbo/adcolony/ADCDialog;->left_x:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    int-to-double v4, v4

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v6, v6, Lcom/jirbo/adcolony/ADCImage;->width:I

    int-to-double v6, v6

    sget-wide v8, Lcom/jirbo/adcolony/ADCDialog;->scale:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jirbo/adcolony/ADCDialog;->button_x2:I

    .line 223
    return-void
.end method

.method drawButtonText(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 149
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    .line 150
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCDialog;->fontHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    add-int/2addr p3, v0

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jirbo/adcolony/ADCDialog;->drawShadowText(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 152
    return-void
.end method

.method drawEmbossedText(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v0

    .line 127
    .local v0, "w":I
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p2, v1

    .line 129
    sget-object v1, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    const v2, -0xf0f10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    sget-object v3, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    sget-object v1, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    int-to-float v1, p2

    int-to-float v2, p3

    sget-object v3, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method drawShadowText(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, "w":I
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p2, v1

    .line 140
    sget-object v1, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    add-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    sget-object v3, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    sget-object v1, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    int-to-float v1, p2

    int-to-float v2, p3

    sget-object v3, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    return-void
.end method

.method fontHeight()I
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public isReady()Z
    .locals 13

    .prologue
    const-wide v11, 0x4076800000000000L    # 360.0

    const/4 v10, 0x1

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    .line 45
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v5, :cond_0

    .line 77
    :goto_0
    return v10

    .line 47
    :cond_0
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "pre_popup_bg"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    .line 48
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "v4vc_logo"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    .line 49
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "yes_button_normal"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    .line 50
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "yes_button_down"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_down:Lcom/jirbo/adcolony/ADCImage;

    .line 51
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "no_button_normal"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_cancel_normal:Lcom/jirbo/adcolony/ADCImage;

    .line 52
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "no_button_down"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_cancel_down:Lcom/jirbo/adcolony/ADCImage;

    .line 53
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "done_button_normal"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_done_normal:Lcom/jirbo/adcolony/ADCImage;

    .line 54
    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "done_button_down"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_done_down:Lcom/jirbo/adcolony/ADCImage;

    .line 56
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 57
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 58
    .local v4, "w":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 60
    .local v1, "h":I
    if-le v1, v4, :cond_3

    sub-int v5, v1, v4

    int-to-double v5, v5

    div-double v2, v5, v11

    .line 62
    .local v2, "scale":D
    :goto_1
    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    cmpl-double v5, v2, v5

    if-lez v5, :cond_1

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    .line 63
    :cond_1
    const-wide v5, 0x3fe999999999999aL    # 0.8

    cmpg-double v5, v2, v5

    if-gez v5, :cond_2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 64
    :cond_2
    sput-wide v2, Lcom/jirbo/adcolony/ADCDialog;->scale:D

    .line 66
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 67
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_logo:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 68
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_down:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 69
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_cancel_down:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 70
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_confirm_normal:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 71
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_cancel_normal:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 72
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_done_down:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 73
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_done_normal:Lcom/jirbo/adcolony/ADCImage;

    div-double v6, v2, v8

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 74
    sget-object v5, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    mul-double/2addr v6, v2

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    sget-object v5, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    .line 60
    .end local v2    # "scale":D
    :cond_3
    sub-int v5, v4, v1

    int-to-double v5, v5

    div-double v2, v5, v11

    goto :goto_1
.end method

.method splitLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "st"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 167
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v4

    .line 168
    .local v4, "text_width":I
    const-string v5, ""

    sput-object v5, Lcom/jirbo/adcolony/ADCDialog;->amount_line_1:Ljava/lang/String;

    .line 169
    const-string v5, ""

    sput-object v5, Lcom/jirbo/adcolony/ADCDialog;->amount_line_2:Ljava/lang/String;

    .line 170
    const-string v3, ""

    .line 173
    .local v3, "temp_amount":Ljava/lang/String;
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->width:I

    const-string v6, "WW"

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, p2}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_5

    .line 175
    const/4 v2, 0x0

    .local v2, "space":I
    const/4 v1, 0x0

    .line 176
    .local v1, "index":I
    sput-boolean v7, Lcom/jirbo/adcolony/ADCDialog;->one_line:Z

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCDialog;->img_bg:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->width:I

    const-string v6, "WW"

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, p2}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_0

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 179
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCDialog;->textWidthOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 188
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    if-lt v0, v8, :cond_1

    .line 190
    move v2, v0

    .line 191
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/jirbo/adcolony/ADCDialog;->amount_line_1:Ljava/lang/String;

    .line 186
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_1
    if-ge v2, v8, :cond_2

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_3
    sput-object v5, Lcom/jirbo/adcolony/ADCDialog;->amount_line_1:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/jirbo/adcolony/ADCDialog;->amount_line_1:Ljava/lang/String;

    goto :goto_3

    .line 198
    :cond_3
    if-ge v2, v8, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    sput-object v5, Lcom/jirbo/adcolony/ADCDialog;->amount_line_2:Ljava/lang/String;

    .line 207
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "space":I
    :goto_5
    return-void

    .line 198
    .restart local v0    # "i":I
    .restart local v1    # "index":I
    .restart local v2    # "space":I
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 202
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "space":I
    :cond_5
    const/4 v5, 0x1

    sput-boolean v5, Lcom/jirbo/adcolony/ADCDialog;->one_line:Z

    .line 203
    sput-object p1, Lcom/jirbo/adcolony/ADCDialog;->amount_line_1:Ljava/lang/String;

    .line 204
    const-string v5, ""

    sput-object v5, Lcom/jirbo/adcolony/ADCDialog;->amount_line_2:Ljava/lang/String;

    goto :goto_5
.end method

.method textWidthOf(Ljava/lang/String;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v3, Lcom/jirbo/adcolony/ADCDialog;->text_paint:Landroid/graphics/Paint;

    sget-object v4, Lcom/jirbo/adcolony/ADCDialog;->widths:[F

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "w":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 115
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v3, Lcom/jirbo/adcolony/ADCDialog;->widths:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    float-to-int v3, v2

    return v3
.end method
