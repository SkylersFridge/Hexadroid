.class Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;
.super Landroid/view/TextureView;
.source "AdColonyNativeAdView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyNativeAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NativeVideoView"
.end annotation


# instance fields
.field fin:Z

.field running:Z

.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;Z)V

    .line 848
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyNativeAdView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fin"    # Z

    .prologue
    const/4 v0, 0x0

    .line 851
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 852
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 840
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->fin:Z

    .line 841
    iput-boolean v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->running:Z

    .line 853
    invoke-virtual {p0, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->setWillNotDraw(Z)V

    .line 855
    iput-boolean p3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->fin:Z

    .line 856
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v6, 0x1

    .line 860
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 861
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-object p1, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->global_texture:Landroid/graphics/SurfaceTexture;

    .line 862
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->fin:Z

    if-eqz v3, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v4, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Landroid/view/Surface;

    .line 864
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 865
    :cond_2
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput p2, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->video_player_width:I

    .line 866
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput p3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->video_player_height:I

    .line 867
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    .line 870
    :try_start_0
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;->video_filepath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->infile:Ljava/io/FileInputStream;

    .line 871
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->infile:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 872
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->s:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 873
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 874
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 875
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 876
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 877
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "[ADC] Native Ad Prepare called."

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 878
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->running:Z

    .line 879
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 880
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;-><init>(Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;)V

    .line 892
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-boolean v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->running:Z

    if-nez v3, :cond_0

    const-wide/16 v3, 0x708

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 894
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v6, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 897
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x0

    .line 908
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "[ADC] Native surface destroyed"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 909
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    .line 910
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->setVisibility(I)V

    .line 912
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 903
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "[ADC] onSurfaceTextureSizeChanged"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 904
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 917
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 928
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 929
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 930
    .local v2, "y":F
    if-ne v0, v7, :cond_0

    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->show:Z

    if-eqz v3, :cond_0

    .line 932
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->width:I

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->height:I

    add-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    .line 933
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v7

    .line 934
    :cond_1
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    sput-object v3, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 935
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->zone_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_video_ad(Ljava/lang/String;Lcom/jirbo/adcolony/ADCManifest$Ad;)V

    .line 936
    invoke-static {}, Lcom/jirbo/adcolony/ADCVideo;->reset()V

    .line 939
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v4, "native"

    iput-object v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_unit:Ljava/lang/String;

    .line 940
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-string v4, "fullscreen"

    iput-object v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->view_format:Ljava/lang/String;

    .line 941
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iput-boolean v7, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->is_native_expanded:Z

    .line 944
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->replay:Z

    iput-boolean v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->replay:Z

    .line 946
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-eqz v3, :cond_0

    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->listener:Lcom/jirbo/adcolony/AdColonyNativeAdListener;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v3, v7, v4}, Lcom/jirbo/adcolony/AdColonyNativeAdListener;->onAdColonyNativeAdStarted(ZLcom/jirbo/adcolony/AdColonyNativeAdView;)V

    .line 949
    :cond_3
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 951
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    sput v3, Lcom/jirbo/adcolony/ADCVideo;->video_start:I

    .line 952
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-wide v4, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->current_progress:D

    iput-wide v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->force_current_progress:D

    .line 953
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 954
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v7, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 961
    :goto_1
    sput-boolean v6, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 962
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v4, "video_expanded"

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 963
    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-eqz v3, :cond_6

    .line 965
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Launching AdColonyOverlay"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 966
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/jirbo/adcolony/AdColonyOverlay;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 974
    :goto_2
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-eqz v3, :cond_4

    .line 977
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v4, v3, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    .line 978
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    const-string v4, "start"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"ad_slot\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v6, v6, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \"replay\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-boolean v6, v6, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->replay:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v3, v4, v5, v6}, Lcom/jirbo/adcolony/ADCController;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 979
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_id:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCPlayHistory;->add_play_event(Ljava/lang/String;I)V

    .line 981
    :cond_4
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v7, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->replay:Z

    goto/16 :goto_0

    .line 958
    :cond_5
    iget-object v3, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->force_current_progress:D

    .line 959
    sput v6, Lcom/jirbo/adcolony/ADCVideo;->video_start:I

    goto/16 :goto_1

    .line 970
    :cond_6
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Launching AdColonyFullscreen"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 971
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/jirbo/adcolony/AdColonyFullscreen;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
