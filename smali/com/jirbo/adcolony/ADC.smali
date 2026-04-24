.class Lcom/jirbo/adcolony/ADC;
.super Ljava/lang/Object;
.source "ADC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;,
        Lcom/jirbo/adcolony/ADC$EndCardFinished;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "AdColony"

.field public static final LOG_DEBUG:I = 0x1

.field public static final LOG_DEV:I = 0x0

.field public static final LOG_ERROR:I = 0x3

.field public static final LOG_INFO:I = 0x2

.field static active:Z

.field private static activity:Landroid/app/Activity;

.field static ad_availability_listener_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field static ad_availability_map:Ljava/util/HashMap;

.field static bitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static block:Z

.field static companion_ad_disabled:Z

.field static configured:Z

.field static connected:Z

.field static controller:Lcom/jirbo/adcolony/ADCController;

.field static current_ad:Lcom/jirbo/adcolony/AdColonyAd;

.field static current_dialog:Lcom/jirbo/adcolony/ADCDialog;

.field static current_video:Lcom/jirbo/adcolony/ADCVideo;

.field static destroyed:Z

.field static disable_block:Z

.field public static final disable_limits:Z

.field static dont_resume:Z

.field public static final enable_developer_logging:Z

.field static end_card_finished_handler:Lcom/jirbo/adcolony/ADC$EndCardFinished;

.field static end_card_is_html5:Z

.field static end_card_mraid_filepath:Ljava/lang/String;

.field static end_card_url:Ljava/lang/String;

.field static error_code:I

.field static fatal_error:Z

.field static finishing:Z

.field public static force_dec_url:Ljava/lang/String;

.field public static final force_static_url:Ljava/lang/String;

.field static graceful_fail:Z

.field static hud_scale:D

.field static initialized:Z

.field static is_tablet:Z

.field public static final keep_current_ads:Z

.field static last_config_ms:J

.field static latest_video:Lcom/jirbo/adcolony/ADCVideo;

.field static layout_changed:Z

.field static load_timeout:I

.field static log_level:I

.field static main_activity_paused:Z

.field static mraid_block:Z

.field static native_ad_view_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdColonyNativeAdView;",
            ">;"
        }
    .end annotation
.end field

.field static orientation:I

.field static os_version:Ljava/lang/String;

.field public static final play_short_videos:Z

.field static resume_from_ad:Z

.field static sdk_version:Ljava/lang/String;

.field static show:Z

.field static show_post_popup:Z

.field static user_disabled:Z

.field static v4vc_listener_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/AdColonyV4VCListener;",
            ">;"
        }
    .end annotation
.end field

.field static v4vc_results_handler:Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;

.field static video_disabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    sput-object v0, Lcom/jirbo/adcolony/ADC;->force_dec_url:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/jirbo/adcolony/ADC;->force_static_url:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/jirbo/adcolony/ADCController;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCController;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 61
    const/4 v0, 0x2

    sput v0, Lcom/jirbo/adcolony/ADC;->log_level:I

    .line 72
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    .line 73
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 74
    sput v2, Lcom/jirbo/adcolony/ADC;->orientation:I

    .line 75
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/jirbo/adcolony/ADC;->hud_scale:D

    .line 76
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->block:Z

    .line 77
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->disable_block:Z

    .line 78
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 79
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->layout_changed:Z

    .line 80
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->connected:Z

    .line 106
    sput v2, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->v4vc_listener_list:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    return-void
.end method

