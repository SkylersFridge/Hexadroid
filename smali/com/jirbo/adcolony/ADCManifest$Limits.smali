.class Lcom/jirbo/adcolony/ADCManifest$Limits;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Limits"
.end annotation


# instance fields
.field custom_play_cap:I

.field custom_play_cap_period:I

.field daily_play_cap:I

.field monthly_play_cap:I

.field total_play_cap:I

.field volatile_expiration:I

.field volatile_play_cap:I

.field weekly_play_cap:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 1
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 1088
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1099
    :goto_0
    return v0

    .line 1090
    :cond_0
    const-string v0, "daily_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->daily_play_cap:I

    .line 1091
    const-string v0, "custom_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->custom_play_cap:I

    .line 1092
    const-string v0, "custom_play_cap_period"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->custom_play_cap_period:I

    .line 1093
    const-string v0, "total_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->total_play_cap:I

    .line 1094
    const-string v0, "monthly_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->monthly_play_cap:I

    .line 1095
    const-string v0, "weekly_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->weekly_play_cap:I

    .line 1096
    const-string v0, "volatile_expiration"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->volatile_expiration:I

    .line 1097
    const-string v0, "volatile_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCManifest$Limits;->volatile_play_cap:I

    .line 1099
    const/4 v0, 0x1

    goto :goto_0
.end method
