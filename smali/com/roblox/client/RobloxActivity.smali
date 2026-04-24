.class public Lcom/roblox/client/RobloxActivity;
.super Lcom/roblox/client/RobloxServiceActivity;
.source "RobloxActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RobloxActivity$1;,
        Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;,
        Lcom/roblox/client/RobloxActivity$LoginAsyncTask;,
        Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;
    }
.end annotation


# static fields
.field protected static final BUILDERS_CLUB_KEY:Ljava/lang/String; = "builders_club"

.field protected static final LAST_APP_VERSION_KEY:Ljava/lang/String; = "last_version_code"

.field protected static final LOGGED_IN_KEY:Ljava/lang/String; = "logged_in"

.field protected static final PASSWORD_CHECKBOX_KEY:Ljava/lang/String; = "password_checkbox"

.field protected static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field protected static final ROBUX_KEY:Ljava/lang/String; = "robux"

.field protected static final TAG:Ljava/lang/String; = "RobloxActivity"

.field protected static final THUMBNAIL_KEY:Ljava/lang/String; = "thumbnail"

.field protected static final USERNAME_KEY:Ljava/lang/String; = "username"

.field protected static final WEBVIEW_URL_KEY:Ljava/lang/String; = "webview_url"


# instance fields
.field mIsAnyBuildersClubMember:Z

.field mKeyValues:Landroid/content/SharedPreferences;

.field mLoggedIn:Z

.field mPassword:Ljava/lang/String;

.field mRememberPassword:Z

.field mRobuxBalance:I

.field mThumbnailUrl:Ljava/lang/String;

.field mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/roblox/client/RobloxServiceActivity;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    .line 39
    iput-object v1, p0, Lcom/roblox/client/RobloxActivity;->mUsername:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    .line 41
    iput-boolean v0, p0, Lcom/roblox/client/RobloxActivity;->mRememberPassword:Z

    .line 42
    iput-boolean v0, p0, Lcom/roblox/client/RobloxActivity;->mLoggedIn:Z

    .line 43
    iput-object v1, p0, Lcom/roblox/client/RobloxActivity;->mThumbnailUrl:Ljava/lang/String;

    .line 44
    iput v0, p0, Lcom/roblox/client/RobloxActivity;->mRobuxBalance:I

    .line 46
    iput-boolean v0, p0, Lcom/roblox/client/RobloxActivity;->mIsAnyBuildersClubMember:Z

    .line 409
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxActivity;->setRequestedOrientation(I)V

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/roblox/client/HttpAgent;->onCreate(Landroid/app/Activity;)V

    .line 61
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onDestroy()V

    .line 113
    return-void
.end method

