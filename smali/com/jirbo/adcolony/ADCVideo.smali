.class public abstract Lcom/jirbo/adcolony/ADCVideo;
.super Landroid/app/Activity;
.source "ADCVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCVideo$LoadingView;
    }
.end annotation


# static fields
.field static ctx:Landroid/app/Activity;

.field static html5_video_playing:Z

.field static html5_video_seek_to_ms:I

.field static is_replay:Z

.field static mraid_ready:Z

.field static unfocused:Z

.field static video_finished:Z

.field static video_seek_to_ms:I

.field static video_start:I

.field static visible:Z


# instance fields
.field actual_video_height:I

.field actual_video_width:I

.field ad:Lcom/jirbo/adcolony/AdColonyAd;

.field bg_color:I

.field bounds:Landroid/graphics/Rect;

.field browser_icon:Lcom/jirbo/adcolony/ADCImage;

.field display_height:I

.field display_width:I

.field endcard_dissolved:Z

.field endcard_time_pause:J

.field endcard_time_resume:J

.field endcard_time_spent:D

.field first_play:Z

.field first_resume:Z

.field html5_endcard_loading_finished:Z

.field html5_endcard_loading_started:Z

.field html5_endcard_loading_time:D

.field html5_endcard_loading_timeout:Z

.field html5_video_layout:Landroid/widget/FrameLayout;

.field html5_video_view:Landroid/widget/VideoView;

.field hud:Lcom/jirbo/adcolony/ADCVideoHUD;

.field infile:Ljava/io/FileInputStream;

.field layout:Landroid/widget/FrameLayout;

.field loading_view:Lcom/jirbo/adcolony/ADCVideo$LoadingView;

.field rewarded:Z

.field video_url:Ljava/lang/String;

.field video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

.field view_height:I

.field view_width:I

.field web_layout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->video_url:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->first_resume:Z

    .line 80
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->first_play:Z

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->bounds:Landroid/graphics/Rect;

    .line 580
    return-void
.end method

.method static reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    sput v0, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    .line 107
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    .line 108
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->is_replay:Z

    .line 109
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    .line 110
    return-void
.end method


