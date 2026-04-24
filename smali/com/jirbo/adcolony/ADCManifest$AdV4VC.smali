.class Lcom/jirbo/adcolony/ADCManifest$AdV4VC;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdV4VC"
.end annotation


# instance fields
.field enabled:Z

.field post_popup:Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

.field pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    if-nez v0, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->cache_media()V

    .line 1274
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->post_popup:Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->cache_media()V

    goto :goto_0
.end method

.method is_ready()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1248
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->is_ready()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return v0

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->post_popup:Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1255
    if-nez p1, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v0

    .line 1257
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    .line 1258
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1260
    :cond_2
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    .line 1261
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    const-string v3, "pre_popup"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1263
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->post_popup:Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

    .line 1264
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->post_popup:Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

    const-string v3, "post_popup"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1266
    goto :goto_0
.end method