.method protected onLogin(Lorg/json/JSONObject;Z)Z
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "trackScreen"    # Z

    .prologue
    const/4 v2, 0x1

    .line 190
    :try_start_0
    const-string v3, "UserInfo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 191
    .local v1, "userInfo":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 193
    move-object v1, p1

    .line 196
    :cond_0
    const-string v3, "UserName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/roblox/client/RobloxActivity;->mUsername:Ljava/lang/String;

    .line 197
    const-string v3, "RobuxBalance"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/roblox/client/RobloxActivity;->mRobuxBalance:I

    .line 199
    const-string v3, "IsAnyBuildersClubMember"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/roblox/client/RobloxActivity;->mIsAnyBuildersClubMember:Z

    .line 200
    const-string v3, "ThumbnailUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/roblox/client/RobloxActivity;->mThumbnailUrl:Ljava/lang/String;

    .line 202
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/roblox/client/RobloxActivity;->mLoggedIn:Z

    .line 204
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->writeLoginKeyValues()V

    .line 205
    invoke-virtual {p0, p2}, Lcom/roblox/client/RobloxActivity;->onUserInfoChanged(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "userInfo":Lorg/json/JSONObject;
    :goto_0
    return v2

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Missing User Info"

    invoke-static {p0, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 211
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->onLogout()V

    .line 212
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onLogout()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 217
    iput v2, p0, Lcom/roblox/client/RobloxActivity;->mRobuxBalance:I

    .line 219
    iput-object v1, p0, Lcom/roblox/client/RobloxActivity;->mThumbnailUrl:Ljava/lang/String;

    .line 220
    iput-boolean v2, p0, Lcom/roblox/client/RobloxActivity;->mIsAnyBuildersClubMember:Z

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    .line 223
    iput-boolean v2, p0, Lcom/roblox/client/RobloxActivity;->mLoggedIn:Z

    .line 225
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->writeLoginKeyValues()V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxActivity;->onUserInfoChanged(Z)V

    .line 228
    new-instance v0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;-><init>(Lcom/roblox/client/RobloxActivity;Lcom/roblox/client/RobloxActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 229
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "n"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxActivity;->setIntent(Landroid/content/Intent;)V

    .line 119
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v2, "webview_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/HttpAgent;->onPause(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/roblox/client/RobloxActivity;->setIntent(Landroid/content/Intent;)V

    .line 96
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onPause()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onResume()V

    .line 102
    invoke-static {}, Lcom/roblox/client/HttpAgent;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->readLoginKeyValues()V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxActivity;->onUserInfoChanged(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->startUserInfoUpdate()V

    .line 108
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onStart()V

    .line 68
    :try_start_0
    const-string v0, "6HY987GJ2TBVKMMDPM4V"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->writeLastVersionCode()V

    .line 75
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    invoke-super {p0}, Lcom/roblox/client/RobloxServiceActivity;->onStop()V

    .line 86
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxServiceActivity;->onTrimMemory(I)V

    .line 126
    const-string v0, "RobloxActivity"

    invoke-static {v0, p1}, Lcom/roblox/client/RobloxApplication;->logTrimMemory(Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method protected onUserInfoChanged(Z)V
    .locals 0
    .param p1, "trackScreen"    # Z

    .prologue
    .line 185
    return-void
.end method

.method protected readLoginKeyValues()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity;->mUsername:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/ConfigEncryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "password_checkbox"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/RobloxActivity;->mRememberPassword:Z

    .line 137
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "logged_in"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/RobloxActivity;->mLoggedIn:Z

    .line 138
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "thumbnail"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity;->mThumbnailUrl:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "robux"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/roblox/client/RobloxActivity;->mRobuxBalance:I

    .line 141
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "builders_club"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/roblox/client/RobloxActivity;->mIsAnyBuildersClubMember:Z

    .line 142
    return-void
.end method

.method protected startUserInfoUpdate()V
    .locals 3

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/roblox/client/RobloxActivity;->mLoggedIn:Z

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/roblox/client/UpgradeCheckHelper;->checkForUpdate()V

    .line 236
    new-instance v0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;-><init>(Lcom/roblox/client/RobloxActivity;Lcom/roblox/client/RobloxActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    :cond_0
    return-void
.end method

.method protected writeLastVersionCode()V
    .locals 5

    .prologue
    .line 170
    iget-object v2, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, -0x1

    .line 174
    .local v1, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/roblox/client/RobloxActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    const-string v2, "last_version_code"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void

    .line 175
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected writeLoginKeyValues()V
    .locals 4

    .prologue
    .line 146
    iget-object v2, p0, Lcom/roblox/client/RobloxActivity;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "username"

    iget-object v3, p0, Lcom/roblox/client/RobloxActivity;->mUsername:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    iget-boolean v2, p0, Lcom/roblox/client/RobloxActivity;->mRememberPassword:Z

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    invoke-static {v2}, Lcom/roblox/client/ConfigEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "pw":Ljava/lang/String;
    const-string v2, "password"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    .end local v1    # "pw":Ljava/lang/String;
    :goto_0
    const-string v2, "password_checkbox"

    iget-boolean v3, p0, Lcom/roblox/client/RobloxActivity;->mRememberPassword:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v2, "logged_in"

    iget-boolean v3, p0, Lcom/roblox/client/RobloxActivity;->mLoggedIn:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 161
    const-string v2, "thumbnail"

    iget-object v3, p0, Lcom/roblox/client/RobloxActivity;->mThumbnailUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v2, "robux"

    iget v3, p0, Lcom/roblox/client/RobloxActivity;->mRobuxBalance:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v2, "builders_club"

    iget-boolean v3, p0, Lcom/roblox/client/RobloxActivity;->mIsAnyBuildersClubMember:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void

    .line 156
    :cond_0
    const-string v2, "password"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
