.class Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;
.super Landroid/view/View;
.source "ADCVideoHUD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadingView"
.end annotation


# instance fields
.field bounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideoHUD;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/ADCVideoHUD;Landroid/app/Activity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideoHUD;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    .line 1375
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->bounds:Landroid/graphics/Rect;

    .line 1376
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 1380
    const/16 v0, 0xff

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1381
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1382
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideoHUD;->browser_icon:Lcom/jirbo/adcolony/ADCImage;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCVideoHUD;->browser_icon:Lcom/jirbo/adcolony/ADCImage;

    iget v2, v2, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideoHUD;->browser_icon:Lcom/jirbo/adcolony/ADCImage;

    iget v3, v3, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;II)V

    .line 1383
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideoHUD$LoadingView;->invalidate()V

    .line 1384
    return-void
.end method
