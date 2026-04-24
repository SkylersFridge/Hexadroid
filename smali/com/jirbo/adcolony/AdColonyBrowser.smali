.class public Lcom/jirbo/adcolony/AdColonyBrowser;
.super Landroid/app/Activity;
.source "AdColonyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;,
        Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;,
        Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;
    }
.end annotation


# static fields
.field static enable_back_button:Z

.field static enable_forward_button:Z

.field static finishing:Z

.field static first_draw:Z

.field static is_open:Z

.field static loading:Z

.field static lock:Z

.field static page_loaded:Z

.field static should_recycle:Z

.field public static url:Ljava/lang/String;


# instance fields
.field back_button:Lcom/jirbo/adcolony/ADCImage;

.field back_button_down:Z

.field back_button_enabled:Lcom/jirbo/adcolony/ADCImage;

.field bar_layout:Landroid/widget/RelativeLayout;

.field browser_icon:Lcom/jirbo/adcolony/ADCImage;

.field close_button:Lcom/jirbo/adcolony/ADCImage;

.field close_button_down:Z

.field dm:Landroid/util/DisplayMetrics;

.field forward_button:Lcom/jirbo/adcolony/ADCImage;

.field forward_button_down:Z

.field forward_button_enabled:Lcom/jirbo/adcolony/ADCImage;

.field glow_button:Lcom/jirbo/adcolony/ADCImage;

.field overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

.field pb:Landroid/widget/ProgressBar;

.field reload_button:Lcom/jirbo/adcolony/ADCImage;

.field reload_button_down:Z

.field shadow_overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;

.field stop_button:Lcom/jirbo/adcolony/ADCImage;

.field web_view:Landroid/webkit/WebView;

