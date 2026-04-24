.class Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;
.super Landroid/os/AsyncTask;
.source "FragmentSignUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentSignUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidationAsyncTask"
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

.field mOp:Lcom/roblox/client/FragmentSignUp$ValidationOp;

.field mPasswordLocal:Ljava/lang/String;

.field mResponse:Ljava/lang/String;

.field mUsernameLocal:Ljava/lang/String;

.field final synthetic this$0:Lcom/roblox/client/FragmentSignUp;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$ValidationOp;)V
    .locals 3
    .param p2, "op"    # Lcom/roblox/client/FragmentSignUp$ValidationOp;

    .prologue
    const/4 v1, 0x0

    .line 518
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 512
    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mUsernameLocal:Ljava/lang/String;

    .line 513
    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mPasswordLocal:Ljava/lang/String;

    .line 514
    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mResponse:Ljava/lang/String;

    .line 515
    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mJson:Lorg/json/JSONObject;

    .line 519
    iput-object p2, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mOp:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    .line 521
    :try_start_0
    invoke-static {p1}, Lcom/roblox/client/FragmentSignUp;->access$500(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mUsernameLocal:Ljava/lang/String;

    .line 522
    invoke-static {p1}, Lcom/roblox/client/FragmentSignUp;->access$600(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mPasswordLocal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const-string v2, "Username or Password not UTF-8 #1"

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 509
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 533
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$ValidationOp:[I

    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mOp:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp$ValidationOp;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mResponse:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :cond_0
    :goto_1
    return-object v3

    .line 536
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mUsernameLocal:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->usernameCheckUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mResponse:Ljava/lang/String;

    goto :goto_0

    .line 539
    :pswitch_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->passwordCheckUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mUsernameLocal:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mPasswordLocal:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/roblox/client/RobloxSettings;->passwordCheckUrlArgs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mResponse:Ljava/lang/String;

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    goto :goto_1

    .line 533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 509
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 556
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 558
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mResponse:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    invoke-static {v1}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const-string v2, "ValidationAsyncTask cannot get response"

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->sendUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const v2, 0x7f0b0012

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 572
    :cond_2
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mJson:Lorg/json/JSONObject;

    if-nez v1, :cond_3

    .line 574
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const-string v2, "ValidationAsyncTask cannot parse JSON #1"

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 579
    :cond_3
    :try_start_0
    sget-object v1, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$ValidationOp:[I

    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mOp:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp$ValidationOp;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 582
    :pswitch_0
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mJson:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 584
    new-instance v1, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;

    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {v1, v2}, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;-><init>(Lcom/roblox/client/FragmentSignUp;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 585
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    sget-object v2, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-static {v1, v2}, Lcom/roblox/client/FragmentSignUp;->access$700(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$Validation;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const-string v2, "ValidationAsyncTask cannot parse JSON #2"

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 589
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    sget-object v2, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-static {v1, v2}, Lcom/roblox/client/FragmentSignUp;->access$700(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$Validation;)V

    goto/16 :goto_0

    .line 593
    :pswitch_1
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->mJson:Lorg/json/JSONObject;

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 595
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0048

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    .line 596
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    sget-object v2, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-static {v1, v2}, Lcom/roblox/client/FragmentSignUp;->access$800(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$Validation;)V

    goto/16 :goto_0

    .line 600
    :cond_5
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    sget-object v2, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-static {v1, v2}, Lcom/roblox/client/FragmentSignUp;->access$800(Lcom/roblox/client/FragmentSignUp;Lcom/roblox/client/FragmentSignUp$Validation;)V

    .line 602
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$ValidationAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/roblox/client/FragmentSignUp;->doPasswordVerifyValidation(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
