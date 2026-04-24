.class public Lcom/roblox/client/ActivityNativeMain;
.super Lcom/roblox/client/RobloxActivity;
.source "ActivityNativeMain.java"

# interfaces
.implements Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;


# static fields
.field public static mSiteAlertWebView:Landroid/webkit/WebView;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mFocusableView:Landroid/view/View;

.field mFragmentSignUp:Lcom/roblox/client/FragmentSignUp;

.field mLaunchPlaceDebugButton:Landroid/widget/Button;

.field mLogoutImageView:Landroid/widget/ImageView;

.field mLogoutImageView2:Landroid/widget/ImageView;

.field mPasswordEditText:Landroid/widget/EditText;

.field mPlaceIdDebugEditText:Landroid/widget/EditText;

.field mRememberPasswordCheckBox:Landroid/widget/CheckBox;

.field mRobuxBalanceTextView:Landroid/widget/TextView;

.field mSearchEditText:Landroid/widget/EditText;

.field mSidebarLogin:Landroid/widget/Button;

.field mSidebarSignUp:Landroid/widget/Button;

.field mSidebarViewFlipper:Landroid/widget/ViewFlipper;

.field mSpinnerEnvironment:Landroid/widget/Spinner;

.field mThumbnailUrlImageView:Landroid/widget/ImageView;

.field mUsernameEditText:Landroid/widget/EditText;

.field mUsernameTextView:Landroid/widget/TextView;

.field mViewFlipper:Landroid/widget/ViewFlipper;

.field mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/ActivityNativeMain;->mSiteAlertWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/roblox/client/RobloxActivity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mActivity:Landroid/app/Activity;

    .line 51
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 52
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mFragmentSignUp:Lcom/roblox/client/FragmentSignUp;

    .line 55
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameEditText:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mPasswordEditText:Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mRememberPasswordCheckBox:Landroid/widget/CheckBox;

    .line 60
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mFocusableView:Landroid/view/View;

    .line 61
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarViewFlipper:Landroid/widget/ViewFlipper;

    .line 62
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mThumbnailUrlImageView:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameTextView:Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mRobuxBalanceTextView:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSearchEditText:Landroid/widget/EditText;

    .line 67
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mLogoutImageView:Landroid/widget/ImageView;

    .line 68
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mLogoutImageView2:Landroid/widget/ImageView;

    .line 69
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarSignUp:Landroid/widget/Button;

    .line 70
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarLogin:Landroid/widget/Button;

    .line 71
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSpinnerEnvironment:Landroid/widget/Spinner;

    .line 72
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mLaunchPlaceDebugButton:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mPlaceIdDebugEditText:Landroid/widget/EditText;

    .line 75
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    return-void
.end method

