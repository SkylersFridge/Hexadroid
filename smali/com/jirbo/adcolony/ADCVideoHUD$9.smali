.class Lcom/jirbo/adcolony/ADCVideoHUD$9;
.super Ljava/lang/Object;
.source "ADCVideoHUD.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;->keyboardCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

.field final synthetic val$root_view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideoHUD;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideoHUD;

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-object p2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->val$root_view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 1327
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1328
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->val$root_view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1329
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->val$root_view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideoHUD;->activity:Lcom/jirbo/adcolony/ADCVideo;

    iget v3, v3, Lcom/jirbo/adcolony/ADCVideo;->display_height:I

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCVideoHUD;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCVideoHUD;->set_offset(I)V

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$9;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCVideoHUD;->open_or_closed()V

    .line 1331
    return-void
.end method
