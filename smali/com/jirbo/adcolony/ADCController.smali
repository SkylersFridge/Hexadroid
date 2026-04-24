.class Lcom/jirbo/adcolony/ADCController;
.super Ljava/lang/Object;
.source "ADCController.java"


# instance fields
.field ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

.field configuration:Lcom/jirbo/adcolony/ADCConfiguration;

.field dispatching_events:Z

.field event_queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCEvent;",
            ">;"
        }
    .end annotation
.end field

.field media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

.field volatile monitor_thread_active:Z

.field pending_events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCEvent;",
            ">;"
        }
    .end annotation
.end field

.field play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

.field reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

.field session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

.field storage:Lcom/jirbo/adcolony/ADCStorage;

.field time_waiting_for_open_udid:Lcom/jirbo/adcolony/ADCUtil$Stopwatch;

.field zone_state_manager:Lcom/jirbo/adcolony/ADCZoneStateManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/jirbo/adcolony/ADCConfiguration;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCConfiguration;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    .line 21
    new-instance v0, Lcom/jirbo/adcolony/ADCAdManager;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCAdManager;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    .line 22
    new-instance v0, Lcom/jirbo/adcolony/ADCMediaManager;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCMediaManager;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    .line 23
    new-instance v0, Lcom/jirbo/adcolony/ADCReportingManager;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCReportingManager;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    .line 24
    new-instance v0, Lcom/jirbo/adcolony/ADCSessionManager;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCSessionManager;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    .line 25
    new-instance v0, Lcom/jirbo/adcolony/ADCStorage;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCStorage;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    .line 26
    new-instance v0, Lcom/jirbo/adcolony/ADCZoneStateManager;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCZoneStateManager;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->zone_state_manager:Lcom/jirbo/adcolony/ADCZoneStateManager;

    .line 27
    new-instance v0, Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCPlayHistory;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->event_queue:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->pending_events:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCController;->time_waiting_for_open_udid:Lcom/jirbo/adcolony/ADCUtil$Stopwatch;

    return-void
.end method


