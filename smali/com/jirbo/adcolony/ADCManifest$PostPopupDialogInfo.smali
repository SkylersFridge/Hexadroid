.class Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PostPopupDialogInfo"
.end annotation


# instance fields
.field height:I

.field image:Ljava/lang/String;

.field image_last_modified:Ljava/lang/String;

.field label:Ljava/lang/String;

.field label_fraction:Ljava/lang/String;

.field label_html:Ljava/lang/String;

.field label_reward:Ljava/lang/String;

.field label_rgba:Ljava/lang/String;

.field label_shadow_rgba:Ljava/lang/String;

.field logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

.field option_done:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field scale:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1470
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->cache_media()V

    .line 1472
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->option_done:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1473
    return-void
.end method

.method is_ready()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1439
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return v0

    .line 1440
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1441
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->option_done:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 1447
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->scale:I

    .line 1448
    const-string v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->label_reward:Ljava/lang/String;

    .line 1449
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->width:I

    .line 1450
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->height:I

    .line 1451
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->image:Ljava/lang/String;

    .line 1452
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->image_last_modified:Ljava/lang/String;

    .line 1453
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->label:Ljava/lang/String;

    .line 1454
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->label_rgba:Ljava/lang/String;

    .line 1455
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->label_shadow_rgba:Ljava/lang/String;

    .line 1456
    const-string v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->label_fraction:Ljava/lang/String;

    .line 1457
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->label_html:Ljava/lang/String;

    .line 1459
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1460
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1465
    :cond_0
    :goto_0
    return v0

    .line 1462
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->option_done:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1463
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->option_done:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "option_done"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    const/4 v0, 0x1

    goto :goto_0
.end method
