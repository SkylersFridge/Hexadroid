.class public Lcom/roblox/client/ActivityGlView;
.super Lcom/roblox/client/RobloxServiceActivity;
.source "ActivityGlView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ActivityGlView$runnableHideKeyboard;,
        Lcom/roblox/client/ActivityGlView$showEditText;
    }
.end annotation


# static fields
.field public static final ALLOW_SAME_PROCESS_DEBUGGING:Z = false

.field private static final SHOW_VIDEO_AD_REQUEST:I = 0x1

.field public static final SURFACE_CREATED:I = 0x2

.field public static final SURFACE_DESTROYED:I = 0x4

.field public static final SURFACE_INVALID:I = -0x1

.field public static final SURFACE_NOT_READY:I = 0x0

.field public static final SURFACE_READY_NOT_CREATED:I = 0x1

.field public static final SURFACE_READY_TO_DESTROY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityGlView"

.field private static mSingleton:Lcom/roblox/client/ActivityGlView;


# instance fields
.field private mAllowPauseResume:Z

.field private mAlreadyCreated:Z

.field private mAlreadyDestroyed:Z

.field private mCurrentTextBox:J

.field private mDeviceBlacklistChecker:Lcom/roblox/client/DeviceBlacklistChecker;

.field private mDifferentProcess:Z

.field private mFMODAudioDevice:Lorg/fmod/FMODAudioDevice;

.field private mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

.field private mInputListener:Lcom/roblox/client/InputListener;

.field private mMTBFStartTimeMilliseconds:J

.field private mPausedForDialog:Z

.field private mSurfaceState:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUIThreadHandler:Landroid/os/Handler;

.field private final runnerExit:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/roblox/client/RobloxServiceActivity;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 51
    iput-object v1, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 52
    iput-boolean v2, p0, Lcom/roblox/client/ActivityGlView;->mDifferentProcess:Z

    .line 53
    iput-object v1, p0, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    .line 54
    iput-object v1, p0, Lcom/roblox/client/ActivityGlView;->mFMODAudioDevice:Lorg/fmod/FMODAudioDevice;

    .line 55
    iput-wide v3, p0, Lcom/roblox/client/ActivityGlView;->mCurrentTextBox:J

    .line 56
    iput-wide v3, p0, Lcom/roblox/client/ActivityGlView;->mMTBFStartTimeMilliseconds:J

    .line 57
    iput-boolean v2, p0, Lcom/roblox/client/ActivityGlView;->mAlreadyCreated:Z

    .line 58
    iput-boolean v2, p0, Lcom/roblox/client/ActivityGlView;->mAlreadyDestroyed:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->mAllowPauseResume:Z

    .line 60
    iput-boolean v2, p0, Lcom/roblox/client/ActivityGlView;->mPausedForDialog:Z

    .line 61
    iput-object v1, p0, Lcom/roblox/client/ActivityGlView;->mDeviceBlacklistChecker:Lcom/roblox/client/DeviceBlacklistChecker;

    .line 62
    iput-object v1, p0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    .line 228
    new-instance v0, Lcom/roblox/client/ActivityGlView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/ActivityGlView$1;-><init>(Lcom/roblox/client/ActivityGlView;)V

    iput-object v0, p0, Lcom/roblox/client/ActivityGlView;->runnerExit:Ljava/lang/Runnable;

    .line 641
    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/ActivityGlView;)I
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/ActivityGlView;

    .prologue
    .line 32
    iget v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    return v0
.end method

.method static synthetic access$100(Lcom/roblox/client/ActivityGlView;)J
    .locals 2
    .param p0, "x0"    # Lcom/roblox/client/ActivityGlView;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/roblox/client/ActivityGlView;->mCurrentTextBox:J

    return-wide v0
.end method

.method static synthetic access$200(JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1, p2}, Lcom/roblox/client/ActivityGlView;->nativePassText(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/roblox/client/ActivityGlView;)Lcom/roblox/client/RbxKeyboard;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/ActivityGlView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    return-object v0
.end method

