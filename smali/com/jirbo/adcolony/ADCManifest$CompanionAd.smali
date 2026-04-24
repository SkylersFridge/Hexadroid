.class Lcom/jirbo/adcolony/ADCManifest$CompanionAd;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompanionAd"
.end annotation


# instance fields
.field _static:Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;

.field ad_campaign_id:I

.field ad_id:I

.field dissolve:Z

.field dissolve_delay:D

.field enable_in_app_store:Z

.field enabled:Z

.field html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 1

    .prologue
    .line 1624
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    if-nez v0, :cond_0

    .line 1627
    :goto_0
    return-void

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->_static:Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->cache_media()V

    .line 1626
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->cache_media()V

    goto :goto_0
.end method

.method is_ready()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1591
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->enabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1594
    :cond_0
    :goto_0
    return v0

    .line 1592
    :cond_1
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1593
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->_static:Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->is_ready()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1594
    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1599
    if-nez p1, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return v0

    .line 1601
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    .line 1602
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1604
    :cond_2
    const-string v2, "uuid"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->uuid:Ljava/lang/String;

    .line 1605
    const-string v2, "ad_id"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->ad_id:I

    .line 1606
    const-string v2, "ad_campaign_id"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->ad_campaign_id:I

    .line 1607
    const-string v2, "dissolve"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->dissolve:Z

    .line 1608
    const-string v2, "enable_in_app_store"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enable_in_app_store:Z

    .line 1609
    const-string v2, "dissolve_delay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->dissolve_delay:D

    .line 1612
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->_static:Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;

    .line 1613
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->_static:Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;

    const-string v3, "static"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1616
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    .line 1617
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    const-string v3, "html5"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1619
    goto :goto_0
.end method
