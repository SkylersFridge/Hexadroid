.class Lcom/jirbo/adcolony/ADCData$FalseValue;
.super Lcom/jirbo/adcolony/ADCData$Value;
.source "ADCData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FalseValue"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCData$Value;-><init>()V

    return-void
.end method


# virtual methods
.method is_Logical()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 1
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    .line 128
    const-string v0, "false"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method to_String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const-string v0, "false"

    return-object v0
.end method
