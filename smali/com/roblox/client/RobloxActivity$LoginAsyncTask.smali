.class Lcom/roblox/client/RobloxActivity$LoginAsyncTask;
.super Landroid/os/AsyncTask;
.source "RobloxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RobloxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginAsyncTask"
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

.field final synthetic this$0:Lcom/roblox/client/RobloxActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/RobloxActivity;Landroid/content/Context;)V
    .locals 2
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 312
    iput-object p1, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 307
    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 308
    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mResponse:Ljava/lang/String;

    .line 309
    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    .line 313
    const v0, 0x7f0b0033

    invoke-static {p2, v0}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 314
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 318
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 320
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 305
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 325
    const-string v1, ""

    .line 326
    .local v1, "encodedUsername":Ljava/lang/String;
    const-string v0, ""

    .line 328
    .local v0, "encodedPassword":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v2, v2, Lcom/roblox/client/RobloxActivity;->mUsername:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v2, v2, Lcom/roblox/client/RobloxActivity;->mPassword:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 333
    :goto_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->loginUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "username=%s&password=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mResponse:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mResponse:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 339
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mResponse:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mJson:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :cond_0
    :goto_1
    return-object v6

    .line 340
    :catch_0
    move-exception v2

    goto :goto_1

    .line 330
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 305
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 351
    const/4 v1, 0x0

    .line 353
    .local v1, "isOk":Z
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mResponse:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 355
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-static {v3}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const-string v4, "Login cannot get response"

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 394
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 396
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 397
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 400
    :cond_1
    if-nez v1, :cond_2

    .line 402
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-virtual {v3}, Lcom/roblox/client/RobloxActivity;->onLogout()V

    .line 405
    :cond_2
    return-void

    .line 360
    :cond_3
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    .line 362
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const-string v4, "Login cannot parse JSON"

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 365
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    const-string v4, "Status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "status":Ljava/lang/String;
    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 368
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    iget-object v4, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/roblox/client/RobloxActivity;->onLogin(Lorg/json/JSONObject;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const-string v4, "LoginAsyncTask"

    const-string v5, "OK"

    invoke-static {v3, v4, v5}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v1, 0x1

    goto :goto_0

    .line 374
    :cond_5
    const-string v3, "InvalidUsername"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "InvalidPassword"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "MissingRequiredField"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 376
    :cond_6
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const v4, 0x7f0b002c

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v2    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const-string v4, "Login incomplete JSON"

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 378
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "status":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v3, "SuccessfulLoginFloodcheck"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "FailedLoginFloodcheck"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "FailedLoginPerUserFloodcheck"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 380
    :cond_8
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const v4, 0x7f0b0073

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 382
    :cond_9
    const-string v3, "AccountNotApproved"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 384
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const v4, 0x7f0b003b

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 388
    :cond_a
    iget-object v3, p0, Lcom/roblox/client/RobloxActivity$LoginAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-static {v3, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
