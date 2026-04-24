.class Lcom/jirbo/adcolony/ADCManifest$NativeAd;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeAd"
.end annotation


# instance fields
.field advertiser_name:Ljava/lang/String;

.field description:Ljava/lang/String;

.field enabled:Z

.field mute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

.field mute_enabled:Z

.field native_overlay:Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

.field poster_image:Ljava/lang/String;

.field poster_image_last_modified:Ljava/lang/String;

.field thumb_image:Ljava/lang/String;

.field thumb_image_last_modified:Ljava/lang/String;

.field title:Ljava/lang/String;

.field unmute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1065
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->poster_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->poster_image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->thumb_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->thumb_image_last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->cache_media()V

    .line 1069
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->unmute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->cache_media()V

    .line 1070
    return-void
.end method

.method is_ready()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1053
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->enabled:Z

    if-nez v1, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return v0

    .line 1054
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->poster_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->thumb_image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->unmute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1060
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 1026
    if-nez p1, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->enabled:Z

    .line 1029
    const-string v1, "poster_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->poster_image:Ljava/lang/String;

    .line 1030
    const-string v1, "advertiser_name"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->advertiser_name:Ljava/lang/String;

    .line 1031
    const-string v1, "description"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->description:Ljava/lang/String;

    .line 1032
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->title:Ljava/lang/String;

    .line 1033
    const-string v1, "thumb_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->thumb_image:Ljava/lang/String;

    .line 1034
    const-string v1, "poster_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->poster_image_last_modified:Ljava/lang/String;

    .line 1035
    const-string v1, "thumb_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->thumb_image_last_modified:Ljava/lang/String;

    .line 1037
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1038
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "mute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->enabled:Z

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute_enabled:Z

    .line 1042
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->unmute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    .line 1043
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->unmute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    const-string v2, "unmute"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1045
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->native_overlay:Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

    .line 1046
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->native_overlay:Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

    const-string v2, "overlay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
