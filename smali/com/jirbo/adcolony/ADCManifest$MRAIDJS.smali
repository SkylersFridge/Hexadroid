.class Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MRAIDJS"
.end annotation


# instance fields
.field enabled:Z

.field last_modified:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1804
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    return-void
.end method

.method is_ready()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1784
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->enabled:Z

    if-nez v1, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return v0

    .line 1785
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 2
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x1

    .line 1791
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1799
    :cond_0
    :goto_0
    return v0

    .line 1793
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->enabled:Z

    .line 1794
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->enabled:Z

    if-eqz v1, :cond_0

    .line 1796
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->url:Ljava/lang/String;

    .line 1797
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->last_modified:Ljava/lang/String;

    goto :goto_0
.end method
