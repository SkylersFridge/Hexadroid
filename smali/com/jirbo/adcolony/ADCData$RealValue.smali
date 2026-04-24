.class Lcom/jirbo/adcolony/ADCData$RealValue;
.super Lcom/jirbo/adcolony/ADCData$Value;
.source "ADCData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RealValue"
.end annotation


# instance fields
.field value:D


# direct methods
.method constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCData$Value;-><init>()V

    iput-wide p1, p0, Lcom/jirbo/adcolony/ADCData$RealValue;->value:D

    return-void
.end method


# virtual methods
.method is_Real()Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x1

    return v0
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 2
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/jirbo/adcolony/ADCData$RealValue;->value:D

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCWriter;->print(D)V

    .line 480
    return-void
.end method

.method to_Integer()I
    .locals 2

    .prologue
    .line 475
    iget-wide v0, p0, Lcom/jirbo/adcolony/ADCData$RealValue;->value:D

    double-to-int v0, v0

    return v0
.end method

.method to_Real()D
    .locals 2

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/jirbo/adcolony/ADCData$RealValue;->value:D

    return-wide v0
.end method
