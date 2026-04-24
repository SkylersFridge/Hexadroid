.class Lcom/jirbo/adcolony/AdColonyNativeAdView$2;
.super Ljava/lang/Object;
.source "AdColonyNativeAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 344
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume:Z

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_listener:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_listener:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v0, v1, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;->onAdColonyNativeAdMuted(Lcom/jirbo/adcolony/AdColonyNativeAdView;Z)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setMuted(Z)V

    .line 352
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v3, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->actual_user_mute:Z

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->current_volume_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button_down:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_listener:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->mute_listener:Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-interface {v0, v1, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdMutedListener;->onAdColonyNativeAdMuted(Lcom/jirbo/adcolony/AdColonyNativeAdView;Z)V

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->actual_user_mute:Z

    .line 359
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$2;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->setMuted(Z)V

    goto :goto_0
.end method
