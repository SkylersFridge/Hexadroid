.class Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrePopupDialogInfo"
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

.field option_no:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field option_yes:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field scale:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1373
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->cache_media()V

    .line 1375
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_yes:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1376
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_no:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1377
    return-void
.end method

.method is_ready()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1339
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1342
    :cond_0
    :goto_0
    return v0

    .line 1340
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_yes:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 1347
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->scale:I

    .line 1348
    const-string v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->label_reward:Ljava/lang/String;

    .line 1349
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->width:I

    .line 1350
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->height:I

    .line 1351
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->image:Ljava/lang/String;

    .line 1352
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->image_last_modified:Ljava/lang/String;

    .line 1353
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->label:Ljava/lang/String;

    .line 1354
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->label_rgba:Ljava/lang/String;

    .line 1355
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->label_shadow_rgba:Ljava/lang/String;

    .line 1356
    const-string v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->label_fraction:Ljava/lang/String;

    .line 1357
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->label_html:Ljava/lang/String;

    .line 1359
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1360
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v0

    .line 1362
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_yes:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1363
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_yes:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "option_yes"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_no:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1366
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_no:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "option_no"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1368
    const/4 v0, 0x1

    goto :goto_0
.end method
