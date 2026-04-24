.class public Lcom/roblox/client/RateMeMaybe;
.super Ljava/lang/Object;
.source "RateMeMaybe.java"

# interfaces
.implements Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RateMeMaybe$PREF;,
        Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RateMeMaybe"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogMessage:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mHandleCancelAsNeutral:Ljava/lang/Boolean;

.field private mIcon:I

.field private mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

.field private mMinDaysUntilInitialPrompt:I

.field private mMinDaysUntilNextPrompt:I

.field private mMinLaunchesUntilInitialPrompt:I

.field private mMinLaunchesUntilNextPrompt:I

.field private mNegativeBtn:Ljava/lang/String;

.field private mNeutralBtn:Ljava/lang/String;

.field private mPositiveBtn:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRunWithoutPlayStore:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lcom/roblox/client/RateMeMaybe;->mMinLaunchesUntilInitialPrompt:I

    .line 39
    iput v2, p0, Lcom/roblox/client/RateMeMaybe;->mMinDaysUntilInitialPrompt:I

    .line 41
    iput v2, p0, Lcom/roblox/client/RateMeMaybe;->mMinLaunchesUntilNextPrompt:I

    .line 42
    iput v2, p0, Lcom/roblox/client/RateMeMaybe;->mMinDaysUntilNextPrompt:I

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mHandleCancelAsNeutral:Ljava/lang/Boolean;

    .line 46
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mRunWithoutPlayStore:Ljava/lang/Boolean;

    .line 59
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    .line 60
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    const-string v1, "rate_me_maybe"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    .line 61
    return-void
.end method

.method private getApplicationName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 366
    iget-object v4, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 371
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 372
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 373
    .end local v1    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "(unknown)"

    .restart local v1    # "appName":Ljava/lang/String;
    goto :goto_0
.end method

