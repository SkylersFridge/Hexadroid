.class public Lcom/roblox/client/RobloxService;
.super Landroid/app/Service;
.source "RobloxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RobloxService$1;,
        Lcom/roblox/client/RobloxService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final INVALID_PLACE_ID:I = -0x1

.field public static final MSG_NOTIFICATION:I = 0x3

.field public static final MSG_REGISTER_CLIENT:I = 0x1

.field public static final MSG_UNREGISTER_CLIENT:I = 0x2

.field public static final NOTIFICATION_CONNECTED:I = 0x1

.field public static final NOTIFICATION_GET_PLACEID:I = 0x4

.field public static final NOTIFICATION_GLSHUTDOWN:I = 0x2

.field public static final NOTIFICATION_SET_PLACEID:I = 0x3

.field private static SERVICETAG:Ljava/lang/String;


# instance fields
.field private mAlreadyWaitedForDebugger:Z

.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPlaceId:I

.field private mMessenger:Landroid/os/Messenger;

.field private mWaitForDebugger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "robloxservice"

    sput-object v0, Lcom/roblox/client/RobloxService;->SERVICETAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/roblox/client/RobloxService$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/RobloxService$IncomingHandler;-><init>(Lcom/roblox/client/RobloxService;Lcom/roblox/client/RobloxService$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/roblox/client/RobloxService;->mMessenger:Landroid/os/Messenger;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/RobloxService;->mClients:Ljava/util/ArrayList;

    .line 33
    iput-boolean v3, p0, Lcom/roblox/client/RobloxService;->mWaitForDebugger:Z

    .line 34
    iput-boolean v3, p0, Lcom/roblox/client/RobloxService;->mAlreadyWaitedForDebugger:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/RobloxService;->mCurrentPlaceId:I

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/roblox/client/RobloxService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/roblox/client/RobloxService;->mWaitForDebugger:Z

    return v0
.end method

.method static synthetic access$200(Lcom/roblox/client/RobloxService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/roblox/client/RobloxService;->mAlreadyWaitedForDebugger:Z

    return v0
.end method

.method static synthetic access$202(Lcom/roblox/client/RobloxService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/roblox/client/RobloxService;->mAlreadyWaitedForDebugger:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/roblox/client/RobloxService;->SERVICETAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/roblox/client/RobloxService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/roblox/client/RobloxService;->mClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/roblox/client/RobloxService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/RobloxService;->doNotifyBroadcast(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/roblox/client/RobloxService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/roblox/client/RobloxService;->onGlShutdown(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/roblox/client/RobloxService;)I
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;

    .prologue
    .line 17
    iget v0, p0, Lcom/roblox/client/RobloxService;->mCurrentPlaceId:I

    return v0
.end method

.method static synthetic access$702(Lcom/roblox/client/RobloxService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/RobloxService;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/roblox/client/RobloxService;->mCurrentPlaceId:I

    return p1
.end method

.method private doNotifyBroadcast(II)V
    .locals 5
    .param p1, "notification"    # I
    .param p2, "extra"    # I

    .prologue
    .line 133
    iget-object v2, p0, Lcom/roblox/client/RobloxService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/RobloxService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v3, v4, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/roblox/client/RobloxService;->SERVICETAG:Ljava/lang/String;

    const-string v3, "Notifying dead activity that did not unregister."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/roblox/client/RobloxService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private onGlShutdown(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 144
    sget-object v0, Lcom/roblox/client/RobloxService;->SERVICETAG:Ljava/lang/String;

    const-string v1, "onGlShutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/RobloxService;->mCurrentPlaceId:I

    .line 146
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string v1, "roblox_launcher_debugger_attached"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    .local v0, "launcherDebuggerAttached":Z
    if-eqz v0, :cond_0

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/roblox/client/RobloxService;->mWaitForDebugger:Z

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/roblox/client/RobloxService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    sget-object v0, Lcom/roblox/client/RobloxService;->SERVICETAG:Ljava/lang/String;

    const-string v1, "RobloxService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p0}, Lcom/roblox/client/XAPKManager;->unpackAssetsAsync(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/roblox/client/RobloxService;->SERVICETAG:Ljava/lang/String;

    const-string v1, "RobloxService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 43
    const/4 v0, 0x2

    return v0
.end method
