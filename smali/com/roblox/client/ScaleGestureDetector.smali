.class public Lcom/roblox/client/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private currFinger1Pos:Landroid/graphics/Point;

.field private currFinger2Pos:Landroid/graphics/Point;

.field private initFinger1Pos:Landroid/graphics/Point;

.field private initFinger2Pos:Landroid/graphics/Point;

.field private mListener:Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

.field private mScale:F

.field private mState:I

.field private ptrID1:I

.field private ptrID2:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger1Pos:Landroid/graphics/Point;

    .line 11
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger2Pos:Landroid/graphics/Point;

    .line 12
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    .line 13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    .line 16
    iput v1, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    .line 17
    iput v2, p0, Lcom/roblox/client/ScaleGestureDetector;->mScale:F

    .line 48
    iput-object p1, p0, Lcom/roblox/client/ScaleGestureDetector;->mListener:Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

    .line 49
    iput v1, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    .line 50
    iput v2, p0, Lcom/roblox/client/ScaleGestureDetector;->mScale:F

    .line 51
    iput v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    .line 52
    iput v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    .line 53
    return-void
.end method

.method private scaleBetweenPoints()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 135
    iget-object v8, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger2Pos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger1Pos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 136
    .local v6, "initXDiff":F
    iget-object v8, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger2Pos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger1Pos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v7, v8

    .line 138
    .local v7, "initYDiff":F
    float-to-double v8, v6

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 140
    .local v4, "initLength":D
    iget-object v8, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    .line 141
    .local v2, "currXDiff":F
    iget-object v8, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v3, v8

    .line 143
    .local v3, "currYDiff":F
    float-to-double v8, v2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 145
    .local v0, "currLength":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-eqz v8, :cond_0

    .line 146
    div-double v8, v0, v4

    double-to-float v8, v8

    iput v8, p0, Lcom/roblox/client/ScaleGestureDetector;->mScale:F

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/roblox/client/ScaleGestureDetector;->mScale:F

    goto :goto_0
.end method


# virtual methods
.method public getPoint1()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    .line 35
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
    .line 39
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mScale:F

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 59
    :pswitch_1
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    if-ne v0, v2, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :pswitch_2
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    if-ne v0, v2, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    .line 71
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger1Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 72
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger1Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 74
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger2Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 75
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->initFinger2Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 79
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 80
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 82
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 83
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    .line 87
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    if-eq v0, v2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mListener:Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;->OnScale(Lcom/roblox/client/ScaleGestureDetector;)V

    goto/16 :goto_0

    .line 92
    :pswitch_3
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    if-eq v0, v2, :cond_0

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    .line 95
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 96
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger1Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 98
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 99
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->currFinger2Pos:Landroid/graphics/Point;

    iget v1, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 101
    invoke-direct {p0}, Lcom/roblox/client/ScaleGestureDetector;->scaleBetweenPoints()V

    .line 103
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mListener:Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mListener:Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;->OnScale(Lcom/roblox/client/ScaleGestureDetector;)V

    goto/16 :goto_0

    .line 109
    :pswitch_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    .line 110
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    if-eq v0, v2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mListener:Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;->OnScale(Lcom/roblox/client/ScaleGestureDetector;)V

    .line 113
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mScale:F

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    goto/16 :goto_0

    .line 117
    :pswitch_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mState:I

    .line 118
    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID1:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I

    if-eq v0, v2, :cond_2

    .line 119
    iget-object v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mListener:Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;->OnScale(Lcom/roblox/client/ScaleGestureDetector;)V

    .line 121
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->mScale:F

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/ScaleGestureDetector;->ptrID2:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 57
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
