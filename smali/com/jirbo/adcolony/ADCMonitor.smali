.class Lcom/jirbo/adcolony/ADCMonitor;
.super Ljava/lang/Object;
.source "ADCMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCMonitor$Pinger;
    }
.end annotation


# static fields
.field public static final SECONDS_BEFORE_IDLE:I = 0x5

.field public static final SECONDS_BEFORE_SUSPEND:I = 0xa

.field static volatile last_ping_ms:J

.field static monitor_mutex:Ljava/lang/String;

.field static volatile singleton:Lcom/jirbo/adcolony/ADCMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "MONITOR_MUTEX"

    sput-object v0, Lcom/jirbo/adcolony/ADCMonitor;->monitor_mutex:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method static ping()V
    .locals 4

    .prologue
    .line 20
    sget-object v1, Lcom/jirbo/adcolony/ADCMonitor;->monitor_mutex:Ljava/lang/String;

    monitor-enter v1

    .line 22
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/jirbo/adcolony/ADCMonitor;->last_ping_ms:J

    .line 23
    sget-object v0, Lcom/jirbo/adcolony/ADCMonitor;->singleton:Lcom/jirbo/adcolony/ADCMonitor;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "Creating ADC Monitor singleton."

    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->log_dev(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/jirbo/adcolony/ADCMonitor;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCMonitor;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCMonitor;->singleton:Lcom/jirbo/adcolony/ADCMonitor;

    .line 27
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Lcom/jirbo/adcolony/ADCMonitor;->singleton:Lcom/jirbo/adcolony/ADCMonitor;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 29
    :cond_0
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 34
    sget v11, Lcom/jirbo/adcolony/ADC;->log_level:I

    invoke-static {v11}, Lcom/jirbo/adcolony/ADC;->set_log_level(I)V

    .line 36
    sget-object v11, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v12, "ADC Monitor Started."

    invoke-virtual {v11, v12}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 37
    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCController;->on_resume()V

    .line 39
    const/4 v4, 0x0

    .line 41
    .local v4, "is_idle":Z
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->isFinishing()Z

    move-result v11

    if-nez v11, :cond_1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 45
    .local v9, "time_before_sleep":J
    const/4 v11, 0x0

    sput-boolean v11, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 46
    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCController;->update()V

    .line 47
    sget-boolean v11, Lcom/jirbo/adcolony/ADC;->active:Z

    if-eqz v11, :cond_4

    const-wide/16 v5, 0x32

    .line 49
    .local v5, "next_sleep_ms":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 50
    .local v1, "cur_time_ms":J
    sget-wide v11, Lcom/jirbo/adcolony/ADCMonitor;->last_ping_ms:J

    sub-long v11, v1, v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v3, v11

    .line 52
    .local v3, "elapsed_s":I
    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCController;->update()V

    .line 54
    if-eqz v4, :cond_8

    .line 56
    const/16 v11, 0xa

    if-lt v3, v11, :cond_6

    .line 80
    .end local v1    # "cur_time_ms":J
    .end local v3    # "elapsed_s":I
    .end local v5    # "next_sleep_ms":J
    .end local v9    # "time_before_sleep":J
    :cond_1
    sget-object v12, Lcom/jirbo/adcolony/ADCMonitor;->monitor_mutex:Ljava/lang/String;

    monitor-enter v12

    .line 82
    const/4 v11, 0x0

    :try_start_0
    sput-object v11, Lcom/jirbo/adcolony/ADCMonitor;->singleton:Lcom/jirbo/adcolony/ADCMonitor;

    .line 83
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-nez v4, :cond_2

    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCController;->on_suspend()V

    .line 87
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->isFinishing()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 89
    const/4 v11, 0x1

    sput-boolean v11, Lcom/jirbo/adcolony/ADC;->finishing:Z

    .line 90
    const-wide/16 v11, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/jirbo/adcolony/ADCMonitor;->sleep(J)V

    .line 91
    sget-boolean v11, Lcom/jirbo/adcolony/ADC;->finishing:Z

    if-eqz v11, :cond_3

    .line 93
    sget-object v11, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v12, "ADC.finishing, controller on_stop"

    invoke-virtual {v11, v12}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 94
    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCController;->on_stop()V

    .line 95
    invoke-static {}, Lcom/jirbo/adcolony/ADCThreadPool;->reset()V

    .line 98
    :cond_3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "Exiting monitor"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    return-void

    .line 47
    .restart local v9    # "time_before_sleep":J
    :cond_4
    if-eqz v4, :cond_5

    const/16 v11, 0x7d0

    :goto_2
    int-to-long v5, v11

    goto :goto_1

    :cond_5
    const/16 v11, 0xfa

    goto :goto_2

    .line 57
    .restart local v1    # "cur_time_ms":J
    .restart local v3    # "elapsed_s":I
    .restart local v5    # "next_sleep_ms":J
    :cond_6
    const/4 v11, 0x5

    if-ge v3, v11, :cond_7

    .line 59
    const/4 v4, 0x0

    .line 60
    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCController;->on_resume()V

    .line 61
    const-string v11, "AdColony is active."

    invoke-static {v11}, Lcom/jirbo/adcolony/ADC;->log_dev(Ljava/lang/String;)V

    .line 74
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/jirbo/adcolony/ADCMonitor;->sleep(J)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 76
    .local v7, "time_after_sleep":J
    sub-long v11, v7, v9

    const-wide/16 v13, 0xbb8

    cmp-long v11, v11, v13

    if-gtz v11, :cond_0

    sub-long v11, v7, v9

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 77
    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v11, v11, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    iget-wide v12, v11, Lcom/jirbo/adcolony/ADCSessionManager;->session_time:D

    sub-long v14, v7, v9

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/jirbo/adcolony/ADCSessionManager;->session_time:D

    goto/16 :goto_0

    .line 66
    .end local v7    # "time_after_sleep":J
    :cond_8
    const/4 v11, 0x5

    if-lt v3, v11, :cond_7

    .line 68
    const-string v11, "AdColony is idle."

    invoke-static {v11}, Lcom/jirbo/adcolony/ADC;->log_dev(Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x1

    .line 70
    sget-object v11, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v11}, Lcom/jirbo/adcolony/ADCController;->on_suspend()V

    goto :goto_3

    .line 83
    .end local v1    # "cur_time_ms":J
    .end local v3    # "elapsed_s":I
    .end local v5    # "next_sleep_ms":J
    .end local v9    # "time_before_sleep":J
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11
.end method

.method sleep(J)V
    .locals 1
    .param p1, "ms"    # J

    .prologue
    .line 105
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method
