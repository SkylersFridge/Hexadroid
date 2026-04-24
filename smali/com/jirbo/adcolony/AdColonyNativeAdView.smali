.class public Lcom/jirbo/adcolony/AdColonyNativeAdView;
.super Landroid/widget/FrameLayout;
.source "AdColonyNativeAdView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;,
        Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;
    }
.end annotation


# instance fields
.field actual_user_mute:Z

.field ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

.field ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

.field advertiser_name:Ljava/lang/String;

.field advertiser_text:Landroid/widget/TextView;

.field context:Landroid/app/Activity;

.field current_button_color:I

.field current_button_text_color:I

.field current_volume_bitmap:Landroid/graphics/Bitmap;

.field description:Ljava/lang/String;

.field dpi:F

.field engagement_button:Landroid/widget/Button;

.field engagement_command:Ljava/lang/String;

.field engagement_enabled:Z

.field engagement_text:Ljava/lang/String;

.field engagement_type:Ljava/lang/String;

.field finished:Z

.field first_ensure:Z

.field first_initialize:Z

.field global_texture:Landroid/graphics/SurfaceTexture;

.field height:I

.field infile:Ljava/io/FileInputStream;

.field initialized:Z

.field is_private:Z

.field list_view:Z

.field listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

.field manually_paused:Z

.field mp:Landroid/media/MediaPlayer;

.field mute_enabled:Z

.field mute_filepath:Ljava/lang/String;

.field mute_listener:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

.field original_height:I

.field original_width:I

.field parent_view:Landroid/view/ViewGroup;

.field paused:Z

.field played:Z

.field playing:Z

.field poster_image_filepath:Ljava/lang/String;

.field pub_defined_volume:F

.field replay:Z

.field s:Landroid/view/Surface;

.field screen_width:I

.field seek_to_ms:I

.field set_volume:F

.field skip_interval:Z

.field sponsor_text:Landroid/widget/TextView;

.field static_image:Lcom/jirbo/adcolony/ADCImage;

.field static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

.field surface_ready:Z

.field texture_view:Landroid/view/View;

.field thumb_image:Lcom/jirbo/adcolony/ADCImage;

.field thumb_image_filepath:Ljava/lang/String;

.field thumb_image_view:Landroid/widget/ImageView;

.field title:Ljava/lang/String;

.field title_text:Landroid/widget/TextView;

.field unmute_filepath:Ljava/lang/String;

.field user_mute:Z

.field video_filepath:Ljava/lang/String;

.field video_player_height:I

.field video_player_width:I

.field volume:Z

.field volume_button:Landroid/widget/ImageView;

.field volume_button_added:Z

.field volume_button_down:Lcom/jirbo/adcolony/ADCImage;

.field volume_button_enabled:Z

.field volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

.field width:I

.field zone_id:Ljava/lang/String;

.field zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

