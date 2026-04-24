.class Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;
.super Landroid/view/View;
.source "AdColonyNativeAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyNativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaticImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

.field visible:Z


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 996
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 997
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 998
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1006
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->parent_view:Landroid/view/ViewGroup;

    .line 1009
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1011
    .local v0, "visible_bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->list_view:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->visible:Z

    .line 1013
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    if-eqz v1, :cond_a

    .line 1015
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->list_view:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->list_view:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->getNativeAdHeight()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 1017
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->visible:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->paused:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->isReady(Z)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->played:Z

    if-eqz v1, :cond_2

    .line 1019
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->played:Z

    if-nez v1, :cond_7

    .line 1022
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "[ADC] Native Ad Starting"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 1023
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->play()V

    .line 1024
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v5, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->played:Z

    .line 1025
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 1026
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v2, "native"

    iput-object v2, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 1047
    :cond_3
    :goto_0
    iput-boolean v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->visible:Z

    .line 1053
    :goto_1
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1055
    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 1056
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1057
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v5, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 1060
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1062
    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 1063
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1074
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->paused:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->invalidate()V

    .line 1075
    :cond_6
    return-void

    .line 1029
    :cond_7
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->dont_resume:Z

    if-nez v1, :cond_9

    .line 1032
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "[ADC] Native Ad Resuming"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 1033
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v2, "video_resumed"

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1034
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute(Z)V

    .line 1035
    :cond_8
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->pub_defined_volume:F

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setVolume(F)V

    .line 1036
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget v2, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->global_seek_to_ms:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1037
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_0

    .line 1039
    :cond_9
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->played:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v4}, Lcom/jirbo/adcolony/ADCController;->is_video_ad_available(Ljava/lang/String;ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1041
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v5, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 1042
    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 1043
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1051
    :cond_a
    iput-boolean v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->visible:Z

    goto/16 :goto_1

    .line 1065
    :cond_b
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->manually_paused:Z

    if-eqz v1, :cond_5

    .line 1068
    :cond_c
    const/16 v1, 0xff

    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1069
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1070
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v2, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->height:I

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, p1, v2, v3}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method
