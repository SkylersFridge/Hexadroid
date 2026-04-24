.class Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ButtonInfo"
.end annotation


# instance fields
.field click_action:Ljava/lang/String;

.field click_action_type:Ljava/lang/String;

.field delay:I

.field enabled:Z

.field event:Ljava/lang/String;

.field height:I

.field image_down:Ljava/lang/String;

.field image_down_last_modified:Ljava/lang/String;

.field image_normal:Ljava/lang/String;

.field image_normal_last_modified:Ljava/lang/String;

.field label:Ljava/lang/String;

.field label_html:Ljava/lang/String;

.field label_rgba:Ljava/lang/String;

.field label_shadow_rgba:Ljava/lang/String;

.field scale:I

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1569
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    return-void
.end method

.method is_ready()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1537
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return v0

    .line 1538
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1539
    :cond_2
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 2
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x1

    .line 1545
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1564
    :goto_0
    return v0

    .line 1547
    :cond_0
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->enabled:Z

    .line 1548
    const-string v1, "delay"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->delay:I

    .line 1549
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->width:I

    .line 1550
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->height:I

    .line 1551
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->scale:I

    .line 1552
    const-string v1, "image_normal"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    .line 1553
    const-string v1, "image_normal_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal_last_modified:Ljava/lang/String;

    .line 1554
    const-string v1, "image_down"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    .line 1555
    const-string v1, "image_down_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down_last_modified:Ljava/lang/String;

    .line 1556
    const-string v1, "click_action"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->click_action:Ljava/lang/String;

    .line 1557
    const-string v1, "click_action_type"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->click_action_type:Ljava/lang/String;

    .line 1558
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->label:Ljava/lang/String;

    .line 1559
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->label_rgba:Ljava/lang/String;

    .line 1560
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->label_shadow_rgba:Ljava/lang/String;

    .line 1561
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->label_html:Ljava/lang/String;

    .line 1562
    const-string v1, "event"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->event:Ljava/lang/String;

    goto/16 :goto_0
.end method
