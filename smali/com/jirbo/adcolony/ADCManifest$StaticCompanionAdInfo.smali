.class Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StaticCompanionAdInfo"
.end annotation


# instance fields
.field _continue:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field background_image:Ljava/lang/String;

.field background_image_last_modified:Ljava/lang/String;

.field download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field enabled:Z

.field height:I

.field info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1691
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->enabled:Z

    if-nez v0, :cond_0

    .line 1697
    :goto_0
    return-void

    .line 1692
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->background_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->background_image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1694
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->_continue:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1695
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1696
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    goto :goto_0
.end method

.method is_ready()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1647
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 1653
    :cond_0
    :goto_0
    return v0

    .line 1648
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->background_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1649
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1650
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->_continue:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1651
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 1652
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "static_info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1659
    if-nez p1, :cond_1

    .line 1686
    :cond_0
    :goto_0
    return v0

    .line 1661
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->enabled:Z

    .line 1662
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->enabled:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1664
    :cond_2
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->width:I

    .line 1665
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->height:I

    .line 1666
    const-string v2, "background_image"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->background_image:Ljava/lang/String;

    .line 1667
    const-string v2, "background_image_last_modified"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->background_image_last_modified:Ljava/lang/String;

    .line 1669
    sget-object v2, Lcom/jirbo/adcolony/ADC;->force_static_url:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1671
    sget-object v2, Lcom/jirbo/adcolony/ADC;->force_static_url:Ljava/lang/String;

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->background_image:Ljava/lang/String;

    .line 1674
    :cond_3
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1675
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v3, "replay"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1677
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->_continue:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1678
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->_continue:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v3, "continue"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1680
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1681
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v3, "download"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1683
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1684
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v3, "info"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1686
    goto/16 :goto_0
.end method
