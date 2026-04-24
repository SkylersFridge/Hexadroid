.class Lcom/jirbo/adcolony/ADCData$IntegerValue;
.super Lcom/jirbo/adcolony/ADCData$Value;
.source "ADCData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntegerValue"
.end annotation


# instance fields
.field value:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCData$Value;-><init>()V

    iput p1, p0, Lcom/jirbo/adcolony/ADCData$IntegerValue;->value:I

    return-void
.end method


# virtual methods
.method is_Integer()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x1

    return v0
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 2
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    .line 495
    iget v0, p0, Lcom/jirbo/adcolony/ADCData$IntegerValue;->value:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCWriter;->print(J)V

    .line 496
    return-void
.end method

.method to_Integer()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/jirbo/adcolony/ADCData$IntegerValue;->value:I

    return v0
.end method

.method to_Real()D
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Lcom/jirbo/adcolony/ADCData$IntegerValue;->value:I

    int-to-double v0, v0

    return-wide v0
.end method
