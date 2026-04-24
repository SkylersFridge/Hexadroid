.class Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;
.super Landroid/view/View;
.source "AdColonyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColonyBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShadowOverlay"
.end annotation


# instance fields
.field img_close_button:Lcom/jirbo/adcolony/ADCImage;

.field img_close_button_down:Lcom/jirbo/adcolony/ADCImage;

.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyBrowser;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/AdColonyBrowser;Landroid/app/Activity;)V
    .locals 6
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyBrowser;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    .line 341
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 335
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->paint:Landroid/graphics/Paint;

    .line 336
    new-instance v1, Lcom/jirbo/adcolony/ADCImage;

    const-string v2, "close_image_normal"

    invoke-static {v2}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->img_close_button:Lcom/jirbo/adcolony/ADCImage;

    .line 337
    new-instance v1, Lcom/jirbo/adcolony/ADCImage;

    const-string v2, "close_image_down"

    invoke-static {v2}, Lcom/jirbo/adcolony/ADC;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->img_close_button_down:Lcom/jirbo/adcolony/ADCImage;

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 346
    .local v0, "setLayerTypeMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v0    # "setLayerTypeMethod":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->paint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 355
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 356
    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 357
    return-void

    .line 348
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->this$0:Lcom/jirbo/adcolony/AdColonyBrowser;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyBrowser;->bar_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/jirbo/adcolony/AdColonyBrowser$ShadowOverlay;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 365
    return-void
.end method