.method private isPlayStoreInstalled()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 385
    .local v1, "pacman":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 386
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 388
    :goto_0
    return-object v2

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static resetData(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 224
    const-string v0, "rate_me_maybe"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    const-string v0, "RateMeMaybe"

    const-string v1, "Cleared RateMeMaybe shared preferences."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private showDialog()V
    .locals 9

    .prologue
    .line 232
    iget-object v1, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 234
    .local v8, "fm":Landroid/app/FragmentManager;
    const-string v1, "rmmFragment"

    invoke-virtual {v8, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Lcom/roblox/client/RateMeMaybeFragment;

    invoke-direct {v0}, Lcom/roblox/client/RateMeMaybeFragment;-><init>()V

    .line 240
    .local v0, "frag":Lcom/roblox/client/RateMeMaybeFragment;
    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->getIcon()I

    move-result v1

    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->getDialogTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->getDialogMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->getPositiveBtn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->getNeutralBtn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->getNegativeBtn()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/roblox/client/RateMeMaybeFragment;->setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;)V

    .line 243
    :try_start_0
    const-string v1, "rmmFragment"

    invoke-virtual {v0, v8, v1}, Lcom/roblox/client/RateMeMaybeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public _handleCancel()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mHandleCancelAsNeutral:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->_handleNeutralChoice()V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybe;->_handleNegativeChoice()V

    goto :goto_0
.end method

.method public _handleNegativeChoice()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PREF_DONT_SHOW_AGAIN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    iget-object v1, p0, Lcom/roblox/client/RateMeMaybe;->mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/roblox/client/RateMeMaybe;->mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    invoke-interface {v1}, Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;->handleNegative()V

    .line 333
    :cond_0
    return-void
.end method

.method public _handleNeutralChoice()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    invoke-interface {v0}, Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;->handleNeutral()V

    .line 339
    :cond_0
    return-void
.end method

.method public _handlePositiveChoice()V
    .locals 7

    .prologue
    .line 342
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 343
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PREF_DONT_SHOW_AGAIN"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybe;->mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybe;->mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    invoke-interface {v2}, Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;->handlePositive()V

    .line 360
    :cond_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybe;->mActivity:Landroid/app/Activity;

    const-string v3, "Could not launch Play Store!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public forceShow()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/roblox/client/RateMeMaybe;->showDialog()V

    .line 258
    return-void
.end method

.method public getDialogMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mDialogMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "If you like using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/roblox/client/RateMeMaybe;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", it would be great"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " if you took a moment to rate it in the Play Store. Thank you!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mDialogMessage:Ljava/lang/String;

    const-string v1, "%totalLaunchCount%"

    iget-object v2, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "PREF_TOTAL_LAUNCH_COUNT"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mDialogTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/roblox/client/RateMeMaybe;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mDialogTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/roblox/client/RateMeMaybe;->mIcon:I

    return v0
.end method

.method public getNegativeBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mNegativeBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "Never"

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mNegativeBtn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeutralBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mNeutralBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "Not now"

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mNeutralBtn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPositiveBtn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mPositiveBtn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "Rate it"

    .line 107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybe;->mPositiveBtn:Ljava/lang/String;

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 265
    iget-object v9, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "PREF_DONT_SHOW_AGAIN"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/RateMeMaybe;->isPlayStoreInstalled()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 270
    const-string v9, "RateMeMaybe"

    const-string v10, "No Play Store installed on device."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v9, p0, Lcom/roblox/client/RateMeMaybe;->mRunWithoutPlayStore:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 276
    :cond_2
    iget-object v9, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 278
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "PREF_TOTAL_LAUNCH_COUNT"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v8, v9, 0x1

    .line 279
    .local v8, "totalLaunchCount":I
    const-string v9, "PREF_TOTAL_LAUNCH_COUNT"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 283
    .local v0, "currentMillis":J
    iget-object v9, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 285
    .local v4, "timeOfAbsoluteFirstLaunch":J
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-nez v9, :cond_3

    .line 287
    move-wide v4, v0

    .line 288
    const-string v9, "PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH"

    invoke-interface {v2, v9, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 292
    :cond_3
    iget-object v9, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "PREF_TIME_OF_LAST_PROMPT"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 295
    .local v6, "timeOfLastPrompt":J
    iget-object v9, p0, Lcom/roblox/client/RateMeMaybe;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "PREF_LAUNCHES_SINCE_LAST_PROMPT"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 297
    .local v3, "launchesSinceLastPrompt":I
    const-string v9, "PREF_LAUNCHES_SINCE_LAST_PROMPT"

    invoke-interface {v2, v9, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 299
    iget v9, p0, Lcom/roblox/client/RateMeMaybe;->mMinLaunchesUntilInitialPrompt:I

    if-lt v8, v9, :cond_6

    sub-long v9, v0, v4

    iget v11, p0, Lcom/roblox/client/RateMeMaybe;->mMinDaysUntilInitialPrompt:I

    int-to-long v11, v11

    const-wide/32 v13, 0x5265c00

    mul-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-ltz v9, :cond_6

    .line 302
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/roblox/client/RateMeMaybe;->mMinLaunchesUntilNextPrompt:I

    if-lt v3, v9, :cond_5

    sub-long v9, v0, v6

    iget v11, p0, Lcom/roblox/client/RateMeMaybe;->mMinDaysUntilNextPrompt:I

    int-to-long v11, v11

    const-wide/32 v13, 0x5265c00

    mul-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-ltz v9, :cond_5

    .line 304
    :cond_4
    const-string v9, "PREF_TIME_OF_LAST_PROMPT"

    invoke-interface {v2, v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 305
    const-string v9, "PREF_LAUNCHES_SINCE_LAST_PROMPT"

    const/4 v10, 0x0

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    invoke-direct {p0}, Lcom/roblox/client/RateMeMaybe;->showDialog()V

    goto/16 :goto_0

    .line 309
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 312
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public setAdditionalListener(Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mListener:Lcom/roblox/client/RateMeMaybe$OnRMMUserChoiceListener;

    .line 208
    return-void
.end method

.method public setDialogMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mDialogMessage:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDialogTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mDialogTitle:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setHandleCancelAsNeutral(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "handleCancelAsNeutral"    # Ljava/lang/Boolean;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mHandleCancelAsNeutral:Ljava/lang/Boolean;

    .line 199
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "customIcon"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/roblox/client/RateMeMaybe;->mIcon:I

    .line 160
    return-void
.end method

.method public setNegativeBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "negativeBtn"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mNegativeBtn:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setNeutralBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "neutralBtn"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mNeutralBtn:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPositiveBtn(Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveBtn"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mPositiveBtn:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setPromptMinimums(IIII)V
    .locals 0
    .param p1, "minLaunchesUntilInitialPrompt"    # I
    .param p2, "minDaysUntilInitialPrompt"    # I
    .param p3, "minLaunchesUntilNextPrompt"    # I
    .param p4, "minDaysUntilNextPrompt"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/roblox/client/RateMeMaybe;->mMinLaunchesUntilInitialPrompt:I

    .line 186
    iput p2, p0, Lcom/roblox/client/RateMeMaybe;->mMinDaysUntilInitialPrompt:I

    .line 187
    iput p3, p0, Lcom/roblox/client/RateMeMaybe;->mMinLaunchesUntilNextPrompt:I

    .line 188
    iput p4, p0, Lcom/roblox/client/RateMeMaybe;->mMinDaysUntilNextPrompt:I

    .line 189
    return-void
.end method

.method public setRunWithoutPlayStore(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "runWithoutPlayStore"    # Ljava/lang/Boolean;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/roblox/client/RateMeMaybe;->mRunWithoutPlayStore:Ljava/lang/Boolean;

    .line 218
    return-void
.end method