.field zone_is_native:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x1000000

    const/high16 v6, 0x3e800000    # 0.25f

    const/4 v5, 0x1

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->first_initialize:Z

    .line 76
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_enabled:Z

    .line 96
    iput-boolean v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    .line 98
    const-string v4, ""

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_text:Ljava/lang/String;

    .line 99
    const-string v4, ""

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_command:Ljava/lang/String;

    .line 100
    const-string v4, ""

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_type:Ljava/lang/String;

    .line 118
    const v4, -0x333334

    iput v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_color:I

    .line 119
    iput v7, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_text_color:I

    .line 125
    iput v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->set_volume:F

    .line 126
    iput v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    .line 137
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->ensure_configured()V

    .line 138
    sget-object v4, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sput v8, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 141
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->context:Landroid/app/Activity;

    .line 142
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_id:Ljava/lang/String;

    .line 143
    iput p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    .line 145
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    .line 147
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->dpi:F

    .line 150
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    .local v0, "display":Landroid/view/Display;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 154
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 155
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 156
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 157
    .local v2, "temp_w":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 165
    .end local v1    # "size":Landroid/graphics/Point;
    .local v3, "temp_y":I
    :goto_0
    if-ge v2, v3, :cond_1

    .end local v2    # "temp_w":I
    :goto_1
    iput v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->screen_width:I

    .line 167
    new-instance v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-direct {v4, p2}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .line 169
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v5, "native"

    iput-object v5, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 170
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v5, "native"

    iput-object v5, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 171
    sget-object v4, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v4, p2, v5}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_request(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 173
    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setBackgroundColor(I)V

    .line 174
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->initialize()V

    .line 175
    return-void

    .line 161
    .end local v3    # "temp_y":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 162
    .restart local v2    # "temp_w":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .restart local v3    # "temp_y":I
    goto :goto_0

    :cond_1
    move v2, v3

    .line 165
    goto :goto_1
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zone_id"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "is_private"    # Z

    .prologue
    const/high16 v7, -0x1000000

    const/high16 v6, 0x3e800000    # 0.25f

    const/4 v5, 0x1

    .line 179
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->first_initialize:Z

    .line 76
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_enabled:Z

    .line 96
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    .line 98
    const-string v4, ""

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_text:Ljava/lang/String;

    .line 99
    const-string v4, ""

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_command:Ljava/lang/String;

    .line 100
    const-string v4, ""

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_type:Ljava/lang/String;

    .line 118
    const v4, -0x333334

    iput v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_color:I

    .line 119
    iput v7, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_text_color:I

    .line 125
    iput v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->set_volume:F

    .line 126
    iput v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    .line 180
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->ensure_configured()V

    .line 183
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->context:Landroid/app/Activity;

    .line 184
    iput-object p2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_id:Ljava/lang/String;

    .line 185
    iput p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    .line 186
    iput-boolean p4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->is_private:Z

    .line 188
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    .line 190
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->dpi:F

    .line 193
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 195
    .local v0, "display":Landroid/view/Display;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 197
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 198
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 199
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 200
    .local v2, "temp_w":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 208
    .end local v1    # "size":Landroid/graphics/Point;
    .local v3, "temp_y":I
    :goto_0
    if-ge v2, v3, :cond_1

    .end local v2    # "temp_w":I
    :goto_1
    iput v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->screen_width:I

    .line 210
    new-instance v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-direct {v4, p2}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .line 212
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v5, "native"

    iput-object v5, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 213
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v5, "native"

    iput-object v5, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 216
    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setBackgroundColor(I)V

    .line 217
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->initialize()V

    .line 218
    return-void

    .line 204
    .end local v3    # "temp_y":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 205
    .restart local v2    # "temp_w":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .restart local v3    # "temp_y":I
    goto :goto_0

    :cond_1
    move v2, v3

    .line 208
    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 484
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "[ADC] Native Ad Destroy called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 485
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 487
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    .line 488
    sget-object v0, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method public getAdvertiserImage()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 496
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_filepath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    .line 499
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->dpi:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->resize(DZ)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_view:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 504
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_view:Landroid/widget/ImageView;

    .line 505
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->advertiser_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdHeight()I
    .locals 2

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    div-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    goto :goto_0
.end method

.method public getNativeAdWidth()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->title:Ljava/lang/String;

    return-object v0
.end method

.method initialize()V
    .locals 15

    .prologue
    const/high16 v14, 0x40000000    # 2.0f

    const/16 v13, 0xe

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 225
    iput-boolean v10, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    .line 226
    iput-boolean v10, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->initialized:Z

    .line 227
    invoke-virtual {p0, v10}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setWillNotDraw(Z)V

    .line 229
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-object p0, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->native_ad:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 231
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->first_initialize:Z

    if-eqz v3, :cond_e

    .line 233
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v3, v4, v11, v10}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;ZZ)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_video_ad(Ljava/lang/String;)V

    .line 236
    :goto_0
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v3, v11}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->set_up_info(Z)Z

    .line 237
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    .line 241
    const-string v3, "video_filepath"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->video_filepath:Ljava/lang/String;

    .line 242
    const-string v3, "advertiser_name"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->advertiser_name:Ljava/lang/String;

    .line 243
    const-string v3, "description"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->description:Ljava/lang/String;

    .line 244
    const-string v3, "title"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->title:Ljava/lang/String;

    .line 245
    const-string v3, "poster_image"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->poster_image_filepath:Ljava/lang/String;

    .line 246
    const-string v3, "unmute"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->unmute_filepath:Ljava/lang/String;

    .line 247
    const-string v3, "mute"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_filepath:Ljava/lang/String;

    .line 248
    const-string v3, "thumb_image"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_filepath:Ljava/lang/String;

    .line 249
    const-string v3, "native_engagement_enabled"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_Logical(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    .line 250
    const-string v3, "native_engagement_label"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_text:Ljava/lang/String;

    .line 251
    const-string v3, "native_engagement_command"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_command:Ljava/lang/String;

    .line 252
    const-string v3, "native_engagement_type"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_type:Ljava/lang/String;

    .line 253
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute_enabled:Z

    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_enabled:Z

    .line 255
    :goto_1
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCManifest$Zone;->advance_play_index()V

    .line 256
    :cond_0
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->enabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    if-nez v3, :cond_5

    .line 258
    :cond_1
    const/16 v3, 0xd

    sput v3, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 380
    :cond_2
    :goto_2
    return-void

    .line 234
    :cond_3
    iput-boolean v11, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    goto/16 :goto_0

    .line 254
    :cond_4
    iput-boolean v11, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_enabled:Z

    goto :goto_1

    .line 261
    :cond_5
    iput-boolean v11, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_is_native:Z

    .line 262
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->is_private:Z

    if-nez v3, :cond_2

    .line 264
    iput-boolean v10, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->first_initialize:Z

    .line 270
    :cond_6
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    iget v3, v3, Lcom/jirbo/adcolony/ADCManifest$Video;->width:I

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->original_width:I

    .line 271
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    iget v3, v3, Lcom/jirbo/adcolony/ADCManifest$Video;->height:I

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->original_height:I

    .line 272
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->original_height:I

    int-to-double v3, v3

    iget v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    int-to-double v5, v5

    iget v7, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->original_width:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    .line 273
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    if-eqz v3, :cond_7

    .line 275
    new-instance v3, Landroid/widget/Button;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    .line 276
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 278
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    iget v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    int-to-double v6, v6

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->screen_width:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 279
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 280
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_color:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 281
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_text_color:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 282
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    new-instance v4, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    :cond_7
    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->poster_image_filepath:Ljava/lang/String;

    invoke-direct {v3, v4, v11, v10}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    .line 323
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float v3, v12, v3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    div-float v4, v12, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float v1, v12, v3

    .line 325
    .local v1, "static_scale":F
    :goto_3
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5, v11}, Lcom/jirbo/adcolony/ADCImage;->resize(DZ)V

    .line 326
    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->unmute_filepath:Ljava/lang/String;

    invoke-direct {v3, v4, v11, v10}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    .line 327
    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_filepath:Ljava/lang/String;

    invoke-direct {v3, v4, v11, v10}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    .line 328
    new-instance v3, Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_filepath:Ljava/lang/String;

    invoke-direct {v3, v4, v11, v10}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;ZZ)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    .line 329
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    int-to-float v4, v4

    iget v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4016000000000000L    # 5.5

    div-double/2addr v6, v8

    iget v8, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    int-to-float v8, v8

    float-to-double v8, v8

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v4, v4

    div-float v4, v12, v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5, v11}, Lcom/jirbo/adcolony/ADCImage;->resize(DZ)V

    .line 330
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->dpi:F

    div-float/2addr v4, v14

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5, v11}, Lcom/jirbo/adcolony/ADCImage;->resize(DZ)V

    .line 331
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->dpi:F

    div-float/2addr v4, v14

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5, v11}, Lcom/jirbo/adcolony/ADCImage;->resize(DZ)V

    .line 333
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_8

    new-instance v3, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    iget-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    invoke-direct {v3, p0, v4, v5}, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->texture_view:Landroid/view/View;

    .line 334
    :cond_8
    new-instance v3, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    .line 335
    new-instance v3, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_view:Landroid/widget/ImageView;

    .line 336
    new-instance v3, Landroid/widget/ImageView;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    .line 337
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image_view:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->thumb_image:Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 339
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    :goto_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    const/16 v5, 0x30

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 342
    .local v2, "volume_params":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v10, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 343
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    new-instance v4, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    .line 366
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :cond_9
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    :cond_a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_b

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->texture_view:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    iget v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v13, :cond_c

    iput-boolean v11, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 373
    :cond_c
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    iget v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_enabled:Z

    if-eqz v3, :cond_d

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_d

    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_enabled:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :cond_d
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    if-eqz v3, :cond_2

    .line 377
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    div-int/lit8 v4, v4, 0x5

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 378
    .local v0, "button_params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    invoke-virtual {p0, v3, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 266
    .end local v0    # "button_params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "static_scale":F
    .end local v2    # "volume_params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v13, :cond_6

    goto/16 :goto_2

    .line 323
    :cond_f
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float v1, v12, v3

    goto/16 :goto_3

    .line 340
    .restart local v1    # "static_scale":F
    :cond_10
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 387
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->isReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_is_native:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->skip_interval:Z

    if-nez v1, :cond_0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReady(Z)Z
    .locals 2
    .param p1, "is_private"    # Z

    .prologue
    const/4 v0, 0x1

    .line 392
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->isReady(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 583
    if-eqz p1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 586
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 592
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public notifyAddedToListView()V
    .locals 4

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->first_ensure:Z

    if-nez v0, :cond_0

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->first_ensure:Z

    .line 827
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->texture_view:Landroid/view/View;

    check-cast v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->global_texture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->video_player_width:I

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->video_player_height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 684
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    invoke-virtual {v1, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 685
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 687
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 688
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v5, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->is_native:Z

    .line 689
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 690
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 691
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    .line 692
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v4, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->global_seek_to_ms:I

    .line 693
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 694
    .local v0, "table":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v1, "ad_slot"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v2, v2, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 695
    const-string v1, "replay"

    invoke-virtual {v0, v1, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 696
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 697
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    invoke-interface {v1, v4, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdFinished(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 698
    :cond_0
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->replay:Z

    .line 699
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 723
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->parent_view:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 727
    .local v1, "visible_bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->parent_view:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->parent_view:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 729
    :cond_2
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->seek_to_ms:I

    .line 730
    :cond_3
    iget v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->seek_to_ms:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->seek_to_ms:I

    iput v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->global_seek_to_ms:I

    .line 732
    :cond_4
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 734
    .local v0, "is_visible":Z
    if-nez v0, :cond_5

    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->list_view:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->list_view:Z

    if-eqz v2, :cond_8

    if-eqz v0, :cond_6

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 735
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_8

    .line 737
    :cond_6
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    if-nez v2, :cond_7

    .line 739
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "[ADC] Scroll Pause"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 740
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v3, "video_paused"

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 741
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 742
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    invoke-virtual {v2, v5}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 762
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->paused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->invalidate()V

    goto/16 :goto_0

    .line 745
    :cond_8
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 747
    iget-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    if-nez v2, :cond_9

    .line 749
    invoke-virtual {p1, v4, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_1

    .line 753
    :cond_9
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v3, "native"

    iput-object v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 754
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v3, "native"

    iput-object v3, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 755
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-double v3, v3

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v2, v3, v4, v5}, Lcom/jirbo/adcolony/ADCController;->on_video_progress(DLcom/jirbo/adcolony/AdColonyAd;)V

    goto :goto_1

    .line 758
    :cond_a
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->visible:Z

    if-nez v2, :cond_7

    .line 760
    invoke-virtual {p1, v4, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    goto :goto_1
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 706
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 709
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    .line 711
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput v3, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->global_seek_to_ms:I

    .line 712
    return v2
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 667
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "[ADC] Native Ad onPrepared called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 668
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    .line 669
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute(Z)V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 774
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    .line 816
    :goto_0
    return v1

    .line 775
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 777
    .local v0, "action":I
    if-ne v0, v2, :cond_3

    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->show:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 779
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    sput-object v3, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 780
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_video_ad(Ljava/lang/String;Lcom/jirbo/adcolony/ADCManifest$Ad;)V

    .line 781
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->reset()V

    .line 786
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->replay:Z

    iput-boolean v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->replay:Z

    .line 789
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v2, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->is_native_expanded:Z

    .line 790
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v4, "native"

    iput-object v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 791
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v4, "fullscreen"

    iput-object v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 792
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 793
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v3, "video_expanded"

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 794
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    invoke-interface {v1, v2, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 795
    :cond_1
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-eqz v1, :cond_4

    .line 797
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Launching AdColonyOverlay"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 798
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 805
    :goto_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-eqz v1, :cond_2

    .line 808
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v3, v1, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    .line 809
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    const-string v3, "start"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"ad_slot\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v5, v5, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \"replay\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-boolean v5, v5, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->replay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v3, v4, v5}, Lcom/jirbo/adcolony/ADCController;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 810
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_id:I

    invoke-virtual {v1, v3, v4}, Lcom/jirbo/adcolony/ADCPlayHistory;->add_play_event(Ljava/lang/String;I)V

    .line 812
    :cond_2
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 813
    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->replay:Z

    :cond_3
    move v1, v2

    .line 816
    goto/16 :goto_0

    .line 802
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Launching AdColonyFullscreen"

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 803
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 545
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "[ADC] Native Ad Pause called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 546
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 548
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    .line 550
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 551
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :cond_0
    return-void
.end method

.method declared-synchronized play()V
    .locals 2

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 648
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 643
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    .line 644
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 645
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCController;->on_video_start(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 646
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->is_native:Z

    .line 647
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepareForListView()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->list_view:Z

    .line 832
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 564
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "[ADC] Native Ad Resume called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 565
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 567
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 568
    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    .line 569
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->global_seek_to_ms:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 570
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 571
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    :cond_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 451
    if-eqz p1, :cond_1

    .line 453
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    .line 456
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->actual_user_mute:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    .line 462
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 464
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 466
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    .line 473
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 470
    :cond_3
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    goto :goto_1
.end method

.method public setOverlayButtonColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 411
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_color:I

    .line 412
    return-void
.end method

.method public setOverlayButtonTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 420
    :cond_0
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_text_color:I

    .line 421
    return-void
.end method

.method public setOverlayButtonTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 425
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 6
    .param p1, "v"    # F

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    .line 606
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_4

    .line 608
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->actual_user_mute:Z

    if-nez v0, :cond_2

    .line 610
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 613
    :cond_2
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_3

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->actual_user_mute:Z

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 618
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    .line 619
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v1, "sound_unmute"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    goto :goto_0

    .line 623
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    .line 627
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v1, "sound_mute"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    goto :goto_0

    .line 631
    :cond_4
    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_0

    .line 633
    iput p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->set_volume:F

    goto/16 :goto_0
.end method

.method system_pause()V
    .locals 3

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    if-nez v0, :cond_0

    .line 657
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 658
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 660
    :cond_0
    return-void
.end method

.method public withListener(Lcom/jirbo/adcolony/AdColonyNativeAdListener;)Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .locals 1
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .line 529
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-object p1, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->native_listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    .line 530
    return-object p0
.end method

.method public withMutedListener(Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;)Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .locals 0
    .param p1, "mute_listener"    # Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_listener:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    .line 535
    return-object p0
.end method
