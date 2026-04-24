.class public Lcom/roblox/client/RobloxSettings;
.super Ljava/lang/Object;
.source "RobloxSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "roblox.config"

.field private static mActualUserAgentString:Ljava/lang/String;

.field private static mBaseMobileUrl:Ljava/lang/String;

.field private static mBaseUrl:Ljava/lang/String;

.field private static mCacheDirectory:Ljava/lang/String;

.field private static mCleanupBreakpadDumps:Z

.field private static mContext:Landroid/content/Context;

.field private static mDeviceNotSupported:Ljava/lang/String;

.field private static mDeviceNotSupportedSkippable:Z

.field private static mEnableBreakpad:Z

.field private static mFakeUserAgent:Z

.field private static mFakeUserAgentString:Ljava/lang/String;

.field private static mFilesDirectory:Ljava/lang/String;

.field private static mIsInternalBuild:Z

.field private static mIsPhone:Z

.field static mKeyValues:Landroid/content/SharedPreferences;

.field private static mNDKProfilerFrequency:I

.field private static mRobloxCookiesTmpFile:Ljava/io/File;

.field private static mUseWebURLOverride:Z

.field private static mUserAgentSuffix:Ljava/lang/String;

.field private static mVersion:Ljava/lang/String;

.field private static mWebViewURLOverride:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 21
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    .line 22
    const-string v0, "version missing"

    sput-object v0, Lcom/roblox/client/RobloxSettings;->mVersion:Ljava/lang/String;

    .line 25
    sput-boolean v3, Lcom/roblox/client/RobloxSettings;->mFakeUserAgent:Z

    .line 26
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mFakeUserAgentString:Ljava/lang/String;

    .line 27
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mActualUserAgentString:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mUserAgentSuffix:Ljava/lang/String;

    .line 29
    sput-boolean v3, Lcom/roblox/client/RobloxSettings;->mIsPhone:Z

    .line 30
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mBaseMobileUrl:Ljava/lang/String;

    .line 32
    sput-boolean v2, Lcom/roblox/client/RobloxSettings;->mEnableBreakpad:Z

    .line 33
    sput-boolean v3, Lcom/roblox/client/RobloxSettings;->mCleanupBreakpadDumps:Z

    .line 34
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mWebViewURLOverride:Ljava/lang/String;

    .line 35
    sput-boolean v2, Lcom/roblox/client/RobloxSettings;->mUseWebURLOverride:Z

    .line 36
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mCacheDirectory:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mFilesDirectory:Ljava/lang/String;

    .line 38
    sput v2, Lcom/roblox/client/RobloxSettings;->mNDKProfilerFrequency:I

    .line 39
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupported:Ljava/lang/String;

    .line 40
    sput-boolean v3, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupportedSkippable:Z

    .line 41
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mRobloxCookiesTmpFile:Ljava/io/File;

    .line 42
    sput-boolean v2, Lcom/roblox/client/RobloxSettings;->mIsInternalBuild:Z

    .line 44
    sput-object v1, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static baseURLNoHttp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static baseUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mBaseMobileUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method static baseUrlInternalDebug()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v2, "internalDebugUrl"

    const-string v3, "failed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static baseUrlSecure()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mBaseMobileUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method static baseUrlSecureWWW()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklistUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://clientsettings.api."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseURLNoHttp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Setting/QuietGet/AndroidAppSettings/?apiKey=76E5A40C-3AE1-4028-9F10-7C62520BD94F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static buildersClubUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static catalogUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "catalog/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "catalog/"

    goto :goto_0
.end method

.method static cleanupBreakpadDumps()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mCleanupBreakpadDumps:Z

    return v0
.end method

.method static deviceNotSupportedSkippable()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupportedSkippable:Z

    return v0
.end method

.method static deviceNotSupportedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupported:Ljava/lang/String;

    return-object v0
.end method

.method static enableBreakpad()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mEnableBreakpad:Z

    return v0
.end method

