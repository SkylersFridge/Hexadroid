.class Lcom/jirbo/adcolony/ADCVideoHUD$8;
.super Ljava/lang/Object;
.source "ADCVideoHUD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;->handle_replay()V
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
    .line 1284
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$8;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-object p2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$8;->val$black_view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$8;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->is_html5:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$8;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->web_layout:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$8;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$8;->val$black_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1289
    return-void
.end method
