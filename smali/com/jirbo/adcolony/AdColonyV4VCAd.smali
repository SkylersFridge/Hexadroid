.class public final Lcom/jirbo/adcolony/AdColonyV4VCAd;
.super Lcom/jirbo/adcolony/AdColonyAd;
.source "AdColonyV4VCAd.java"


# instance fields
.field listener:Lcom/jirbo/adcolony/AdColonyAdListener;

.field show_post_popup:Z

.field show_pre_popup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_pre_popup:Z

    .line 25
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_post_popup:Z

    .line 29
    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    .line 30
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->ensure_configured()V

    .line 31
    const-string v0, "v4vc"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->ad_unit:Ljava/lang/String;

    .line 32
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->view_format:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->create_uuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->asi:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/jirbo/adcolony/AdColonyAd;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_pre_popup:Z

    .line 25
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_post_popup:Z

    .line 38
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->ensure_configured()V

    .line 39
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_id:Ljava/lang/String;

    .line 40
    const-string v0, "v4vc"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->ad_unit:Ljava/lang/String;

    .line 41
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->view_format:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->create_uuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->asi:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getRemainingViewsUntilReward()I
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->set_up_info()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 116
    :goto_0
    return v2

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget v1, v2, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->videos_per_reward:I

    .line 115
    .local v1, "views_per_reward":I
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->reward_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCController;->get_reward_credit(Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "reward_credit":I
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public getRewardAmount()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->set_up_info()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget v0, v0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->reward_amount:I

    goto :goto_0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->set_up_info()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->reward_name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getViewsPerReward()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->set_up_info()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget v0, v0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->videos_per_reward:I

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCController;->find_v4vc_zone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_id:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCController;->is_v4vc_ad_available(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method isReady(Z)Z
    .locals 1
    .param p1, "is_private"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method is_v4vc()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method on_dialog_finished(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x4

    .line 162
    if-eqz p1, :cond_3

    .line 164
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->show_v4vc_ad(Lcom/jirbo/adcolony/AdColonyV4VCAd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 167
    :cond_0
    iput v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->status:I

    .line 181
    :goto_0
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->status:I

    if-eq v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 185
    :cond_1
    return-void

    .line 171
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->status:I

    goto :goto_0

    .line 176
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->status:I

    goto :goto_0
.end method

.method on_video_finished()V
    .locals 3

    .prologue
    .line 189
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 191
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_post_popup:Z

    if-eqz v1, :cond_0

    const-string v1, "Result"

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->setDialog(Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v1, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 194
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    .line 197
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->is_open:Z

    if-nez v1, :cond_3

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
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

    goto :goto_0

    .line 200
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 203
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x0

    sput-object v1, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    .line 204
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_post_popup:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 205
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 206
    return-void
.end method

.method setDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "reward_name":Ljava/lang/String;
    const-string v1, ""

    .line 213
    .local v1, "reward_amount":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardAmount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "message":Ljava/lang/String;
    const-string v3, "Confirmation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;

    invoke-direct {v3, v0, p0}, Lcom/jirbo/adcolony/ADCV4VCConfirmationDialog;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    sput-object v3, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v3, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;

    invoke-direct {v3, v0, p0}, Lcom/jirbo/adcolony/ADCV4VCResultsDialog;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    sput-object v3, Lcom/jirbo/adcolony/ADC;->current_dialog:Lcom/jirbo/adcolony/ADCDialog;

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    sput v2, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 125
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd$1;

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd$1;-><init>(Lcom/jirbo/adcolony/AdColonyV4VCAd;Lcom/jirbo/adcolony/ADCController;)V

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->status:I

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/AdColonyAdListener;->onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->show:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/AdColonyV4VCAd$2;-><init>(Lcom/jirbo/adcolony/AdColonyV4VCAd;Lcom/jirbo/adcolony/ADCController;)V

    .line 149
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 150
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->set_up_info()Z

    .line 152
    sput-object p0, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 153
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/ADCController;->prepare_v4vc_ad(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    .line 155
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_pre_popup:Z

    if-eqz v0, :cond_2

    const-string v0, "Confirmation"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->setDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->on_dialog_finished(Z)V

    goto :goto_0
.end method

.method public withConfirmationDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withConfirmationDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    return-object v0
.end method

.method public withConfirmationDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 0
    .param p1, "setting"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_pre_popup:Z

    .line 54
    return-object p0
.end method

.method public withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 0
    .param p1, "listener"    # Lcom/jirbo/adcolony/AdColonyAdListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->listener:Lcom/jirbo/adcolony/AdColonyAdListener;

    .line 48
    return-object p0
.end method

.method public withResultsDialog()Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->withResultsDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;

    move-result-object v0

    return-object v0
.end method

.method public withResultsDialog(Z)Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .locals 1
    .param p1, "setting"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_post_popup:Z

    .line 60
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyV4VCAd;->show_post_popup:Z

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->show_post_popup:Z

    .line 61
    return-object p0
.end method
