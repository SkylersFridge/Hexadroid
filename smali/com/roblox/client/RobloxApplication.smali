.class public Lcom/roblox/client/RobloxApplication;
.super Landroid/app/Application;
.source "RobloxApplication.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field static mCriticalError:Ljava/lang/String;


# instance fields
.field private mAndroidTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "roblox.app"

    sput-object v0, Lcom/roblox/client/RobloxApplication;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/RobloxApplication;->mCriticalError:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/RobloxApplication;->mAndroidTracker:Lcom/google/android/gms/analytics/Tracker;

    return-void
.end method

.method static logTrimMemory(Ljava/lang/String;I)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    .line 77
    sparse-switch p1, :sswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 79
    :sswitch_0
    const-string v0, "TRIM_MEMORY_COMPLETE"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :sswitch_1
    const-string v0, "TRIM_MEMORY_MODERATE"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :sswitch_2
    const-string v0, "TRIM_MEMORY_BACKGROUND"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :sswitch_3
    const-string v0, "TRIM_MEMORY_UI_HIDDEN"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x28 -> :sswitch_2
        0x3c -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public checkShowCriticalError()Z
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/roblox/client/RobloxApplication;->mCriticalError:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/roblox/client/RobloxApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***  CriticalError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/RobloxApplication;->mCriticalError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    sget-object v0, Lcom/roblox/client/RobloxApplication;->mCriticalError:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized getAndroidTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 4

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/roblox/client/RobloxApplication;->mAndroidTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v1, :cond_0

    .line 65
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 66
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/RobloxApplication;->mAndroidTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 67
    iget-object v1, p0, Lcom/roblox/client/RobloxApplication;->mAndroidTracker:Lcom/google/android/gms/analytics/Tracker;

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/Tracker;->setSampleRate(D)V

    .line 69
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/RobloxApplication;->mAndroidTracker:Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/RobloxApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/RobloxSettings;->initConfig(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "ua":Ljava/lang/String;
    sget-object v2, Lcom/roblox/client/RobloxApplication;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 49
    .end local v1    # "ua":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/RobloxApplication;->setCriticalErrorOccured(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCriticalErrorOccured(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    sput-object p1, Lcom/roblox/client/RobloxApplication;->mCriticalError:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/roblox/client/RobloxApplication;->TAG:Ljava/lang/String;

    const-string v1, "************************************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, Lcom/roblox/client/RobloxApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***  CriticalError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/RobloxApplication;->mCriticalError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/roblox/client/RobloxApplication;->TAG:Ljava/lang/String;

    const-string v1, "************************************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