.method private getUrl(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 569
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 541
    :pswitch_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->gamesUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 545
    :pswitch_2
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->buildersClubUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 549
    :pswitch_3
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->catalogUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :pswitch_4
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->profileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 557
    :pswitch_5
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->inventoryUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 561
    :pswitch_6
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->messagesUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 565
    :pswitch_7
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->groupsUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x7f090025
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private initializeAdColony()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 644
    const-string v1, ""

    .line 646
    .local v1, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",store:google"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "options":Ljava/lang/String;
    const-string v2, "appe0b7456ae2e249ed91"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "vz80b7495faabe44d4b2"

    aput-object v4, v3, v5

    invoke-static {p0, v0, v2, v3}, Lcom/jirbo/adcolony/AdColony;->configure(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 656
    return-void

    .line 647
    .end local v0    # "options":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initializeMAT()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "18714"

    const-string v6, "4316dbf38e776530b30b954d3786bd41"

    invoke-static {v4, v5, v6}, Lcom/mobileapptracker/MobileAppTracker;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/mobileapptracker/MobileAppTracker;->getInstance()Lcom/mobileapptracker/MobileAppTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    .line 610
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/gaClientId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "googleAnalyticsTrace":Ljava/io/File;
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v5, "last_version_code"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 612
    .local v2, "lastVersionCode":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v1, v3

    .line 613
    .local v1, "isExistingUser":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 614
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v4, v3}, Lcom/mobileapptracker/MobileAppTracker;->setExistingUser(Z)V

    .line 618
    :cond_2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/roblox/client/ActivityNativeMain$9;

    invoke-direct {v4, p0}, Lcom/roblox/client/ActivityNativeMain$9;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 640
    return-void
.end method

.method private propigateLoginKeyValues()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsername:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mPassword:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mRememberPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->mRememberPassword:Z

    .line 437
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->writeLoginKeyValues()V

    .line 438
    return-void
.end method


# virtual methods
.method DoProtocolRegistrationCheck()V
    .locals 7

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "incomingIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 82
    const-string v4, "RobloxActivity"

    const-string v5, "Launching Web View Activity without Intent."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.VIEW"

    if-ne v4, v5, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "str":Ljava/lang/String;
    const-string v4, "placeID="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "placeID":Ljava/lang/String;
    const-string v4, "RobloxActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launching from Protocol, Place ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v4, "LaunchFromBrowserWithProtocol"

    invoke-static {p0, v4, v2}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "roblox_placeid"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v4, "launchWithProtocol"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    goto :goto_0
.end method

.method public hideKeyboard()V
    .locals 3

    .prologue
    .line 403
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->mFocusableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 405
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 406
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 407
    return-void
.end method

.method public onAbout(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 525
    new-instance v0, Lcom/roblox/client/FragmentAbout;

    invoke-direct {v0}, Lcom/roblox/client/FragmentAbout;-><init>()V

    .line 526
    .local v0, "f":Lcom/roblox/client/FragmentAbout;
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 527
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 528
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const v3, 0x7f09000c

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 529
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 530
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 532
    const-string v3, "ActivityNativeMain"

    const-string v4, "about"

    invoke-static {p0, v3, v4}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 105
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 109
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->setContentView(I)V

    .line 116
    :goto_0
    iput-object p0, p0, Lcom/roblox/client/ActivityNativeMain;->mActivity:Landroid/app/Activity;

    .line 117
    const v4, 0x7f090013

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 120
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    .line 123
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->initializeMAT()V

    .line 126
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->initializeAdColony()V

    .line 130
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mActivity:Landroid/app/Activity;

    const-string v5, "prefs"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mKeyValues:Landroid/content/SharedPreferences;

    .line 131
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v5, "returningFromExitGameSilent"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "returningFromExitGameSilent"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "roblox_back_activity"

    const-string v5, "ActivityNativeMain"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    .line 147
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const v4, 0x7f090017

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameEditText:Landroid/widget/EditText;

    .line 148
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/roblox/client/ActivityNativeMain;->mUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v4, 0x7f090018

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mPasswordEditText:Landroid/widget/EditText;

    .line 150
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/roblox/client/ActivityNativeMain;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v4, 0x7f090019

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mRememberPasswordCheckBox:Landroid/widget/CheckBox;

    .line 152
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mRememberPasswordCheckBox:Landroid/widget/CheckBox;

    iget-boolean v5, p0, Lcom/roblox/client/ActivityNativeMain;->mRememberPassword:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    const v4, 0x7f090014

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mFocusableView:Landroid/view/View;

    .line 156
    const v4, 0x7f09001c

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewFlipper;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarViewFlipper:Landroid/widget/ViewFlipper;

    .line 157
    const v4, 0x7f09001f

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mThumbnailUrlImageView:Landroid/widget/ImageView;

    .line 158
    const v4, 0x7f090020

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameTextView:Landroid/widget/TextView;

    .line 159
    const v4, 0x7f090021

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mRobuxBalanceTextView:Landroid/widget/TextView;

    .line 161
    const v4, 0x7f090023

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSearchEditText:Landroid/widget/EditText;

    .line 162
    const v4, 0x7f090024

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLogoutImageView:Landroid/widget/ImageView;

    .line 163
    const v4, 0x7f090036

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLogoutImageView2:Landroid/widget/ImageView;

    .line 164
    const v4, 0x7f09001d

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarSignUp:Landroid/widget/Button;

    .line 165
    const v4, 0x7f09001e

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarLogin:Landroid/widget/Button;

    .line 166
    const v4, 0x7f090035

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    sput-object v4, Lcom/roblox/client/ActivityNativeMain;->mSiteAlertWebView:Landroid/webkit/WebView;

    .line 167
    sget-object v4, Lcom/roblox/client/ActivityNativeMain;->mSiteAlertWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 169
    const v4, 0x7f090015

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSpinnerEnvironment:Landroid/widget/Spinner;

    .line 170
    const v4, 0x7f09002e

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLaunchPlaceDebugButton:Landroid/widget/Button;

    .line 171
    const v4, 0x7f09002f

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mPlaceIdDebugEditText:Landroid/widget/EditText;

    .line 175
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isInternalBuild()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 178
    iget-object v5, p0, Lcom/roblox/client/ActivityNativeMain;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_6

    const/high16 v4, 0x7f070000

    :goto_1
    const v6, 0x1090008

    invoke-static {v5, v4, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 179
    .local v1, "envAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 180
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSpinnerEnvironment:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSpinnerEnvironment:Landroid/widget/Spinner;

    invoke-virtual {v4, v8, v8}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 186
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSpinnerEnvironment:Landroid/widget/Spinner;

    new-instance v5, Lcom/roblox/client/ActivityNativeMain$1;

    invoke-direct {v5, p0}, Lcom/roblox/client/ActivityNativeMain$1;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 203
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLaunchPlaceDebugButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLaunchPlaceDebugButton:Landroid/widget/Button;

    new-instance v5, Lcom/roblox/client/ActivityNativeMain$2;

    invoke-direct {v5, p0}, Lcom/roblox/client/ActivityNativeMain$2;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .end local v1    # "envAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_1
    :goto_2
    invoke-static {}, Lcom/roblox/client/UpgradeCheckHelper;->checkForUpdate()V

    .line 233
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mThumbnailUrlImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/roblox/client/ActivityNativeMain$3;

    invoke-direct {v5, p0}, Lcom/roblox/client/ActivityNativeMain$3;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 245
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/roblox/client/ActivityNativeMain$4;

    invoke-direct {v5, p0}, Lcom/roblox/client/ActivityNativeMain$4;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 255
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSearchEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/roblox/client/ActivityNativeMain$5;

    invoke-direct {v5, p0}, Lcom/roblox/client/ActivityNativeMain$5;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 276
    new-instance v3, Lcom/roblox/client/ActivityNativeMain$6;

    invoke-direct {v3, p0}, Lcom/roblox/client/ActivityNativeMain$6;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    .line 283
    .local v3, "logoutOnClick":Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLogoutImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLogoutImageView2:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 286
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLogoutImageView2:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    :cond_2
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarSignUp:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 291
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarSignUp:Landroid/widget/Button;

    new-instance v5, Lcom/roblox/client/ActivityNativeMain$7;

    invoke-direct {v5, p0}, Lcom/roblox/client/ActivityNativeMain$7;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_3
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarLogin:Landroid/widget/Button;

    if-eqz v4, :cond_4

    .line 302
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarLogin:Landroid/widget/Button;

    new-instance v5, Lcom/roblox/client/ActivityNativeMain$8;

    invoke-direct {v5, p0}, Lcom/roblox/client/ActivityNativeMain$8;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    :cond_4
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->DoProtocolRegistrationCheck()V

    .line 313
    return-void

    .line 113
    .end local v3    # "logoutOnClick":Landroid/view/View$OnClickListener;
    :cond_5
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeMain;->setContentView(I)V

    goto/16 :goto_0

    .line 178
    :cond_6
    const v4, 0x7f070001

    goto/16 :goto_1

    .line 223
    :cond_7
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mSpinnerEnvironment:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 224
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mPlaceIdDebugEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 225
    iget-object v4, p0, Lcom/roblox/client/ActivityNativeMain;->mLaunchPlaceDebugButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public onExecuteLogin(Landroid/view/View;)V
    .locals 3
    .param p1, "ignored"    # Landroid/view/View;

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->propigateLoginKeyValues()V

    .line 487
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const v0, 0x7f0b0040

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 501
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    const v0, 0x7f0b003f

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 499
    :cond_1
    new-instance v1, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;

    invoke-direct {v1, p0, p0}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;-><init>(Lcom/roblox/client/RobloxActivity;Landroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    new-instance v0, Lcom/roblox/client/SiteAlertAsyncTask;

    sget-object v1, Lcom/roblox/client/ActivityNativeMain;->mSiteAlertWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/roblox/client/SiteAlertAsyncTask;-><init>(Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/SiteAlertAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onFragmentSignUpCancel()V
    .locals 3

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 414
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 415
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain;->mFragmentSignUp:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 416
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 417
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 418
    return-void
.end method

.method public onFragmentSignUpOk(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 422
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 423
    .local v0, "fbLogger":Lcom/facebook/AppEventsLogger;
    const-string v1, "fb_mobile_complete_registration"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->onFragmentSignUpCancel()V

    .line 426
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/roblox/client/ActivityNativeMain;->onLogin(Lorg/json/JSONObject;Z)Z

    .line 427
    return-void
.end method

.method protected onLogout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onLogout()V

    .line 444
    const-string v0, "ActivityNativeMain"

    const-string v1, "logout"

    invoke-static {p0, v0, v1}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mPasswordEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 449
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 450
    sget-object v0, Lcom/roblox/client/ActivityNativeMain;->mSiteAlertWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 451
    return-void
.end method

.method public onMainImageButton(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain;->getUrl(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 576
    const-string v2, "Unimplemented"

    invoke-static {p0, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 597
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-boolean v2, p0, Lcom/roblox/client/ActivityNativeMain;->mLoggedIn:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090025

    if-eq v2, v3, :cond_1

    .line 582
    const-string v2, "MainImageButtonNotLoggedIn"

    invoke-static {p0, v2, v1}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const v2, 0x7f0b0093

    invoke-static {p0, v2}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 588
    :cond_1
    const-string v2, "ActivityNativeMain"

    invoke-static {p0, v2, v1}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 591
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "roblox_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v2, "roblox_back_activity"

    const-string v3, "ActivityNativeMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->startActivity(Landroid/content/Intent;)V

    .line 594
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->finish()V

    goto :goto_0
.end method

.method public onNop(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 457
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onPause()V

    .line 354
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 355
    return-void
.end method

.method public onPlayNow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->mLoggedIn:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->onLogout()V

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->propigateLoginKeyValues()V

    .line 466
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    new-instance v1, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;

    invoke-direct {v1, p0, p0}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;-><init>(Lcom/roblox/client/RobloxActivity;Landroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 478
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 473
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 474
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->hideKeyboard()V

    .line 475
    new-instance v0, Lcom/roblox/client/SiteAlertAsyncTask;

    sget-object v1, Lcom/roblox/client/ActivityNativeMain;->mSiteAlertWebView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/roblox/client/SiteAlertAsyncTask;-><init>(Landroid/webkit/WebView;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/SiteAlertAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 476
    const-string v0, "PlayNowScreen"

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRememberPassword(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->propigateLoginKeyValues()V

    .line 482
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 320
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onResume()V

    .line 321
    invoke-static {p0}, Lcom/roblox/client/Utils;->killBackgroundProcesses(Landroid/content/Context;)V

    .line 323
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->onUserInfoChanged(Z)V

    .line 325
    iget-boolean v1, p0, Lcom/roblox/client/ActivityNativeMain;->mLoggedIn:Z

    if-nez v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 328
    .local v0, "i":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "roblox_back_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/roblox/client/ActivityNativeMain;->onPlayNow(Landroid/view/View;)V

    .line 336
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v1, p0}, Lcom/mobileapptracker/MobileAppTracker;->setReferralSources(Landroid/app/Activity;)V

    .line 338
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v1}, Lcom/mobileapptracker/MobileAppTracker;->measureSession()V

    .line 340
    new-instance v1, Lcom/roblox/client/SiteAlertAsyncTask;

    sget-object v2, Lcom/roblox/client/ActivityNativeMain;->mSiteAlertWebView:Landroid/webkit/WebView;

    invoke-direct {v1, v2}, Lcom/roblox/client/SiteAlertAsyncTask;-><init>(Landroid/webkit/WebView;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/roblox/client/SiteAlertAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 343
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 345
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->DoProtocolRegistrationCheck()V

    .line 346
    return-void
.end method

.method public onSignUp(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeMain;->propigateLoginKeyValues()V

    .line 507
    new-instance v0, Lcom/roblox/client/FragmentSignUp;

    invoke-direct {v0}, Lcom/roblox/client/FragmentSignUp;-><init>()V

    .line 508
    .local v0, "f":Lcom/roblox/client/FragmentSignUp;
    invoke-virtual {v0, p0}, Lcom/roblox/client/FragmentSignUp;->setSignUpCallbacks(Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;)V

    .line 509
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mFragmentSignUp:Lcom/roblox/client/FragmentSignUp;

    .line 511
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 512
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 513
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const v3, 0x7f09000c

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 514
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 515
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 517
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 519
    const-string v3, "ActivityNativeMain"

    const-string v4, "signup"

    invoke-static {p0, v3, v4}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v3, "SignUpScreen"

    invoke-static {p0, v3}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public onUserInfoChanged(Z)V
    .locals 6
    .param p1, "trackScreen"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 365
    iget-boolean v0, p0, Lcom/roblox/client/ActivityNativeMain;->mLoggedIn:Z

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mThumbnailUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    new-instance v1, Lcom/roblox/client/ImageViewHttpLoader;

    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/ImageViewHttpLoader;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/ActivityNativeMain;->mThumbnailUrl:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Lcom/roblox/client/ImageViewHttpLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mUsernameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mRobuxBalanceTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/ActivityNativeMain;->mRobuxBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 381
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 383
    if-eqz p1, :cond_1

    .line 385
    const-string v0, "LoggedInScreen"

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 398
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeMain;->hideKeyboard()V

    .line 399
    return-void

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain;->mSidebarViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v5}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 392
    if-eqz p1, :cond_1

    .line 394
    const-string v0, "LogInScreen"

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
