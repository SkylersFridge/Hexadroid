.class Lcom/jirbo/adcolony/AdColonyNativeAdView$1;
.super Ljava/lang/Object;
.source "AdColonyNativeAdView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyNativeAdView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    .line 286
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 288
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 290
    new-array v2, v4, [F

    .line 291
    .local v2, "hsv":[F
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_color:I

    invoke-static {v4, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 292
    const/4 v4, 0x2

    aget v5, v2, v4

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    aput v5, v2, v4

    .line 293
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 318
    .end local v2    # "hsv":[F
    :cond_0
    :goto_0
    return v7

    .line 295
    :cond_1
    if-ne v0, v4, :cond_2

    .line 298
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v5, v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_color:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 300
    :cond_2
    if-ne v0, v7, :cond_0

    .line 302
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_type:Ljava/lang/String;

    const-string v5, "install"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_type:Ljava/lang/String;

    const-string v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    :cond_3
    sget-object v4, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v5, "native_overlay_click"

    iget-object v6, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v6, v6, Lcom/jirbo/adcolony/AdColonyNativeAdView;->ad:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 307
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v5, v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_command:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    .local v3, "store_intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v3    # "store_intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v4, v4, Lcom/jirbo/adcolony/AdColonyNativeAdView;->engagement_button:Landroid/widget/Button;

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$1;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget v5, v5, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_button_color:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 310
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Unable to open store."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
