.class Lcom/jirbo/adcolony/ADCManifest$Ad;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ad"
.end annotation


# instance fields
.field ad_campaign_id:I

.field ad_group_id:I

.field ad_id:I

.field ad_tracking:Lcom/jirbo/adcolony/ADCManifest$AdTracking;

.field companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

.field contracted:Z

.field cpcv_bid:I

.field enable_in_app_store:Z

.field expires:I

.field fullscreen:Z

.field house_ad:Z

.field in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

.field is_native_ad:Z

.field limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

.field native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

.field net_earnings:I

.field test_ad:Z

.field third_party_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;

.field title:Ljava/lang/String;

.field uuid:Ljava/lang/String;

.field v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

.field video:Lcom/jirbo/adcolony/ADCManifest$Video;

.field video_events_on_replays:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cache_media()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->cache_media()V

    .line 979
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->cache_media()V

    .line 980
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->cache_media()V

    .line 981
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->cache_media()V

    .line 982
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCManifest$Video;->cache_media()V

    .line 983
    return-void
.end method

.method is_ready()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 904
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->is_ready()Z

    move-result v1

    if-nez v1, :cond_1

    .line 917
    :cond_0
    :goto_0
    return v0

    .line 907
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->enabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->enabled:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Video;->is_ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    const/4 v0, 0x1

    goto :goto_0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 922
    if-nez p1, :cond_1

    .line 973
    :cond_0
    :goto_0
    return v0

    .line 923
    :cond_1
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->uuid:Ljava/lang/String;

    .line 926
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->title:Ljava/lang/String;

    .line 927
    const-string v1, "ad_campaign_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_campaign_id:I

    .line 928
    const-string v1, "ad_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_id:I

    .line 929
    const-string v1, "ad_group_id"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_group_id:I

    .line 930
    const-string v1, "cpcv_bid"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->cpcv_bid:I

    .line 931
    const-string v1, "net_earnings"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->net_earnings:I

    .line 932
    const-string v1, "expires"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->expires:I

    .line 933
    const-string v1, "enable_in_app_store"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->enable_in_app_store:Z

    .line 934
    const-string v1, "video_events_on_replays"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->video_events_on_replays:Z

    .line 935
    const-string v1, "test_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->test_ad:Z

    .line 936
    const-string v1, "fullscreen"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->fullscreen:Z

    .line 937
    const-string v1, "house_ad"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->house_ad:Z

    .line 938
    const-string v1, "contracted"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->contracted:Z

    .line 941
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$Limits;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$Limits;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    .line 942
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->limits:Lcom/jirbo/adcolony/ADCManifest$Limits;

    const-string v2, "limits"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$Limits;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->third_party_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;

    .line 946
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->third_party_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    .line 950
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    const-string v2, "in_app_browser"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$NativeAd;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    .line 953
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    const-string v2, "native"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    .line 957
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    const-string v2, "v4vc"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$AdTracking;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$AdTracking;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_tracking:Lcom/jirbo/adcolony/ADCManifest$AdTracking;

    .line 961
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_tracking:Lcom/jirbo/adcolony/ADCManifest$AdTracking;

    const-string v2, "ad_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    .line 965
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    const-string v2, "companion_ad"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$Video;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$Video;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    .line 969
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    const-string v2, "video"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$Video;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