.method static synthetic access$400(Lcom/roblox/client/ActivityGlView;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/ActivityGlView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/roblox/client/ActivityGlView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityGlView;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityGlView;->doCrashGuardUpdate(Z)V

    return-void
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->nativeCallMessagesFromMainThread()V

    return-void
.end method

.method static synthetic access$700()Lcom/roblox/client/ActivityGlView;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    return-object v0
.end method

.method private doCrashGuardSetup()V
    .locals 2

    .prologue
    .line 484
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->doCrashGuardCheck(Lcom/roblox/client/RobloxServiceActivity;Z)V

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/roblox/client/ActivityGlView;->mMTBFStartTimeMilliseconds:J

    .line 487
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityGlView;->doCrashGuardUpdate(Z)V

    .line 488
    return-void
.end method

.method private doCrashGuardTeardown(Z)V
    .locals 3
    .param p1, "onDestroy"    # Z

    .prologue
    .line 535
    :try_start_0
    const-string v1, "crash_guard_ok"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/roblox/client/ActivityGlView;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 536
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 537
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 538
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 539
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/roblox/client/ActivityGlView;->mMTBFStartTimeMilliseconds:J

    .line 545
    return-void

    .line 540
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doCrashGuardUpdate(Z)V
    .locals 15
    .param p1, "firstTime"    # Z

    .prologue
    .line 492
    iget-wide v11, p0, Lcom/roblox/client/ActivityGlView;->mMTBFStartTimeMilliseconds:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    .line 530
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 498
    .local v3, "endTimeMilliseconds":J
    iget-wide v11, p0, Lcom/roblox/client/ActivityGlView;->mMTBFStartTimeMilliseconds:J

    sub-long v8, v3, v11

    .line 499
    .local v8, "milliseconds":J
    const-wide/16 v11, 0x1

    cmp-long v11, v8, v11

    if-gez v11, :cond_1

    .line 501
    const-wide/16 v8, 0x1

    .line 503
    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 506
    .local v10, "millisecondsChar":[C
    :try_start_0
    const-string v11, "crash_guard"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/roblox/client/ActivityGlView;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 507
    .local v5, "fos":Ljava/io/FileOutputStream;
    move-object v0, v10

    .local v0, "arr$":[C
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-char v1, v0, v6

    .line 509
    .local v1, "c":C
    int-to-byte v11, v1

    invoke-virtual {v5, v11}, Ljava/io/FileOutputStream;->write(I)V

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 511
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 512
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V

    .line 513
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    if-eqz p1, :cond_3

    .line 521
    const-string v11, "MTBF_CRASH_GUARD_3"

    const-string v12, "CreateOK"

    invoke-static {p0, v11, v12}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_3
    iget-object v11, p0, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v12, Lcom/roblox/client/ActivityGlView$3;

    invoke-direct {v12, p0}, Lcom/roblox/client/ActivityGlView$3;-><init>(Lcom/roblox/client/ActivityGlView;)V

    const-wide/16 v13, 0x3e8

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 514
    .end local v0    # "arr$":[C
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "MTBF_CRASH_GUARD_3"

    const-string v12, "FailedCreate"

    invoke-static {p0, v11, v12}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static exitGame()V
    .locals 3

    .prologue
    .line 692
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    const-class v2, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "roblox_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 694
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    invoke-virtual {v1, v0}, Lcom/roblox/client/ActivityGlView;->startActivity(Landroid/content/Intent;)V

    .line 695
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    invoke-virtual {v1}, Lcom/roblox/client/ActivityGlView;->finish()V

    .line 696
    return-void
.end method

.method public static exitGameSilent()V
    .locals 3

    .prologue
    .line 700
    sget-object v1, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 702
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "returningFromExitGameSilent"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 704
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 706
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    invoke-virtual {v1}, Lcom/roblox/client/ActivityGlView;->finish()V

    .line 707
    return-void
.end method

.method public static getSurfaceState()I
    .locals 1

    .prologue
    .line 367
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget v0, v0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    return v0
.end method

.method public static hideKeyboard()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 653
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iput-wide v2, v1, Lcom/roblox/client/ActivityGlView;->mCurrentTextBox:J

    .line 654
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v1, v1, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    .line 656
    new-instance v0, Lcom/roblox/client/ActivityGlView$runnableHideKeyboard;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/ActivityGlView$runnableHideKeyboard;-><init>(Lcom/roblox/client/ActivityGlView$1;)V

    .line 657
    .local v0, "hideKeyboardRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v1, v1, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 658
    return-void
.end method

.method public static inGamePurchaseFinished(ZJLjava/lang/String;)V
    .locals 2
    .param p0, "success"    # Z
    .param p1, "player"    # J
    .param p3, "productId"    # Ljava/lang/String;

    .prologue
    .line 683
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget v0, v0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/roblox/client/ActivityGlView;->nativeInGamePurchaseFinished(ZJLjava/lang/String;)V

    goto :goto_0
.end method

.method private initGlEditTextView()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setImeOptions(I)V

    .line 331
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setSingleLine(Z)V

    .line 332
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    new-instance v1, Lcom/roblox/client/ActivityGlView$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityGlView$2;-><init>(Lcom/roblox/client/ActivityGlView;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 360
    return-void
.end method

.method private initSurfaceView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 372
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 373
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 375
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 376
    return-void
.end method

.method public static listenToMotionEvents(Ljava/lang/String;)V
    .locals 2
    .param p0, "motionType"    # Ljava/lang/String;

    .prologue
    .line 662
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v0, v0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/InputListener;->startSensorListening(Z)V

    .line 663
    return-void
.end method

.method private static native nativeCallMessagesFromMainThread()V
.end method

.method private static native nativeHandleBackPressed()V
.end method

.method private static native nativeInGamePurchaseFinished(ZJLjava/lang/String;)V
.end method

.method private static native nativeOnLowMemory()V
.end method

.method private static native nativePassText(JLjava/lang/String;)V
.end method

.method private static native nativeReleaseFocus(J)V
.end method

.method private static native nativeShutDownGraphics(Landroid/view/Surface;)V
.end method

.method private static native nativeStartGame(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;FZ)V
.end method

.method private static native nativeStartUpGraphics(Landroid/view/Surface;F)V
.end method

.method private static native nativeStopGame()V
.end method

.method private static native nativeVideoAdFinished(Z)V
.end method

.method public static postAppEvent()V
    .locals 2

    .prologue
    .line 602
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v0, v0, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/ActivityGlView$5;

    invoke-direct {v1}, Lcom/roblox/client/ActivityGlView$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 609
    return-void
.end method

.method public static promptNativePurchase(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "player"    # J
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 678
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v0, v0, Lcom/roblox/client/ActivityGlView;->mStoreMgr:Lcom/roblox/client/StoreManager;

    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/client/StoreManager;->doInAppPurchaseForProduct(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 679
    return-void
.end method

.method public static releaseFocus(J)V
    .locals 3
    .param p0, "textBoxInFocus"    # J

    .prologue
    .line 552
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget v0, v0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 554
    const-string v0, "ActivityGlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseFocus() called unexpectedly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget v2, v2, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-static {p0, p1}, Lcom/roblox/client/ActivityGlView;->nativeReleaseFocus(J)V

    goto :goto_0
.end method

.method public static sendAppEvent(Z)V
    .locals 3
    .param p0, "blockUntilSent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 581
    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 583
    .local v0, "appEventSentSignal":Ljava/util/concurrent/CountDownLatch;
    :goto_0
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v1, v1, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/roblox/client/ActivityGlView$4;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/ActivityGlView$4;-><init>(ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 594
    if-eqz p0, :cond_0

    .line 596
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 598
    :cond_0
    return-void

    .line 581
    .end local v0    # "appEventSentSignal":Ljava/util/concurrent/CountDownLatch;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showKeyboard(JLjava/lang/String;)V
    .locals 2
    .param p0, "textBox"    # J
    .param p2, "textFromTextBox"    # Ljava/lang/String;

    .prologue
    .line 634
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iput-wide p0, v1, Lcom/roblox/client/ActivityGlView;->mCurrentTextBox:J

    .line 635
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v1, v1, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-virtual {v1, p0, p1}, Lcom/roblox/client/RbxKeyboard;->setCurrentTextBox(J)V

    .line 637
    new-instance v0, Lcom/roblox/client/ActivityGlView$showEditText;

    invoke-direct {v0, p2}, Lcom/roblox/client/ActivityGlView$showEditText;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "showKeyBoardRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iget-object v1, v1, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method public static showVideoAd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 667
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    const-class v2, Lcom/roblox/client/ActivityAdColony;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 671
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iput-boolean v3, v1, Lcom/roblox/client/ActivityGlView;->mPausedForDialog:Z

    .line 673
    sget-object v1, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    invoke-virtual {v1, v0, v3}, Lcom/roblox/client/ActivityGlView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 674
    return-void
.end method


# virtual methods
.method protected allowPauseResume()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->mAllowPauseResume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->mPausedForDialog:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/RobloxServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 311
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 314
    const-string v0, "shown"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/roblox/client/ActivityGlView;->nativeVideoAdFinished(Z)V

    .line 315
    sget-object v0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    iput-boolean v1, v0, Lcom/roblox/client/ActivityGlView;->mPausedForDialog:Z

    .line 317
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 284
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->nativeHandleBackPressed()V

    .line 285
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-string v8, "ActivityGlView"

    const-string v11, "ActivityGlView onCreate()"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 81
    .local v2, "incomingIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 83
    const-string v8, "ActivityGlView"

    const-string v9, "Launching GL Activity without Intent."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->finish()V

    .line 190
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v8, "roblox_launcher_pid"

    const/4 v11, -0x1

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 90
    .local v4, "launcherPid":I
    const-string v8, "roblox_launcher_debugger_attached"

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 91
    .local v3, "launcherDebuggerAttached":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 94
    .local v6, "myPid":I
    if-eq v6, v4, :cond_2

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/roblox/client/ActivityGlView;->mDifferentProcess:Z

    .line 96
    const-string v11, "Incoming Intent ActivityGlView Pid:%d Debuger:%s"

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v10

    if-eqz v3, :cond_3

    const-string v8, "attached"

    :goto_2
    aput-object v8, v12, v9

    invoke-static {v11, v12}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "msg":Ljava/lang/String;
    const-string v8, "ActivityGlView"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz v3, :cond_1

    iget-boolean v8, p0, Lcom/roblox/client/ActivityGlView;->mDifferentProcess:Z

    if-eqz v8, :cond_1

    .line 101
    const-string v8, "ActivityGlView"

    const-string v11, "ActivityGlView waiting for debugger"

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 106
    :cond_1
    sget-object v8, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    if-eqz v8, :cond_4

    .line 108
    const-string v8, "ActivityGlView"

    const-string v9, "*** Trying to Create twice. ***"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->finish()V

    goto :goto_0

    .end local v5    # "msg":Ljava/lang/String;
    :cond_2
    move v8, v10

    .line 94
    goto :goto_1

    .line 96
    :cond_3
    const-string v8, "none"

    goto :goto_2

    .line 112
    .restart local v5    # "msg":Ljava/lang/String;
    :cond_4
    sput-object p0, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    .line 114
    iget-boolean v8, p0, Lcom/roblox/client/ActivityGlView;->mDifferentProcess:Z

    if-nez v8, :cond_5

    .line 126
    const-string v8, "ActivityGlView"

    const-string v9, "ActivityGlView launched in same process."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->finish()V

    goto :goto_0

    .line 136
    :cond_5
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    .line 137
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->doCrashGuardSetup()V

    .line 141
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->deviceNotSupportedString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "reason":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 144
    const v8, 0x7f0b007b

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v10

    invoke-static {p0, v8, v9}, Lcom/roblox/client/Utils;->alertExclusivelyFormatted(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/app/AlertDialog;

    .line 157
    :goto_3
    :try_start_0
    const-string v8, "fmodex"

    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_4
    const-string v8, "roblox"

    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxApplication;

    .line 171
    .local v0, "app":Lcom/roblox/client/RobloxApplication;
    invoke-virtual {v0}, Lcom/roblox/client/RobloxApplication;->checkShowCriticalError()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 173
    const-string v8, "ActivityGlView"

    const-string v9, "Trying to create GLView after critcal error."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    .end local v0    # "app":Lcom/roblox/client/RobloxApplication;
    :cond_6
    new-instance v8, Lcom/roblox/client/DeviceBlacklistChecker;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->blacklistUrl()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/roblox/client/ActivityGlView;->mSingleton:Lcom/roblox/client/ActivityGlView;

    invoke-direct {v8, v9, v11, v12}, Lcom/roblox/client/DeviceBlacklistChecker;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/RobloxServiceActivity;)V

    iput-object v8, p0, Lcom/roblox/client/ActivityGlView;->mDeviceBlacklistChecker:Lcom/roblox/client/DeviceBlacklistChecker;

    .line 149
    iget-object v8, p0, Lcom/roblox/client/ActivityGlView;->mDeviceBlacklistChecker:Lcom/roblox/client/DeviceBlacklistChecker;

    new-array v9, v10, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/roblox/client/DeviceBlacklistChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 159
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v8, "ActivityGlView"

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v8, "fmodexL"

    invoke-static {v8}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_4

    .line 177
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "app":Lcom/roblox/client/RobloxApplication;
    :cond_7
    const v8, 0x7f030002

    invoke-virtual {p0, v8}, Lcom/roblox/client/ActivityGlView;->setContentView(I)V

    .line 179
    invoke-static {p0}, Lcom/roblox/client/HttpAgent;->onCreate(Landroid/app/Activity;)V

    .line 180
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->updateNativeSettings()V

    .line 182
    const v8, 0x7f09000b

    invoke-virtual {p0, v8}, Lcom/roblox/client/ActivityGlView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/roblox/client/RbxKeyboard;

    iput-object v8, p0, Lcom/roblox/client/ActivityGlView;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    .line 183
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->initGlEditTextView()V

    .line 185
    const v8, 0x7f090009

    invoke-virtual {p0, v8}, Lcom/roblox/client/ActivityGlView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceView;

    iput-object v8, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 186
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView;->initSurfaceView()V

    .line 187
    iput v10, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    .line 189
    new-instance v8, Lorg/fmod/FMODAudioDevice;

    invoke-direct {v8}, Lorg/fmod/FMODAudioDevice;-><init>()V

    iput-object v8, p0, Lcom/roblox/client/ActivityGlView;->mFMODAudioDevice:Lorg/fmod/FMODAudioDevice;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->mAlreadyDestroyed:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "ActivityGlView"

    const-string v1, "*** Trying to Destroy twice. ***"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-boolean v2, p0, Lcom/roblox/client/ActivityGlView;->mAlreadyDestroyed:Z

    .line 201
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/roblox/client/ActivityGlView;->doNotifyService(II)V

    .line 203
    invoke-direct {p0, v2}, Lcom/roblox/client/ActivityGlView;->doCrashGuardTeardown(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 208
    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->mDifferentProcess:Z

    if-eqz v0, :cond_1

    .line 211
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onDestroy()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onLowMemory()V

    .line 294
    iget v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 296
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->nativeOnLowMemory()V

    .line 298
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 303
    const-string v0, "ActivityGlView"

    const-string v1, "onNewIntent called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onPause()V

    .line 279
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/HttpAgent;->onPause(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onResume()V

    .line 263
    const-string v0, "ActivityGlView"

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/roblox/client/HttpAgent;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/ActivityGlView;->runnerExit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 270
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/InputListener;->startSensorListening(Z)V

    .line 274
    :cond_0
    return-void
.end method

.method protected onServiceNotification(II)V
    .locals 8
    .param p1, "notification"    # I
    .param p2, "extra"    # I

    .prologue
    .line 435
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    .line 477
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 447
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->exitGame()V

    goto :goto_0

    .line 451
    :cond_1
    iget v5, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 453
    const-string v5, "ActivityGlView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "surfaceCreated->onServiceNotification unexpectedly: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 456
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    .line 458
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxApplication;

    .line 459
    .local v0, "app":Lcom/roblox/client/RobloxApplication;
    invoke-virtual {v0}, Lcom/roblox/client/RobloxApplication;->checkShowCriticalError()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 461
    const-string v5, "ActivityGlView"

    const-string v6, "Trying to create GL surface after critcal error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "placeId":Ljava/lang/String;
    const-string v5, "ActivityGlView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "surfaceCreated->onServiceNotification: Place ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {p0}, Lcom/roblox/client/XAPKManager;->unpackAssetsAsync(Landroid/content/Context;)V

    .line 469
    invoke-static {p0}, Lcom/roblox/client/XAPKManager;->unpackAssets(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "assetPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    .line 472
    .local v4, "surface":Landroid/view/Surface;
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 473
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.touchscreen"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v4, v3, v1, v5, v6}, Lcom/roblox/client/ActivityGlView;->nativeStartGame(Landroid/view/Surface;Ljava/lang/String;Ljava/lang/String;FZ)V

    .line 475
    new-instance v5, Lcom/roblox/client/InputListener;

    iget-object v6, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v5, p0, v6}, Lcom/roblox/client/InputListener;-><init>(Lcom/roblox/client/ActivityGlView;Landroid/view/SurfaceView;)V

    iput-object v5, p0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    .line 476
    iget-object v5, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v6, p0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    invoke-virtual {v5, v6}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onStart()V

    .line 222
    const-string v0, "ActivityGlView"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mFMODAudioDevice:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->start()V

    .line 225
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->enableNDKProfiler(Z)V

    .line 226
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 237
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onStop()V

    .line 239
    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->mAllowPauseResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView;->mPausedForDialog:Z

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/roblox/client/ActivityGlView;->runnerExit:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    :cond_0
    iget v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    if-ge v0, v4, :cond_3

    .line 244
    const/4 v0, 0x4

    iput v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    .line 251
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mFMODAudioDevice:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->stop()V

    .line 253
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView;->mInputListener:Lcom/roblox/client/InputListener;

    invoke-virtual {v0}, Lcom/roblox/client/InputListener;->stopSensorListening()V

    .line 257
    :cond_2
    return-void

    .line 246
    :cond_3
    iget v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->allowPauseResume()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    const/4 v0, 0x3

    iput v0, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 380
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 383
    iget v2, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    if-nez v2, :cond_1

    .line 385
    const/4 v2, 0x1

    iput v2, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    .line 387
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v4}, Lcom/roblox/client/ActivityGlView;->doNotifyService(II)V

    .line 398
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/roblox/client/ActivityGlView;->mPausedForDialog:Z

    .line 399
    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->allowPauseResume()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 392
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "ActivityGlView"

    const-string v3, "*** nativeStartUpGraphics ***"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 394
    .local v1, "surface":Landroid/view/Surface;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1, v2}, Lcom/roblox/client/ActivityGlView;->nativeStartUpGraphics(Landroid/view/Surface;F)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxApplication;

    .line 404
    .local v0, "app":Lcom/roblox/client/RobloxApplication;
    invoke-virtual {v0}, Lcom/roblox/client/RobloxApplication;->checkShowCriticalError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    const-string v1, "ActivityGlView"

    const-string v2, "Trying to shut down GL surface after critcal error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget v1, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/roblox/client/ActivityGlView;->allowPauseResume()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    const-string v1, "ActivityGlView"

    const-string v2, "*** nativeShutDownGraphics ***"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/ActivityGlView;->nativeShutDownGraphics(Landroid/view/Surface;)V

    goto :goto_0

    .line 423
    :cond_3
    const-string v1, "ActivityGlView"

    const-string v2, ">>> Calling nativeStopGame"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->nativeStopGame()V

    .line 425
    const-string v1, "ActivityGlView"

    const-string v2, "<<< Returned from nativeStopGame"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x4

    iput v1, p0, Lcom/roblox/client/ActivityGlView;->mSurfaceState:I

    goto :goto_0
.end method
