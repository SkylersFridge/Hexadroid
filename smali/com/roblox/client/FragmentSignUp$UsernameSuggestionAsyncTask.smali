.class Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;
.super Landroid/os/AsyncTask;
.source "FragmentSignUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentSignUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsernameSuggestionAsyncTask"
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
.field mResponse:Ljava/lang/String;

.field mUsernameLocal:Ljava/lang/String;

.field final synthetic this$0:Lcom/roblox/client/FragmentSignUp;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentSignUp;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 618
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 614
    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mUsernameLocal:Ljava/lang/String;

    .line 615
    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mResponse:Ljava/lang/String;

    .line 620
    :try_start_0
    invoke-static {p1}, Lcom/roblox/client/FragmentSignUp;->access$500(Lcom/roblox/client/FragmentSignUp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mUsernameLocal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/roblox/client/RobloxActivity;

    const-string v2, "Username not UTF-8"

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 612
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 629
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mUsernameLocal:Ljava/lang/String;

    invoke-static {v0}, Lcom/roblox/client/RobloxSettings;->recommendUsernameUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mResponse:Ljava/lang/String;

    .line 630
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 612
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 635
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 637
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mResponse:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 643
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/RobloxActivity;

    invoke-static {v2}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/RobloxActivity;

    const-string v3, "UsernameSuggestionAsyncTask cannot get response"

    invoke-static {v2, v3}, Lcom/roblox/client/Utils;->sendUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 646
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/RobloxActivity;

    const v3, 0x7f0b0012

    invoke-static {v2, v3}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 652
    :cond_2
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mUsernameLocal:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 654
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0080

    invoke-static {v2, v3}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;I)Landroid/app/AlertDialog;

    goto :goto_0

    .line 658
    :cond_3
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "format":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->mResponse:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/roblox/client/FragmentSignUp$UsernameSuggestionAsyncTask;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v2}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
