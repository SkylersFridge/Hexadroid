.class Lcom/jirbo/adcolony/ADCVideoHUD;
.super Landroid/view/View;
.source "ADCVideoHUD.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;,
        Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;
    }
.end annotation


# static fields
.field static widths:[F


# instance fields
.field active_buttons:[Lcom/jirbo/adcolony/ADCImage;

.field activity:Lcom/jirbo/adcolony/ADCVideo;

.field angle_per_sec:F

.field background:Lcom/jirbo/adcolony/ADCImage;

.field bounds:Landroid/graphics/Rect;

.field browser_icon:Lcom/jirbo/adcolony/ADCImage;

.field button_labels:[Ljava/lang/String;

.field button_text_paint:Landroid/graphics/Paint;

.field can_press:Z

.field canvas:Landroid/graphics/Canvas;

.field center_x:F

.field center_y:F

.field circle_paint:Landroid/graphics/Paint;

.field close_pressed:Z

.field close_xpos:I

.field close_ypos:I

.field cur_angle:F

.field dissolve_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

.field end_card_loading_finish:J

.field end_card_loading_start:J

.field end_card_web_view:Landroid/webkit/WebView;

.field engagement:Z

.field engagement_delay_met:Z

.field engagement_delay_ms:I

.field engagement_pressed:Z

.field engagement_text:Ljava/lang/String;

.field engagement_url:Ljava/lang/String;

.field error:Z

.field first_resize:Z

.field first_update:Z

.field graceful_fail:Z

.field height:F

.field hud_scale:D

.field image_scale:D

.field img_close_button:Lcom/jirbo/adcolony/ADCImage;

.field img_close_button_down:Lcom/jirbo/adcolony/ADCImage;

.field img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

.field img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

.field img_reload_button:Lcom/jirbo/adcolony/ADCImage;

.field img_reload_button_down:Lcom/jirbo/adcolony/ADCImage;

.field img_skip_button:Lcom/jirbo/adcolony/ADCImage;

.field img_skip_button_down:Lcom/jirbo/adcolony/ADCImage;

.field is_html5:Z

.field is_static:Z

.field keyboard_offset:I

.field left_margin:I

.field loading_view:Landroid/view/View;

.field mraid_handler:Lcom/jirbo/adcolony/ADCMRAIDHandler;

.field normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

.field offset:I

.field on_button_press_handler:Landroid/os/Handler;

.field original_bg_height:I

.field original_bg_width:I

.field oval:Landroid/graphics/RectF;

.field paint:Landroid/graphics/Paint;

.field radius:F

.field recent_selected_button:I

.field reload_pressed:Z

.field reload_xpos:I

.field reload_ypos:I

.field resize_images:Z

.field selected_button:I

.field show_version:Z

.field skip_delay_met:Z

.field skip_delay_ms:I

.field skippable:Z

.field stay_at_zero:Z

.field text_paint:Landroid/graphics/Paint;

.field up_state:Z

.field update_handler:Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;

.field version_number:Ljava/lang/String;

.field version_paint:Landroid/graphics/Paint;

.field video_duration_ms:I

.field web_layout_offset:Z

.field width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/jirbo/adcolony/ADCVideoHUD;->widths:[F

    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ADCVideo;)V
    .locals 10
    .param p1, "activity"    # Lcom/jirbo/adcolony/ADCVideo;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 119
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    .line 36
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    .line 38
    const/16 v2, 0x63

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    .line 39
    iput v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->keyboard_offset:I

    .line 56
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->resize_images:Z

    .line 57
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->first_resize:Z

    .line 58
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    .line 59
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->first_update:Z

    .line 60
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->can_press:Z

    .line 61
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->graceful_fail:Z

    .line 79
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_version:Ljava/lang/String;

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->version_number:Ljava/lang/String;

    .line 85
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->paint:Landroid/graphics/Paint;

    .line 86
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    .line 87
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    .line 88
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->version_paint:Landroid/graphics/Paint;

    .line 90
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->bounds:Landroid/graphics/Rect;

    .line 103
    new-array v2, v9, [Lcom/jirbo/adcolony/ADCImage;

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    .line 104
    new-array v2, v9, [Lcom/jirbo/adcolony/ADCImage;

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->active_buttons:[Lcom/jirbo/adcolony/ADCImage;

    .line 108
    new-array v2, v9, [Ljava/lang/String;

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_labels:[Ljava/lang/String;

    .line 114
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->circle_paint:Landroid/graphics/Paint;

    .line 115
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->oval:Landroid/graphics/RectF;

    .line 537
    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->update_handler:Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;

    .line 539
    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$2;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/ADCVideoHUD$2;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    .line 123
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCConfiguration;->skippable:Z

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    .line 124
    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v2, :cond_0

    .line 126
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    sget-object v5, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-boolean v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->enabled:Z

    or-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    .line 127
    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    sget-object v5, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-wide v5, v5, Lcom/jirbo/adcolony/AdColonyAd;->force_current_progress:D

    iput-wide v5, v2, Lcom/jirbo/adcolony/AdColonyAd;->current_progress:D

    .line 130
    :cond_0
    sget-boolean v2, Lcom/jirbo/adcolony/ADC;->end_card_is_html5:Z

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    .line 132
    sget-object v2, Lcom/jirbo/adcolony/ADC;->force_dec_url:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/jirbo/adcolony/ADC;->force_dec_url:Ljava/lang/String;

    sput-object v2, Lcom/jirbo/adcolony/ADC;->end_card_url:Ljava/lang/String;

    .line 134
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-nez v2, :cond_e

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    .line 137
    :cond_2
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    if-eqz v2, :cond_f

    .line 140
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v5, "end_card_filepath"

    invoke-static {v5}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    .line 141
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_width:I

    .line 142
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->height:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_height:I

    .line 145
    iget v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_width:I

    if-nez v2, :cond_3

    const/16 v2, 0x1e0

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_width:I

    .line 146
    :cond_3
    iget v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_height:I

    if-nez v2, :cond_4

    const/16 v2, 0x140

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_height:I

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "info_image_normal"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 150
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "download_image_normal"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v3

    .line 151
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "replay_image_normal"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v7

    .line 152
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "continue_image_normal"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v8

    .line 155
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->active_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "info_image_down"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v5, v2, v4

    .line 156
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->active_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "download_image_down"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v5, v2, v3

    .line 157
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->active_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "replay_image_down"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v5, v2, v7

    .line 158
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->active_buttons:[Lcom/jirbo/adcolony/ADCImage;

    new-instance v5, Lcom/jirbo/adcolony/ADCImage;

    const-string v6, "continue_image_down"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;Z)V

    aput-object v5, v2, v8

    .line 160
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_labels:[Ljava/lang/String;

    const-string v5, "Info"

    aput-object v5, v2, v4

    .line 161
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_labels:[Ljava/lang/String;

    const-string v5, "Download"

    aput-object v5, v2, v3

    .line 162
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_labels:[Ljava/lang/String;

    const-string v3, "Replay"

    aput-object v3, v2, v7

    .line 163
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_labels:[Ljava/lang/String;

    const-string v3, "Continue"

    aput-object v3, v2, v8

    .line 182
    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    if-eqz v2, :cond_6

    .line 185
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "skip_video_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    .line 186
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "skip_video_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button_down:Lcom/jirbo/adcolony/ADCImage;

    .line 187
    const-string v2, "skip_delay"

    invoke-static {v2}, Lcom/jirbo/adcolony/ADC;->get_Integer(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_ms:I

    .line 191
    :cond_6
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->circle_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 193
    .local v1, "stroke_width":F
    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    const/high16 v1, 0x40c00000    # 6.0f

    .line 194
    :cond_7
    const/high16 v2, 0x40800000    # 4.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_8

    const/high16 v1, 0x40800000    # 4.0f

    .line 195
    :cond_8
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->circle_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->circle_paint:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->stay_at_zero:Z

    .line 200
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    .line 201
    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->enabled:Z

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    .line 202
    :cond_9
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    if-eqz v2, :cond_c

    .line 205
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "engagement_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    .line 206
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "engagement_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    .line 207
    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->click_action:Ljava/lang/String;

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_url:Ljava/lang/String;

    .line 208
    sget-object v2, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v2, v2, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->label:Ljava/lang/String;

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_text:Ljava/lang/String;

    .line 209
    const-string v2, "engagement_delay"

    invoke-static {v2}, Lcom/jirbo/adcolony/ADC;->get_Integer(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_delay_ms:I

    .line 210
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_text:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Learn More"

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_text:Ljava/lang/String;

    .line 212
    :cond_a
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    if-nez v2, :cond_c

    :cond_b
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    .line 215
    :cond_c
    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->on_video_finish()V

    .line 218
    :cond_d
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 224
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->version_paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 225
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->version_paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    .local v0, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .end local v1    # "stroke_width":F
    :cond_e
    move v2, v4

    .line 134
    goto/16 :goto_0

    .line 165
    :cond_f
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v2, :cond_5

    .line 168
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "reload_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button:Lcom/jirbo/adcolony/ADCImage;

    .line 169
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "close_image_normal"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button:Lcom/jirbo/adcolony/ADCImage;

    .line 172
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "close_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button_down:Lcom/jirbo/adcolony/ADCImage;

    .line 173
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "reload_image_down"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button_down:Lcom/jirbo/adcolony/ADCImage;

    .line 176
    new-instance v2, Lcom/jirbo/adcolony/ADCImage;

    const-string v3, "browser_icon"

    invoke-static {v3}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->browser_icon:Lcom/jirbo/adcolony/ADCImage;

    .line 178
    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;

    invoke-direct {v2, p0, p1}, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->loading_view:Landroid/view/View;

    .line 179
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->set_up_web_view()V

    goto/16 :goto_1

    .line 233
    .restart local v1    # "stroke_width":F
    :catch_0
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public adjust_size()V
    .locals 30

    .prologue
    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jirbo/adcolony/ADCVideo;->calculate_layout()Z

    move-result v7

    .line 771
    .local v7, "layout_changed":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->resize_images:Z

    move/from16 v24, v0

    or-int v24, v24, v7

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->resize_images:Z

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 775
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->video_duration_ms:I

    move/from16 v24, v0

    if-gtz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getDuration()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->video_duration_ms:I

    .line 777
    :cond_0
    if-eqz v7, :cond_1

    .line 779
    new-instance v24, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v26, v0

    const/16 v27, 0x11

    invoke-direct/range {v24 .. v27}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    move-object/from16 v24, v0

    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->view_width:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    move/from16 v27, v0

    const/16 v28, 0x11

    invoke-direct/range {v25 .. v28}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v24 .. v25}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->resize_images:Z

    .line 785
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->resize_images:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 787
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->resize_images:Z

    .line 790
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->first_resize:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 792
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 793
    .local v4, "dm":Landroid/util/DisplayMetrics;
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->xdpi:F

    move/from16 v25, v0

    div-float v23, v24, v25

    .line 794
    .local v23, "w":F
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->ydpi:F

    move/from16 v25, v0

    div-float v5, v24, v25

    .line 795
    .local v5, "h":F
    mul-float v24, v23, v23

    mul-float v25, v5, v5

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 796
    .local v12, "size_inches":D
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v25, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 797
    .local v14, "size_pixels":D
    div-double v8, v14, v12

    .line 799
    .local v8, "ppi":D
    const-wide v24, 0x4071800000000000L    # 280.0

    div-double v24, v8, v24

    const-wide v26, 0x3fe6666666666666L    # 0.7

    cmpg-double v24, v24, v26

    if-gez v24, :cond_9

    const-wide v24, 0x3fe6666666666666L    # 0.7

    :goto_0
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    .line 802
    const-wide/high16 v24, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4032000000000000L    # 18.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_a

    const/high16 v22, 0x41900000    # 18.0f

    .line 803
    .local v22, "text_size":F
    :goto_1
    const-wide/high16 v24, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4032000000000000L    # 18.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_b

    const/high16 v3, 0x41900000    # 18.0f

    .line 804
    .local v3, "button_text_size":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->version_paint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_text:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->textWidthOf(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/jirbo/adcolony/ADCImage;->ninePatch(II)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_text:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->textWidthOf(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/jirbo/adcolony/ADCImage;->ninePatch(II)V

    .line 816
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v6, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    .line 818
    .local v6, "height_or_width":I
    :goto_3
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->first_resize:Z

    .line 821
    .end local v3    # "button_text_size":F
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "h":F
    .end local v6    # "height_or_width":I
    .end local v8    # "ppi":D
    .end local v12    # "size_inches":D
    .end local v14    # "size_pixels":D
    .end local v22    # "text_size":F
    .end local v23    # "w":F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 823
    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    new-instance v25, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    const/16 v28, 0x11

    invoke-direct/range {v25 .. v28}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4084000000000000L    # 640.0

    div-double v24, v24, v26

    const-wide v26, 0x3feccccccccccccdL    # 0.9

    cmpg-double v24, v24, v26

    if-gez v24, :cond_d

    const-wide v24, 0x3feccccccccccccdL    # 0.9

    :goto_4
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    .line 826
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_width:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_height:I

    move/from16 v25, v0

    div-int v24, v24, v25

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 830
    .local v20, "temp_w":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 831
    .local v16, "temp_h":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v24, v24, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v26, v26, v16

    cmpl-double v24, v24, v26

    if-lez v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v18, v24, v16

    .line 834
    .local v18, "temp_scale":D
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    mul-double v25, v20, v18

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jirbo/adcolony/ADCVideo;->view_width:I

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    mul-double v25, v16, v18

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4084000000000000L    # 640.0

    div-double v24, v24, v26

    :goto_6
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_height:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    cmpl-double v24, v24, v26

    if-lez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v18, v24, v26

    .line 843
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/jirbo/adcolony/ADCImage;->center_within(II)V

    .line 848
    .end local v16    # "temp_h":D
    .end local v18    # "temp_scale":D
    .end local v20    # "temp_w":D
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v11, v0

    .line 851
    .local v11, "scaled_engagement_normal_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v10, v0

    .line 852
    .local v10, "scaled_engagement_down_height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Lcom/jirbo/adcolony/ADCImage;->resize(II)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/jirbo/adcolony/ADCImage;->resize(II)V

    .line 857
    .end local v10    # "scaled_engagement_down_height":I
    .end local v11    # "scaled_engagement_normal_height":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 865
    :cond_8
    return-void

    .line 799
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "h":F
    .restart local v8    # "ppi":D
    .restart local v12    # "size_inches":D
    .restart local v14    # "size_pixels":D
    .restart local v23    # "w":F
    :cond_9
    const-wide v24, 0x4071800000000000L    # 280.0

    div-double v24, v8, v24

    goto/16 :goto_0

    .line 802
    :cond_a
    const-wide/high16 v24, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v22, v0

    goto/16 :goto_1

    .line 803
    .restart local v22    # "text_size":F
    :cond_b
    const-wide/high16 v24, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v3, v0

    goto/16 :goto_2

    .line 816
    .restart local v3    # "button_text_size":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v6, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    goto/16 :goto_3

    .line 824
    .end local v3    # "button_text_size":F
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "h":F
    .end local v8    # "ppi":D
    .end local v12    # "size_inches":D
    .end local v14    # "size_pixels":D
    .end local v22    # "text_size":F
    .end local v23    # "w":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4084000000000000L    # 640.0

    div-double v24, v24, v26

    goto/16 :goto_4

    .line 831
    .restart local v16    # "temp_h":D
    .restart local v20    # "temp_w":D
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v18, v24, v20

    goto/16 :goto_5

    .line 838
    .restart local v18    # "temp_scale":D
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->view_height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x408e000000000000L    # 960.0

    div-double v24, v24, v26

    goto/16 :goto_6

    .line 841
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->original_bg_width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v18, v24, v26

    goto/16 :goto_7
.end method

.method public clicked(Lcom/jirbo/adcolony/ADCImage;II)Z
    .locals 2
    .param p1, "image"    # Lcom/jirbo/adcolony/ADCImage;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 760
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v0

    iget v1, p1, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v0

    iget v1, p1, Lcom/jirbo/adcolony/ADCImage;->height:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    if-ge p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    if-le p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public complete()V
    .locals 7

    .prologue
    .line 1055
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->is_replay:Z

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCController;->on_video_finish(ZLcom/jirbo/adcolony/AdColonyAd;)V

    .line 1057
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->graceful_fail:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->graceful_fail:Z

    if-eqz v3, :cond_0

    .line 1059
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->loading_view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1060
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1061
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$5;

    invoke-direct {v2, p0}, Lcom/jirbo/adcolony/ADCVideoHUD$5;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V

    .line 1075
    .local v2, "r":Ljava/lang/Runnable;
    sget v3, Lcom/jirbo/adcolony/ADC;->load_timeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1079
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_0
    sget-boolean v3, Lcom/jirbo/adcolony/ADC;->companion_ad_disabled:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_continue()V

    .line 1081
    :cond_1
    const-string v3, "card_shown"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v3, v4}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1083
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->update_handler:Lcom/jirbo/adcolony/ADCVideoHUD$UpdateHandler;

    monitor-enter v4

    .line 1085
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->dissolve_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    .line 1086
    sget-object v3, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->dissolve:Z

    if-eqz v3, :cond_2

    .line 1088
    new-instance v3, Lcom/jirbo/adcolony/ADCUtil$Timer;

    sget-object v5, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-wide v5, v5, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->dissolve_delay:D

    invoke-direct {v3, v5, v6}, Lcom/jirbo/adcolony/ADCUtil$Timer;-><init>(D)V

    iput-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->dissolve_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    .line 1090
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v3, :cond_3

    .line 1095
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1096
    .restart local v1    # "h":Landroid/os/Handler;
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1097
    .local v0, "black_view":Landroid/view/View;
    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$6;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/ADCVideoHUD$6;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;Landroid/view/View;)V

    .line 1106
    .restart local v2    # "r":Ljava/lang/Runnable;
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1107
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1108
    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1109
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1111
    .end local v0    # "black_view":Landroid/view/View;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_3
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_resume:J

    .line 1112
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->on_video_finish()V

    .line 1113
    return-void

    .line 1090
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method dec_fire_keyboard_viewable_change(Z)V
    .locals 4
    .param p1, "v"    # Z

    .prologue
    .line 1158
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    if-eqz v1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    move v0, p1

    .line 1171
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$1JsObject;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/ADCVideoHUD$1JsObject;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;Z)V

    const-string v3, "keyboard_listener"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method dec_fire_viewable_change(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    if-eqz v0, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1143
    :cond_0
    if-eqz p1, :cond_1

    .line 1145
    const-string v0, "adc_bridge.fireChangeEvent({viewable:true});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_1
    const-string v0, "adc_bridge.fireChangeEvent({viewable:false});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method execute_javascript(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1127
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    if-eqz v0, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method get_button_index(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 744
    .local v0, "index":I
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    .line 750
    :cond_0
    :goto_0
    return v0

    .line 745
    :cond_1
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 746
    :cond_2
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 747
    :cond_3
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    if-lt p1, v1, :cond_4

    iget v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->left_margin:I

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x4e

    add-int/lit8 v1, v1, 0x3e

    if-ge p1, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    iget v1, v1, Lcom/jirbo/adcolony/ADCImage;->height:I

    if-gt p2, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0
.end method

.method handle_cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1246
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->resume_from_ad:Z

    .line 1248
    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyAd;->is_v4vc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v1

    sput v1, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    .line 1251
    new-instance v2, Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-object v1, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    check-cast v1, Lcom/jirbo/adcolony/AdColonyV4VCAd;

    invoke-direct {v2, v3, v1}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;-><init>(Lcom/jirbo/adcolony/ADCVideo;Lcom/jirbo/adcolony/AdColonyV4VCAd;)V

    sput-object v2, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    .line 1264
    :goto_0
    return-void

    .line 1255
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1257
    sget-object v1, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->initialize()V

    .line 1255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1259
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 1260
    sget-object v1, Lcom/jirbo/adcolony/ADC;->end_card_finished_handler:Lcom/jirbo/adcolony/ADC$EndCardFinished;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->notify_canceled(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1261
    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 1262
    sput-boolean v3, Lcom/jirbo/adcolony/AdColonyBrowser;->should_recycle:Z

    goto :goto_0
.end method

.method handle_continue()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1214
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    sput-boolean v8, Lcom/jirbo/adcolony/ADC;->resume_from_ad:Z

    .line 1219
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_pause:J

    .line 1220
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v1, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_spent:D

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v4, v4, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_pause:J

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v6, v6, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_resume:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_spent:D

    .line 1221
    sput-boolean v8, Lcom/jirbo/adcolony/ADC;->destroyed:Z

    .line 1223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1225
    sget-object v1, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->initialize()V

    .line 1223
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 1230
    iput-object v9, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->dissolve_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    .line 1231
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v1, :cond_4

    .line 1233
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1234
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 1235
    iput-object v9, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    .line 1237
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/ADC;->end_card_finished_handler:Lcom/jirbo/adcolony/ADC$EndCardFinished;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->notify_continuation(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1238
    sput-boolean v8, Lcom/jirbo/adcolony/AdColonyBrowser;->should_recycle:Z

    goto :goto_0
.end method

.method handle_replay()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1271
    const-string v3, "replay"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v3, v4}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1272
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/ADCVideo;->is_replay:Z

    .line 1273
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sput-boolean v8, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    .line 1274
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sput v8, Lcom/jirbo/adcolony/ADCVideo;->video_seek_to_ms:I

    .line 1275
    iput-boolean v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->stay_at_zero:Z

    .line 1279
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1280
    .local v0, "black_view":Landroid/view/View;
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1281
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v5, v5, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v6, v6, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1283
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$8;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/ADCVideoHUD$8;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;Landroid/view/View;)V

    .line 1291
    .local v2, "r":Ljava/lang/Runnable;
    const-wide/16 v3, 0x384

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1293
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->start()V

    .line 1294
    sget-object v3, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCController;->on_video_start(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 1295
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->requestFocus()Z

    .line 1296
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v3, v8}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setBackgroundColor(I)V

    .line 1297
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v3, v8}, Lcom/jirbo/adcolony/ADCCustomVideoView;->setVisibility(I)V

    .line 1298
    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/ADCVideoHUD;->dec_fire_viewable_change(Z)V

    .line 1299
    return-void
.end method

.method keyboardCheck()V
    .locals 3

    .prologue
    .line 1323
    move-object v0, p0

    .line 1324
    .local v0, "root_view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/jirbo/adcolony/ADCVideoHUD$9;

    invoke-direct {v2, p0, v0}, Lcom/jirbo/adcolony/ADCVideoHUD$9;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1333
    return-void
.end method

.method load_dec_url()V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    sget-object v1, Lcom/jirbo/adcolony/ADC;->end_card_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1119
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Loading - end card url = "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->end_card_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 1120
    return-void
.end method

.method onButton(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 447
    :try_start_0
    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->can_press:Z

    if-nez v5, :cond_0

    const/16 v5, 0xa

    if-ne p1, v5, :cond_1

    .line 449
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->can_press:Z

    .line 450
    packed-switch p1, :pswitch_data_0

    .line 515
    :pswitch_0
    const/4 v5, 0x0

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 519
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 520
    .local v2, "h":Landroid/os/Handler;
    new-instance v4, Lcom/jirbo/adcolony/ADCVideoHUD$1;

    invoke-direct {v4, p0}, Lcom/jirbo/adcolony/ADCVideoHUD$1;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V

    .line 527
    .local v4, "r":Ljava/lang/Runnable;
    const-wide/16 v5, 0x5dc

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 535
    .end local v2    # "h":Landroid/os/Handler;
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_1
    :goto_1
    return-void

    .line 454
    :pswitch_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 455
    const-string v5, "info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"ad_slot\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v7, v7, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v7, v7, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v5, v6, v7}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 456
    const-string v5, "info_url"

    invoke-static {v5}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "info_url":Ljava/lang/String;
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "INFO "

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 459
    const-string v5, "market:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "amzn:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 461
    :cond_2
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v3    # "info_url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->can_press:Z

    goto :goto_1

    .line 465
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "info_url":Ljava/lang/String;
    :cond_3
    :try_start_1
    sput-object v3, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 466
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const-class v8, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 473
    .end local v3    # "info_url":Ljava/lang/String;
    :pswitch_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 474
    const-string v5, "download"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"ad_slot\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v7, v7, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v7, v7, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v5, v6, v7}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 475
    const-string v5, "download_url"

    invoke-static {v5}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "download_url":Ljava/lang/String;
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "DOWNLOAD "

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 478
    const-string v5, "market:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "amzn:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 480
    :cond_4
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 484
    :cond_5
    sput-object v0, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 485
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const-class v8, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 492
    .end local v0    # "download_url":Ljava/lang/String;
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 493
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_replay()V

    .line 494
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto/16 :goto_0

    .line 501
    :pswitch_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 502
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCCustomVideoView;->stopPlayback()V

    .line 503
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_continue()V

    goto/16 :goto_0

    .line 509
    :pswitch_5
    const/4 v5, 0x0

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 510
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_cancel()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->complete()V

    .line 1046
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->error:Z

    if-eqz v2, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->adjust_size()V

    .line 246
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->canvas:Landroid/graphics/Canvas;

    .line 249
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_met:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_ms:I

    if-le v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_met:Z

    .line 250
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_delay_met:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_delay_ms:I

    if-le v2, v3, :cond_7

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_delay_met:Z

    .line 253
    :cond_3
    const/high16 v15, 0x431d0000    # 157.0f

    .line 258
    .local v15, "spacing":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    if-eqz v2, :cond_a

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->bg_color:I

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v4, v4, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 262
    const-wide v2, 0x4067400000000000L    # 186.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v3

    add-int v11, v2, v3

    .line 263
    .local v11, "img_x":I
    const-wide v2, 0x407d600000000000L    # 470.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v3

    add-int v12, v2, v3

    .line 265
    .local v12, "img_y":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    array-length v2, v2

    if-ge v10, v2, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    add-int/lit8 v3, v10, 0x1

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    add-int/lit8 v3, v10, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    if-eqz v2, :cond_8

    .line 270
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->active_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->active_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v2, v2, v10

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 272
    int-to-double v2, v11

    float-to-double v4, v15

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v11, v2

    .line 284
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_labels:[Ljava/lang/String;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v10

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v4, v4, v10

    .line 287
    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v5, v5, v10

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->height:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    .line 286
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 249
    .end local v10    # "i":I
    .end local v11    # "img_x":I
    .end local v12    # "img_y":I
    .end local v15    # "spacing":F
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 250
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 276
    .restart local v10    # "i":I
    .restart local v11    # "img_x":I
    .restart local v12    # "img_y":I
    .restart local v15    # "spacing":F
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    if-nez v2, :cond_9

    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    if-eq v2, v3, :cond_5

    .line 278
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->normal_buttons:[Lcom/jirbo/adcolony/ADCImage;

    aget-object v2, v2, v10

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v11, v12}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 280
    int-to-double v2, v11

    float-to-double v4, v15

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v11, v2

    goto/16 :goto_4

    .line 294
    .end local v10    # "i":I
    .end local v11    # "img_x":I
    .end local v12    # "img_y":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v2, :cond_e

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->hud_scale:D

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 302
    sget-boolean v2, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_xpos:I

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_xpos:I

    :goto_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_xpos:I

    .line 303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_ypos:I

    .line 304
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_xpos:I

    .line 305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_ypos:I

    .line 308
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_pressed:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_xpos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_ypos:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 312
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_pressed:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_xpos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_ypos:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 316
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->keyboardCheck()V

    goto/16 :goto_0

    .line 302
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v2, v3

    goto :goto_5

    .line 309
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_xpos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_ypos:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto :goto_6

    .line 313
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_xpos:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_ypos:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto :goto_7

    .line 324
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v2, :cond_15

    .line 326
    sget-object v2, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v3

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getDuration()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v2, v3, v4, v5}, Lcom/jirbo/adcolony/ADCController;->on_video_progress(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->getCurrentPosition()I

    move-result v9

    .line 332
    .local v9, "elapsed_ms":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->video_duration_ms:I

    sub-int v13, v2, v9

    .line 333
    .local v13, "ms_left":I
    add-int/lit16 v2, v13, 0x3e7

    div-int/lit16 v14, v2, 0x3e8

    .line 334
    .local v14, "seconds_left":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->stay_at_zero:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    if-ne v14, v2, :cond_f

    const/4 v14, 0x0

    .line 335
    :cond_f
    if-nez v14, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->stay_at_zero:Z

    .line 337
    :cond_10
    const/16 v2, 0x1f4

    if-lt v9, v2, :cond_14

    .line 340
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->first_update:Z

    if-eqz v2, :cond_11

    .line 342
    const-wide v2, 0x4076800000000000L    # 360.0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->video_duration_ms:I

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->angle_per_sec:F

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->first_update:Z

    .line 346
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 347
    .local v8, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    const-string v3, "0123456789"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 348
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    .line 352
    .end local v8    # "bounds":Landroid/graphics/Rect;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->width:F

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->height:F

    .line 356
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->center_x:F

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v2, v2, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->center_y:F

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->oval:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->center_x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->center_y:F

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->center_x:F

    const/high16 v6, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->center_y:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v7, v16

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->circle_paint:Landroid/graphics/Paint;

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 362
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->angle_per_sec:F

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->video_duration_ms:I

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    int-to-double v6, v9

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v6, v6, v16

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->cur_angle:F

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->oval:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->cur_angle:F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->circle_paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-nez v2, :cond_12

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    const v3, -0x333334

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->oval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->oval:Landroid/graphics/RectF;

    .line 373
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    float-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v6, v6

    const-wide v16, 0x3ff599999999999aL    # 1.35

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->text_paint:Landroid/graphics/Paint;

    .line 372
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 380
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_met:Z

    if-eqz v2, :cond_13

    .line 382
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_16

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 393
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_delay_met:Z

    if-eqz v2, :cond_14

    .line 395
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_pressed:Z

    if-eqz v2, :cond_17

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v4, v4, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_down:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;)V

    .line 407
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    .line 409
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v6, v6

    const-wide v16, 0x3ff599999999999aL    # 1.35

    mul-double v6, v6, v16

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    .line 408
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    :cond_14
    sget-object v2, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    if-eqz v2, :cond_15

    .line 418
    sget-object v2, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->onDraw(Landroid/graphics/Canvas;)V

    .line 421
    .end local v9    # "elapsed_ms":I
    .end local v13    # "ms_left":I
    .end local v14    # "seconds_left":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->visible:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto/16 :goto_0

    .line 388
    .restart local v9    # "elapsed_ms":I
    .restart local v13    # "ms_left":I
    .restart local v14    # "seconds_left":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_8

    .line 402
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->display_width:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v4, v4, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v4, v4, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    iget v5, v5, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->radius:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_9
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->handle_cancel()V

    .line 1180
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v0, v0, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    .line 434
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    .line 435
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    iput v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    .line 436
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SHW-M380W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x28

    iput v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->offset:I

    .line 437
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const-wide/16 v12, 0xfa

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 560
    .local v0, "action":I
    sget-object v6, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    if-eqz v6, :cond_1

    .line 562
    sget-object v5, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    invoke-virtual {v5, p1}, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 732
    :cond_0
    :goto_0
    return v4

    .line 567
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 568
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 573
    .local v3, "y":I
    if-nez v0, :cond_7

    .line 576
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v6, :cond_4

    .line 579
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v6, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 581
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_pressed:Z

    .line 582
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v6, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 589
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_pressed:Z

    .line 590
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 595
    goto :goto_0

    .line 599
    :cond_4
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    if-eqz v6, :cond_5

    .line 601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v7}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v2, v6

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v7}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v3, v6

    .line 604
    iget v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    if-nez v6, :cond_5

    const/16 v6, 0xeb

    if-lt v3, v6, :cond_5

    const/16 v6, 0x131

    if-ge v3, v6, :cond_5

    .line 606
    invoke-virtual {p0, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->get_button_index(II)I

    move-result v1

    .line 607
    .local v1, "index":I
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 608
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    .line 609
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    .line 610
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    .line 615
    .end local v1    # "index":I
    :cond_5
    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_met:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v6, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 617
    const/16 v6, 0xa

    iput v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 618
    iget v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    iput v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    .line 619
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    .line 620
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto/16 :goto_0

    .line 625
    :cond_6
    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_delay_met:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v5, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 627
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_pressed:Z

    .line 628
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto/16 :goto_0

    .line 636
    :cond_7
    if-ne v0, v4, :cond_11

    .line 639
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v6, :cond_b

    .line 642
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_close_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v6, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_pressed:Z

    if-eqz v6, :cond_9

    .line 644
    const/4 v5, 0x4

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 645
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 646
    :cond_8
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    iget v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 647
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 646
    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 652
    :cond_9
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_reload_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v6, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_pressed:Z

    if-eqz v6, :cond_b

    .line 654
    iput v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 655
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 656
    :cond_a
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    iget v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 657
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 656
    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 663
    :cond_b
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_static:Z

    if-eqz v6, :cond_c

    .line 665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v7}, Lcom/jirbo/adcolony/ADCImage;->x()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v2, v6

    .line 666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->background:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {v7}, Lcom/jirbo/adcolony/ADCImage;->y()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->image_scale:D

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-int v3, v6

    .line 667
    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    if-nez v6, :cond_c

    const/16 v6, 0xeb

    if-lt v3, v6, :cond_c

    const/16 v6, 0x131

    if-ge v3, v6, :cond_c

    .line 669
    invoke-virtual {p0, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->get_button_index(II)I

    move-result v1

    .line 670
    .restart local v1    # "index":I
    if-lez v1, :cond_c

    iget v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    if-ne v1, v6, :cond_c

    .line 672
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    .line 673
    invoke-virtual {v7, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 672
    invoke-virtual {v6, v7, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 679
    .end local v1    # "index":I
    :cond_c
    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skippable:Z

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->skip_delay_met:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_skip_button:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v6, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 681
    const/16 v5, 0xa

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 682
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    .line 683
    iget v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->recent_selected_button:I

    .line 684
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->on_button_press_handler:Landroid/os/Handler;

    iget v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 685
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 684
    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 690
    :cond_d
    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement:Z

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_delay_met:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->img_engagement_button_normal:Lcom/jirbo/adcolony/ADCImage;

    invoke-virtual {p0, v6, v2, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->clicked(Lcom/jirbo/adcolony/ADCImage;II)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 692
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_pressed:Z

    .line 695
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_url:Ljava/lang/String;

    const-string v6, "market:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_url:Ljava/lang/String;

    const-string v6, "amzn:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 697
    :cond_e
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    iget-object v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_url:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    .line 704
    :goto_1
    const-string v5, "in_video_engagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"ad_slot\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v7, v7, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v7, v7, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v5, v6, v7}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto/16 :goto_0

    .line 701
    :cond_f
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_url:Ljava/lang/String;

    sput-object v5, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 702
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const-class v8, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCVideo;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 709
    :cond_10
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_pressed:Z

    .line 710
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_pressed:Z

    .line 711
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_pressed:Z

    .line 712
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    .line 713
    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 714
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto/16 :goto_0

    .line 721
    :cond_11
    if-ne v0, v7, :cond_0

    .line 724
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->close_pressed:Z

    .line 725
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_pressed:Z

    .line 726
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->engagement_pressed:Z

    .line 727
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->up_state:Z

    .line 728
    iput v5, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->selected_button:I

    .line 729
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    goto/16 :goto_0
.end method

.method on_video_finish()V
    .locals 4

    .prologue
    .line 1191
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1192
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/jirbo/adcolony/ADCVideoHUD$7;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideoHUD$7;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V

    .line 1199
    .local v1, "r":Ljava/lang/Runnable;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1201
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->video_finished:Z

    .line 1202
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideo;->video_view:Lcom/jirbo/adcolony/ADCCustomVideoView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCCustomVideoView;->stopPlayback()V

    .line 1203
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/jirbo/adcolony/ADCSkipVideoDialog;->current:Lcom/jirbo/adcolony/ADCSkipVideoDialog;

    .line 1204
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    .line 1205
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->reload_pressed:Z

    .line 1206
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD;->invalidate()V

    .line 1207
    return-void
.end method

.method open_or_closed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1342
    iget v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->keyboard_offset:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->web_layout_offset:Z

    if-nez v0, :cond_1

    .line 1345
    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->web_layout_offset:Z

    .line 1346
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCVideoHUD;->dec_fire_keyboard_viewable_change(Z)V

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->web_layout_offset:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->keyboard_offset:I

    if-nez v0, :cond_0

    .line 1351
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->web_layout_offset:Z

    .line 1352
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCVideoHUD;->dec_fire_keyboard_viewable_change(Z)V

    goto :goto_0
.end method

.method set_offset(I)V
    .locals 1
    .param p1, "keyboard_offset"    # I

    .prologue
    .line 1363
    iput p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->keyboard_offset:I

    .line 1364
    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->keyboard_offset:I

    .line 1365
    :cond_0
    return-void
.end method

.method set_up_web_view()V
    .locals 12

    .prologue
    const/16 v11, 0x13

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 874
    new-instance v6, Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v6, v7}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    .line 875
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v6, v8}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 876
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 877
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 880
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 881
    .local v4, "web_settings":Landroid/webkit/WebSettings;
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 883
    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON_DEMAND:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v4, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 884
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 885
    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 890
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    new-instance v7, Lcom/jirbo/adcolony/ADCVideoHUD$3;

    invoke-direct {v7, p0}, Lcom/jirbo/adcolony/ADCVideoHUD$3;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 915
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v6, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    .line 918
    const-string v6, "hardware_acceleration_disabled"

    invoke-static {v6}, Lcom/jirbo/adcolony/ADC;->get_Logical(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 922
    :try_start_0
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setLayerType"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Landroid/graphics/Paint;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 923
    .local v3, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    .end local v3    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    new-instance v6, Lcom/jirbo/adcolony/ADCMRAIDHandler;

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v8, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-direct {v6, v7, v8, v9}, Lcom/jirbo/adcolony/ADCMRAIDHandler;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->mraid_handler:Lcom/jirbo/adcolony/ADCMRAIDHandler;

    .line 935
    new-instance v5, Lcom/jirbo/adcolony/ADCVideoHUD$4;

    invoke-direct {v5, p0}, Lcom/jirbo/adcolony/ADCVideoHUD$4;-><init>(Lcom/jirbo/adcolony/ADCVideoHUD;)V

    .line 1014
    .local v5, "web_view_client":Landroid/webkit/WebViewClient;
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1015
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v11, :cond_1

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    sget-object v7, Lcom/jirbo/adcolony/ADC;->end_card_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1017
    :cond_1
    sget-object v6, Lcom/jirbo/adcolony/ADC;->end_card_mraid_filepath:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/jirbo/adcolony/ADCUtil;->load_file(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, "mraid_def":Ljava/lang/String;
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Injecting mraid"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 1019
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1022
    sget-boolean v6, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-eqz v6, :cond_3

    const-string v1, "true"

    .line 1023
    .local v1, "is_tab":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "var is_tablet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1025
    sget-boolean v6, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-eqz v6, :cond_4

    const-string v0, "tablet"

    .line 1028
    .local v0, "device_type":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adc_bridge.adc_version=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/jirbo/adcolony/ADC;->sdk_version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1029
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adc_bridge.os_version=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/jirbo/adcolony/ADC;->os_version:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1030
    const-string v6, "adc_bridge.os_name=\'android\'"

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1031
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adc_bridge.device_type=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1032
    const-string v6, "adc_bridge.fireChangeEvent({state:\'default\'});"

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1033
    const-string v6, "adc_bridge.fireReadyEvent()"

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideoHUD;->execute_javascript(Ljava/lang/String;)V

    .line 1037
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v11, :cond_2

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    sget-object v7, Lcom/jirbo/adcolony/ADC;->end_card_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1038
    :cond_2
    return-void

    .line 1022
    .end local v0    # "device_type":Ljava/lang/String;
    .end local v1    # "is_tab":Ljava/lang/String;
    :cond_3
    const-string v1, "false"

    goto/16 :goto_1

    .line 1025
    .restart local v1    # "is_tab":Ljava/lang/String;
    :cond_4
    const-string v0, "phone"

    goto :goto_2

    .line 925
    .end local v1    # "is_tab":Ljava/lang/String;
    .end local v2    # "mraid_def":Ljava/lang/String;
    .end local v5    # "web_view_client":Landroid/webkit/WebViewClient;
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method textWidthOf(Ljava/lang/String;)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1308
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD;->button_text_paint:Landroid/graphics/Paint;

    sget-object v4, Lcom/jirbo/adcolony/ADCVideoHUD;->widths:[F

    invoke-virtual {v3, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 1310
    const/4 v2, 0x0

    .line 1311
    .local v2, "w":F
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1312
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v3, Lcom/jirbo/adcolony/ADCVideoHUD;->widths:[F

    aget v3, v3, v1

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1313
    :cond_0
    float-to-int v3, v2

    return v3
.end method
