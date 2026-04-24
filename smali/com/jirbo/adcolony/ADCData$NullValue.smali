.class Lcom/jirbo/adcolony/ADCData$NullValue;
.super Lcom/jirbo/adcolony/ADCData$Value;
.source "ADCData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullValue"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCData$Value;-><init>()V

    return-void
.end method


# virtual methods
.method is_null()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    .line 111
    const-string v0, "null"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method to_String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "null"

    return-object v0
.end method
