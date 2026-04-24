.class Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;
.super Landroid/os/AsyncTask;
.source "FragmentSignUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentSignUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignUpAsyncTask"
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

.field mCancel:Z

.field mDayLocal:I

.field mEmailLocal:Ljava/lang/String;

.field mGenderLocal:I

.field mJson:Lorg/json/JSONObject;

.field mMonthLocal:I

.field mPasswordLocal:Ljava/lang/String;

.field mResponse:Ljava/lang/String;

.field mStatus:Ljava/lang/String;

.field mUsernameLocal:Ljava/lang/String;

.field mYearLocal:I

.field final synthetic this$0:Lcom/roblox/client/FragmentSignUp;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentSignUp;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 682
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 666
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mUsernameLocal:Ljava/lang/String;

    .line 667
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mPasswordLocal:Ljava/lang/String;

    .line 668
    iput v3, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mGenderLocal:I

    .line 669
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mYearLocal:I

    .line 670
    iput v3, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mMonthLocal:I

    .line 671
    iput v4, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mDayLocal:I

    .line 672
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mEmailLocal:Ljava/lang/String;

    .line 674
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mResponse:Ljava/lang/String;

    .line 675
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mJson:Lorg/json/JSONObject;

    .line 677
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 678
    iput-boolean v3, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mCancel:Z

    .line 683
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mUsernameLocal:Ljava/lang/String;

    .line 684
    iput-object v2, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mPasswordLocal:Ljava/lang/String;

    .line 685
    invoke-static {p1}, Lcom/roblox/client/FragmentSignUp;->access$400(Lcom/roblox/client/FragmentSignUp;)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mGenderLocal:I

    .line 686
    sget v1, Lcom/roblox/client/FragmentSignUp;->mYear:I

    iput v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mYearLocal:I

    .line 687
    sget v1, Lcom/roblox/client/FragmentSignUp;->mMonth:I

    iput v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mMonthLocal:I

    .line 688
    sget v1, Lcom/roblox/client/FragmentSignUp;->mDay:I

    iput v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mDayLocal:I

    .line 689
    invoke-static {p1}, Lcom/roblox/client/FragmentSignUp;->access$900(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mEmailLocal:Ljava/lang/String;

    .line 691
    invoke-virtual {p1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const v2, 0x7f0b006c

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alert(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 692
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 693
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 696
    :try_start_0
    invoke-static {p1}, Lcom/roblox/client/FragmentSignUp;->access$500(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mUsernameLocal:Ljava/lang/String;

    .line 697
    invoke-static {p1}, Lcom/roblox/client/FragmentSignUp;->access$600(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mPasswordLocal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const-string v2, "Username or Password not UTF-8 #1"

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 700
    iput-boolean v4, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mCancel:Z

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 665
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 706
    iget-boolean v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mCancel:Z

    if-eqz v6, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-object v11

    .line 708
    :cond_1
    iget v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mGenderLocal:I

    if-ne v6, v10, :cond_2

    const-string v1, "Male"

    .line 709
    .local v1, "gender":Ljava/lang/String;
    :goto_1
    const-string v6, "%d/%d/%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mMonthLocal:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget v8, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mDayLocal:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    iget v9, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mYearLocal:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "dateOfBirth":Ljava/lang/String;
    new-array v4, v10, [Lcom/roblox/client/HttpAgent$HttpHeader;

    .line 715
    .local v4, "headerList":[Lcom/roblox/client/HttpAgent$HttpHeader;
    :try_start_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isTestSite()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1000(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1100(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1200(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1300(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1400(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mUsernameLocal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 720
    .local v5, "s":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v6, v5}, Lcom/roblox/client/FragmentSignUp;->access$2000(Lcom/roblox/client/FragmentSignUp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "h":Ljava/lang/String;
    new-instance v3, Lcom/roblox/client/HttpAgent$HttpHeader;

    invoke-direct {v3}, Lcom/roblox/client/HttpAgent$HttpHeader;-><init>()V

    .line 722
    .local v3, "header":Lcom/roblox/client/HttpAgent$HttpHeader;
    const-string v6, "X-RBXUSER-TOKEN"

    iput-object v6, v3, Lcom/roblox/client/HttpAgent$HttpHeader;->header:Ljava/lang/String;

    .line 723
    iput-object v2, v3, Lcom/roblox/client/HttpAgent$HttpHeader;->value:Ljava/lang/String;

    .line 724
    const/4 v6, 0x0

    aput-object v3, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 731
    .end local v2    # "h":Ljava/lang/String;
    .end local v3    # "header":Lcom/roblox/client/HttpAgent$HttpHeader;
    .end local v5    # "s":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->signUpUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mUsernameLocal:Ljava/lang/String;

    iget-object v8, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mPasswordLocal:Ljava/lang/String;

    invoke-static {v7, v8, v1, v0}, Lcom/roblox/client/RobloxSettings;->signUpUrlArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mResponse:Ljava/lang/String;

    .line 733
    iget-object v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mResponse:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 736
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mJson:Lorg/json/JSONObject;

    .line 737
    iget-object v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mJson:Lorg/json/JSONObject;

    const-string v7, "Status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 738
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 708
    .end local v0    # "dateOfBirth":Ljava/lang/String;
    .end local v1    # "gender":Ljava/lang/String;
    .end local v4    # "headerList":[Lcom/roblox/client/HttpAgent$HttpHeader;
    :cond_2
    const-string v1, "Female"

    goto/16 :goto_1

    .line 718
    .restart local v0    # "dateOfBirth":Ljava/lang/String;
    .restart local v1    # "gender":Ljava/lang/String;
    .restart local v4    # "headerList":[Lcom/roblox/client/HttpAgent$HttpHeader;
    :cond_3
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1500(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1600(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1700(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1800(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v7}, Lcom/roblox/client/FragmentSignUp;->access$1900(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mUsernameLocal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .restart local v5    # "s":Ljava/lang/String;
    goto/16 :goto_2

    .line 727
    .end local v5    # "s":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 665
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 749
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 759
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mResponse:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    invoke-static {v0}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    const-string v1, "SignUpAsyncTask cannot get response"

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->sendUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    const v1, 0x7f0b0012

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mJson:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    const-string v1, "SignUpAsyncTask cannot parse JSON."

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 775
    :cond_4
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 777
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v0}, Lcom/roblox/client/FragmentSignUp;->access$000(Lcom/roblox/client/FragmentSignUp;)Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v0}, Lcom/roblox/client/FragmentSignUp;->access$000(Lcom/roblox/client/FragmentSignUp;)Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mJson:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;->onFragmentSignUpOk(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 783
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;

    const-string v1, "Already Taken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 785
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    const v1, 0x7f0b0083

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 788
    :cond_6
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;

    const-string v1, "Invalid Characters Used"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 790
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    const v1, 0x7f0b002b

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 793
    :cond_7
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;

    const-string v1, "Username Cannot Contain Spaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 795
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    const v1, 0x7f0b007f

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 798
    :cond_8
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;

    const-string v1, "AccountCreationFloodcheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 800
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    const v1, 0x7f0b0001

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 804
    :cond_9
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxActivity;

    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$SignUpAsyncTask;->mStatus:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
