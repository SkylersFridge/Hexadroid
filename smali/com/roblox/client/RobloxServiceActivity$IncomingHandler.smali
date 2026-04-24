.class Lcom/roblox/client/RobloxServiceActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "RobloxServiceActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RobloxServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/RobloxServiceActivity;


# direct methods
.method private constructor <init>(Lcom/roblox/client/RobloxServiceActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/roblox/client/RobloxServiceActivity$IncomingHandler;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/RobloxServiceActivity;Lcom/roblox/client/RobloxServiceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p2, "x1"    # Lcom/roblox/client/RobloxServiceActivity$1;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/roblox/client/RobloxServiceActivity$IncomingHandler;-><init>(Lcom/roblox/client/RobloxServiceActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/RobloxServiceActivity$IncomingHandler;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/RobloxServiceActivity;->onServiceNotification(II)V

    .line 65
    invoke-static {}, Lcom/roblox/client/RobloxServiceActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceNotification %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
