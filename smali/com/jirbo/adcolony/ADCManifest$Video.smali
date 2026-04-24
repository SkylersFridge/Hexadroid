.class Lcom/jirbo/adcolony/ADCManifest$Video;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Video"
.end annotation


# instance fields
.field audio_channels:Ljava/lang/String;

.field audio_codec:Ljava/lang/String;

.field audio_sample_rate:Ljava/lang/String;

.field duration:D

.field enabled:Z

.field height:I

.field in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field last_modified:Ljava/lang/String;

.field skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

.field url:Ljava/lang/String;

.field video_codec:Ljava/lang/String;

.field video_frame_rate:Ljava/lang/String;

.field width:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 1901
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->last_modified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCMediaManager;->cache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1903
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->cache_media()V

    .line 1904
    return-void
.end method

.method filepath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1866
    sget-object v0, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method is_ready()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x9

    .line 1829
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->enabled:Z

    if-nez v2, :cond_1

    .line 1861
    :cond_0
    :goto_0
    return v0

    .line 1832
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCMediaManager;->is_cached(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1835
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 1838
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->is_ready()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 1841
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1843
    sput v4, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 1844
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Video not ready due to VIEW_FILTER_ONLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1846
    :cond_5
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_wifi()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1848
    sput v4, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 1849
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Video not ready due to VIEW_FILTER_WIFI"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1851
    :cond_6
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    const-string v2, "cell"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_mobile()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1853
    sput v4, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 1854
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Video not ready due to VIEW_FILTER_CELL"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 1856
    :cond_7
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1858
    sput v4, Lcom/jirbo/adcolony/ADC;->error_code:I

    .line 1859
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Video not ready due to VIEW_FILTER_OFFLINE"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1871
    if-nez p1, :cond_1

    .line 1896
    :cond_0
    :goto_0
    return v0

    .line 1873
    :cond_1
    const-string v2, "enabled"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->enabled:Z

    .line 1874
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->enabled:Z

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1876
    :cond_2
    const-string v2, "width"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->width:I

    .line 1877
    const-string v2, "height"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->height:I

    .line 1878
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->url:Ljava/lang/String;

    .line 1879
    const-string v2, "last_modified"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->last_modified:Ljava/lang/String;

    .line 1880
    const-string v2, "video_frame_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->video_frame_rate:Ljava/lang/String;

    .line 1881
    const-string v2, "audio_channels"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->audio_channels:Ljava/lang/String;

    .line 1882
    const-string v2, "audio_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->audio_codec:Ljava/lang/String;

    .line 1883
    const-string v2, "audio_sample_rate"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->audio_sample_rate:Ljava/lang/String;

    .line 1884
    const-string v2, "video_codec"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->video_codec:Ljava/lang/String;

    .line 1885
    const-string v2, "duration"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->duration:D

    .line 1888
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1889
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v3, "skip_video"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1892
    new-instance v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    .line 1893
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    const-string v3, "in_video_engagement"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1896
    goto/16 :goto_0
.end method
