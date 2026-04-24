.class Lcom/jirbo/adcolony/ADCManifest$Zone;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Zone"
.end annotation


# instance fields
.field active:Z

.field ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

.field daily_play_cap:I

.field enabled:Z

.field play_interval:I

.field play_order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field session_play_cap:I

.field state:Lcom/jirbo/adcolony/ADCZoneState;

.field uuid:Ljava/lang/String;

.field v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

.field zone_tracking:Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method advance_play_index()V
    .locals 3

    .prologue
    .line 752
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v1, v1, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    .line 756
    :cond_0
    return-void
.end method

.method cache_media()V
    .locals 2

    .prologue
    .line 794
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v1, :cond_1

    .line 800
    :cond_0
    return-void

    .line 796
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->count()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCManifest$Ads;->get(I)Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ad;->cache_media()V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method check_for_skip_due_to_interval()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 509
    iget v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_interval:I

    if-gt v2, v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->zone_state_manager:Lcom/jirbo/adcolony/ADCZoneStateManager;

    iput-boolean v1, v2, Lcom/jirbo/adcolony/ADCZoneStateManager;->modified:Z

    .line 515
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v3, v2, Lcom/jirbo/adcolony/ADCZoneState;->skipped_plays:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/jirbo/adcolony/ADCZoneState;->skipped_plays:I

    if-eqz v3, :cond_0

    .line 520
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v2, v2, Lcom/jirbo/adcolony/ADCZoneState;->skipped_plays:I

    iget v3, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_interval:I

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iput v0, v2, Lcom/jirbo/adcolony/ADCZoneState;->skipped_plays:I

    :cond_2
    move v0, v1

    .line 521
    goto :goto_0
.end method

.method combine_results(II)I
    .locals 1
    .param p1, "old_count"    # I
    .param p2, "new_count"    # I

    .prologue
    .line 526
    if-gtz p2, :cond_1

    const/4 p2, 0x0

    .line 530
    .end local p1    # "old_count":I
    .end local p2    # "new_count":I
    :cond_0
    :goto_0
    return p2

    .line 528
    .restart local p1    # "old_count":I
    .restart local p2    # "new_count":I
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 530
    if-ge p1, p2, :cond_2

    .end local p1    # "old_count":I
    :goto_1
    move p2, p1

    goto :goto_0

    .restart local p1    # "old_count":I
    :cond_2
    move p1, p2

    goto :goto_1
.end method

