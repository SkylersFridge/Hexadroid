.class Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "V4VCLimits"
.end annotation


# instance fields
.field custom_play_cap:I

.field custom_play_cap_period:I

.field daily_play_cap:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 1
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 1227
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1233
    :goto_0
    return v0

    .line 1229
    :cond_0
    const-string v0, "daily_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->daily_play_cap:I

    .line 1230
    const-string v0, "custom_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->custom_play_cap:I

    .line 1231
    const-string v0, "custom_play_cap_period"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->custom_play_cap_period:I

    .line 1233
    const/4 v0, 0x1

    goto :goto_0
.end method
