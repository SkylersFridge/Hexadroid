.class Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HTML5CompanionAdInfo"
.end annotation


# instance fields
.field background_color:Ljava/lang/String;

.field background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

.field close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field enabled:Z

.field html5_tag:Ljava/lang/String;

.field load_spinner_enabled:Z

.field load_timeout:D

.field load_timeout_enabled:Z

.field mraid_js:Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

.field replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 1

    .prologue
    .line 1766
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1767
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->mraid_js:Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->mraid_js:Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->cache_media()V

    .line 1768
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->cache_media()V

    .line 1769
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1770
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    goto :goto_0
.end method

.method is_ready()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1719
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1721
    const/16 v0, 0x8

    sput v0, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 1722
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Ad not ready due to no network connection."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    .line 1729
    :cond_0
    :goto_0
    return v0

    .line 1724
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->enabled:Z

    if-eqz v1, :cond_0

    .line 1725
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->mraid_js:Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1728
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1729
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 1734
    if-nez p1, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return v0

    .line 1736
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->enabled:Z

    .line 1738
    const-string v1, "load_timeout"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->load_timeout:D

    .line 1739
    const-string v1, "load_timeout_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->load_timeout_enabled:Z

    .line 1740
    const-string v1, "load_spinner_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->load_spinner_enabled:Z

    .line 1741
    const-string v1, "background_color"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->background_color:Ljava/lang/String;

    .line 1743
    const-string v1, "html5_tag"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->html5_tag:Ljava/lang/String;

    .line 1746
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->mraid_js:Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

    .line 1747
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->mraid_js:Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

    const-string v2, "mraid_js"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1750
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1751
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1754
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1755
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "replay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1759
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1761
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
