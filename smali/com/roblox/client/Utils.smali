.class public Lcom/roblox/client/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final CRASH_GUARD:Ljava/lang/String; = "crash_guard"

.field public static final CRASH_GUARD_CHANNEL:Ljava/lang/String; = "MTBF_CRASH_GUARD_3"

.field public static final CRASH_GUARD_OK:Ljava/lang/String; = "crash_guard_ok"

.field private static final TAG:Ljava/lang/String; = "roblox.utils"

.field private static mExclusiveDialog:Landroid/app/AlertDialog;

.field private static mExclusiveDialogContext:I

.field private static mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    sput-object v1, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/roblox/client/Utils;->mExclusiveDialogContext:I

    .line 64
    sput-object v1, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 55
    sput-object p0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 55
    sput p0, Lcom/roblox/client/Utils;->mExclusiveDialogContext:I

    return p0
.end method

.method protected static alert(Landroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringResource"    # I

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected static alert(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x96

    const/16 v3, 0x64

    .line 304
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, "t":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    const v4, 0x1010040

    invoke-virtual {v1, p0, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 307
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 308
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 310
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "alertDialog":Landroid/app/AlertDialog;
    move v4, v2

    move v5, v3

    .line 311
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 312
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 315
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-object v0

    .line 317
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringResource"    # I

    .prologue
    .line 334
    const-class v1, Lcom/roblox/client/Utils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 336
    invoke-static {p0, p1}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->setExclusiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)V

    .line 337
    sget-object v0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 343
    const-class v1, Lcom/roblox/client/Utils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 345
    invoke-static {p0, p1}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->setExclusiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)V

    .line 346
    sget-object v0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs declared-synchronized alertExclusivelyFormatted(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/app/AlertDialog;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringResource"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 352
    const-class v1, Lcom/roblox/client/Utils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 354
    invoke-static {p0, p1, p2}, Lcom/roblox/client/Utils;->alertFormatted(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->setExclusiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)V

    .line 355
    sget-object v0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static varargs alertFormatted(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/app/AlertDialog;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "stringResource"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "format":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static alertIfNetworkNotConnected(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 371
    invoke-static {p0}, Lcom/roblox/client/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 372
    .local v0, "isNotConnected":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 374
    const v1, 0x7f0b0012

    invoke-static {p0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 376
    :cond_0
    return v0

    .line 371
    .end local v0    # "isNotConnected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "a"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 361
    const-class v1, Lcom/roblox/client/Utils;

    monitor-enter v1

    :try_start_0
    const-string v0, "UnexpectedError"

    invoke-static {p0, v0, p1}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const v0, 0x7f0b0078

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/roblox/client/Utils;->alertFormatted(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static checkForRawResource(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, "id":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static chmod(Ljava/lang/String;I)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    .line 450
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, "f":Ljava/io/File;
    const-string v4, "android.os.FileUtils"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 454
    .local v2, "fileUtils":Ljava/lang/Class;
    const-string v4, "setPermissions"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 455
    .local v3, "setPermissions":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileUtils":Ljava/lang/Class;
    .end local v3    # "setPermissions":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "roblox.utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static contextSwitchExclusiveDialog(Landroid/content/Context;)V
    .locals 2
    .param p0, "newContext"    # Landroid/content/Context;

    .prologue
    .line 282
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 283
    .local v0, "id":I
    sget-object v1, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget v1, Lcom/roblox/client/Utils;->mExclusiveDialogContext:I

    if-ne v1, v0, :cond_0

    .line 285
    sget-object v1, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 286
    const/4 v1, 0x0

    sput-object v1, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createDirectory(Ljava/io/File;)V
    .locals 0
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 170
    return-void
.end method

.method public static doCrashGuardCheck(Lcom/roblox/client/RobloxServiceActivity;Z)V
    .locals 17
    .param p0, "a"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p1, "alertIfCrashed"    # Z

    .prologue
    .line 492
    const/4 v12, 0x0

    .line 494
    .local v12, "wasOk":Z
    :try_start_0
    const-string v13, "crash_guard_ok"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/roblox/client/RobloxServiceActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 495
    .local v6, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 496
    const/4 v12, 0x1

    .line 501
    .end local v6    # "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    const-string v13, "crash_guard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/roblox/client/RobloxServiceActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 502
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    const/16 v13, 0x100

    new-array v3, v13, [B

    .line 503
    .local v3, "buffer":[B
    invoke-virtual {v6, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .line 504
    .local v10, "nRead":I
    new-array v4, v10, [C

    .line 505
    .local v4, "chars":[C
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v10, :cond_0

    .line 507
    aget-byte v13, v3, v7

    int-to-char v13, v13

    aput-char v13, v4, v7

    .line 505
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 509
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v11

    .line 511
    .local v11, "str":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 513
    const-string v13, "roblox.utils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** Found Crash Guard: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 517
    .local v8, "milliseconds":J
    const-wide/16 v13, 0x3e8

    div-long v1, v8, v13

    .line 518
    .local v1, "bucket":J
    const-wide/16 v13, 0x0

    cmp-long v13, v1, v13

    if-lez v13, :cond_2

    .line 520
    long-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    double-to-long v1, v13

    .line 521
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    long-to-double v15, v1

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-long v1, v13

    .line 524
    :cond_2
    if-eqz v12, :cond_3

    .line 526
    const-string v13, "MTBF_CRASH_GUARD_3"

    const-string v14, "TimeTeardownOk"

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v8, v9}, Lcom/roblox/client/Utils;->sendTiming(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 527
    const-string v13, "MTBF_CRASH_GUARD_3"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TimeTeardownOk_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v8, v9}, Lcom/roblox/client/Utils;->sendTiming(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 534
    :goto_2
    const-string v13, "MTBF_CRASH_GUARD_3"

    const-string v14, "Time"

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v8, v9}, Lcom/roblox/client/Utils;->sendTiming(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 536
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    .end local v1    # "bucket":J
    .end local v3    # "buffer":[B
    .end local v4    # "chars":[C
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "i":I
    .end local v8    # "milliseconds":J
    .end local v10    # "nRead":I
    .end local v11    # "str":Ljava/lang/String;
    :goto_3
    const-string v13, "crash_guard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/roblox/client/RobloxServiceActivity;->deleteFile(Ljava/lang/String;)Z

    .line 544
    const-string v13, "crash_guard_ok"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/roblox/client/RobloxServiceActivity;->deleteFile(Ljava/lang/String;)Z

    .line 545
    return-void

    .line 531
    .restart local v1    # "bucket":J
    .restart local v3    # "buffer":[B
    .restart local v4    # "chars":[C
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "i":I
    .restart local v8    # "milliseconds":J
    .restart local v10    # "nRead":I
    .restart local v11    # "str":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v13, "MTBF_CRASH_GUARD_3"

    const-string v14, "CrashFound"

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v8, v9}, Lcom/roblox/client/Utils;->sendTiming(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)V

    .line 532
    const-string v13, "MTBF_CRASH_GUARD_3"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CrashFound_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v8, v9}, Lcom/roblox/client/Utils;->sendTiming(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 537
    .end local v1    # "bucket":J
    .end local v3    # "buffer":[B
    .end local v4    # "chars":[C
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "i":I
    .end local v8    # "milliseconds":J
    .end local v10    # "nRead":I
    .end local v11    # "str":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_3

    .line 539
    :catch_1
    move-exception v5

    .line 540
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "MTBF_CRASH_GUARD_3"

    const-string v14, "CrashFoundTimeReadFailure"

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 497
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    goto/16 :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 257
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceHasNEON()Z
    .locals 4

    .prologue
    .line 105
    const-string v3, "/proc/cpuinfo"

    invoke-static {v3}, Lcom/roblox/client/Utils;->readTextFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 106
    .local v2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "line":Ljava/lang/String;
    const-string v3, "neon"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const/4 v3, 0x1

    .line 111
    .end local v1    # "line":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 139
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 140
    .local v1, "manufacturer":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 143
    .local v2, "model":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    move-object v3, v2

    .line 149
    .local v3, "name":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 150
    .local v0, "capital":C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 146
    .end local v0    # "capital":C
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDeviceTotalMegabytes()I
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "reader":Ljava/io/RandomAccessFile;
    const/4 v6, 0x0

    .line 71
    .local v6, "s":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "/proc/meminfo"

    const-string v10, "r"

    invoke-direct {v5, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 76
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 81
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v6, :cond_1

    .line 101
    :cond_0
    :goto_1
    return v8

    .line 77
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v9

    move-object v4, v5

    .line 79
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 73
    :catch_1
    move-exception v9

    .line 76
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 77
    :catch_2
    move-exception v9

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v8

    .line 76
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 78
    :goto_4
    throw v8

    .line 86
    :cond_1
    const-string v9, "\\s+"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "tokens":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 92
    const-wide/16 v2, 0x0

    .line 95
    .local v2, "mb":J
    const/4 v8, 0x1

    :try_start_5
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 96
    .local v0, "kb":J
    const-wide/16 v8, 0x400

    div-long v2, v0, v8
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    .line 101
    .end local v0    # "kb":J
    :goto_5
    long-to-int v8, v2

    goto :goto_1

    .line 77
    .end local v2    # "mb":J
    .end local v7    # "tokens":[Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 98
    .restart local v2    # "mb":J
    .restart local v7    # "tokens":[Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_5

    .line 75
    .end local v2    # "mb":J
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .end local v7    # "tokens":[Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 73
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public static getScreenDpSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 132
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 133
    .local v0, "dp":Landroid/graphics/Point;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 134
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 135
    return-object v0
.end method

.method public static getScreenDpi(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 124
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 125
    .local v0, "dpi":Landroid/graphics/Point;
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 126
    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 127
    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 115
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 116
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 117
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 118
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 119
    return-object v1
.end method

.method public static getWebkitVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 155
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "userAgent":Ljava/lang/String;
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 160
    aget-object v3, v1, v0

    const-string v4, "AppleWebKit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    aget-object v3, v1, v0

    .line 165
    :goto_1
    return-object v3

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    const-string v3, "AppleWebKit/Unknown"

    goto :goto_1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 261
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 262
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 263
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static killBackgroundProcesses(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 251
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method static loadJson(Landroid/content/Context;I)Lorg/json/JSONObject;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 219
    .local v2, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 220
    .local v7, "writer":Ljava/io/Writer;
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 221
    .local v0, "buffer":[C
    const/4 v3, 0x0

    .line 223
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 225
    .local v6, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/Reader;->read([C)I

    move-result v5

    .local v5, "n":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 226
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "n":I
    .end local v6    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v8, "roblox.utils"

    const-string v9, "IOException loading JSON."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException loading JSON resource # "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 238
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 240
    :goto_1
    throw v8

    .line 228
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v5    # "n":I
    .restart local v6    # "reader":Ljava/io/Reader;
    :cond_0
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "jsonString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "json":Lorg/json/JSONObject;
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    .restart local v3    # "json":Lorg/json/JSONObject;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 243
    :goto_2
    return-object v3

    .line 233
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "reader":Ljava/io/Reader;
    :catch_1
    move-exception v1

    .line 234
    .local v1, "e":Lorg/json/JSONException;
    :try_start_5
    const-string v8, "roblox.utils"

    const-string v9, "Cannot parse JSON."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot parse JSON resource # "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 239
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "jsonString":Ljava/lang/String;
    .restart local v5    # "n":I
    .restart local v6    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonString":Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "reader":Ljava/io/Reader;
    :catch_3
    move-exception v9

    goto :goto_1
.end method

.method public static makeTextViewHtml(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 16
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static/range {p2 .. p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 464
    .local v4, "html":Landroid/text/Spanned;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    .line 468
    .local v9, "text":Ljava/lang/CharSequence;
    instance-of v13, v9, Landroid/text/Spannable;

    if-eqz v13, :cond_1

    move-object v7, v9

    .line 469
    check-cast v7, Landroid/text/Spannable;

    .line 470
    .local v7, "sp":Landroid/text/Spannable;
    const/4 v13, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const-class v15, Landroid/text/style/URLSpan;

    invoke-interface {v7, v13, v14, v15}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/URLSpan;

    .line 471
    .local v12, "urls":[Landroid/text/style/URLSpan;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 472
    .local v8, "style":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 473
    move-object/from16 v1, p0

    .line 474
    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v12

    .local v2, "arr$":[Landroid/text/style/URLSpan;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v10, v2, v5

    .line 475
    .local v10, "url":Landroid/text/style/URLSpan;
    move-object v11, v10

    .line 476
    .local v11, "urlFinal":Landroid/text/style/URLSpan;
    new-instance v3, Lcom/roblox/client/Utils$2;

    invoke-direct {v3, v1, v11}, Lcom/roblox/client/Utils$2;-><init>(Landroid/app/Activity;Landroid/text/style/URLSpan;)V

    .line 484
    .local v3, "click":Landroid/text/style/ClickableSpan;
    invoke-interface {v7, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v7, v10}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v8, v3, v13, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 474
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    .end local v3    # "click":Landroid/text/style/ClickableSpan;
    .end local v10    # "url":Landroid/text/style/URLSpan;
    .end local v11    # "urlFinal":Landroid/text/style/URLSpan;
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "arr$":[Landroid/text/style/URLSpan;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "sp":Landroid/text/Spannable;
    .end local v8    # "style":Landroid/text/SpannableStringBuilder;
    .end local v12    # "urls":[Landroid/text/style/URLSpan;
    :cond_1
    return-void
.end method

.method public static onRateMeMaybe(Landroid/app/Activity;)V
    .locals 9
    .param p0, "a"    # Landroid/app/Activity;

    .prologue
    const/16 v8, 0xa

    .line 415
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    if-nez v5, :cond_0

    .line 417
    invoke-static {p0}, Lcom/roblox/client/RateMeMaybe;->resetData(Landroid/app/Activity;)V

    .line 418
    new-instance v5, Lcom/roblox/client/RateMeMaybe;

    invoke-direct {v5, p0}, Lcom/roblox/client/RateMeMaybe;-><init>(Landroid/app/Activity;)V

    sput-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    .line 425
    :cond_0
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v5, v8, v6, v8, v7}, Lcom/roblox/client/RateMeMaybe;->setPromptMinimums(IIII)V

    .line 427
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/roblox/client/RateMeMaybe;->setHandleCancelAsNeutral(Ljava/lang/Boolean;)V

    .line 432
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "rateMeDialogTitle":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "rateMeDialogMessage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0052

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "rateMeRateIt":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "rateMeNotNow":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "rateMeNever":Ljava/lang/String;
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    invoke-virtual {v5, v1}, Lcom/roblox/client/RateMeMaybe;->setDialogTitle(Ljava/lang/String;)V

    .line 439
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    invoke-virtual {v5, v0}, Lcom/roblox/client/RateMeMaybe;->setDialogMessage(Ljava/lang/String;)V

    .line 440
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    invoke-virtual {v5, v4}, Lcom/roblox/client/RateMeMaybe;->setPositiveBtn(Ljava/lang/String;)V

    .line 441
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    invoke-virtual {v5, v3}, Lcom/roblox/client/RateMeMaybe;->setNeutralBtn(Ljava/lang/String;)V

    .line 442
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    invoke-virtual {v5, v2}, Lcom/roblox/client/RateMeMaybe;->setNegativeBtn(Ljava/lang/String;)V

    .line 444
    sget-object v5, Lcom/roblox/client/Utils;->mRateMeMaybe:Lcom/roblox/client/RateMeMaybe;

    invoke-virtual {v5}, Lcom/roblox/client/RateMeMaybe;->run()V

    .line 445
    return-void
.end method

.method static readTextFile(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .local v2, "scanner":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    throw v4

    .line 198
    .end local v2    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 209
    :goto_1
    return-object v3

    .line 207
    .restart local v2    # "scanner":Ljava/util/Scanner;
    :cond_0
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_1
.end method

.method public static sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "a"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->isGooglePlayServicesAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/RobloxApplication;

    invoke-virtual {v2}, Lcom/roblox/client/RobloxApplication;->getAndroidTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 384
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 385
    .local v0, "eb":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 387
    const-string v2, "roblox.utils"

    const-string v3, "sendAnalytics: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v0    # "eb":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    return-void
.end method

.method public static sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "a"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->isGooglePlayServicesAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxApplication;

    invoke-virtual {v1}, Lcom/roblox/client/RobloxApplication;->getAndroidTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 408
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 409
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "ScreenView"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 411
    .end local v0    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    return-void
.end method

.method public static sendTiming(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p0, "a"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 392
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->isGooglePlayServicesAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/RobloxApplication;

    invoke-virtual {v2}, Lcom/roblox/client/RobloxApplication;->getAndroidTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 396
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    .line 397
    .local v0, "eb":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    div-long v2, p3, v6

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 398
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 400
    const-string v2, "roblox.utils"

    const-string v3, "sendTiming: %s %s %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    div-long v6, p3, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "eb":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    return-void
.end method

.method public static declared-synchronized sendUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "a"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 366
    const-class v1, Lcom/roblox/client/Utils;

    monitor-enter v1

    :try_start_0
    const-string v0, "UnexpectedErrorSilent"

    invoke-static {p0, v0, p1}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit v1

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setExclusiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 267
    sput-object p1, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    .line 268
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/roblox/client/Utils;->mExclusiveDialogContext:I

    .line 269
    sget-object v0, Lcom/roblox/client/Utils;->mExclusiveDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/roblox/client/Utils$1;

    invoke-direct {v1}, Lcom/roblox/client/Utils$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 276
    return-void
.end method

.method public static writeToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-eqz v2, :cond_2

    .line 183
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 189
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return-void

    .line 185
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 186
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "Exception"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File write failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    if-eqz v1, :cond_0

    .line 183
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 185
    :catch_2
    move-exception v3

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 183
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 186
    :cond_1
    :goto_3
    throw v3

    .line 185
    :catch_3
    move-exception v4

    goto :goto_3

    .line 180
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 177
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0
.end method
