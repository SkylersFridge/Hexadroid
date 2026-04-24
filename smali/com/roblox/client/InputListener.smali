.class public Lcom/roblox/client/InputListener;
.super Ljava/lang/Object;
.source "InputListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;
.implements Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/InputListener$GestureListener;,
        Lcom/roblox/client/InputListener$TouchInfo;
    }
.end annotation


# instance fields
.field private final eulerAnglesVector:[F

.field private final gravity:[F

.field private final linear_acceleration:[F

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mActivePointers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/roblox/client/InputListener$TouchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDensity:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

.field private mGyroscope:Landroid/hardware/Sensor;

.field private mHasTouchscreen:Z

.field private mRotationDetector:Lcom/roblox/client/RotationGestureDetector;

.field private mScaleDetector:Lcom/roblox/client/ScaleGestureDetector;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUserRequested:Z

.field private final rotationMatrix:[F

.field private final rotationQuaternion:[F


# direct methods
.method public constructor <init>(Lcom/roblox/client/ActivityGlView;Landroid/view/SurfaceView;)V
    .locals 4
    .param p1, "glView"    # Lcom/roblox/client/ActivityGlView;
    .param p2, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mSurfaceView:Landroid/view/SurfaceView;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    .line 69
    iput-boolean v3, p0, Lcom/roblox/client/InputListener;->mHasTouchscreen:Z

    .line 70
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 71
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    .line 72
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mRotationDetector:Lcom/roblox/client/RotationGestureDetector;

    .line 73
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mScaleDetector:Lcom/roblox/client/ScaleGestureDetector;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    .line 75
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 77
    iput-object v2, p0, Lcom/roblox/client/InputListener;->mGyroscope:Landroid/hardware/Sensor;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/InputListener;->mUserRequested:Z

    .line 80
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/roblox/client/InputListener;->rotationQuaternion:[F

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/roblox/client/InputListener;->rotationMatrix:[F

    .line 82
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/roblox/client/InputListener;->eulerAnglesVector:[F

    .line 84
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/roblox/client/InputListener;->gravity:[F

    .line 85
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/roblox/client/InputListener;->linear_acceleration:[F

    .line 88
    iput-object p2, p0, Lcom/roblox/client/InputListener;->mSurfaceView:Landroid/view/SurfaceView;

    .line 89
    invoke-virtual {p1}, Lcom/roblox/client/ActivityGlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    .line 90
    invoke-virtual {p1}, Lcom/roblox/client/ActivityGlView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/InputListener;->mHasTouchscreen:Z

    .line 93
    iget-boolean v0, p0, Lcom/roblox/client/InputListener;->mHasTouchscreen:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/roblox/client/InputListener$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/roblox/client/InputListener$GestureListener;-><init>(Lcom/roblox/client/InputListener;Lcom/roblox/client/InputListener$1;)V

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    .line 95
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 96
    new-instance v0, Lcom/roblox/client/RotationGestureDetector;

    invoke-direct {v0, p0}, Lcom/roblox/client/RotationGestureDetector;-><init>(Lcom/roblox/client/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mRotationDetector:Lcom/roblox/client/RotationGestureDetector;

    .line 97
    new-instance v0, Lcom/roblox/client/ScaleGestureDetector;

    invoke-direct {v0, p0}, Lcom/roblox/client/ScaleGestureDetector;-><init>(Lcom/roblox/client/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mScaleDetector:Lcom/roblox/client/ScaleGestureDetector;

    .line 101
    :cond_0
    invoke-direct {p0, p2}, Lcom/roblox/client/InputListener;->setupControllerInput(Landroid/view/SurfaceView;)V

    .line 103
    invoke-virtual {p1}, Lcom/roblox/client/ActivityGlView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 105
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mAccelerometer:Landroid/hardware/Sensor;

    .line 106
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/InputListener;->mGyroscope:Landroid/hardware/Sensor;

    .line 108
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mGyroscope:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 109
    invoke-static {v3}, Lcom/roblox/client/InputListener;->nativeSetGyroscopeEnabled(Z)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 113
    invoke-static {v3}, Lcom/roblox/client/InputListener;->nativeSetAccelerometerEnabled(Z)V

    .line 115
    :cond_2
    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 26
    invoke-static {}, Lcom/roblox/client/InputListener;->nativeCharacterJump()V

    return-void
.end method

.method static synthetic access$1000(IIIFFF)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F

    .prologue
    .line 26
    invoke-static/range {p0 .. p5}, Lcom/roblox/client/InputListener;->nativePassPanGesture(IIIFFF)V

    return-void
.end method

.method static synthetic access$1100(III)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/roblox/client/InputListener;->nativePassLongPressGesture(III)V

    return-void
.end method

.method static synthetic access$200(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    invoke-static {p0}, Lcom/roblox/client/InputListener;->nativeToggleThirdPersonCam(Z)V

    return-void
.end method

.method static synthetic access$300(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 26
    invoke-static {p0}, Lcom/roblox/client/InputListener;->nativeSwitchToWeaponPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/roblox/client/InputListener;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/InputListener;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/roblox/client/InputListener;)F
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/InputListener;

    .prologue
    .line 26
    iget v0, p0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    return v0
.end method

.method static synthetic access$600(FF)V
    .locals 0
    .param p0, "x0"    # F
    .param p1, "x1"    # F

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/roblox/client/InputListener;->nativeFireWeapon(FF)V

    return-void
.end method

.method static synthetic access$700(FF)V
    .locals 0
    .param p0, "x0"    # F
    .param p1, "x1"    # F

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/roblox/client/InputListener;->nativeCharacterMove(FF)V

    return-void
.end method

.method static synthetic access$800(FF)V
    .locals 0
    .param p0, "x0"    # F
    .param p1, "x1"    # F

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/roblox/client/InputListener;->nativeCameraRotate(FF)V

    return-void
.end method

.method static synthetic access$900(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/roblox/client/InputListener;->nativePassTapGesture(II)V

    return-void
.end method

.method private static native nativeCameraRotate(FF)V
.end method

.method private static native nativeCharacterJump()V
.end method

.method private static native nativeCharacterMove(FF)V
.end method

.method private static native nativeFireWeapon(FF)V
.end method

.method private static native nativePassAccelerometerChange(FFF)V
.end method

.method private static native nativePassGravityChange(FFF)V
.end method

.method private static native nativePassGyroscopeChange(FFFFFFF)V
.end method

.method private static native nativePassInput(IIIIII)V
.end method

.method private static native nativePassLongPressGesture(III)V
.end method

.method private static native nativePassPanGesture(IIIFFF)V
.end method

.method private static native nativePassPinchGesture(IFFIIII)V
.end method

.method private static native nativePassRotateGesture(IFFIIII)V
.end method

.method private static native nativePassSwipeGesture(II)V
.end method

.method private static native nativePassTapGesture(II)V
.end method

.method private static native nativeSetAccelerometerEnabled(Z)V
.end method

.method private static native nativeSetGyroscopeEnabled(Z)V
.end method

.method private static native nativeSwitchToWeaponPos(I)I
.end method

.method private static native nativeToggleThirdPersonCam(Z)V
.end method

.method private setupControllerInput(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 136
    new-instance v0, Lcom/roblox/client/InputListener$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/InputListener$1;-><init>(Lcom/roblox/client/InputListener;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 185
    new-instance v0, Lcom/roblox/client/InputListener$2;

    invoke-direct {v0, p0}, Lcom/roblox/client/InputListener$2;-><init>(Lcom/roblox/client/InputListener;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 242
    return-void
.end method


# virtual methods
.method public OnRotation(Lcom/roblox/client/RotationGestureDetector;)V
    .locals 9
    .param p1, "rotationDetector"    # Lcom/roblox/client/RotationGestureDetector;

    .prologue
    .line 486
    invoke-virtual {p1}, Lcom/roblox/client/RotationGestureDetector;->getAngle()F

    move-result v1

    .line 487
    .local v1, "angle":F
    invoke-virtual {p1}, Lcom/roblox/client/RotationGestureDetector;->getState()I

    move-result v0

    .line 488
    .local v0, "state":I
    invoke-virtual {p1}, Lcom/roblox/client/RotationGestureDetector;->getPoint1()Landroid/graphics/Point;

    move-result-object v7

    .line 489
    .local v7, "point1":Landroid/graphics/Point;
    invoke-virtual {p1}, Lcom/roblox/client/RotationGestureDetector;->getPoint2()Landroid/graphics/Point;

    move-result-object v8

    .line 491
    .local v8, "point2":Landroid/graphics/Point;
    const/4 v2, 0x0

    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    iget v5, v8, Landroid/graphics/Point;->x:I

    iget v6, v8, Landroid/graphics/Point;->y:I

    invoke-static/range {v0 .. v6}, Lcom/roblox/client/InputListener;->nativePassRotateGesture(IFFIIII)V

    .line 493
    return-void
.end method

.method public OnScale(Lcom/roblox/client/ScaleGestureDetector;)V
    .locals 9
    .param p1, "scaleDetector"    # Lcom/roblox/client/ScaleGestureDetector;

    .prologue
    .line 497
    invoke-virtual {p1}, Lcom/roblox/client/ScaleGestureDetector;->getPoint1()Landroid/graphics/Point;

    move-result-object v7

    .line 498
    .local v7, "point1":Landroid/graphics/Point;
    invoke-virtual {p1}, Lcom/roblox/client/ScaleGestureDetector;->getPoint2()Landroid/graphics/Point;

    move-result-object v8

    .line 499
    .local v8, "point2":Landroid/graphics/Point;
    invoke-virtual {p1}, Lcom/roblox/client/ScaleGestureDetector;->getScale()F

    move-result v1

    .line 500
    .local v1, "scale":F
    invoke-virtual {p1}, Lcom/roblox/client/ScaleGestureDetector;->getState()I

    move-result v0

    .line 502
    .local v0, "state":I
    const/4 v2, 0x0

    iget v3, v7, Landroid/graphics/Point;->x:I

    iget v4, v7, Landroid/graphics/Point;->y:I

    iget v5, v8, Landroid/graphics/Point;->x:I

    iget v6, v8, Landroid/graphics/Point;->y:I

    invoke-static/range {v0 .. v6}, Lcom/roblox/client/InputListener;->nativePassPinchGesture(IFFIIII)V

    .line 504
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 546
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    const v3, 0x3e4ccccc    # 0.19999999f

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 508
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 510
    iget-object v0, p0, Lcom/roblox/client/InputListener;->rotationQuaternion:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 511
    iget-object v0, p0, Lcom/roblox/client/InputListener;->rotationMatrix:[F

    iget-object v1, p0, Lcom/roblox/client/InputListener;->rotationQuaternion:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 512
    iget-object v0, p0, Lcom/roblox/client/InputListener;->rotationMatrix:[F

    iget-object v1, p0, Lcom/roblox/client/InputListener;->eulerAnglesVector:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 515
    iget-object v0, p0, Lcom/roblox/client/InputListener;->eulerAnglesVector:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/roblox/client/InputListener;->eulerAnglesVector:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/roblox/client/InputListener;->eulerAnglesVector:[F

    aget v2, v2, v5

    iget-object v3, p0, Lcom/roblox/client/InputListener;->rotationQuaternion:[F

    aget v3, v3, v4

    iget-object v4, p0, Lcom/roblox/client/InputListener;->rotationQuaternion:[F

    aget v4, v4, v5

    iget-object v5, p0, Lcom/roblox/client/InputListener;->rotationQuaternion:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    iget-object v6, p0, Lcom/roblox/client/InputListener;->rotationQuaternion:[F

    aget v6, v6, v8

    invoke-static/range {v0 .. v6}, Lcom/roblox/client/InputListener;->nativePassGyroscopeChange(FFFFFFF)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 524
    const v7, 0x3f4ccccd    # 0.8f

    .line 527
    .local v7, "alpha":F
    iget-object v0, p0, Lcom/roblox/client/InputListener;->gravity:[F

    iget-object v1, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v1, v1, v4

    mul-float/2addr v1, v6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 528
    iget-object v0, p0, Lcom/roblox/client/InputListener;->gravity:[F

    iget-object v1, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v1, v1, v8

    mul-float/2addr v1, v6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 529
    iget-object v0, p0, Lcom/roblox/client/InputListener;->gravity:[F

    iget-object v1, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v1, v1, v5

    mul-float/2addr v1, v6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 532
    iget-object v0, p0, Lcom/roblox/client/InputListener;->linear_acceleration:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 533
    iget-object v0, p0, Lcom/roblox/client/InputListener;->linear_acceleration:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v2, v2, v8

    sub-float/2addr v1, v2

    aput v1, v0, v8

    .line 534
    iget-object v0, p0, Lcom/roblox/client/InputListener;->linear_acceleration:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iget-object v2, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v2, v2, v5

    sub-float/2addr v1, v2

    aput v1, v0, v5

    .line 537
    iget-object v0, p0, Lcom/roblox/client/InputListener;->linear_acceleration:[F

    aget v0, v0, v8

    neg-float v0, v0

    iget-object v1, p0, Lcom/roblox/client/InputListener;->linear_acceleration:[F

    aget v1, v1, v5

    neg-float v1, v1

    iget-object v2, p0, Lcom/roblox/client/InputListener;->linear_acceleration:[F

    aget v2, v2, v4

    neg-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/InputListener;->nativePassAccelerometerChange(FFF)V

    .line 538
    iget-object v0, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v0, v0, v8

    neg-float v0, v0

    iget-object v1, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v1, v1, v5

    neg-float v1, v1

    iget-object v2, p0, Lcom/roblox/client/InputListener;->gravity:[F

    aget v2, v2, v4

    neg-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/roblox/client/InputListener;->nativePassGravityChange(FFF)V

    goto/16 :goto_0
.end method

.method public onSwipeBottom()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 473
    invoke-static {v0, v0}, Lcom/roblox/client/InputListener;->nativePassSwipeGesture(II)V

    .line 474
    return-void
.end method

.method public onSwipeLeft()V
    .locals 2

    .prologue
    .line 477
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/InputListener;->nativePassSwipeGesture(II)V

    .line 478
    return-void
.end method

.method public onSwipeRight()V
    .locals 2

    .prologue
    .line 469
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/InputListener;->nativePassSwipeGesture(II)V

    .line 470
    return-void
.end method

.method public onSwipeTop()V
    .locals 2

    .prologue
    .line 481
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/roblox/client/InputListener;->nativePassSwipeGesture(II)V

    .line 482
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/roblox/client/InputListener;->mHasTouchscreen:Z

    if-nez v3, :cond_0

    .line 246
    const/4 v3, 0x0

    .line 351
    :goto_0
    return v3

    .line 249
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v18

    .line 252
    .local v18, "pointerIndex":I
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 255
    .local v17, "pointerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    .line 257
    .local v14, "maskedAction":I
    packed-switch v14, :pswitch_data_0

    .line 305
    :cond_1
    :goto_1
    :pswitch_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v9, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v20

    .local v20, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_9

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 309
    .local v2, "touchId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/roblox/client/InputListener$TouchInfo;

    .line 310
    .local v16, "point":Lcom/roblox/client/InputListener$TouchInfo;
    const/16 v19, 0x1

    .line 312
    .local v19, "processEvent":Z
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 313
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_2
    :goto_3
    if-eqz v19, :cond_8

    invoke-static {}, Lcom/roblox/client/ActivityGlView;->getSurfaceState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    div-float/2addr v3, v4

    float-to-int v6, v3

    .line 328
    .local v6, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    div-float/2addr v3, v4

    float-to-int v7, v3

    .line 330
    .local v7, "height":I
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getX()I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastX:I

    .line 331
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getY()I

    move-result v3

    move-object/from16 v0, v16

    iput v3, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastY:I

    .line 333
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getX()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getY()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getEventType()I

    move-result v5

    invoke-static/range {v2 .. v7}, Lcom/roblox/client/InputListener;->nativePassInput(IIIIII)V

    .line 307
    .end local v6    # "width":I
    .end local v7    # "height":I
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 261
    .end local v2    # "touchId":I
    .end local v8    # "i":I
    .end local v9    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "point":Lcom/roblox/client/InputListener$TouchInfo;
    .end local v19    # "processEvent":Z
    .end local v20    # "size":I
    :pswitch_1
    new-instance v10, Lcom/roblox/client/InputListener$TouchInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/roblox/client/InputListener$TouchInfo;-><init>(Lcom/roblox/client/InputListener;)V

    .line 262
    .local v10, "info":Lcom/roblox/client/InputListener$TouchInfo;
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Lcom/roblox/client/InputListener$TouchInfo;->setX(I)V

    .line 263
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Lcom/roblox/client/InputListener$TouchInfo;->setY(I)V

    .line 264
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/roblox/client/InputListener$TouchInfo;->setEventType(I)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 270
    .end local v10    # "info":Lcom/roblox/client/InputListener$TouchInfo;
    :pswitch_2
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_1

    .line 272
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 273
    .restart local v2    # "touchId":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 275
    .local v15, "movePointerIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/roblox/client/InputListener$TouchInfo;

    .line 276
    .restart local v10    # "info":Lcom/roblox/client/InputListener$TouchInfo;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Lcom/roblox/client/InputListener$TouchInfo;->setX(I)V

    .line 277
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/roblox/client/InputListener;->mDisplayDensity:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v10, v3}, Lcom/roblox/client/InputListener$TouchInfo;->setY(I)V

    .line 278
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/roblox/client/InputListener$TouchInfo;->setEventType(I)V

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    iget v3, v3, Lcom/roblox/client/InputListener$GestureListener;->longPressEventId:I

    if-ne v2, v3, :cond_4

    .line 281
    const/4 v3, 0x1

    invoke-virtual {v10}, Lcom/roblox/client/InputListener$TouchInfo;->getX()I

    move-result v4

    invoke-virtual {v10}, Lcom/roblox/client/InputListener$TouchInfo;->getY()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/roblox/client/InputListener;->nativePassLongPressGesture(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v2    # "touchId":I
    .end local v10    # "info":Lcom/roblox/client/InputListener$TouchInfo;
    .end local v15    # "movePointerIndex":I
    :cond_4
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 292
    .end local v12    # "j":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/roblox/client/InputListener$TouchInfo;

    .line 294
    .restart local v10    # "info":Lcom/roblox/client/InputListener$TouchInfo;
    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Lcom/roblox/client/InputListener$TouchInfo;->setEventType(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    iget v3, v3, Lcom/roblox/client/InputListener$GestureListener;->longPressEventId:I

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    const/4 v4, -0x1

    iput v4, v3, Lcom/roblox/client/InputListener$GestureListener;->longPressEventId:I

    .line 297
    const/4 v3, 0x2

    invoke-virtual {v10}, Lcom/roblox/client/InputListener$TouchInfo;->getX()I

    move-result v4

    invoke-virtual {v10}, Lcom/roblox/client/InputListener$TouchInfo;->getY()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/roblox/client/InputListener;->nativePassLongPressGesture(III)V

    goto/16 :goto_1

    .line 298
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    iget v3, v3, Lcom/roblox/client/InputListener$GestureListener;->panEventId:I

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mGestureListener:Lcom/roblox/client/InputListener$GestureListener;

    invoke-virtual {v3}, Lcom/roblox/client/InputListener$GestureListener;->endPanGesture()V

    goto/16 :goto_1

    .line 314
    .end local v10    # "info":Lcom/roblox/client/InputListener$TouchInfo;
    .restart local v2    # "touchId":I
    .restart local v8    # "i":I
    .restart local v9    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "point":Lcom/roblox/client/InputListener$TouchInfo;
    .restart local v19    # "processEvent":Z
    .restart local v20    # "size":I
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getEventType()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastEventType:I

    if-ne v3, v4, :cond_7

    .line 315
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getX()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastX:I

    if-ne v3, v4, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getY()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastY:I

    if-ne v3, v4, :cond_2

    .line 317
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 319
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastEventType:I

    if-nez v3, :cond_2

    .line 320
    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getX()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastX:I

    if-ne v3, v4, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/roblox/client/InputListener$TouchInfo;->getY()I

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Lcom/roblox/client/InputListener$TouchInfo;->lastY:I

    if-ne v3, v4, :cond_2

    .line 321
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 335
    :cond_8
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->getSurfaceState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 336
    const-string v3, "InputListener"

    const-string v4, "nativePassInput not ready or already passed event"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 341
    .end local v2    # "touchId":I
    .end local v16    # "point":Lcom/roblox/client/InputListener$TouchInfo;
    .end local v19    # "processEvent":Z
    :cond_9
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 342
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 343
    .local v13, "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mActivePointers:Landroid/util/SparseArray;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7

    .line 347
    .end local v13    # "key":Ljava/lang/Integer;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mScaleDetector:Lcom/roblox/client/ScaleGestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/roblox/client/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/InputListener;->mRotationDetector:Lcom/roblox/client/RotationGestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/roblox/client/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 351
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 283
    .end local v8    # "i":I
    .end local v9    # "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v20    # "size":I
    .restart local v12    # "j":I
    :catch_0
    move-exception v3

    goto/16 :goto_6

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public startSensorListening(Z)V
    .locals 3
    .param p1, "userRequested"    # Z

    .prologue
    const/4 v2, 0x1

    .line 122
    iget-boolean v0, p0, Lcom/roblox/client/InputListener;->mUserRequested:Z

    if-nez v0, :cond_0

    .line 123
    iput-boolean p1, p0, Lcom/roblox/client/InputListener;->mUserRequested:Z

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcom/roblox/client/InputListener;->mUserRequested:Z

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/roblox/client/InputListener;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 129
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/roblox/client/InputListener;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 132
    :cond_1
    return-void
.end method

.method public stopSensorListening()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/roblox/client/InputListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 119
    return-void
.end method
