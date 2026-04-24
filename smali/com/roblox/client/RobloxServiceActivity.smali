.class public Lcom/roblox/client/RobloxServiceActivity;
.super Landroid/app/Activity;
.source "RobloxServiceActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RobloxServiceActivity$IncomingHandler;
    }
.end annotation


# static fields
.field private static SERVICETAG:Ljava/lang/String;


# instance fields
.field private mBindNotBound:I

.field mGooglePlayServicesAvailable:Z

.field private mMessenger:Landroid/os/Messenger;

.field private mPendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRobloxService:Landroid/os/Messenger;

.field private mRobloxServiceConnection:Landroid/content/ServiceConnection;

.field protected mStoreMgr:Lcom/roblox/client/StoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "robloxservice"

    sput-object v0, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    .line 34
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/roblox/client/RobloxServiceActivity$IncomingHandler;

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/RobloxServiceActivity$IncomingHandler;-><init>(Lcom/roblox/client/RobloxServiceActivity;Lcom/roblox/client/RobloxServiceActivity$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mMessenger:Landroid/os/Messenger;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mPendingMessages:Ljava/util/List;

    .line 36
    iput-boolean v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mGooglePlayServicesAvailable:Z

    .line 37
    iput v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    .line 38
    iput-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mStoreMgr:Lcom/roblox/client/StoreManager;

    .line 73
    new-instance v0, Lcom/roblox/client/RobloxServiceActivity$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/RobloxServiceActivity$1;-><init>(Lcom/roblox/client/RobloxServiceActivity;)V

    iput-object v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/roblox/client/RobloxServiceActivity;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/RobloxServiceActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/roblox/client/RobloxServiceActivity;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$300(Lcom/roblox/client/RobloxServiceActivity;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/RobloxServiceActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$406(Lcom/roblox/client/RobloxServiceActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/RobloxServiceActivity;

    .prologue
    .line 30
    iget v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    return v0
.end method


# virtual methods
.method protected doBindService()V
    .locals 6

    .prologue
    .line 102
    iget v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/roblox/client/RobloxService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    .line 107
    .local v0, "debuggerAttached":Z
    const-string v3, "roblox_launcher_debugger_attached"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/roblox/client/RobloxServiceActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 110
    .local v2, "isOk":Z
    if-nez v2, :cond_0

    .line 112
    sget-object v3, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    const-string v4, "RobloxActivity.doBindService failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method protected doNotifyService(II)V
    .locals 5
    .param p1, "notification"    # I
    .param p2, "extra"    # I

    .prologue
    .line 141
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v3, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 143
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mPendingMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    const-string v3, "RobloxActivity.doNotifyService failed service dead"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected doUnbindService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 122
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 123
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    iput-object v5, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    .line 137
    :goto_1
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/roblox/client/RobloxServiceActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    const-string v3, "RobloxActivity.doUnbindService wtf service already dead."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    goto :goto_1
.end method

.method protected isGooglePlayServicesAvailable()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mGooglePlayServicesAvailable:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mStoreMgr:Lcom/roblox/client/StoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/roblox/client/StoreManager;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    const-string v1, "onActivityResult handled by Store Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 164
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 166
    sget-object v2, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    const-string v3, "isGooglePlayServicesAvailable: No"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    invoke-static {p0}, Lcom/roblox/client/StoreManager;->getStoreManager(Landroid/content/Context;)Lcom/roblox/client/StoreManager;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mStoreMgr:Lcom/roblox/client/StoreManager;

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/roblox/client/RobloxService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/roblox/client/RobloxServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    return-void

    .line 170
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mGooglePlayServicesAvailable:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "StoreManager"

    const-string v1, "Handle onResume in RobloxService Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 204
    iget-object v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mStoreMgr:Lcom/roblox/client/StoreManager;

    invoke-virtual {v0}, Lcom/roblox/client/StoreManager;->handleActivityResume()V

    .line 205
    return-void
.end method

.method public onServiceConnected()V
    .locals 6

    .prologue
    .line 46
    iget-object v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mPendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 49
    .local v2, "msg":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mRobloxService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    const-string v4, "RobloxActivity.doNotifyService failed service dead"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/roblox/client/RobloxServiceActivity;->mPendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 55
    return-void
.end method

.method protected onServiceNotification(II)V
    .locals 0
    .param p1, "notification"    # I
    .param p2, "extra"    # I

    .prologue
    .line 42
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 182
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->doBindService()V

    .line 183
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/roblox/client/RobloxServiceActivity;->doUnbindService()V

    .line 188
    invoke-static {p0}, Lcom/roblox/client/Utils;->contextSwitchExclusiveDialog(Landroid/content/Context;)V

    .line 190
    iget v0, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    if-lez v0, :cond_0

    .line 192
    sget-object v0, Lcom/roblox/client/RobloxServiceActivity;->SERVICETAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** mBindNotBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/RobloxServiceActivity;->mBindNotBound:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 196
    return-void
.end method
