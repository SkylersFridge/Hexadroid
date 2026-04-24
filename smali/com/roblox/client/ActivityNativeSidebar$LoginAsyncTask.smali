.class Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityNativeSidebar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ActivityNativeSidebar;
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
.field mJson:Lorg/json/JSONObject;

.field mResponse:Ljava/lang/String;

.field final synthetic this$0:Lcom/roblox/client/ActivityNativeSidebar;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeSidebar;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 423
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 425
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mResponse:Ljava/lang/String;

    .line 426
    iput-object v0, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 423
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 436
    const-string v2, ""

    .line 437
    .local v2, "encodedUsername":Ljava/lang/String;
    const-string v1, ""

    .line 439
    .local v1, "encodedPassword":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v3, v3, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    iget-object v3, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v3, v3, Lcom/roblox/client/ActivityNativeSidebar;->mPassword:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 444
    :goto_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->loginUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "username=%s&password=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mResponse:Ljava/lang/String;

    .line 450
    iget-object v3, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mResponse:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 453
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mResponse:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mJson:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    :cond_0
    :goto_1
    return-object v7

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "roblox_client"

    const-string v4, "Login cannot parse JSON."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 423
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 13
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f020022

    const/4 v10, 0x1

    .line 465
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 467
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    if-nez v6, :cond_0

    .line 469
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v7, v7, Lcom/roblox/client/ActivityNativeSidebar;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 470
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v6, "Cannot connect"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 531
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 476
    :cond_0
    const/4 v2, 0x0

    .line 478
    .local v2, "isOk":Z
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    const-string v7, "Status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "status":Ljava/lang/String;
    const-string v6, "OK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 481
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mJson:Lorg/json/JSONObject;

    const-string v7, "UserInfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 483
    .local v5, "userInfo":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    const-string v7, "UserName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    .line 484
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    const-string v7, "UserID"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/roblox/client/ActivityNativeSidebar;->mUserID:I

    .line 485
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    const-string v7, "RobuxBalance"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/roblox/client/ActivityNativeSidebar;->mRobuxBalance:I

    .line 487
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    const-string v7, "IsAnyBuildersClubMember"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/roblox/client/ActivityNativeSidebar;->mIsAnyBuildersClubMember:Z

    .line 490
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v6, v6, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v7, v7, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-static {v6}, Lcom/roblox/client/ActivityNativeSidebar;->access$200(Lcom/roblox/client/ActivityNativeSidebar;)V

    .line 493
    const-string v6, "ThumbnailUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "thumbnailUrl":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 497
    new-instance v7, Lcom/roblox/client/ImageViewHttpLoader;

    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    const v8, 0x7f09001f

    invoke-virtual {v6, v8}, Lcom/roblox/client/ActivityNativeSidebar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/roblox/client/ImageViewHttpLoader;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v7, v6, v8}, Lcom/roblox/client/ImageViewHttpLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    :cond_1
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v6, v6, Lcom/roblox/client/ActivityNativeSidebar;->mUsernameTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v7, v7, Lcom/roblox/client/ActivityNativeSidebar;->mUsername:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v6, v6, Lcom/roblox/client/ActivityNativeSidebar;->mRobuxBalanceTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget v8, v8, Lcom/roblox/client/ActivityNativeSidebar;->mRobuxBalance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    const/4 v2, 0x1

    .line 510
    .end local v3    # "status":Ljava/lang/String;
    .end local v4    # "thumbnailUrl":Ljava/lang/String;
    .end local v5    # "userInfo":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v6, v6, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->cancel()V

    .line 511
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iput-object v12, v6, Lcom/roblox/client/ActivityNativeSidebar;->mAlertDialog:Landroid/app/AlertDialog;

    .line 513
    if-eqz v2, :cond_3

    .line 515
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v6, v6, Lcom/roblox/client/ActivityNativeSidebar;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v10}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_0

    .line 506
    move-exception v1

    .line 507
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "roblox_client"

    const-string v7, "Login incomplete JSON."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 519
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-static {v6}, Lcom/roblox/client/ActivityNativeSidebar;->access$300(Lcom/roblox/client/ActivityNativeSidebar;)V

    .line 521
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->this$0:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v7, v7, Lcom/roblox/client/ActivityNativeSidebar;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 522
    .restart local v0    # "alertDialog":Landroid/app/AlertDialog;
    const-string v6, "Login Failed"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v6, p0, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;->mResponse:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 525
    const-string v6, "OK"

    new-instance v7, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask$1;

    invoke-direct {v7, p0}, Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask$1;-><init>(Lcom/roblox/client/ActivityNativeSidebar$LoginAsyncTask;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 430
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 431
    return-void
.end method
