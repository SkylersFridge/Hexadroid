.class Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InAppBrowser"
.end annotation


# instance fields
.field back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field background_bar_image:Ljava/lang/String;

.field background_bar_image_last_modified:Ljava/lang/String;

.field background_color:Ljava/lang/String;

.field background_tile_image:Ljava/lang/String;

.field background_tile_image_last_modified:Ljava/lang/String;

.field close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

.field reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field tiny_glow_image:Ljava/lang/String;

.field tiny_glow_image_last_modified:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1173
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->tiny_glow_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->tiny_glow_image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_bar_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_bar_image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_tile_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_tile_image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->cache_media()V

    .line 1178
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1179
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1180
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1181
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1182
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1183
    return-void
.end method

.method is_ready()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1124
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->tiny_glow_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return v0

    .line 1125
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_bar_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_tile_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 1140
    if-nez p1, :cond_1

    .line 1168
    :cond_0
    :goto_0
    return v0

    .line 1142
    :cond_1
    const-string v1, "tiny_glow_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->tiny_glow_image:Ljava/lang/String;

    .line 1143
    const-string v1, "tiny_glow_image_last_modified;"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->tiny_glow_image_last_modified:Ljava/lang/String;

    .line 1144
    const-string v1, "background_bar_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_bar_image:Ljava/lang/String;

    .line 1145
    const-string v1, "background_bar_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_bar_image_last_modified:Ljava/lang/String;

    .line 1146
    const-string v1, "background_tile_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_tile_image:Ljava/lang/String;

    .line 1147
    const-string v1, "background_tile_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_tile_image_last_modified:Ljava/lang/String;

    .line 1148
    const-string v1, "background_color"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->background_color:Ljava/lang/String;

    .line 1151
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1152
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1155
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1156
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1158
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "stop"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1159
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1160
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "back"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1162
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1163
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1164
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "forward"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1166
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v2, "reload"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
