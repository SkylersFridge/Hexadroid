.class Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;
.super Landroid/os/AsyncTask;
.source "RobloxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RobloxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserInfoAsyncTask"
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
.field mJson:Lorg/json/JSONObject;

.field mResponse:Ljava/lang/String;

.field final synthetic this$0:Lcom/roblox/client/RobloxActivity;


# direct methods
.method private constructor <init>(Lcom/roblox/client/RobloxActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    iput-object p1, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 243
    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mResponse:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mJson:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/RobloxActivity;Lcom/roblox/client/RobloxActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/RobloxActivity;
    .param p2, "x1"    # Lcom/roblox/client/RobloxActivity$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;-><init>(Lcom/roblox/client/RobloxActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userInfoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mResponse:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-object v2

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-static {v0}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const-string v1, "UserInfoAsyncTask failed"

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->sendUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mJson:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-boolean v0, v0, Lcom/roblox/client/RobloxActivity;->mRememberPassword:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v0, v0, Lcom/roblox/client/RobloxActivity;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v0, v0, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 281
    new-instance v1, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;

    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v2, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-direct {v1, v0, v2}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;-><init>(Lcom/roblox/client/RobloxActivity;Landroid/content/Context;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-virtual {v0}, Lcom/roblox/client/RobloxActivity;->onLogout()V

    .line 286
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const v1, 0x7f0b0032

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v1, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mJson:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/RobloxActivity;->onLogin(Lorg/json/JSONObject;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const-string v1, "UserInfoAsyncTask"

    const-string v2, "OK"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v1, p0, Lcom/roblox/client/RobloxActivity$UserInfoAsyncTask;->mResponse:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
