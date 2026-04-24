.class Lcom/jirbo/adcolony/ADCUtil;
.super Ljava/lang/Object;
.source "ADCUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCUtil$Timer;,
        Lcom/jirbo/adcolony/ADCUtil$Stopwatch;
    }
.end annotation


# static fields
.field static byte_buffer:[B

.field static string_buffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/jirbo/adcolony/ADCUtil;->byte_buffer:[B

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCUtil;->string_buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    return-void
.end method

.method static application_exists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "package_name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 27
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 28
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v2, 0x1

    .line 33
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 31
    :catch_0
    move-exception v0

    .line 33
    .local v0, "not_installed":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static application_version()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 42
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v0, "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v1

    .line 44
    .end local v0    # "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 46
    .restart local v0    # "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Failed to retrieve package info."

    invoke-static {v1}, Lcom/jirbo/adcolony/ADC;->log_error(Ljava/lang/String;)V

    .line 47
    const-string v1, "1.0"

    goto :goto_0
.end method

.method static calculate_sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/jirbo/adcolony/AeSimpleSHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "err":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static create_uuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static current_time()D
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static format(DI)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # D
    .param p2, "decimal_places"    # I

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, v0}, Lcom/jirbo/adcolony/ADCUtil;->format(DILjava/lang/StringBuilder;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static format(DILjava/lang/StringBuilder;)V
    .locals 11
    .param p0, "n"    # D
    .param p2, "decimal_places"    # I
    .param p3, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 82
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    :cond_0
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    const-wide/16 v7, 0x0

    cmpg-double v7, p0, v7

    if-gez v7, :cond_3

    .line 90
    neg-double p0, p0

    .line 91
    const/16 v7, 0x2d

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :cond_3
    if-nez p2, :cond_4

    .line 96
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-virtual {p3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    :cond_4
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    int-to-double v9, p2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-long v3, v7

    .line 101
    .local v3, "power_10":J
    long-to-double v7, v3

    mul-double/2addr v7, p0

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 102
    .local v1, "long_value":J
    div-long v7, v1, v3

    invoke-virtual {p3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const/16 v7, 0x2e

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    rem-long/2addr v1, v3

    .line 105
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-nez v7, :cond_5

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 109
    const/16 v7, 0x30

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "i":I
    :cond_5
    const-wide/16 v7, 0xa

    mul-long v5, v1, v7

    .local v5, "temp":J
    :goto_2
    cmp-long v7, v5, v3

    if-gez v7, :cond_6

    .line 116
    const/16 v7, 0x30

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    const-wide/16 v7, 0xa

    mul-long/2addr v5, v7

    goto :goto_2

    .line 118
    :cond_6
    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static load_file(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/jirbo/adcolony/ADCUtil;->load_file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static load_file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 131
    if-eqz p0, :cond_2

    .line 135
    :try_start_0
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "Loading "

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 136
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "infile":Ljava/io/FileInputStream;
    sget-object v5, Lcom/jirbo/adcolony/ADCUtil;->byte_buffer:[B

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    sget-object v4, Lcom/jirbo/adcolony/ADCUtil;->string_buffer:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    sget-object v4, Lcom/jirbo/adcolony/ADCUtil;->string_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    sget-object v4, Lcom/jirbo/adcolony/ADCUtil;->byte_buffer:[B

    const/4 v6, 0x0

    sget-object v7, Lcom/jirbo/adcolony/ADCUtil;->byte_buffer:[B

    array-length v7, v7

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 142
    .local v0, "count":I
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 146
    sget-object v4, Lcom/jirbo/adcolony/ADCUtil;->string_buffer:Ljava/lang/StringBuilder;

    sget-object v6, Lcom/jirbo/adcolony/ADCUtil;->byte_buffer:[B

    aget-byte v6, v6, v2

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    :cond_0
    sget-object v4, Lcom/jirbo/adcolony/ADCUtil;->byte_buffer:[B

    const/4 v6, 0x0

    sget-object v7, Lcom/jirbo/adcolony/ADCUtil;->byte_buffer:[B

    array-length v7, v7

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 152
    sget-object v4, Lcom/jirbo/adcolony/ADCUtil;->string_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v5

    .line 161
    .end local v0    # "count":I
    .end local v3    # "infile":Ljava/io/FileInputStream;
    :goto_2
    return-object v4

    .line 153
    .restart local v3    # "infile":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    .end local v3    # "infile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "err":Ljava/io/IOException;
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "Unable to load "

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 158
    const-string v4, ""

    goto :goto_2

    .line 161
    .end local v1    # "err":Ljava/io/IOException;
    :cond_2
    const-string v4, ""

    goto :goto_2
.end method

.method static package_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
