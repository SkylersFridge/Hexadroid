.class Lcom/jirbo/adcolony/ADCUtil$Stopwatch;
.super Ljava/lang/Object;
.source "ADCUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stopwatch"
.end annotation


# instance fields
.field start_ms:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;->start_ms:J

    return-void
.end method


# virtual methods
.method elapsed_seconds()D
    .locals 6

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, "cur_ms":J
    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;->start_ms:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method restart()V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;->start_ms:J

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCUtil$Stopwatch;->elapsed_seconds()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/jirbo/adcolony/ADCUtil;->format(DI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
