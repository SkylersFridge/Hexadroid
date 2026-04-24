.class public Lcom/roblox/client/RotationGestureDetector;
.super Ljava/lang/Object;
.source "RotationGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private lastFinger1Pos:Landroid/graphics/Point;

.field private lastFinger2Pos:Landroid/graphics/Point;

.field private lastVector:Landroid/graphics/Point;

.field private mAngle:F

.field private mListener:Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

.field private mState:I

.field private ptrID1:I

.field private ptrID2:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    .line 10
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    .line 11
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/RotationGestureDetector;->mAngle:F

    .line 45
    iput-object p1, p0, Lcom/roblox/client/RotationGestureDetector;->mListener:Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

    .line 46
    iput v1, p0, Lcom/roblox/client/RotationGestureDetector;->mState:I

    .line 47
    iput v1, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    .line 48
    iput v1, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    .line 49
    return-void
.end method

.method private angleBetweenLines(FFFF)V
    .locals 8
    .param p1, "nfX"    # F
    .param p2, "nfY"    # F
    .param p3, "nsX"    # F
    .param p4, "nsY"    # F

    .prologue
    .line 118
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 119
    .local v3, "newVector":Landroid/graphics/Point;
    sub-float v4, p1, p3

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 120
    sub-float v4, p2, p4

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 122
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 123
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 125
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 127
    .local v2, "dotProductDelta":F
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-double v4, v4

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 130
    .local v0, "angleDelta":D
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    float-to-int v5, p1

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 131
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    float-to-int v5, p2

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 133
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    float-to-int v5, p3

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 134
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    float-to-int v5, p4

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 136
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->mAngle:F

    double-to-float v5, v0

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/roblox/client/RotationGestureDetector;->mAngle:F

    .line 137
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/roblox/client/RotationGestureDetector;->mAngle:F

    return v0
.end method

.method public getPoint1()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public getPoint2()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/roblox/client/RotationGestureDetector;->mState:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 54
    :pswitch_1
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    if-ne v4, v7, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    .line 57
    iput v7, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    .line 58
    const/4 v4, 0x0

    iput v4, p0, Lcom/roblox/client/RotationGestureDetector;->mState:I

    .line 59
    iput v5, p0, Lcom/roblox/client/RotationGestureDetector;->mAngle:F

    goto :goto_0

    .line 63
    :pswitch_2
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    if-ne v4, v7, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    .line 67
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    iget v5, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 68
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    iget v5, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 70
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    iget v5, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 71
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    iget v5, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 73
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 74
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->lastVector:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger2Pos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/roblox/client/RotationGestureDetector;->lastFinger1Pos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 76
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    if-eq v4, v7, :cond_0

    .line 77
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->mListener:Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v4, p0}, Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;->OnRotation(Lcom/roblox/client/RotationGestureDetector;)V

    goto/16 :goto_0

    .line 81
    :pswitch_3
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    if-eq v4, v7, :cond_0

    .line 82
    iput v8, p0, Lcom/roblox/client/RotationGestureDetector;->mState:I

    .line 84
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 85
    .local v2, "nsX":F
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 86
    .local v3, "nsY":F
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 87
    .local v0, "nfX":F
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 89
    .local v1, "nfY":F
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/roblox/client/RotationGestureDetector;->angleBetweenLines(FFFF)V

    .line 91
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->mListener:Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

    if-eqz v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->mListener:Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v4, p0}, Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;->OnRotation(Lcom/roblox/client/RotationGestureDetector;)V

    goto/16 :goto_0

    .line 97
    .end local v0    # "nfX":F
    .end local v1    # "nfY":F
    .end local v2    # "nsX":F
    .end local v3    # "nsY":F
    :pswitch_4
    iput v6, p0, Lcom/roblox/client/RotationGestureDetector;->mState:I

    .line 98
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    if-eq v4, v7, :cond_1

    .line 99
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->mListener:Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v4, p0}, Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;->OnRotation(Lcom/roblox/client/RotationGestureDetector;)V

    .line 101
    :cond_1
    iput v5, p0, Lcom/roblox/client/RotationGestureDetector;->mAngle:F

    .line 102
    iput v7, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    goto/16 :goto_0

    .line 105
    :pswitch_5
    iput v6, p0, Lcom/roblox/client/RotationGestureDetector;->mState:I

    .line 106
    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID1:I

    if-eq v4, v7, :cond_2

    iget v4, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    if-eq v4, v7, :cond_2

    .line 107
    iget-object v4, p0, Lcom/roblox/client/RotationGestureDetector;->mListener:Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;

    invoke-interface {v4, p0}, Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;->OnRotation(Lcom/roblox/client/RotationGestureDetector;)V

    .line 109
    :cond_2
    iput v5, p0, Lcom/roblox/client/RotationGestureDetector;->mAngle:F

    .line 110
    iput v7, p0, Lcom/roblox/client/RotationGestureDetector;->ptrID2:I

    goto/16 :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
