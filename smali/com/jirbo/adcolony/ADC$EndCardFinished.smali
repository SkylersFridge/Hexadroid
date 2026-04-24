.class Lcom/jirbo/adcolony/ADC$EndCardFinished;
.super Landroid/os/Handler;
.source "ADC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndCardFinished"
.end annotation


# instance fields
.field ad:Lcom/jirbo/adcolony/AdColonyAd;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 321
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 324
    :pswitch_0
    const-string v1, "skip"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADC$EndCardFinished;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v1, v2}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 325
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v1, :cond_0

    .line 327
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    const/4 v2, 0x1

    iput v2, v1, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    .line 328
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyAd;->on_video_finished()V

    goto :goto_0

    .line 334
    :pswitch_1
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 335
    .local v0, "table":Lcom/jirbo/adcolony/ADCData$Table;
    sget-object v1, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_1

    const-string v1, "html5_endcard_loading_started"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_started:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 336
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_2

    const-string v1, "html5_endcard_loading_finished"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_finished:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 337
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_3

    const-string v1, "html5_endcard_loading_time"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_time:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 338
    :cond_3
    sget-object v1, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_4

    const-string v1, "html5_endcard_loading_timeout"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->html5_endcard_loading_timeout:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 339
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v1, v1, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_spent:D

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    const-string v1, "endcard_time_spent"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_spent:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 340
    :cond_5
    const-string v1, "endcard_dissolved"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->endcard_dissolved:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 341
    const-string v1, "replay"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->is_replay:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 342
    const-string v1, "reward"

    sget-object v2, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->rewarded:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 353
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/ADC$EndCardFinished;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 354
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCAdManager;->refresh()V

    .line 355
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyAd;->on_video_finished()V

    goto/16 :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notify_canceled(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 313
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADC$EndCardFinished;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 315
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void

    .line 314
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/ADC$EndCardFinished;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    goto :goto_0
.end method

.method public notify_continuation(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 306
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADC$EndCardFinished;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 308
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->sendMessage(Landroid/os/Message;)Z

    .line 309
    return-void

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/ADC$EndCardFinished;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    goto :goto_0
.end method
