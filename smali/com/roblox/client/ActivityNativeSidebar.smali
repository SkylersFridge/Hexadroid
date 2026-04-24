.class public Lcom/roblox/client/ActivityNativeSidebar;
.super Lcom/roblox/client/RobloxActivity;
.source "ActivityNativeSidebar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;
    }
.end annotation


# static fields
.field private static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field private static final TAG:Ljava/lang/String; = "roblox_client"

.field private static final USERNAME_KEY:Ljava/lang/String; = "username"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAlertDialog:Landroid/app/AlertDialog;

.field mDrawer:Landroid/support/v4/widget/DrawerLayout;

.field mFragmentTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mHamburger:Landroid/widget/ImageView;

.field mIsAnyBuildersClubMember:Z

.field mKeyValues:Landroid/content/SharedPreferences;

.field mMore:Landroid/widget/TextView;

.field mPassword:Ljava/lang/String;

.field mPasswordEditText:Landroid/widget/EditText;

.field mRobuxBalance:I

.field mRobuxBalanceTextView:Landroid/widget/TextView;

.field mSearchEditText:Landroid/widget/EditText;

.field mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

.field mThumbnailUrl:Ljava/lang/String;

.field mThumbnailUrlImageView:Landroid/widget/ImageView;

.field mUserID:I

.field mUsername:Ljava/lang/String;

.field mUsernameEditText:Landroid/widget/EditText;

.field mUsernameTextView:Landroid/widget/TextView;

