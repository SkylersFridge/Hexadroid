.class Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;
.super Landroid/os/AsyncTask;
.source "RobloxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RobloxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutAsyncTask"
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

.field final synthetic this$0:Lcom/roblox/client/RobloxActivity;


# direct methods
.method private constructor <init>(Lcom/roblox/client/RobloxActivity;)V
    .locals 1

    .prologue
    .line 409
    iput-object p1, p0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->mResponse:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/RobloxActivity;Lcom/roblox/client/RobloxActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/RobloxActivity;
    .param p2, "x1"    # Lcom/roblox/client/RobloxActivity$1;

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;-><init>(Lcom/roblox/client/RobloxActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 409
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->logoutUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, v2}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->mResponse:Ljava/lang/String;

    .line 415
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 409
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 421
    const-string v0, "RobloxActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->mResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->mResponse:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    invoke-static {v0}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/roblox/client/RobloxActivity$LogoutAsyncTask;->this$0:Lcom/roblox/client/RobloxActivity;

    const-string v1, "LogoutAsyncTask failed"

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 429
    :cond_0
    return-void
.end method