.method public static enableNDKProfiler(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 233
    if-eqz p0, :cond_1

    .line 235
    sget v1, Lcom/roblox/client/RobloxSettings;->mNDKProfilerFrequency:I

    invoke-static {v1}, Lcom/roblox/client/RobloxSettings;->nativeEnableNDKProfiler(I)Z

    move-result v0

    .line 236
    .local v0, "doesExist":Z
    if-eqz v0, :cond_0

    .line 239
    const-string v1, "roblox.config"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting NDK Profiler frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/roblox/client/RobloxSettings;->mNDKProfilerFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 244
    .end local v0    # "doesExist":Z
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/roblox/client/RobloxSettings;->nativeEnableNDKProfiler(I)Z

    move-result v0

    .line 245
    .restart local v0    # "doesExist":Z
    if-eqz v0, :cond_0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/roblox/client/RobloxSettings;->mFilesDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/gmon.out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1ed

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->chmod(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static exceptionReasonFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "exception_reason.txt"

    return-object v0
.end method

.method static gamesUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "games/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static groupsUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clans/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "clans/"

    goto :goto_0
.end method

.method static initConfig(Landroid/content/Context;)V
    .locals 9
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 171
    sput-object p0, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    .line 172
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    const-string v7, "prefs"

    const/4 v8, 0x4

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    .line 174
    const/high16 v4, 0x7f060000

    :try_start_0
    invoke-static {p0, v4}, Lcom/roblox/client/Utils;->loadJson(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 175
    .local v2, "j":Lorg/json/JSONObject;
    const-string v4, "FakeUserAgent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/roblox/client/RobloxSettings;->mFakeUserAgent:Z

    .line 176
    const-string v4, "FakeUserAgentString"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mFakeUserAgentString:Ljava/lang/String;

    .line 177
    const-string v4, "UserAgentSuffix"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mUserAgentSuffix:Ljava/lang/String;

    .line 178
    const-string v4, "BaseUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    .line 179
    const-string v4, "BaseMobileUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mBaseMobileUrl:Ljava/lang/String;

    .line 180
    const-string v4, "EnableBreakpad"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/roblox/client/RobloxSettings;->mEnableBreakpad:Z

    .line 181
    const-string v4, "CleanupBreakpadDumps"

    const/4 v7, 0x1

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/roblox/client/RobloxSettings;->mCleanupBreakpadDumps:Z

    .line 182
    const-string v4, "WebViewURLOverride"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mWebViewURLOverride:Ljava/lang/String;

    .line 183
    const-string v4, "UseURLOverride"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/roblox/client/RobloxSettings;->mUseWebURLOverride:Z

    .line 184
    const-string v4, "NDKProfilerFrequency"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/roblox/client/RobloxSettings;->mNDKProfilerFrequency:I

    .line 185
    const-string v4, "InternalBuild"

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/roblox/client/RobloxSettings;->mIsInternalBuild:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    sget-boolean v4, Lcom/roblox/client/RobloxSettings;->mIsInternalBuild:Z

    if-eqz v4, :cond_0

    .line 192
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v7, "internalDebugUrl"

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    .line 198
    :cond_0
    :try_start_1
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v7, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 199
    .local v3, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mVersion:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    invoke-static {}, Lcom/roblox/client/Utils;->getDeviceHasNEON()Z

    move-result v4

    if-nez v4, :cond_3

    .line 208
    const-string v4, "Requires NEON instructions"

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupported:Ljava/lang/String;

    .line 209
    sput-boolean v5, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupportedSkippable:Z

    .line 224
    :cond_1
    :goto_0
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/roblox/client/Utils;->getScreenDpSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 225
    .local v0, "dpsz":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    const/16 v7, 0x320

    if-lt v4, v7, :cond_2

    iget v4, v0, Landroid/graphics/Point;->y:I

    const/16 v7, 0x1f4

    if-ge v4, v7, :cond_5

    :cond_2
    move v4, v6

    :goto_1
    sput-boolean v4, Lcom/roblox/client/RobloxSettings;->mIsPhone:Z

    .line 227
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mCacheDirectory:Ljava/lang/String;

    .line 228
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mFilesDirectory:Ljava/lang/String;

    .line 229
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/roblox/client/RobloxSettings;->mCacheDirectory:Ljava/lang/String;

    const-string v6, "2345sd-2345234-cookies.txt"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mRobloxCookiesTmpFile:Ljava/io/File;

    .line 230
    return-void

    .line 186
    .end local v0    # "dpsz":Landroid/graphics/Point;
    .end local v2    # "j":Lorg/json/JSONObject;
    .end local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse JSON resource: res/raw/roblox_settings: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "j":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot Read Package Info for Version String: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pinfo":Landroid/content/pm/PackageInfo;
    :cond_3
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/roblox/client/Utils;->getScreenDpi(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/16 v7, 0xb4

    if-ge v4, v7, :cond_4

    .line 213
    const-string v4, ""

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupported:Ljava/lang/String;

    goto/16 :goto_0

    .line 215
    :cond_4
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "SM\u00ad-T210R"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    const-string v4, "SM\u00ad-T210R"

    sput-object v4, Lcom/roblox/client/RobloxSettings;->mDeviceNotSupported:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0    # "dpsz":Landroid/graphics/Point;
    :cond_5
    move v4, v5

    .line 225
    goto/16 :goto_1
.end method

.method static inventoryUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "avatar/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "avatar/"

    goto :goto_0
.end method

.method static isInternalBuild()Z
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mIsInternalBuild:Z

    return v0
.end method

.method static isPhone()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mIsPhone:Z

    return v0
.end method

.method static isTablet()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mIsPhone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isTestSite()Z
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    .line 57
    .local v0, "bUrl":Ljava/lang/String;
    :goto_0
    const-string v1, ".robloxlabs.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 58
    const/4 v1, 0x1

    .line 60
    :goto_1
    return v1

    .line 56
    .end local v0    # "bUrl":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mBaseMobileUrl:Ljava/lang/String;

    goto :goto_0

    .line 60
    .restart local v0    # "bUrl":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static leaderboardsUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "leaderboards"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static loginUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecure()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileapi/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static logoutUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecure()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileapi/logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static messagesUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "my/messages/#!/inbox"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "inbox"

    goto :goto_0
.end method

.method private static native nativeEnableNDKProfiler(I)Z
.end method

.method private static native nativeInitBreakpad(Z)V
.end method

.method private static native nativeInitFastLog()V
.end method

.method private static native nativeLocaleDecimalPoint(Ljava/lang/Byte;)V
.end method

.method private static native nativeSetBaseUrl(Ljava/lang/String;)V
.end method

.method private static native nativeSetCacheDirectory(Ljava/lang/String;)V
.end method

.method private static native nativeSetCookiesForDomain(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetExceptionReasonFilename(Ljava/lang/String;)V
.end method

.method private static native nativeSetFilesDirectory(Ljava/lang/String;)V
.end method

.method private static native nativeSetHttpProxy(Ljava/lang/String;J)V
.end method

.method private static native nativeSetPlatformUserAgent(Ljava/lang/String;)V
.end method

.method private static native nativeSetRobloxVersion(Ljava/lang/String;)V
.end method

.method static passwordCheckUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecureWWW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserCheck/validatepasswordforsignup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static passwordCheckUrlArgs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "password=%s&username=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static profileUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "User.aspx"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static recommendUsernameUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "userName"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "%sUserCheck/getrecommendedusername?usernameToTry=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecureWWW()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static saveRobloxCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "cookies"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mRobloxCookiesTmpFile:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static searchGamesUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "term"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "%sBrowse.aspx?name=%s"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "%speople?search=%s"

    goto :goto_0
.end method

.method static setBaseMobileUrlDebug(Ljava/lang/String;)V
    .locals 1
    .param p0, "newUrl"    # Ljava/lang/String;

    .prologue
    .line 65
    sput-object p0, Lcom/roblox/client/RobloxSettings;->mBaseMobileUrl:Ljava/lang/String;

    const-string v0, "BaseUrl"

    invoke-static {v0, p0}, Lcom/roblox/client/RobloxSettings;->updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setBaseUrlDebug(Ljava/lang/String;)V
    .locals 1
    .param p0, "newUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    sput-object p0, Lcom/roblox/client/RobloxSettings;->mBaseUrl:Ljava/lang/String;

    const-string v0, "BaseUrl"

    invoke-static {v0, p0}, Lcom/roblox/client/RobloxSettings;->updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static signUpUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecureWWW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileapi/securesignup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static signUpUrlArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "userName"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "gender"    # Ljava/lang/String;
    .param p3, "dateOfBirth"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "userName=%s&password=%s&gender=%s&dateOfBirth=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateNativeSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 257
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->exceptionReasonFilename()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeSetExceptionReasonFilename(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 261
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Missing baseUrl()"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 264
    :cond_0
    sget-boolean v4, Lcom/roblox/client/RobloxSettings;->mIsInternalBuild:Z

    if-eqz v4, :cond_1

    .line 265
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlInternalDebug()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeSetBaseUrl(Ljava/lang/String;)V

    .line 270
    :goto_0
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mCacheDirectory:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 272
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Missing cacheDirectory"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeSetBaseUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_2
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeSetCacheDirectory(Ljava/lang/String;)V

    .line 276
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mFilesDirectory:Ljava/lang/String;

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeSetFilesDirectory(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeSetPlatformUserAgent(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->version()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeSetRobloxVersion(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->enableBreakpad()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->cleanupBreakpadDumps()Z

    move-result v4

    invoke-static {v4}, Lcom/roblox/client/RobloxSettings;->nativeInitBreakpad(Z)V

    .line 289
    :cond_3
    const-string v4, "http.proxyHost"

    const-string v5, ""

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "proxyHost":Ljava/lang/String;
    const-string v4, "http.proxyPort"

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 291
    .local v2, "proxyPort":J
    invoke-static {v1, v2, v3}, Lcom/roblox/client/RobloxSettings;->nativeSetHttpProxy(Ljava/lang/String;J)V

    .line 293
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mRobloxCookiesTmpFile:Ljava/io/File;

    if-eqz v4, :cond_4

    .line 295
    sget-object v4, Lcom/roblox/client/RobloxSettings;->mRobloxCookiesTmpFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/client/Utils;->readTextFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 298
    const-string v5, "roblox.config"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting ROBLOX cookies for domain "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/roblox/client/RobloxSettings;->nativeSetCookiesForDomain(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v0    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->nativeInitFastLog()V

    .line 304
    return-void
.end method

.method static updateSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    sget-object v2, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 74
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "internalDebugUrl"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "roblox.config"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting SharedPrefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static upgradeCheckUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileapi/check-app-version?appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppAmazonV"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "AppAndroidV"

    goto :goto_0
.end method

.method static useWebURLOverride()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mUseWebURLOverride:Z

    return v0
.end method

.method static userAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/roblox/client/RobloxSettings;->mFakeUserAgent:Z

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mFakeUserAgentString:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgentNotFaked()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static userAgentNotFaked()Ljava/lang/String;
    .locals 12

    .prologue
    .line 84
    sget-object v8, Lcom/roblox/client/RobloxSettings;->mActualUserAgentString:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 86
    sget-object v8, Lcom/roblox/client/RobloxSettings;->mActualUserAgentString:Ljava/lang/String;

    .line 110
    .local v0, "androidVersion":Ljava/lang/String;
    .local v1, "deviceName":Ljava/lang/String;
    .local v2, "dpi":Landroid/graphics/Point;
    .local v3, "dpsz":Landroid/graphics/Point;
    .local v4, "memory":J
    .local v6, "screenSize":Landroid/graphics/Point;
    .local v7, "webKitVersion":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 89
    .end local v0    # "androidVersion":Ljava/lang/String;
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "dpi":Landroid/graphics/Point;
    .end local v3    # "dpsz":Landroid/graphics/Point;
    .end local v4    # "memory":J
    .end local v6    # "screenSize":Landroid/graphics/Point;
    .end local v7    # "webKitVersion":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/roblox/client/Utils;->getDeviceTotalMegabytes()I

    move-result v8

    int-to-long v4, v8

    .line 90
    .restart local v4    # "memory":J
    sget-object v8, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/roblox/client/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    .line 91
    .restart local v6    # "screenSize":Landroid/graphics/Point;
    sget-object v8, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/roblox/client/Utils;->getScreenDpi(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    .line 92
    .restart local v2    # "dpi":Landroid/graphics/Point;
    sget-object v8, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/roblox/client/Utils;->getScreenDpSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    .line 93
    .restart local v3    # "dpsz":Landroid/graphics/Point;
    invoke-static {}, Lcom/roblox/client/Utils;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1    # "deviceName":Ljava/lang/String;
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 95
    .restart local v0    # "androidVersion":Ljava/lang/String;
    sget-object v8, Lcom/roblox/client/RobloxSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/roblox/client/Utils;->getWebkitVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .restart local v7    # "webKitVersion":Ljava/lang/String;
    const-string v8, "Mozilla/5.0 (%dMB; %dx%d; %dx%d; %dx%d; %s; %s) %s (KHTML, like Gecko)  ROBLOX Android App %s"

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v6, Landroid/graphics/Point;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v6, Landroid/graphics/Point;->y:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v2, Landroid/graphics/Point;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget v11, v2, Landroid/graphics/Point;->y:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget v11, v3, Landroid/graphics/Point;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget v11, v3, Landroid/graphics/Point;->y:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    aput-object v1, v9, v10

    const/16 v10, 0x8

    aput-object v0, v9, v10

    const/16 v10, 0x9

    aput-object v7, v9, v10

    const/16 v10, 0xa

    sget-object v11, Lcom/roblox/client/RobloxSettings;->mVersion:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/roblox/client/RobloxSettings;->mActualUserAgentString:Ljava/lang/String;

    .line 110
    sget-object v8, Lcom/roblox/client/RobloxSettings;->mActualUserAgentString:Ljava/lang/String;

    goto :goto_0
.end method

.method static userAgentSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mUserAgentSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static userInfoUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    const-string v0, "%smobileapi/userinfo"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecure()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static usernameCheckUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "userName"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v0, "%sUserCheck/checkifinvalidusernameforsignup?username=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecureWWW()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static verifyPurchaseReceiptUrlForAmazon()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecure()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileapi/amazon-purchase?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static verifyPurchaseReceiptUrlForGoogle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlSecure()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileapi/google-purchase?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static webViewURLOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mWebViewURLOverride:Ljava/lang/String;

    return-object v0
.end method
