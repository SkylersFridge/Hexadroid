.class public Lcom/jirbo/adcolony/AdColonyInterstitialAd;
.super Lcom/jirbo/adcolony/AdColonyAd;
.source "AdColonyInterstitialAd.java"


# instance fields
.field listener:Lcom/jirbo/adcolony/AdColonyAdListener;

.field native_ad:Lcom/jirbo/adcolony/AdColonyNativeAdView;

.field native_listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    .line 30
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->ensure_configured()V

    .line 31
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 32
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->create_uuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->asi:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 38
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 39
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->ensure_configured()V

    .line 41
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->create_uuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->asi:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCController;->find_video_zone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/16 v1, 0xc

    sput v1, Lcom/jirbo/adcolony/ADC;->error_code:I

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method isReady(Z)Z
    .locals 2
    .param p1, "is_private"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCController;->find_video_zone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method is_v4vc()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method on_video_finished()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 130
    const-string v1, "fullscreen"

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 139
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    .line 140
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 143
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->is_open:Z

    if-nez v1, :cond_3

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->native_listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->native_listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->native_ad:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v1, v3, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdFinished(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    goto :goto_0

    .line 146
    .restart local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 149
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x0

    sput-object v1, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    .line 150
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 151
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    sput v2, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 82
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 83
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyInterstitialAd;Lcom/jirbo/adcolony/ADCController;)V

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->status:I

    .line 95
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->show:Z

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$2;

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyInterstitialAd$2;-><init>(Lcom/jirbo/adcolony/AdColonyInterstitialAd;Lcom/jirbo/adcolony/ADCController;)V

    .line 108
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 109
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->set_up_info()Z

    .line 110
    sput-object p0, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 112
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->show_video_ad(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 115
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->show:Z

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 124
    :cond_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->status:I

    goto :goto_0
.end method

.method public withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyInterstitialAd;
    .locals 0
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyAdListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    .line 50
    return-object p0
.end method
