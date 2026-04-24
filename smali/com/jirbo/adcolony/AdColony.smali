.class public Lcom/jirbo/adcolony/AdColony;
.super Ljava/lang/Object;
.source "AdColony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;
    }
.end annotation


# static fields
.field static advertising_id_ready:Z


# instance fields
.field block:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColony;->block:Z

    .line 404
    return-void
.end method

.method public static activity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static addAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    .prologue
    .line 338
    sget-object v0, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 323
    sget-object v0, Lcom/jirbo/adcolony/ADC;->v4vc_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADC;->v4vc_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cancelVideo()V
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 355
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 356
    sget-object v0, Lcom/jirbo/adcolony/ADC;->end_card_finished_handler:Lcom/jirbo/adcolony/ADC$EndCardFinished;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->notify_canceled(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 358
    :cond_0
    return-void
.end method

.method public static varargs configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "client_options"    # Ljava/lang/String;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "zone_ids"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    sput-boolean v6, Lcom/jirbo/adcolony/AdColony;->advertising_id_ready:Z

    .line 59
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 61
    new-instance v3, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;

    invoke-direct {v3, p0}, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;-><init>(Landroid/app/Activity;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    :goto_0
    sget-object v3, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 70
    .local v0, "h":Landroid/os/Handler;
    new-instance v2, Lcom/jirbo/adcolony/AdColony$1;

    invoke-direct {v2}, Lcom/jirbo/adcolony/AdColony$1;-><init>()V

    .line 78
    .local v2, "r":Ljava/lang/Runnable;
    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->block:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->disable_block:Z

    if-eqz v3, :cond_7

    .line 80
    :cond_0
    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->user_disabled:Z

    if-eqz v3, :cond_3

    .line 119
    :cond_1
    :goto_1
    return-void

    .line 65
    .end local v0    # "h":Landroid/os/Handler;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_2
    new-instance v3, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;

    invoke-direct {v3, p0}, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;-><init>(Landroid/app/Activity;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 82
    .restart local v0    # "h":Landroid/os/Handler;
    .restart local v2    # "r":Ljava/lang/Runnable;
    :cond_3
    if-nez p2, :cond_4

    .line 84
    const-string v3, "Null App ID - disabling AdColony."

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_4
    if-nez p3, :cond_5

    .line 90
    const-string v3, "Null Zone IDs array - disabling AdColony."

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_5
    array-length v3, p3

    if-nez v3, :cond_6

    .line 96
    const-string v3, "No Zone IDs provided - disabling AdColony."

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_6
    invoke-static {p0}, Lcom/jirbo/adcolony/ADC;->initialize(Landroid/app/Activity;)V

    .line 101
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/jirbo/adcolony/ADCController;->configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 103
    sput-boolean v7, Lcom/jirbo/adcolony/ADC;->initialized:Z

    .line 104
    sput-boolean v7, Lcom/jirbo/adcolony/ADC;->block:Z

    .line 105
    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :cond_7
    sget-object v3, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    if-nez v3, :cond_8

    sput-boolean v7, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 112
    :cond_8
    sget-object v3, Lcom/jirbo/adcolony/ADC;->v4vc_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 113
    sget-object v3, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/jirbo/adcolony/ADC;->ad_availability_map:Ljava/util/HashMap;

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p3

    if-ge v1, v3, :cond_1

    .line 117
    sget-object v3, Lcom/jirbo/adcolony/ADC;->ad_availability_map:Ljava/util/HashMap;

    aget-object v4, p3, v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->user_disabled:Z

    .line 49
    return-void
.end method

.method public static disableDECOverride()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/ADC;->force_dec_url:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public static getCustomID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCConfiguration;->custom_id:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCConfiguration;->device_id:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemainingV4VCForZone(Ljava/lang/String;)I
    .locals 3
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    if-nez v1, :cond_1

    .line 310
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "getRemainingV4VCForZone called before AdColony has finished configuring."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v1

    .line 314
    :goto_0
    return v1

    .line 312
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v1, p0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v0

    .line 313
    .local v0, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    iget-object v1, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->enabled:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "getRemainingV4VCForZone called with non-V4VC zone."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 314
    :cond_2
    iget-object v1, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->limits:Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

    iget v1, v1, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->daily_play_cap:I

    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/ADCPlayHistory;->zone_daily_play_count(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public static get_images(Ljava/lang/String;)V
    .locals 1
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 390
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_video_ad(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->is_tablet()Z

    move-result v0

    return v0
.end method

.method public static isZoneNative(Ljava/lang/String;)Z
    .locals 3
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 288
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-nez v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v1

    .line 289
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    if-eqz v2, :cond_0

    .line 290
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    if-eqz v2, :cond_0

    .line 291
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    if-eqz v2, :cond_0

    .line 292
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 293
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    if-eqz v2, :cond_0

    .line 294
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 298
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCManifest$Ads;->get(I)Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->enabled:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isZoneV4VC(Ljava/lang/String;)Z
    .locals 2
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 279
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    if-eqz v1, :cond_0

    .line 281
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    if-eqz v1, :cond_0

    .line 282
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    if-eqz v1, :cond_0

    .line 283
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v1, p0, v0}, Lcom/jirbo/adcolony/ADCAdManager;->is_zone_v4vc(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static onBackPressed()V
    .locals 3

    .prologue
    .line 258
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    instance-of v1, v1, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;

    if-eqz v1, :cond_1

    .line 260
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 262
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCDialog;->listener:Lcom/jirbo/adcolony/AdColonyV4VCAd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->on_dialog_finished(Z)V

    .line 263
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

    .line 264
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 265
    const/4 v1, 0x0

    sput-object v1, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    .line 267
    :cond_1
    return-void
.end method

.method public static pause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 238
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "[ADC] AdColony pause called."

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 239
    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->dont_resume:Z

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 242
    sget-object v2, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 244
    sget-object v2, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 245
    .local v1, "view":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    iput-boolean v4, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->paused:Z

    .line 246
    iget-object v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    sget-boolean v2, Lcom/jirbo/adcolony/ADC;->show:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 250
    :cond_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->system_pause()V

    .line 240
    .end local v1    # "view":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method

.method public static removeAdAvailabilityListener(Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    .prologue
    .line 344
    sget-object v0, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public static removeV4VCListener(Lcom/jirbo/adcolony/AdColonyV4VCListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/jirbo/adcolony/AdColonyV4VCListener;

    .prologue
    .line 329
    sget-object v0, Lcom/jirbo/adcolony/ADC;->v4vc_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public static resume(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 180
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "[ADC] AdColony resume called."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 181
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->dont_resume:Z

    .line 182
    invoke-static {p0}, Lcom/jirbo/adcolony/ADC;->set_activity(Landroid/app/Activity;)V

    .line 183
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->finishing:Z

    .line 184
    move-object v0, p0

    .line 185
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 187
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Activity reference is null. Disabling AdColony."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 188
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 229
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/jirbo/adcolony/AdColony$2;

    invoke-direct {v2, v0}, Lcom/jirbo/adcolony/AdColony$2;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 227
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 228
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->resume_from_ad:Z

    goto :goto_0
.end method

.method public static setCustomID(Ljava/lang/String;)V
    .locals 3
    .param p0, "new_custom_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCConfiguration;->custom_id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iput-object p0, v0, Lcom/jirbo/adcolony/ADCConfiguration;->custom_id:Ljava/lang/String;

    .line 129
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->block:Z

    .line 130
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCAdManager;->attempted_load:Z

    .line 131
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    .line 132
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCAdManager;->needs_refresh:Z

    .line 134
    :cond_0
    return-void
.end method

.method public static setDeviceID(Ljava/lang/String;)V
    .locals 3
    .param p0, "new_device_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCConfiguration;->device_id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iput-object p0, v0, Lcom/jirbo/adcolony/ADCConfiguration;->device_id:Ljava/lang/String;

    .line 152
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->block:Z

    .line 153
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCAdManager;->attempted_load:Z

    .line 154
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    .line 155
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCAdManager;->needs_refresh:Z

    .line 157
    :cond_0
    return-void
.end method

.method public static statusForZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 365
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    if-nez v1, :cond_1

    .line 368
    :cond_0
    const-string v1, "unknown"

    .line 381
    :goto_0
    return-object v1

    .line 370
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v1, p0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v0

    .line 372
    .local v0, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    if-eqz v0, :cond_4

    .line 374
    iget-boolean v1, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-nez v1, :cond_2

    const-string v1, "off"

    goto :goto_0

    .line 375
    :cond_2
    iget-boolean v1, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/jirbo/adcolony/ADCAdManager;->is_ad_available_errorless(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "active"

    goto :goto_0

    .line 376
    :cond_3
    const-string v1, "loading"

    goto :goto_0

    .line 379
    :cond_4
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->configured:Z

    if-nez v1, :cond_5

    const-string v1, "unknown"

    goto :goto_0

    .line 381
    :cond_5
    const-string v1, "invalid"

    goto :goto_0
.end method