.field mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/roblox/client/RobloxActivity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 47
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mKeyValues:Landroid/content/SharedPreferences;

    .line 50
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    .line 51
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    .line 54
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    .line 61
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    .line 62
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

    .line 63
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mHamburger:Landroid/widget/ImageView;

    .line 64
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mThumbnailUrlImageView:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameTextView:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mRobuxBalanceTextView:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSearchEditText:Landroid/widget/EditText;

    .line 69
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mMore:Landroid/widget/TextView;

    .line 72
    iput v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUserID:I

    .line 73
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mThumbnailUrl:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mRobuxBalance:I

    .line 76
    iput-boolean v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mIsAnyBuildersClubMember:Z

    .line 79
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mFragmentTable:Ljava/util/Map;

    .line 423
    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/ActivityNativeSidebar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityNativeSidebar;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeSidebar;->onUsernameEditTextOnFocusChange(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/roblox/client/ActivityNativeSidebar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityNativeSidebar;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeSidebar;->onPasswordEditTextFocusChange(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/roblox/client/ActivityNativeSidebar;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityNativeSidebar;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeSidebar;->propigateLoginKeyValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/roblox/client/ActivityNativeSidebar;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityNativeSidebar;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeSidebar;->logout()V

    return-void
.end method

.method private logout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->onPasswordEditTextFocusChange(Z)V

    .line 370
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeSidebar;->propigateLoginKeyValues()V

    .line 372
    iput v2, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUserID:I

    .line 373
    iput v2, p0, Lcom/roblox/client/ActivityNativeSidebar;->mRobuxBalance:I

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mThumbnailUrl:Ljava/lang/String;

    .line 376
    iput-boolean v2, p0, Lcom/roblox/client/ActivityNativeSidebar;->mIsAnyBuildersClubMember:Z

    .line 377
    return-void
.end method

.method private onPasswordEditTextFocusChange(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const v3, 0x80081

    const v2, 0x7f0b0047

    .line 346
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    .line 347
    if-eqz p1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 365
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    const v1, 0x80091

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private onUsernameEditTextOnFocusChange(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    const v2, 0x7f0b0086

    .line 329
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 331
    if-eqz p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private propigateLoginKeyValues()V
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    .line 323
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 324
    return-void
.end method

.method private setPageFragment(Ljava/lang/Class;)Landroid/app/Fragment;
    .locals 7
    .param p1, "c"    # Ljava/lang/Class;

    .prologue
    .line 281
    iget-object v5, p0, Lcom/roblox/client/ActivityNativeSidebar;->mFragmentTable:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 282
    .local v2, "f":Landroid/app/Fragment;
    if-nez v2, :cond_0

    .line 285
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/Fragment;

    move-object v2, v0

    .line 286
    iget-object v5, p0, Lcom/roblox/client/ActivityNativeSidebar;->mFragmentTable:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/app/Fragment;->isInLayout()Z

    move-result v5

    if-nez v5, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 294
    .local v3, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 295
    .local v4, "ft":Landroid/app/FragmentTransaction;
    const v5, 0x7f09003a

    invoke-virtual {v4, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 296
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 297
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 298
    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 300
    .end local v3    # "fm":Landroid/app/FragmentManager;
    .end local v4    # "ft":Landroid/app/FragmentTransaction;
    :cond_1
    return-object v2

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "roblox_client"

    const-string v6, "setPageFragment failed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->setContentView(I)V

    .line 91
    iput-object p0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mActivity:Landroid/app/Activity;

    .line 92
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 94
    invoke-static {p0}, Lcom/roblox/client/HttpAgent;->onCreate(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/roblox/client/ActivityNativeSidebar;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mKeyValues:Landroid/content/SharedPreferences;

    .line 101
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    .line 102
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "username"

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    .line 105
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "password"

    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v0, 0x7f090039

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    .line 115
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/AnimatedExpandableListView;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

    .line 116
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

    new-instance v1, Lcom/roblox/client/SidebarAdapter;

    invoke-direct {v1, p0}, Lcom/roblox/client/SidebarAdapter;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/AnimatedExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 118
    const v0, 0x7f090037

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mHamburger:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mThumbnailUrlImageView:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameTextView:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mRobuxBalanceTextView:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSearchEditText:Landroid/widget/EditText;

    .line 124
    const v0, 0x7f090038

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mMore:Landroid/widget/TextView;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mFragmentTable:Ljava/util/Map;

    .line 128
    const-class v0, Lcom/roblox/client/FragmentGamesPage;

    invoke-direct {p0, v0}, Lcom/roblox/client/ActivityNativeSidebar;->setPageFragment(Ljava/lang/Class;)Landroid/app/Fragment;

    .line 131
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$1;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    invoke-direct {p0, v4}, Lcom/roblox/client/ActivityNativeSidebar;->onUsernameEditTextOnFocusChange(Z)V

    .line 139
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$2;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 149
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$3;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$3;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    invoke-direct {p0, v4}, Lcom/roblox/client/ActivityNativeSidebar;->onPasswordEditTextFocusChange(Z)V

    .line 157
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$4;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$4;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 169
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSidebar:Lcom/roblox/client/AnimatedExpandableListView;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$5;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$5;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Lcom/roblox/client/AnimatedExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$6;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$6;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mSearchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$7;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$7;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 198
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mHamburger:Landroid/widget/ImageView;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$8;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$8;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mMore:Landroid/widget/TextView;

    new-instance v1, Lcom/roblox/client/ActivityNativeSidebar$9;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeSidebar$9;-><init>(Lcom/roblox/client/ActivityNativeSidebar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method public onExecuteLogin(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeSidebar;->propigateLoginKeyValues()V

    .line 400
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 413
    return-void
.end method

.method public onNop(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 383
    return-void
.end method

.method public onPageSelected(Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v1, "GAMES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-class v1, Lcom/roblox/client/FragmentGamesPage;

    invoke-direct {p0, v1}, Lcom/roblox/client/ActivityNativeSidebar;->setPageFragment(Ljava/lang/Class;)Landroid/app/Fragment;

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeSidebar;->mDrawer:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 270
    return-void

    .line 265
    :cond_0
    const-class v1, Lcom/roblox/client/FragmentWebView;

    invoke-direct {p0, v1}, Lcom/roblox/client/ActivityNativeSidebar;->setPageFragment(Ljava/lang/Class;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/FragmentWebView;

    .line 266
    .local v0, "f":Lcom/roblox/client/FragmentWebView;
    invoke-virtual {v0, p1}, Lcom/roblox/client/FragmentWebView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onPause()V

    .line 238
    invoke-virtual {p0}, Lcom/roblox/client/ActivityNativeSidebar;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/HttpAgent;->onPause(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onPlayNow(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeSidebar;->propigateLoginKeyValues()V

    .line 390
    const v0, 0x7f0b00b4

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 391
    return-void
.end method

.method public onRememberPassword(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeSidebar;->propigateLoginKeyValues()V

    .line 395
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onResume()V

    .line 244
    invoke-static {}, Lcom/roblox/client/HttpAgent;->onResume()V

    .line 246
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    .line 251
    :cond_0
    return-void
.end method

.method public onSignUp(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/roblox/client/ActivityNativeSidebar;->propigateLoginKeyValues()V

    .line 417
    const v0, 0x7f0b00b4

    invoke-static {p0, v0}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 418
    return-void
.end method