# virtual methods
.method calculate_layout()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 324
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    .line 325
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    .line 327
    const/high16 v4, -0x1000000

    iput v4, p0, Lcom/jirbo/adcolony/ADCVideo;->bg_color:I

    .line 329
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget v6, p0, Lcom/jirbo/adcolony/ADCVideo;->bg_color:I

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget v2, p0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    .line 332
    .local v2, "w":I
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    .line 334
    .local v1, "h":I
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->view_width:I

    .line 335
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    .line 337
    sget-boolean v4, Lcom/jirbo/adcolony/ADC;->layout_changed:Z

    if-eqz v4, :cond_0

    .line 339
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->layout_changed:Z

    .line 340
    const/4 v3, 0x1

    .line 342
    :cond_0
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 118
    sput-boolean v6, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    sput-object p0, Lcom/jirbo/adcolony/ADCVideo;->ctx:Landroid/app/Activity;

    .line 123
    const-string v4, "video_enabled"

    invoke-static {v4}, Lcom/jirbo/adcolony/ADC;->get_Logical(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->video_disabled:Z

    .line 124
    const-string v4, "end_card_enabled"

    invoke-static {v4}, Lcom/jirbo/adcolony/ADC;->get_Logical(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->companion_ad_disabled:Z

    .line 125
    const-string v4, "load_timeout_enabled"

    invoke-static {v4}, Lcom/jirbo/adcolony/ADC;->get_Logical(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->graceful_fail:Z

    .line 126
    const-string v4, "load_timeout"

    invoke-static {v4}, Lcom/jirbo/adcolony/ADC;->get_Integer(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/jirbo/adcolony/ADC;->load_timeout:I

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v4, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 130
    sget-object v4, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 132
    sget-object v4, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 133
    .local v3, "view":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    iget-object v4, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mp:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->texture_view:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    iget-object v4, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    .end local v3    # "view":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_2
    move v4, v6

    .line 123
    goto :goto_0

    :cond_3
    move v4, v6

    .line 124
    goto :goto_1

    .line 139
    .restart local v1    # "i":I
    :cond_4
    sget-object v4, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 140
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/AdColonyAd;->replay:Z

    sput-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->is_replay:Z

    .line 143
    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCVideo;->requestWindowFeature(I)Z

    .line 146
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    const/16 v8, 0x400

    invoke-virtual {v4, v5, v8}, Landroid/view/Window;->setFlags(II)V

    .line 149
    sget-boolean v4, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-nez v4, :cond_6

    .line 152
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_5

    .line 155
    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    .line 210
    :goto_3
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCVideo;->setVolumeControlStream(I)V

    .line 213
    new-instance v4, Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/ADCCustomVideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    .line 214
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    .line 215
    new-instance v4, Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/ADCVideoHUD;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    .line 216
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    .line 217
    new-instance v4, Lcom/jirbo/adcolony/ADCVideo$LoadingView;

    invoke-direct {v4, p0, p0}, Lcom/jirbo/adcolony/ADCVideo$LoadingView;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->loading_view:Lcom/jirbo/adcolony/ADCVideo$LoadingView;

    .line 218
    new-instance v4, Lcom/jirbo/adcolony/ADCImage;

    const-string v5, "browser_icon"

    invoke-static {v5}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->browser_icon:Lcom/jirbo/adcolony/ADCImage;

    .line 221
    sput-boolean v6, Lcom/jirbo/adcolony/AdColonyBrowser;->should_recycle:Z

    .line 224
    sput-object p0, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    .line 225
    sput-object p0, Lcom/jirbo/adcolony/ADC;->latest_video:Lcom/jirbo/adcolony/ADCVideo;

    .line 226
    return-void

    .line 160
    :cond_5
    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_3

    .line 167
    :cond_6
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 168
    .local v0, "current_orientation":I
    if-eqz v0, :cond_7

    if-eq v0, v7, :cond_7

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    :cond_7
    move v4, v7

    :goto_4
    sput v4, Lcom/jirbo/adcolony/ADC;->orientation:I

    .line 174
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_9

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Kindle Fire"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 177
    sget v4, Lcom/jirbo/adcolony/ADC;->orientation:I

    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_3

    .line 168
    :cond_8
    const/4 v4, 0x7

    goto :goto_4

    .line 182
    :cond_9
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "Kindle Fire"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 184
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getRequestedOrientation()I

    move-result v0

    .line 185
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 186
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 187
    .local v2, "rotation":I
    packed-switch v2, :pswitch_data_0

    .line 199
    const/16 v0, 0x8

    .line 204
    .end local v2    # "rotation":I
    :cond_a
    :goto_5
    sput v0, Lcom/jirbo/adcolony/ADC;->orientation:I

    .line 205
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto/16 :goto_3

    .line 190
    .restart local v2    # "rotation":I
    :pswitch_0
    const/4 v0, 0x1

    .line 191
    goto :goto_5

    .line 193
    :pswitch_1
    const/4 v0, 0x0

    .line 194
    goto :goto_5

    .line 196
    :pswitch_2
    const/16 v0, 0x9

    .line 197
    goto :goto_5

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 302
    sget-boolean v0, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    if-nez v0, :cond_0

    .line 311
    :cond_0
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->show:Z

    .line 312
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    .line 313
    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 314
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 527
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 528
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 479
    sget-object v1, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 485
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v1, :cond_3

    .line 487
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    if-eqz v1, :cond_2

    .line 489
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 490
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    .line 491
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 492
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    if-nez v1, :cond_0

    .line 496
    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 497
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_continue()V

    goto :goto_0

    .line 502
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_met:Z

    if-eqz v1, :cond_0

    .line 504
    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 505
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_cancel()V

    goto :goto_0

    .line 510
    :cond_4
    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 517
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/high16 v8, -0x1000000

    const/4 v7, 0x0

    .line 426
    sput-boolean v7, Lcom/jirbo/adcolony/ADCVideo;->visible:Z

    .line 428
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    if-eqz v1, :cond_3

    .line 430
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    sput v1, Lcom/jirbo/adcolony/ADCVideo;->html5_video_seek_to_ms:I

    .line 433
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 442
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v1, :cond_1

    .line 444
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 445
    .local v0, "black_view":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_pause:J

    .line 448
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_spent:D

    iget-wide v3, p0, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_pause:J

    iget-wide v5, p0, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_resume:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_spent:D

    .line 451
    .end local v0    # "black_view":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v1

    sput v1, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->stopPlayback()V

    .line 455
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1, v8}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setBackgroundColor(I)V

    .line 463
    :goto_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    .line 464
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-boolean v7, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_pressed:Z

    .line 465
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-boolean v7, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->close_pressed:Z

    .line 466
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-boolean v7, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_pressed:Z

    .line 467
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput v7, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    .line 468
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput v7, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 469
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    .line 471
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 472
    return-void

    .line 438
    :cond_3
    sput v7, Lcom/jirbo/adcolony/ADCVideo;->html5_video_seek_to_ms:I

    goto :goto_0

    .line 459
    :cond_4
    sput v7, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    goto :goto_1
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x11

    .line 234
    sput-boolean v8, Lcom/jirbo/adcolony/ADCVideo;->visible:Z

    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->is_activity_null()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->calculate_layout()Z

    .line 239
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->first_resume:Z

    if-eqz v1, :cond_6

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->first_resume:Z

    .line 244
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-nez v1, :cond_6

    .line 246
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Kindle Fire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    const/16 v2, 0x14

    iput v2, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    .line 249
    :cond_3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SCH-I800"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    const/16 v2, 0x19

    iput v2, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->view_width:I

    iget v5, p0, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    iget v5, p0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget v6, v6, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :cond_5
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    iget v5, p0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :cond_6
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    if-eqz v1, :cond_a

    .line 259
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->loading_view:Lcom/jirbo/adcolony/ADCVideo$LoadingView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 260
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->loading_view:Lcom/jirbo/adcolony/ADCVideo$LoadingView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 270
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 271
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 276
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "video_filepath"

    invoke-static {v2}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->infile:Ljava/io/FileInputStream;

    .line 277
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->infile:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setVideoPath(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->unfocused:Z

    if-nez v1, :cond_8

    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/ADCVideo;->onWindowFocusChanged(Z)V

    .line 291
    :cond_8
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->video_disabled:Z

    if-eqz v1, :cond_9

    .line 293
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->adjust_size()V

    .line 294
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->complete()V

    .line 296
    :cond_9
    :goto_1
    return-void

    .line 265
    :cond_a
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 266
    sget-boolean v1, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_resume:J

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "whoa":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to play video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video_filepath"

    invoke-static {v2}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/ADC;->log_error(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "has_focus"    # Z

    .prologue
    const/4 v4, 0x0

    .line 350
    if-eqz p1, :cond_8

    .line 352
    sput-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->unfocused:Z

    .line 353
    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->visible:Z

    if-eqz v2, :cond_4

    .line 355
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v2, :cond_2

    .line 359
    sget v2, Lcom/jirbo/adcolony/ADCVideo;->video_start:I

    if-eqz v2, :cond_0

    sget v2, Lcom/jirbo/adcolony/ADCVideo;->video_start:I

    sput v2, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    .line 360
    :cond_0
    sput v4, Lcom/jirbo/adcolony/ADCVideo;->video_start:I

    .line 361
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    sget v3, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->seekTo(I)V

    .line 364
    sget-boolean v2, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-eqz v2, :cond_3

    .line 366
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 367
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$1;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    .line 374
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setBackgroundColor(I)V

    .line 375
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    .end local v0    # "h":Landroid/os/Handler;
    .end local v1    # "r":Ljava/lang/Runnable;
    :goto_0
    sget-boolean v2, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->skip_dialog:Z

    if-nez v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-boolean v4, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->stay_at_zero:Z

    .line 385
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->start()V

    .line 387
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCVideoHUD;->requestFocus()Z

    .line 388
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    .line 419
    :cond_2
    :goto_1
    return-void

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setBackgroundColor(I)V

    goto :goto_0

    .line 391
    :cond_4
    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    if-eqz v2, :cond_7

    .line 393
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    if-eqz v2, :cond_5

    .line 395
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    sget v3, Lcom/jirbo/adcolony/ADCVideo;->html5_video_seek_to_ms:I

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 396
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto :goto_1

    .line 400
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 401
    :cond_6
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 404
    :cond_7
    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->hud:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto :goto_1

    .line 412
    :cond_8
    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->visible:Z

    if-eqz v2, :cond_9

    .line 414
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v2

    sput v2, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    .line 415
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->pause()V

    .line 417
    :cond_9
    const/4 v2, 0x1

    sput-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->unfocused:Z

    goto :goto_1
.end method

.method playVideo(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo;->video_url:Ljava/lang/String;

    .line 539
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/ADCVideo;->html5_video_playing:Z

    .line 540
    new-instance v3, Landroid/widget/VideoView;

    invoke-direct {v3, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    .line 542
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 544
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 545
    move-object v1, p1

    .line 547
    .local v1, "final_url":Ljava/lang/String;
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, "controller":Landroid/widget/MediaController;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 550
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    iget v6, p0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 552
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideo;->loading_view:Lcom/jirbo/adcolony/ADCVideo$LoadingView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 554
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 556
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    new-instance v4, Lcom/jirbo/adcolony/ADCVideo$2;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/ADCVideo$2;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 566
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    new-instance v4, Lcom/jirbo/adcolony/ADCVideo$3;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/ADCVideo$3;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 574
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->html5_video_view:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 575
    return-void
.end method