.method static activity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/jirbo/adcolony/ADC;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/jirbo/adcolony/AdColonyException;

    const-string v1, "AdColony.configure() must be called before any other AdColony methods. If you have called AdColony.configure(), the Activity reference you passed in via AdColony.configure() OR AdColony.resume() is null."

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADC;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static add_native_ad_view(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V
    .locals 1
    .param p0, "view"    # Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .prologue
    .line 298
    sget-object v0, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method static disabled()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->fatal_error:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->user_disabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->initialized:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static ensure_configured()V
    .locals 0

    .prologue
    .line 195
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    .line 196
    return-void
.end method

.method static get_Integer(Ljava/lang/String;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->get_Integer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static get_Logical(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->get_Logical(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static get_Real(Ljava/lang/String;)D
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 249
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->get_Real(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method static get_String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 252
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static has_ad_availability_changed()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 263
    sget-object v6, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-nez v6, :cond_1

    .line 294
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 264
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_1
    sget-object v6, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    sget-object v6, Lcom/jirbo/adcolony/ADC;->ad_availability_map:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 267
    sget-object v6, Lcom/jirbo/adcolony/ADC;->ad_availability_map:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 268
    .restart local v2    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 271
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 272
    .local v4, "prev_status":Z
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v7, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 273
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6, v9, v10}, Lcom/jirbo/adcolony/ADCController;->is_v4vc_ad_available(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 276
    .local v0, "current_status":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/AdColony;->isZoneNative(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 278
    new-instance v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0x12c

    invoke-direct {v5, v7, v6, v8, v9}, Lcom/jirbo/adcolony/AdColonyNativeAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 279
    .local v5, "temp":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    invoke-virtual {v5, v9}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->isReady(Z)Z

    move-result v0

    .line 282
    .end local v5    # "temp":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    :cond_3
    if-eq v4, v0, :cond_2

    .line 285
    sget-object v6, Lcom/jirbo/adcolony/ADC;->ad_availability_map:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 290
    sget-object v6, Lcom/jirbo/adcolony/ADC;->ad_availability_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v0, v7}, Lcom/jirbo/adcolony/AdColonyAdAvailabilityListener;->onAdColonyAdAvailabilityChange(ZLjava/lang/String;)V

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "current_status":Z
    .end local v1    # "i":I
    :cond_4
    sget-object v7, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6, v9, v10}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method static initialize(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 130
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->configured:Z

    .line 131
    invoke-static {p0}, Lcom/jirbo/adcolony/ADC;->set_activity(Landroid/app/Activity;)V

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    .line 133
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->is_tablet()Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    .line 135
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->fatal_error:Z

    if-eqz v0, :cond_0

    .line 138
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->fatal_error:Z

    .line 139
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->initialized:Z

    .line 140
    new-instance v0, Lcom/jirbo/adcolony/ADCController;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCController;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 142
    :cond_0
    return-void
.end method

.method static is_activity_null()Z
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/jirbo/adcolony/ADC;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static is_ready()Z
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->initialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->fatal_error:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->user_disabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static log(ILjava/lang/String;)V
    .locals 1
    .param p0, "level"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 218
    sget v0, Lcom/jirbo/adcolony/ADC;->log_level:I

    if-gt v0, p0, :cond_0

    .line 220
    packed-switch p0, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :pswitch_1
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :pswitch_2
    const-string v0, "AdColony"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static log_debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/ADC;->log(ILjava/lang/String;)V

    return-void
.end method

.method static log_dev(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/ADC;->log(ILjava/lang/String;)V

    return-void
.end method

.method static log_error(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/ADC;->log(ILjava/lang/String;)V

    return-void
.end method

.method static log_info(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/jirbo/adcolony/ADC;->log(ILjava/lang/String;)V

    return-void
.end method

.method static on_fatal_error(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p0, "err"    # Ljava/lang/RuntimeException;

    .prologue
    .line 188
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->fatal_error:Z

    .line 189
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->log_error(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 191
    return-void
.end method

.method static on_fatal_error(Ljava/lang/String;)V
    .locals 1
    .param p0, "mesg"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->fatal_error:Z

    .line 183
    invoke-static {p0}, Lcom/jirbo/adcolony/ADC;->log_error(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method static queue_event(Lcom/jirbo/adcolony/ADCEvent;)V
    .locals 1
    .param p0, "e"    # Lcom/jirbo/adcolony/ADCEvent;

    .prologue
    .line 387
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->queue_event(Lcom/jirbo/adcolony/ADCEvent;)V

    .line 388
    return-void
.end method

.method static set_activity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    sget-object v0, Lcom/jirbo/adcolony/ADC;->activity:Landroid/app/Activity;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sput-object p0, Lcom/jirbo/adcolony/ADC;->activity:Landroid/app/Activity;

    .line 120
    new-instance v0, Lcom/jirbo/adcolony/ADC$EndCardFinished;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADC$EndCardFinished;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->end_card_finished_handler:Lcom/jirbo/adcolony/ADC$EndCardFinished;

    .line 121
    new-instance v0, Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADC;->v4vc_results_handler:Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;

    .line 124
    new-instance v0, Lcom/jirbo/adcolony/ADCMonitor$Pinger;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCMonitor$Pinger;-><init>()V

    goto :goto_0
.end method

.method static set_log_level(I)V
    .locals 4
    .param p0, "level"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 201
    sput p0, Lcom/jirbo/adcolony/ADC;->log_level:I

    .line 203
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    if-gtz p0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/jirbo/adcolony/ADCLog;->enabled:Z

    .line 204
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    if-gt p0, v1, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/jirbo/adcolony/ADCLog;->enabled:Z

    .line 205
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const/4 v0, 0x2

    if-gt p0, v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/jirbo/adcolony/ADCLog;->enabled:Z

    .line 206
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const/4 v3, 0x3

    if-gt p0, v3, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z

    .line 207
    if-gtz p0, :cond_1

    const-string v0, "DEVELOPER LOGGING ENABLED"

    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->log_dev(Ljava/lang/String;)V

    .line 208
    :cond_1
    if-gt p0, v1, :cond_2

    const-string v0, "DEBUG LOGGING ENABLED"

    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->log_debug(Ljava/lang/String;)V

    .line 209
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 203
    goto :goto_0

    :cond_4
    move v0, v2

    .line 204
    goto :goto_1

    :cond_5
    move v0, v2

    .line 205
    goto :goto_2
.end method

.method static should_log(I)Z
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 211
    sget v0, Lcom/jirbo/adcolony/ADC;->log_level:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static should_log_debug()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    sget v1, Lcom/jirbo/adcolony/ADC;->log_level:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static should_log_dev()Z
    .locals 1

    .prologue
    .line 213
    sget v0, Lcom/jirbo/adcolony/ADC;->log_level:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static trace(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 246
    return-void
.end method

.method static track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 257
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/jirbo/adcolony/ADCController;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    return-void
.end method

.method static track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "json_payload"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 258
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0, p1, p2}, Lcom/jirbo/adcolony/ADCController;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    return-void
.end method

.method static track_app_event(Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/jirbo/adcolony/ADCController;->track_app_event(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static track_app_event(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "json_payload"    # Ljava/lang/String;

    .prologue
    .line 256
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0, p1}, Lcom/jirbo/adcolony/ADCController;->track_app_event(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
