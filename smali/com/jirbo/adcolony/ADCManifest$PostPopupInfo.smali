.class Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PostPopupInfo"
.end annotation


# instance fields
.field background_image:Ljava/lang/String;

.field background_image_last_modified:Ljava/lang/String;

.field background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

.field dialog:Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1413
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->cache_media()V

    .line 1415
    return-void
.end method

.method is_ready()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1391
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return v0

    .line 1392
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 1399
    const-string v1, "background_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_image:Ljava/lang/String;

    .line 1400
    const-string v1, "background_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_image_last_modified:Ljava/lang/String;

    .line 1402
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1403
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->background_logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return v0

    .line 1405
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;

    .line 1406
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;

    const-string v2, "dialog"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1408
    const/4 v0, 0x1

    goto :goto_0
.end method
