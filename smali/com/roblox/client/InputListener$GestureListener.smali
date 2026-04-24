.class final Lcom/roblox/client/InputListener$GestureListener;
.super Ljava/lang/Object;
.source "InputListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/InputListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field public longPressEventId:I

.field public panEventId:I

.field final synthetic this$0:Lcom/roblox/client/InputListener;

.field private xCurrPanPos:I

.field private xPanTranslation:I

.field private yCurrPanPos:I

.field private yPanTranslation:I


# direct methods
.method private constructor <init>(Lcom/roblox/client/InputListener;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 354
    iput-object p1, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput v1, p0, Lcom/roblox/client/InputListener$GestureListener;->longPressEventId:I

    .line 360
    iput v1, p0, Lcom/roblox/client/InputListener$GestureListener;->panEventId:I

    .line 363
    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->xCurrPanPos:I

    .line 364
    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->yCurrPanPos:I

    .line 365
    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->xPanTranslation:I

    .line 366
    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->yPanTranslation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/InputListener;Lcom/roblox/client/InputListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/InputListener;
    .param p2, "x1"    # Lcom/roblox/client/InputListener$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/roblox/client/InputListener$GestureListener;-><init>(Lcom/roblox/client/InputListener;)V

    return-void
.end method


# virtual methods
.method public endPanGesture()V
    .locals 6

    .prologue
    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->panEventId:I

    .line 451
    const/4 v0, 0x2

    iget v1, p0, Lcom/roblox/client/InputListener$GestureListener;->xCurrPanPos:I

    iget v2, p0, Lcom/roblox/client/InputListener$GestureListener;->yCurrPanPos:I

    iget v3, p0, Lcom/roblox/client/InputListener$GestureListener;->xPanTranslation:I

    int-to-float v3, v3

    iget v4, p0, Lcom/roblox/client/InputListener$GestureListener;->yPanTranslation:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/InputListener;->access$1000(IIIFFF)V

    .line 453
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 377
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 378
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v0, v3, v4

    .line 379
    .local v0, "diffX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 380
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 382
    cmpl-float v3, v0, v6

    if-lez v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-virtual {v3}, Lcom/roblox/client/InputListener;->onSwipeRight()V

    .line 401
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 385
    .restart local v0    # "diffX":F
    .restart local v1    # "diffY":F
    :cond_1
    iget-object v3, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-virtual {v3}, Lcom/roblox/client/InputListener;->onSwipeLeft()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v0    # "diffX":F
    .end local v1    # "diffY":F
    :catch_0
    move-exception v2

    .line 399
    .local v2, "exception":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v2    # "exception":Ljava/lang/Exception;
    .restart local v0    # "diffX":F
    .restart local v1    # "diffY":F
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 391
    cmpl-float v3, v1, v6

    if-lez v3, :cond_3

    .line 392
    iget-object v3, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-virtual {v3}, Lcom/roblox/client/InputListener;->onSwipeBottom()V

    goto :goto_0

    .line 394
    :cond_3
    iget-object v3, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-virtual {v3}, Lcom/roblox/client/InputListener;->onSwipeTop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 460
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/roblox/client/InputListener$GestureListener;->longPressEventId:I

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v4}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 463
    .local v1, "xPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v4}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 464
    .local v2, "yPos":I
    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/roblox/client/InputListener;->access$1100(III)V

    .line 465
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 421
    const/4 v6, 0x0

    .line 422
    .local v6, "isNewEvent":Z
    iget v0, p0, Lcom/roblox/client/InputListener$GestureListener;->panEventId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 423
    const/4 v6, 0x1

    .line 426
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 428
    .local v7, "pointerIndex":I
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->panEventId:I

    .line 430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v1}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->xCurrPanPos:I

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v1}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->yCurrPanPos:I

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v1}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v8, v0

    .line 434
    .local v8, "xInitPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v1}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v9, v0

    .line 436
    .local v9, "yInitPos":I
    iget v0, p0, Lcom/roblox/client/InputListener$GestureListener;->xCurrPanPos:I

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->xPanTranslation:I

    .line 437
    iget v0, p0, Lcom/roblox/client/InputListener$GestureListener;->yCurrPanPos:I

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/roblox/client/InputListener$GestureListener;->yPanTranslation:I

    .line 439
    if-eqz v6, :cond_1

    .line 440
    const/4 v0, 0x0

    iget v1, p0, Lcom/roblox/client/InputListener$GestureListener;->xCurrPanPos:I

    iget v2, p0, Lcom/roblox/client/InputListener$GestureListener;->yCurrPanPos:I

    iget v3, p0, Lcom/roblox/client/InputListener$GestureListener;->xPanTranslation:I

    int-to-float v3, v3

    iget v4, p0, Lcom/roblox/client/InputListener$GestureListener;->yPanTranslation:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/InputListener;->access$1000(IIIFFF)V

    .line 446
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 443
    :cond_1
    const/4 v0, 0x1

    iget v1, p0, Lcom/roblox/client/InputListener$GestureListener;->xCurrPanPos:I

    iget v2, p0, Lcom/roblox/client/InputListener$GestureListener;->yCurrPanPos:I

    iget v3, p0, Lcom/roblox/client/InputListener$GestureListener;->xPanTranslation:I

    int-to-float v3, v3

    iget v4, p0, Lcom/roblox/client/InputListener$GestureListener;->yPanTranslation:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/roblox/client/InputListener;->access$1000(IIIFFF)V

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 408
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v3}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 413
    .local v0, "xPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/roblox/client/InputListener$GestureListener;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v3}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 414
    .local v1, "yPos":I
    invoke-static {v0, v1}, Lcom/roblox/client/InputListener;->access$900(II)V

    .line 415
    const/4 v2, 0x0

    return v2
.end method
