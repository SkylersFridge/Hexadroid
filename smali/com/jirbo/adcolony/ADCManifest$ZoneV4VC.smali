.class Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoneV4VC"
.end annotation


# instance fields
.field client_side:Z

.field enabled:Z

.field limits:Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

.field reward_amount:I

.field reward_name:Ljava/lang/String;

.field videos_per_reward:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1200
    if-nez p1, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return v0

    .line 1202
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->enabled:Z

    .line 1203
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->enabled:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1205
    :cond_2
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->limits:Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

    .line 1206
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->limits:Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;

    const-string v3, "limits"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$V4VCLimits;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1208
    const-string v0, "reward_amount"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->reward_amount:I

    .line 1209
    const-string v0, "reward_name"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->reward_name:Ljava/lang/String;

    .line 1210
    const-string v0, "client_side"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->client_side:Z

    .line 1211
    const-string v0, "videos_per_reward"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$ZoneV4VC;->videos_per_reward:I

    move v0, v1

    .line 1213
    goto :goto_0
.end method
