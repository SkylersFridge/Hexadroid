.class Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;
.super Ljava/lang/Object;
.source "AdColonyNativeAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;->this$1:Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;->this$1:Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->surface_ready:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;->this$1:Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->paused:Z

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;->this$1:Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->running:Z

    .line 887
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;->this$1:Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->finished:Z

    .line 888
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView$1;->this$1:Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView$NativeVideoView;->this$0:Lcom/jirbo/adcolony/AdColonyNativeAdView;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyNativeAdView;->volume_button:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    :cond_0
    return-void
.end method
