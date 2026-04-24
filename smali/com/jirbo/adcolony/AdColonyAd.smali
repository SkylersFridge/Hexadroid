.class public abstract Lcom/jirbo/adcolony/AdColonyAd;
.super Ljava/lang/Object;
.source "AdColonyAd.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final status_canceled:I = 0x1

.field static final status_no_fill:I = 0x2

.field static final status_no_request:I = 0x0

.field static final status_shown:I = 0x4

.field static final status_skipped:I = 0x3


# instance fields
.field ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

.field ad_unit:Ljava/lang/String;

.field asi:Ljava/lang/String;

.field current_progress:D

.field force_current_progress:D

.field global_seek_to_ms:I

.field is_native:Z

.field is_native_expanded:Z

.field replay:Z

.field status:I

.field view_format:Ljava/lang/String;

.field zone_id:Ljava/lang/String;

.field zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->ad_unit:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->view_format:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->asi:Ljava/lang/String;

    .line 27
    iput-wide v1, p0, Lcom/jirbo/adcolony/AdColonyAd;->current_progress:D

    .line 28
    iput-wide v1, p0, Lcom/jirbo/adcolony/AdColonyAd;->force_current_progress:D

    return-void
.end method


# virtual methods
.method public canceled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 42
    iget v1, p0, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableViews()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyAd;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyAd;->set_up_info()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->get_available_plays()I

    move-result v0

    goto :goto_0
.end method

.method abstract isReady()Z
.end method

.method abstract isReady(Z)Z
.end method

.method abstract is_v4vc()Z
.end method

.method public noFill()Z
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notShown()Z
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract on_video_finished()V
.end method

.method set_up_info()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyAd;->set_up_info(Z)Z

    move-result v0

    return v0
.end method

.method set_up_info(Z)Z
    .locals 4
    .param p1, "is_native"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v2, v1

    .line 76
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyAd;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 72
    :cond_2
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/AdColonyAd;->isReady(Z)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    .line 74
    :cond_3
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCController;->get_zone_info(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    .line 75
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->current_native_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    .line 76
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->current_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    .line 76
    goto :goto_2
.end method

.method public shown()Z
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipped()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/jirbo/adcolony/AdColonyAd;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
