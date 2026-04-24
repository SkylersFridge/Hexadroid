.class Lcom/jirbo/adcolony/ADCManifest$App;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "App"
.end annotation


# instance fields
.field app_tracking:Lcom/jirbo/adcolony/ADCManifest$AppTracking;

.field cache_network_pass_filter:Ljava/lang/String;

.field collect_iap_enabled:Z

.field console_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enabled:Z

.field hardware_acceleration_disabled:Z

.field last_country:Ljava/lang/String;

.field last_ip:Ljava/lang/String;

.field log_level:Ljava/lang/String;

.field log_screen_overlay:Z

.field media_pool_size:D

.field third_party_app_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;

.field view_network_pass_filter:Ljava/lang/String;

.field zones:Lcom/jirbo/adcolony/ADCManifest$Zones;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$App;->hardware_acceleration_disabled:Z

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 3

    .prologue
    .line 85
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Caching media"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 86
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->enabled:Z

    if-nez v1, :cond_1

    .line 89
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->count()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->get(I)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Zone;->cache_media()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method is_ad_available(Ljava/lang/String;)Z
    .locals 2
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCManifest$App;->is_ad_available(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method is_ad_available(Ljava/lang/String;ZZ)Z
    .locals 3
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "from_ad_availability"    # Z
    .param p3, "with_errors"    # Z

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCManifest$App;->enabled:Z

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 34
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v0

    .line 35
    .local v0, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p2, p3}, Lcom/jirbo/adcolony/ADCManifest$Zone;->is_ad_available(ZZ)Z

    move-result v1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "app_info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->enabled:Z

    .line 44
    const-string v1, "log_screen_overlay"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->log_screen_overlay:Z

    .line 45
    const-string v1, "last_country"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->last_country:Ljava/lang/String;

    .line 46
    const-string v1, "last_ip"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->last_ip:Ljava/lang/String;

    .line 48
    const-string v1, "collect_iap_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->collect_iap_enabled:Z

    .line 49
    const-string v1, "media_pool_size"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->media_pool_size:D

    .line 50
    const-string v1, "log_level"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->log_level:Ljava/lang/String;

    .line 52
    const-string v1, "view_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    .line 53
    const-string v1, "cache_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    .line 55
    const-string v1, "hardware_acceleration_disabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->hardware_acceleration_disabled:Z

    .line 57
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    :cond_2
    const-string v1, "all"

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    :cond_4
    const-string v1, "all"

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    .line 66
    :cond_5
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$AppTracking;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$AppTracking;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->app_tracking:Lcom/jirbo/adcolony/ADCManifest$AppTracking;

    .line 67
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->app_tracking:Lcom/jirbo/adcolony/ADCManifest$AppTracking;

    const-string v2, "tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->third_party_app_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;

    .line 70
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->third_party_app_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string v1, "console_messages"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_StringList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->console_messages:Ljava/util/ArrayList;

    .line 74
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Parsing zones"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 75
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$Zones;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    .line 76
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    const-string v2, "zones"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$Zones;->parse(Lcom/jirbo/adcolony/ADCData$List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Finished parsing app info"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 80
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
