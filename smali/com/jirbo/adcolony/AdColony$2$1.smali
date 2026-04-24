.class Lcom/jirbo/adcolony/AdColony$2$1;
.super Ljava/lang/Object;
.source "AdColony.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColony$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdColony$2;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColony$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColony$2;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColony$2$1;->this$0:Lcom/jirbo/adcolony/AdColony$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 212
    sget-object v2, Lcom/jirbo/adcolony/ADC;->native_ad_view_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;

    .line 213
    .local v1, "view":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->context:Landroid/app/Activity;

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    if-nez v2, :cond_0

    .line 215
    iput-boolean v4, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->paused:Z

    .line 216
    invoke-virtual {v1}, Lcom/jirbo/adcolony/AdColonyNativeAdView;->invalidate()V

    .line 217
    iget-object v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    iput-boolean v4, v2, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->visible:Z

    .line 220
    iget-object v2, v1, Lcom/jirbo/adcolony/AdColonyNativeAdView;->static_image_view:Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/AdColonyNativeAdView$StaticImageView;->invalidate()V

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "view":Lcom/jirbo/adcolony/AdColonyNativeAdView;
    :cond_1
    return-void
.end method
