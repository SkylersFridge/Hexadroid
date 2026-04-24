.class Lcom/jirbo/adcolony/ADCData$StringValue;
.super Lcom/jirbo/adcolony/ADCData$Value;
.source "ADCData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringValue"
.end annotation


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCData$Value;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCData$StringValue;->value:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method is_String()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$StringValue;->value:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$StringValue;->print_json(Lcom/jirbo/adcolony/ADCWriter;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method to_Integer()I
    .locals 2

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCData$StringValue;->to_Real()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method to_Logical()Z
    .locals 2

    .prologue
    .line 456
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$StringValue;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "lowercase":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 458
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method to_Real()D
    .locals 3

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$StringValue;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 445
    :goto_0
    return-wide v1

    .line 443
    :catch_0
    move-exception v0

    .line 445
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method to_String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$StringValue;->value:Ljava/lang/String;

    return-object v0
.end method
