.class Lcom/jirbo/adcolony/ADCAdManager;
.super Ljava/lang/Object;
.source "ADCAdManager.java"

# interfaces
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# instance fields
.field app:Lcom/jirbo/adcolony/ADCManifest$App;

.field attempted_load:Z

.field controller:Lcom/jirbo/adcolony/ADCController;

.field do_refresh:Z

.field h:Landroid/os/Handler;

.field is_configured:Z

.field needs_refresh:Z

.field next_refresh_time:D

.field r:Ljava/lang/Runnable;

.field try_refresh:Z


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->do_refresh:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->try_refresh:Z

    .line 22
    new-instance v0, Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCManifest$App;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    .line 28
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->h:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/jirbo/adcolony/ADCAdManager$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCAdManager$1;-><init>(Lcom/jirbo/adcolony/ADCAdManager;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->r:Ljava/lang/Runnable;

    .line 41
    return-void
.end method


# virtual methods
.method configure()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method find_v4vc_zone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 102
    :cond_0
    :goto_0
    return-object v1

    .line 90
    :cond_1
    const/4 v1, 0x0

    .line 92
    .local v1, "temp_zone_id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCManifest$Zones;->count()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v3, v0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->get(I)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    .line 95
    .local v2, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_v4vc_zone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    iget-object v1, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    .line 98
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_ad_available()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method find_video_zone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    const/4 v1, 0x0

    .line 74
    .local v1, "temp_zone_id":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCManifest$Zones;->count()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v3, v0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->get(I)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    .line 77
    .local v2, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_video_zone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    iget-object v1, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    .line 80
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_ad_available()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method is_ad_available(Ljava/lang/String;)Z
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCAdManager;->is_ad_available(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method is_ad_available(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "from_ad_availability"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/ADCAdManager;->is_ad_available_errorless(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    :goto_0
    return v0

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Ads are not ready to be played, as they are still downloading."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->fail(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v0, p1, v2, v1}, Lcom/jirbo/adcolony/ADCManifest$App;->is_ad_available(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCManifest$App;->is_ad_available(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method is_ad_available_errorless(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "from_ad_availability"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 133
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    if-nez v1, :cond_0

    .line 135
    :goto_0
    return v0

    .line 134
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v1, p1, v2, v0}, Lcom/jirbo/adcolony/ADCManifest$App;->is_ad_available(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v1, p1, v0, v2}, Lcom/jirbo/adcolony/ADCManifest$App;->is_ad_available(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method is_zone_v4vc(Ljava/lang/String;)Z
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCAdManager;->is_zone_v4vc(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method is_zone_v4vc(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "with_errors"    # Z

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Zones;->count()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->get(I)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v1

    .line 115
    .local v1, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    invoke-virtual {v1, p2}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_v4vc_zone(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 117
    .end local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :goto_1
    return v2

    .line 112
    .restart local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method load()V
    .locals 4

    .prologue
    .line 49
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Attempting to load backup manifest from file."

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 51
    new-instance v0, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v2, "manifest.txt"

    invoke-direct {v0, v2}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "file":Lcom/jirbo/adcolony/ADCDataFile;
    invoke-static {v0}, Lcom/jirbo/adcolony/ADCJSON;->load_Table(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v1

    .line 53
    .local v1, "manifest":Lcom/jirbo/adcolony/ADCData$Table;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCAdManager;->parse_manifest(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    .line 58
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$App;->cache_media()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Invalid manifest loaded."

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 63
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCDataFile;->delete()V

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    goto :goto_0
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 4
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    const/4 v3, 0x1

    .line 236
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 237
    iget-boolean v1, p1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    if-eqz v1, :cond_0

    .line 239
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Finished downloading:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 240
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    iget-object v2, p1, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 249
    iget-object v1, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCJSON;->parse_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v0

    .line 251
    .local v0, "manifest":Lcom/jirbo/adcolony/ADCData$Table;
    if-nez v0, :cond_1

    .line 253
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Invalid JSON in manifest.  Raw data:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 254
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    iget-object v2, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 255
    const/4 v0, 0x0

    .line 283
    .end local v0    # "manifest":Lcom/jirbo/adcolony/ADCData$Table;
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Error downloading:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 245
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    iget-object v2, p1, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 259
    .restart local v0    # "manifest":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCAdManager;->parse_manifest(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Ad manifest updated."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 262
    new-instance v1, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v2, "manifest.txt"

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCDataFile;->save(Ljava/lang/String;)V

    .line 263
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    .line 271
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$App;->cache_media()V

    .line 273
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    const-string v2, "all"

    iput-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    .line 277
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 279
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    const-string v2, "all"

    iput-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    .line 282
    :cond_5
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    goto :goto_0

    .line 267
    :cond_6
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Invalid manifest."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0
.end method

.method parse_manifest(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "manifest"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    const-string v3, "app"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCManifest$App;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Finished parsing manifest"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 292
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$App;->log_level:Ljava/lang/String;

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Enabling debug logging."

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 295
    invoke-static {v1}, Lcom/jirbo/adcolony/ADC;->set_log_level(I)V

    :goto_1
    move v0, v1

    .line 302
    goto :goto_0

    .line 299
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->set_log_level(I)V

    goto :goto_1
.end method

.method perform_refresh()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 180
    sput-boolean v5, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 181
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Refreshing manifest"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 182
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 184
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Not connected to network."

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 185
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "attempted_load:"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ADCAdManager;->attempted_load:Z

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Z)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    const-string v4, " is_configured:"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Z)Lcom/jirbo/adcolony/ADCLog;

    .line 186
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->attempted_load:Z

    if-nez v3, :cond_0

    .line 188
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCAdManager;->attempted_load:Z

    .line 189
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCAdManager;->load()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCStringBuilder;-><init>()V

    .line 195
    .local v0, "buffer":Lcom/jirbo/adcolony/ADCStringBuilder;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    sget-object v3, Lcom/jirbo/adcolony/ADCConfiguration;->ad_manifest_url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 196
    const-string v3, "?app_id="

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCConfiguration;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 199
    const-string v3, "&zones="

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCConfiguration;->zone_ids:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 202
    const/4 v1, 0x1

    .line 203
    .local v1, "first":Z
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v4, v3, Lcom/jirbo/adcolony/ADCConfiguration;->zone_ids:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 205
    .local v2, "zone_id":Ljava/lang/String;
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 207
    :goto_2
    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    :cond_2
    const-string v6, ","

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 211
    .end local v1    # "first":Z
    .end local v2    # "zone_id":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCConfiguration;->info_string:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 213
    const-string v3, "&carrier="

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCConfiguration;->carrier_name:Ljava/lang/String;

    invoke-static {v3}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 215
    const-string v3, "&network_type="

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_wifi()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 219
    :goto_3
    const-string v3, "&custom_id="

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCConfiguration;->custom_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 228
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Downloading ad manifest from"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 229
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    invoke-virtual {v3, v0}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 231
    new-instance v3, Lcom/jirbo/adcolony/ADCDownload;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCAdManager;->controller:Lcom/jirbo/adcolony/ADCController;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCDownload;->start()V

    goto/16 :goto_0

    .line 217
    :cond_4
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_mobile()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "cell"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 218
    :cond_5
    const-string v3, "none"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    goto :goto_3
.end method

.method refresh()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->do_refresh:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->disable_block:Z

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->do_refresh:Z

    .line 143
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->needs_refresh:Z

    .line 144
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->try_refresh:Z

    .line 145
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCAdManager;->r:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->try_refresh:Z

    goto :goto_0
.end method

.method update()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCAdManager;->next_refresh_time:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCAdManager;->needs_refresh:Z

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->needs_refresh:Z

    if-eqz v0, :cond_1

    .line 159
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCAdManager;->needs_refresh:Z

    .line 160
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->memory_class()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 162
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v0

    const-wide v2, 0x4082c00000000000L    # 600.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCAdManager;->next_refresh_time:D

    .line 163
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCAdManager;->perform_refresh()V

    .line 166
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->connected:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    .line 169
    :cond_2
    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->connected:Z

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_3
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->connected:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    .line 174
    :cond_4
    sput-boolean v5, Lcom/jirbo/adcolony/ADC;->connected:Z

    goto :goto_0
.end method
