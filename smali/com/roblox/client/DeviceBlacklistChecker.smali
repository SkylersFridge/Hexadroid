.class Lcom/roblox/client/DeviceBlacklistChecker;
.super Landroid/os/AsyncTask;
.source "DeviceBlacklistChecker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceBlacklistChecker"


# instance fields
.field public mActivity:Lcom/roblox/client/RobloxServiceActivity;

.field mDeviceModel:Ljava/lang/String;

.field mJson:Lorg/json/JSONObject;

.field mResponse:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/RobloxServiceActivity;)V
    .locals 3
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "URL"    # Ljava/lang/String;
    .param p3, "activity"    # Lcom/roblox/client/RobloxServiceActivity;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mResponse:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mJson:Lorg/json/JSONObject;

    .line 17
    iput-object v0, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    .line 21
    iput-object p1, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mDeviceModel:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    .line 25
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->blacklistUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mUrl:Ljava/lang/String;

    .line 26
    const-string v0, "DeviceBlacklistChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructed URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method private isOnBlacklist(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "splitList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 93
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 96
    :goto_1
    return-object v2

    .line 92
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/DeviceBlacklistChecker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "uri"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v1, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mUrl:Ljava/lang/String;

    invoke-static {v1, v3, v3}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mResponse:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mResponse:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mResponse:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const-string v1, "DeviceBlacklistChecker"

    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mResponse:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_1
    return-object v3

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceBlacklistChecker"

    const-string v2, "Error retrieving JSON."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "DeviceBlacklistChecker"

    const-string v2, "Response was null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/DeviceBlacklistChecker;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const v5, 0x7f0b0017

    .line 52
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "list":Ljava/lang/String;
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    if-eqz v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mJson:Lorg/json/JSONObject;

    if-nez v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    invoke-static {v2}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    const-string v3, "DeviceBlacklistChecker failed"

    invoke-static {v2, v3}, Lcom/roblox/client/Utils;->sendUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 64
    const-string v2, "DeviceBlacklistChecker"

    const-string v3, "JSON null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    invoke-virtual {v2, v5}, Lcom/roblox/client/RobloxServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mDeviceModel:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/roblox/client/DeviceBlacklistChecker;->isOnBlacklist(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "DeviceBlacklistChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mDeviceModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is on the list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    const v3, 0x7f0b007b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mDeviceModel:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/roblox/client/Utils;->alertExclusivelyFormatted(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/app/AlertDialog;

    .line 87
    :cond_1
    return-void

    .line 71
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mJson:Lorg/json/JSONObject;

    const-string v3, "BlacklistedDevices"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceBlacklistChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    const-string v3, "DeviceBlacklistChecker"

    const-string v4, "Failed to parse Blacklist JSON."

    invoke-static {v2, v3, v4}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Lcom/roblox/client/DeviceBlacklistChecker;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    invoke-virtual {v2, v5}, Lcom/roblox/client/RobloxServiceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