.field web_view_layout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->lock:Z

    .line 66
    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_back_button:Z

    .line 67
    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_forward_button:Z

    .line 68
    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->loading:Z

    .line 69
    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->page_loaded:Z

    .line 70
    sput-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->first_draw:Z

    .line 71
    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->should_recycle:Z

    .line 72
    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->is_open:Z

    .line 73
    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->finishing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button_down:Z

    .line 55
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button_down:Z

    .line 56
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button_down:Z

    .line 57
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button_down:Z

    .line 370
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "new_config"    # Landroid/content/res/Configuration;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 290
    .local v0, "bar_height_scale":D
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-double v5, v5

    mul-double/2addr v5, v0

    double-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 291
    .local v2, "web_view_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 292
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/AdColonyBrowser;->first_draw:Z

    .line 294
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    .line 295
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/16 v18, 0x1

    sput-boolean v18, Lcom/jirbo/adcolony/AdColonyBrowser;->is_open:Z

    .line 82
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_back_image_normal"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    .line 83
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_stop_image_normal"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    .line 84
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_reload_image_normal"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    .line 85
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_forward_image_normal"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    .line 86
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_close_image_normal"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    .line 87
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_glow_button"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    .line 88
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_icon"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->browser_icon:Lcom/jirbo/adcolony/ADCImage;

    .line 91
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_back_image_normal"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button_enabled:Lcom/jirbo/adcolony/ADCImage;

    .line 92
    new-instance v18, Lcom/jirbo/adcolony/ADCImage;

    const-string v19, "browser_forward_image_normal"

    invoke-static/range {v19 .. v19}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button_enabled:Lcom/jirbo/adcolony/ADCImage;

    .line 95
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 97
    .local v16, "w":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 98
    .local v5, "h":F
    mul-float v18, v16, v16

    mul-float v19, v5, v5

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 99
    .local v12, "size_inches":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 101
    .local v14, "size_pixels":D
    div-double v7, v14, v12

    .line 103
    .local v7, "ppi":D
    const-wide v18, 0x406b800000000000L    # 220.0

    div-double v9, v7, v18

    .line 104
    .local v9, "scale":D
    const-wide v18, 0x3ffccccccccccccdL    # 1.8

    cmpl-double v18, v9, v18

    if-lez v18, :cond_0

    const-wide v9, 0x3ffccccccccccccdL    # 1.8

    .line 107
    :cond_0
    const/16 v18, 0x1

    sput-boolean v18, Lcom/jirbo/adcolony/AdColonyBrowser;->first_draw:Z

    .line 108
    const/16 v18, 0x0

    sput-boolean v18, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_back_button:Z

    .line 109
    const/16 v18, 0x0

    sput-boolean v18, Lcom/jirbo/adcolony/AdColonyBrowser;->enable_forward_button:Z

    .line 110
    const/16 v18, 0x0

    sput-boolean v18, Lcom/jirbo/adcolony/AdColonyBrowser;->finishing:Z

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->stop_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->reload_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->glow_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button_enabled:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->forward_button_enabled:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 122
    new-instance v18, Landroid/widget/ProgressBar;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->pb:Landroid/widget/ProgressBar;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    .line 127
    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const v19, -0x333334

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 130
    sget-boolean v18, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-nez v18, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff8000000000000L    # 1.5

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :goto_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->requestWindowFeature(I)Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/AdColonyBrowser;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x400

    const/16 v20, 0x400

    invoke-virtual/range {v18 .. v20}, Landroid/view/Window;->setFlags(II)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/AdColonyBrowser;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->requestFeature(I)Z

    .line 148
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->setVolumeControlStream(I)V

    .line 151
    new-instance v18, Landroid/webkit/WebView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 159
    sget-boolean v18, Lcom/jirbo/adcolony/AdColonyBrowser;->lock:Z

    if-eqz v18, :cond_1

    .line 161
    sget-boolean v18, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-nez v18, :cond_4

    .line 163
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 165
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->setRequestedOrientation(I)V

    .line 178
    :cond_1
    :goto_1
    const/16 v18, 0x1

    sput-boolean v18, Lcom/jirbo/adcolony/AdColonyBrowser;->lock:Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/jirbo/adcolony/AdColonyBrowser$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser$1;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/jirbo/adcolony/AdColonyBrowser$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser$2;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;)V

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 240
    new-instance v18, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    .line 241
    new-instance v18, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/AdColonyBrowser;->shadow_overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const v19, 0xffffff

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x3039

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 248
    new-instance v17, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    sub-int v19, v19, v20

    invoke-direct/range {v17 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v17, "web_view_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->getId()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .local v11, "shadow_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->getId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 254
    const/16 v18, 0x0

    const/16 v19, -0xa

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->shadow_overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 259
    .local v4, "biggest":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    move-object/from16 v19, v0

    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v21, v4, 0x2

    mul-int/lit8 v22, v4, 0x2

    invoke-direct/range {v20 .. v22}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v20}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    const-wide/high16 v20, 0x3ff8000000000000L    # 1.5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->close_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v6, "loading_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->getId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyBrowser$LoadingView;-><init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->setContentView(Landroid/view/View;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->web_view:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    sget-object v19, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 268
    sget-object v18, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v19, "Viewing "

    invoke-virtual/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v18

    sget-object v19, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 269
    return-void

    .line 136
    .end local v4    # "biggest":I
    .end local v6    # "loading_params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11    # "shadow_params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "web_view_params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->back_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff8000000000000L    # 1.5

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 169
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 174
    :cond_4
    sget v18, Lcom/jirbo/adcolony/ADC;->orientation:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyBrowser;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 258
    .restart local v11    # "shadow_params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "web_view_params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->dm:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->should_recycle:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 303
    .end local v0    # "i":I
    :cond_1
    sput-boolean v3, Lcom/jirbo/adcolony/AdColonyBrowser;->should_recycle:Z

    .line 304
    sput-boolean v3, Lcom/jirbo/adcolony/AdColonyBrowser;->is_open:Z

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 278
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->draw_upstates()V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->first_draw:Z

    .line 284
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser;->overlay:Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyBrowser$ButtonOverlay;->invalidate()V

    .line 285
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "has_focus"    # Z

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 274
    return-void
.end method
