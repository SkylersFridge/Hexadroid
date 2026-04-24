.class Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;
.super Landroid/os/AsyncTask;
.source "UpgradeCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/UpgradeCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForceUpgradeCheck"
.end annotation

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


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field mJson:Lorg/json/JSONObject;

.field mResponse:Ljava/lang/String;

.field mStatus:Ljava/lang/String;

.field upgradeCheckUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mResponse:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mJson:Lorg/json/JSONObject;

    .line 91
    iput-object v0, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mAlertDialog:Landroid/app/AlertDialog;

    .line 92
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->upgradeCheckUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->upgradeCheckUrl:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "uri"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 101
    const-string v0, "UpgradeCheckHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpgradeUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->upgradeCheckUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->upgradeCheckUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mResponse:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    const-string v0, "UpgradeCheckHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v3

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    iget-object v2, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mJson:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->mJson:Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 126
    .local v0, "dataJsonObj":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 147
    .end local v0    # "dataJsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v0    # "dataJsonObj":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "UpgradeAction"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "status":Ljava/lang/String;
    const-string v2, "Required"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    sget-object v2, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Required:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    invoke-static {v2}, Lcom/roblox/client/UpgradeCheckHelper;->access$102(Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;)Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    goto :goto_0

    .line 141
    .end local v0    # "dataJsonObj":Lorg/json/JSONObject;
    .end local v1    # "status":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 134
    .restart local v0    # "dataJsonObj":Lorg/json/JSONObject;
    .restart local v1    # "status":Ljava/lang/String;
    :cond_2
    const-string v2, "Recommended"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    sget-object v2, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Recommended:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    invoke-static {v2}, Lcom/roblox/client/UpgradeCheckHelper;->access$102(Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;)Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    goto :goto_0

    .line 139
    :cond_3
    sget-object v2, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->NotRequired:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    invoke-static {v2}, Lcom/roblox/client/UpgradeCheckHelper;->access$102(Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;)Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