# virtual methods
.method declared-synchronized configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "client_options"    # Ljava/lang/String;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "zone_ids"    # [Ljava/lang/String;

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    sget v1, Lcom/jirbo/adcolony/ADC;->log_level:I

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCController;->set_log_level(I)V

    .line 459
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "==== Configuring AdColony "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    const-string v2, " ===="

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 461
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "package name: "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->package_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 463
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iput-object p2, v1, Lcom/jirbo/adcolony/ADCConfiguration;->app_id:Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iput-object p3, v1, Lcom/jirbo/adcolony/ADCConfiguration;->zone_ids:[Ljava/lang/String;

    .line 465
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCConfiguration;->parse_client_options(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->time_waiting_for_open_udid:Lcom/jirbo/adcolony/ADCUtil$Stopwatch;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;->restart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :goto_0
    monitor-exit p0

    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method dispatch_events()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCController;->dispatching_events:Z

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->is_ready()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCController;->dispatching_events:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCController;->monitor_thread_active:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->event_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 58
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCController;->dispatching_events:Z

    .line 59
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->pending_events:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController;->event_queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->event_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 63
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/ADCEvent;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCEvent;->dispatch()V

    .line 61
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 71
    .local v0, "err":Ljava/lang/RuntimeException;
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCController;->dispatching_events:Z

    .line 72
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController;->event_queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 74
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 67
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :cond_5
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCController;->dispatching_events:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method declared-synchronized find_v4vc_zone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCAdManager;->find_v4vc_zone()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized find_video_zone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCAdManager;->find_video_zone()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get_Integer(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 249
    :goto_0
    monitor-exit p0

    return v1

    .line 246
    :catch_0
    move-exception v0

    .line 248
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get_Logical(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 262
    :goto_0
    monitor-exit p0

    return v1

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    const/4 v1, 0x0

    goto :goto_0

    .line 257
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get_Real(Ljava/lang/String;)D
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 236
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 231
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get_String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 276
    :goto_0
    monitor-exit p0

    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 275
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized get_reward_credit(Ljava/lang/String;)I
    .locals 1
    .param p1, "currency_name"    # Ljava/lang/String;

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCPlayHistory;->get_reward_credit(Ljava/lang/String;)I
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

.method declared-synchronized get_zone_info(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized is_v4vc_ad_available(Ljava/lang/String;)Z
    .locals 2
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 321
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCController;->is_v4vc_ad_available(Ljava/lang/String;ZZ)Z
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

.method declared-synchronized is_v4vc_ad_available(Ljava/lang/String;ZZ)Z
    .locals 4
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "from_ad_availability"    # Z
    .param p3, "with_errors"    # Z

    .prologue
    const/4 v2, 0x0

    .line 327
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->is_ready()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 336
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 329
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v3, p1, p2}, Lcom/jirbo/adcolony/ADCAdManager;->is_ad_available(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v1

    .line 331
    .local v1, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_v4vc_zone(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 333
    .end local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 327
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized is_video_ad_available(Ljava/lang/String;)Z
    .locals 2
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 301
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;ZZ)Z
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

.method declared-synchronized is_video_ad_available(Ljava/lang/String;ZZ)Z
    .locals 4
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "from_ad_availability"    # Z
    .param p3, "with_errors"    # Z

    .prologue
    const/4 v2, 0x0

    .line 307
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->is_ready()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 308
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v3, p1, p2}, Lcom/jirbo/adcolony/ADCAdManager;->is_ad_available(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v1

    .line 310
    .local v1, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    invoke-virtual {v1, p3}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_video_zone(Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 312
    .end local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 307
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized launch_video(Lcom/jirbo/adcolony/AdColonyAd;)Z
    .locals 3
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCConfiguration;->current_zone:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Zone;->check_for_skip_due_to_interval()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    const/4 v2, 0x3

    iput v2, v1, Lcom/jirbo/adcolony/AdColonyAd;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    const/4 v1, 0x0

    .line 450
    :goto_0
    monitor-exit p0

    return v1

    .line 435
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCController;->on_video_start(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 437
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->reset()V

    .line 438
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-eqz v1, :cond_1

    .line 440
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Launching AdColonyOverlay"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 441
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 450
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Launching AdColonyFullscreen"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 447
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 429
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method on_resume()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCController;->monitor_thread_active:Z

    .line 82
    new-instance v0, Lcom/jirbo/adcolony/ADCController$1;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/ADCController$1;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;)V

    .line 89
    return-void
.end method

.method on_stop()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/jirbo/adcolony/ADCController$3;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/ADCController$3;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;)V

    .line 113
    return-void
.end method

.method on_suspend()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCController;->monitor_thread_active:Z

    .line 95
    new-instance v0, Lcom/jirbo/adcolony/ADCController$2;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/ADCController$2;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;)V

    .line 102
    return-void
.end method

.method declared-synchronized on_v4vc_result(ZLjava/lang/String;I)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "amount"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/ADC;->v4vc_results_handler:Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;->notify_listeners(ZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized on_video_finish(ZLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 10
    .param p1, "is_replay"    # Z
    .param p2, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    const/4 v5, 0x1

    .line 157
    monitor-enter p0

    if-nez p2, :cond_1

    .line 203
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :try_start_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/jirbo/adcolony/ADCController;->on_video_progress(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 160
    if-nez p1, :cond_0

    .line 162
    invoke-virtual {p2}, Lcom/jirbo/adcolony/AdColonyAd;->is_v4vc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p2, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->advance_play_index()V

    .line 165
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget-object v1, p2, Lcom/jirbo/adcolony/AdColonyAd;->zone_id:Ljava/lang/String;

    iget-object v2, p2, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_id:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCPlayHistory;->add_play_event(Ljava/lang/String;I)V

    .line 166
    sget-object v8, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    check-cast v8, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .line 168
    .local v8, "v4vc_ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    invoke-virtual {v8}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "v4vc_name":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardAmount()I

    move-result v4

    .line 171
    .local v4, "v4vc_amount":I
    const/4 v7, 0x1

    .line 173
    .local v7, "send_reward_event":Z
    invoke-virtual {v8}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getViewsPerReward()I

    move-result v9

    .line 174
    .local v9, "views_per_reward":I
    if-le v9, v5, :cond_2

    .line 176
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v8}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->get_reward_credit(Ljava/lang/String;)I

    move-result v6

    .line 177
    .local v6, "reward_credit":I
    add-int/lit8 v6, v6, 0x1

    .line 178
    if-lt v6, v9, :cond_4

    const/4 v6, 0x0

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v8}, Lcom/jirbo/adcolony/AdColonyV4VCAd;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/jirbo/adcolony/ADCPlayHistory;->set_reward_credit(Ljava/lang/String;I)V

    .line 183
    .end local v6    # "reward_credit":I
    :cond_2
    if-eqz v7, :cond_0

    .line 185
    iget-object v0, v8, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->v4vc:Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->client_side:Z

    if-eqz v0, :cond_3

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/jirbo/adcolony/ADCController;->on_v4vc_result(ZLjava/lang/String;I)V

    .line 190
    :cond_3
    new-instance v0, Lcom/jirbo/adcolony/ADCController$6;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/ADCController$6;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    .end local v3    # "v4vc_name":Ljava/lang/String;
    .end local v4    # "v4vc_amount":I
    .end local v7    # "send_reward_event":Z
    .end local v8    # "v4vc_ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .end local v9    # "views_per_reward":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    .restart local v3    # "v4vc_name":Ljava/lang/String;
    .restart local v4    # "v4vc_amount":I
    .restart local v6    # "reward_credit":I
    .restart local v7    # "send_reward_event":Z
    .restart local v8    # "v4vc_ad":Lcom/jirbo/adcolony/AdColonyV4VCAd;
    .restart local v9    # "views_per_reward":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method on_video_progress(DLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 6
    .param p1, "p"    # D
    .param p3, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 141
    new-instance v0, Lcom/jirbo/adcolony/ADCController$5;

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/ADCController$5;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 148
    return-void
.end method

.method declared-synchronized on_video_start(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/jirbo/adcolony/ADCConfiguration;->current_progress:D

    .line 118
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Tracking ad event - start"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 121
    iget-object v0, p1, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v1, v0, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    .line 123
    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->is_v4vc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p1, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$Zone;->advance_play_index()V

    .line 126
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyAd;->zone_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_id:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCPlayHistory;->add_play_event(Ljava/lang/String;I)V

    .line 128
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/ADCController$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/jirbo/adcolony/ADCController$4;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/AdColonyAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepare_v4vc_ad(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V
    .locals 2
    .param p1, "video_ad"    # Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_v4vc_ad(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepare_video_ad(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)V
    .locals 2
    .param p1, "video_ad"    # Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_video_ad(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized prepare_video_ad(Lcom/jirbo/adcolony/AdColonyVideoAd;)V
    .locals 2
    .param p1, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_video_ad(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queue_event(Lcom/jirbo/adcolony/ADCEvent;)V
    .locals 2
    .param p1, "e"    # Lcom/jirbo/adcolony/ADCEvent;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->event_queue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 42
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->is_ready()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->event_queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCController;->monitor_thread_active:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCController;->update()V

    .line 46
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method set_log_level(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 507
    invoke-static {p1}, Lcom/jirbo/adcolony/ADC;->set_log_level(I)V

    .line 508
    return-void
.end method

.method declared-synchronized set_reward_credit(Ljava/lang/String;I)V
    .locals 1
    .param p1, "currency_name"    # Ljava/lang/String;
    .param p2, "credit"    # I

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v0, p1, p2}, Lcom/jirbo/adcolony/ADCPlayHistory;->set_reward_credit(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized show_v4vc_ad(Lcom/jirbo/adcolony/AdColonyV4VCAd;)Z
    .locals 5
    .param p1, "video_ad"    # Lcom/jirbo/adcolony/AdColonyV4VCAd;

    .prologue
    const/4 v2, 0x0

    .line 410
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 411
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyV4VCAd;->zone_id:Ljava/lang/String;

    .line 413
    .local v1, "zone_id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCController;->is_v4vc_ad_available(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 423
    .end local v1    # "zone_id":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v2

    .line 415
    .restart local v1    # "zone_id":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Showing v4vc for zone "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 417
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCController;->prepare_v4vc_ad(Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCController;->launch_video(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 420
    .end local v1    # "zone_id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 422
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 410
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized show_video_ad(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)Z
    .locals 5
    .param p1, "video_ad"    # Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    .prologue
    const/4 v2, 0x0

    .line 377
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 379
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    .line 381
    .local v1, "zone_id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 392
    .end local v1    # "zone_id":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v2

    .line 383
    .restart local v1    # "zone_id":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Showing ad for zone "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 385
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCController;->prepare_video_ad(Lcom/jirbo/adcolony/AdColonyInterstitialAd;)V

    .line 387
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCController;->launch_video(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 389
    .end local v1    # "zone_id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 377
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized show_video_ad(Lcom/jirbo/adcolony/AdColonyVideoAd;)Z
    .locals 5
    .param p1, "video_ad"    # Lcom/jirbo/adcolony/AdColonyVideoAd;

    .prologue
    const/4 v2, 0x0

    .line 354
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 356
    iget-object v1, p1, Lcom/jirbo/adcolony/AdColonyVideoAd;->zone_id:Ljava/lang/String;

    .line 358
    .local v1, "zone_id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 369
    .end local v1    # "zone_id":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v2

    .line 360
    .restart local v1    # "zone_id":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Showing ad for zone "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 362
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCController;->prepare_video_ad(Lcom/jirbo/adcolony/AdColonyVideoAd;)V

    .line 364
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCController;->launch_video(Lcom/jirbo/adcolony/AdColonyAd;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 366
    .end local v1    # "zone_id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 368
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 354
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "json_payload"    # Ljava/lang/String;
    .param p3, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 218
    new-instance v0, Lcom/jirbo/adcolony/ADCController$8;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/ADCController$8;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 225
    return-void
.end method

.method track_app_event(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "json_payload"    # Ljava/lang/String;

    .prologue
    .line 207
    new-instance v0, Lcom/jirbo/adcolony/ADCController$7;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/jirbo/adcolony/ADCController$7;-><init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method declared-synchronized update()V
    .locals 5

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->disabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    :goto_0
    monitor-exit p0

    return-void

    .line 480
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCController;->dispatch_events()V

    .line 482
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->configured:Z

    if-nez v1, :cond_3

    .line 484
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->open_udid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->time_waiting_for_open_udid:Lcom/jirbo/adcolony/ADCUtil$Stopwatch;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;->elapsed_seconds()D

    move-result-wide v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCConfiguration;->configure()V

    .line 487
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->configured:Z

    .line 489
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 492
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCAdManager;->update()V

    .line 493
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCMediaManager;->update()V

    .line 494
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCSessionManager;->update()V

    .line 495
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCReportingManager;->update()V

    .line 496
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->update()V

    .line 497
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController;->zone_state_manager:Lcom/jirbo/adcolony/ADCZoneStateManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCZoneStateManager;->update()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 501
    .local v0, "err":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/RuntimeException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 476
    .end local v0    # "err":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