.method current_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;
    .locals 4

    .prologue
    .line 740
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v2, v2, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCManifest$Ads;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v0

    .line 741
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method current_native_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v1, v1, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->find_native_ad(I)Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v0

    .line 747
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized get_available_plays()I
    .locals 1

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->current_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->get_available_plays(Lcom/jirbo/adcolony/ADCManifest$Ad;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get_available_plays(Lcom/jirbo/adcolony/ADCManifest$Ad;)I
    .locals 11
    .param p1, "ad"    # Lcom/jirbo/adcolony/ADCManifest$Ad;

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCPlayHistory;->zone_daily_play_count(Ljava/lang/String;)I

    move-result v4

    .line 550
    .local v4, "zone_daily_play_count":I
    const/4 v2, -0x1

    .line 553
    .local v2, "count":I
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->volatile_expiration:I

    .line 554
    .local v1, "cap":I
    if-eqz v1, :cond_0

    sget-wide v5, Lcom/jirbo/adcolony/ADC;->last_config_ms:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/jirbo/adcolony/ADC;->last_config_ms:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    int-to-long v7, v1

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->try_refresh()V

    .line 557
    const/4 v5, 0x7

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 558
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "The volatile expiration for this ad has been hit."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 651
    :goto_0
    monitor-exit p0

    return v5

    .line 562
    :cond_0
    :try_start_1
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->volatile_play_cap:I

    .line 563
    if-lez v1, :cond_1

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget v6, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_id:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/jirbo/adcolony/ADC;->last_config_ms:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-double v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_interval_play_count(ID)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 564
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 566
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->try_refresh()V

    .line 567
    const/4 v5, 0x7

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 568
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Ad is not ready to be played due to the volatile play cap."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 572
    :cond_2
    iget v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->daily_play_cap:I

    .line 573
    if-lez v1, :cond_3

    sub-int v5, v1, v4

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 574
    :cond_3
    if-nez v2, :cond_4

    .line 576
    const/4 v5, 0x5

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 577
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad is not ready to be played due to the daily play cap for zone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 580
    :cond_4
    iget v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->session_play_cap:I

    .line 581
    if-lez v1, :cond_5

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCPlayHistory;->zone_session_play_count(Ljava/lang/String;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 582
    :cond_5
    if-nez v2, :cond_6

    .line 584
    const/4 v5, 0x3

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 585
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ad is not ready to be played due to the session play cap for zone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 589
    :cond_6
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-boolean v5, v5, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->enabled:Z

    if-eqz v5, :cond_a

    .line 591
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->limits:Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->daily_play_cap:I

    .line 592
    if-lez v1, :cond_7

    sub-int v5, v1, v4

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 593
    :cond_7
    if-nez v2, :cond_8

    .line 595
    const/4 v5, 0x4

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 596
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Ad is not ready to be played due to the V4VC daily play cap."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 599
    :cond_8
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->limits:Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

    iget v3, v5, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->custom_play_cap_period:I

    .line 600
    .local v3, "custom_interval":I
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->limits:Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->custom_play_cap:I

    .line 601
    if-lez v1, :cond_9

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    int-to-double v7, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/jirbo/adcolony/ADCPlayHistory;->zone_interval_play_count(Ljava/lang/String;D)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 602
    :cond_9
    if-nez v2, :cond_a

    .line 604
    const/4 v5, 0x4

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 605
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Ad is not ready to be played due to the V4VC custom play cap."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 610
    .end local v3    # "custom_interval":I
    :cond_a
    iget v0, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_id:I

    .line 611
    .local v0, "ad_id":I
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->daily_play_cap:I

    .line 612
    if-lez v1, :cond_b

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_daily_play_count(I)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 613
    :cond_b
    if-nez v2, :cond_c

    .line 615
    const/4 v5, 0x7

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 616
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->try_refresh()V

    .line 617
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Ad is not ready to be played due to the daily play cap."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 620
    :cond_c
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->weekly_play_cap:I

    .line 621
    if-lez v1, :cond_d

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_weekly_play_count(I)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 622
    :cond_d
    if-nez v2, :cond_e

    .line 624
    const/4 v5, 0x7

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 625
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->try_refresh()V

    .line 626
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Ad is not ready to be played due to the weekly play cap."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 629
    :cond_e
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->monthly_play_cap:I

    .line 630
    if-lez v1, :cond_f

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_monthly_play_count(I)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 631
    :cond_f
    if-nez v2, :cond_10

    .line 633
    const/4 v5, 0x7

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 634
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->try_refresh()V

    .line 635
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Ad is not ready to be played due to the monthly play cap."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 638
    :cond_10
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->total_play_cap:I

    .line 639
    if-lez v1, :cond_11

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_half_year_play_count(I)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I

    move-result v2

    .line 640
    :cond_11
    if-nez v2, :cond_12

    .line 642
    const/4 v5, 0x7

    sput v5, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 643
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->try_refresh()V

    .line 644
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Ad is not ready to be played due to the half-year play cap."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->int_fail(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 647
    :cond_12
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v3, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->custom_play_cap_period:I

    .line 648
    .restart local v3    # "custom_interval":I
    iget-object v5, p1, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    iget v1, v5, Lcom/jirbo/adcolony/ADCManifest$Limits;->custom_play_cap:I

    .line 649
    if-lez v1, :cond_13

    sget-object v5, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    int-to-double v6, v3

    invoke-virtual {v5, v0, v6, v7}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_interval_play_count(ID)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v2, v5}, Lcom/jirbo/adcolony/ADCManifest$Zone;->combine_results(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :cond_13
    move v5, v2

    .line 651
    goto/16 :goto_0

    .line 548
    .end local v0    # "ad_id":I
    .end local v1    # "cap":I
    .end local v2    # "count":I
    .end local v3    # "custom_interval":I
    .end local v4    # "zone_daily_play_count":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method is_ad_available()Z
    .locals 2

    .prologue
    .line 439
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_ad_available(ZZ)Z

    move-result v0

    return v0
.end method

.method is_ad_available(ZZ)Z
    .locals 7
    .param p1, "from_ad_availability"    # Z
    .param p2, "with_errors"    # Z

    .prologue
    const/4 v4, 0x1

    .line 443
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_ad_available_errorless(Z)Z

    move-result v4

    .line 477
    :cond_0
    :goto_0
    return v4

    .line 445
    :cond_1
    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v5, :cond_3

    .line 447
    :cond_2
    sput v4, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 448
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad is not ready to be played, as zone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is disabled or inactive."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 451
    :cond_3
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCManifest$Ads;->count()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 453
    :cond_4
    const/4 v4, 0x5

    sput v4, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 454
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad is not ready to be played, as AdColony currently has no videos available to be played in zone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 457
    :cond_5
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 458
    .local v1, "ad_count":I
    const/4 v0, 0x0

    .line 459
    .local v0, "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_7

    .line 461
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->current_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v2

    .line 462
    .local v2, "cur_ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    if-nez v2, :cond_6

    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "Ad is not ready to be played due to an unknown error."

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 463
    :cond_6
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Ad;->is_ready()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 465
    move-object v0, v2

    .line 471
    .end local v2    # "cur_ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_7
    if-nez v0, :cond_9

    .line 473
    const/4 v4, 0x6

    sput v4, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 474
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "Ad is not ready to be played as required assets are still downloading or otherwise missing."

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    .line 468
    .restart local v2    # "cur_ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_8
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->advance_play_index()V

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 477
    .end local v2    # "cur_ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_9
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->get_available_plays(Lcom/jirbo/adcolony/ADCManifest$Ad;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method is_ad_available_errorless(Z)Z
    .locals 6
    .param p1, "from_ad_availability"    # Z

    .prologue
    const/4 v4, 0x0

    .line 482
    if-nez p1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    .line 484
    :cond_0
    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v5, :cond_2

    .line 504
    :cond_1
    :goto_0
    return v4

    .line 486
    :cond_2
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCManifest$Ads;->count()I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 488
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 489
    .local v1, "ad_count":I
    const/4 v0, 0x0

    .line 490
    .local v0, "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 492
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->current_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v2

    .line 493
    .local v2, "cur_ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Ad;->is_ready()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 496
    move-object v0, v2

    .line 502
    .end local v2    # "cur_ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_3
    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->get_available_plays(Lcom/jirbo/adcolony/ADCManifest$Ad;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 499
    .restart local v2    # "cur_ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_4
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->advance_play_index()V

    .line 490
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method is_v4vc_zone()Z
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_v4vc_zone(Z)Z

    move-result v0

    return v0
.end method

.method is_v4vc_zone(Z)Z
    .locals 3
    .param p1, "with_errors"    # Z

    .prologue
    const/4 v0, 0x1

    .line 703
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_v4vc_zone_errorless()Z

    move-result v0

    .line 721
    :cond_0
    :goto_0
    return v0

    .line 704
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v1, :cond_3

    .line 706
    :cond_2
    sput v0, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 707
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 709
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->count()I

    move-result v1

    if-nez v1, :cond_4

    .line 711
    const/4 v0, 0x5

    sput v0, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 712
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as there are currently no ads to play in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 714
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->first()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    if-nez v1, :cond_0

    .line 720
    const/16 v0, 0xf

    sput v0, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 721
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not V4VC enabled and must be played using an AdColonyVideoAd object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method is_v4vc_zone_errorless()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 726
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return v0

    .line 727
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->count()I

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->first()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    if-eqz v1, :cond_0

    .line 730
    const/4 v0, 0x1

    goto :goto_0
.end method

.method is_video_zone()Z
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_video_zone(Z)Z

    move-result v0

    return v0
.end method

.method is_video_zone(Z)Z
    .locals 3
    .param p1, "with_errors"    # Z

    .prologue
    const/4 v0, 0x1

    .line 661
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_video_zone_errorless()Z

    move-result v0

    .line 679
    :cond_0
    :goto_0
    return v0

    .line 662
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v1, :cond_3

    .line 664
    :cond_2
    sput v0, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 665
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 667
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->count()I

    move-result v1

    if-nez v1, :cond_4

    .line 669
    const/4 v0, 0x5

    sput v0, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 670
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as there are currently no ads to play in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 672
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->first()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    if-eqz v1, :cond_0

    .line 674
    const/16 v0, 0xe

    sput v0, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 675
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is V4VC enabled and must be played using an AdColonyV4VCAd object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method is_video_zone_errorless()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 684
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v1, :cond_1

    .line 692
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->count()I

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Ads;->first()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    if-nez v1, :cond_0

    .line 692
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 760
    if-nez p1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return v0

    .line 761
    :cond_1
    const-string v2, "uuid"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    .line 764
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    .line 765
    const-string v2, "active"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    .line 766
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->enabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->active:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 768
    :cond_3
    const-string v2, "play_interval"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_interval:I

    .line 769
    const-string v2, "daily_play_cap"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->daily_play_cap:I

    .line 770
    const-string v2, "session_play_cap"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->session_play_cap:I

    .line 772
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    .line 773
    const-string v2, "play_order"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_StringList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->play_order:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 775
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->zone_tracking:Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;

    .line 776
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->zone_tracking:Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;

    const-string v3, "tracking"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$Ads;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$Ads;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    .line 780
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->ads:Lcom/jirbo/adcolony/ADCManifest$Ads;

    const-string v3, "ads"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$Ads;->parse(Lcom/jirbo/adcolony/ADCData$List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 782
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    .line 783
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    const-string v3, "v4vc"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->zone_state_manager:Lcom/jirbo/adcolony/ADCZoneStateManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCZoneStateManager;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCZoneState;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    move v0, v1

    .line 789
    goto/16 :goto_0
.end method

.method try_refresh()V
    .locals 1

    .prologue
    .line 535
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCAdManager;->refresh()V

    .line 536
    return-void
.end method
