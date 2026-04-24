.class Lcom/jirbo/adcolony/ADCVideoHUD$6;
.super Ljava/lang/Object;
.source "ADCVideoHUD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;->complete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

.field final synthetic val$black_view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideoHUD;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideoHUD;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$6;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-object p2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$6;->val$black_view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$6;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$6;->val$black_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1102
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$6;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->dec_fire_viewable_change(Z)V

    .line 1103
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$6;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jirbo/adcolony/ADCVideo;->endcard_time_resume:J

    .line 1104
    return-void
.end method
