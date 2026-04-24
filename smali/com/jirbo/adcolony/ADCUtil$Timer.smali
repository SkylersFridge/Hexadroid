.class Lcom/jirbo/adcolony/ADCUtil$Timer;
.super Ljava/lang/Object;
.source "ADCUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Timer"
.end annotation


# instance fields
.field target_time:D


# direct methods
.method constructor <init>(D)V
    .locals 2
    .param p1, "seconds"    # D

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCUtil$Timer;->target_time:D

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/ADCUtil$Timer;->restart(D)V

    .line 197
    return-void
.end method


# virtual methods
.method expired()Z
    .locals 4

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCUtil$Timer;->remaining_seconds()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method remaining_seconds()D
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double v0, v6, v8

    .line 212
    .local v0, "cur_time":D
    iget-wide v6, p0, Lcom/jirbo/adcolony/ADCUtil$Timer;->target_time:D

    sub-double v2, v6, v0

    .line 213
    .local v2, "remaining":D
    cmpg-double v6, v2, v4

    if-gtz v6, :cond_0

    move-wide v2, v4

    .line 214
    .end local v2    # "remaining":D
    :cond_0
    return-wide v2
.end method

.method restart(D)V
    .locals 4
    .param p1, "seconds"    # D

    .prologue
    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCUtil$Timer;->target_time:D

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCUtil$Timer;->remaining_seconds()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/ADCUtil;->format(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
