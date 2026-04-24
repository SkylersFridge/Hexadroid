.class Lcom/roblox/client/RobloxServiceActivity$1;
.super Ljava/lang/Object;
.source "RobloxServiceActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RobloxServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/RobloxServiceActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/RobloxServiceActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/roblox/client/RobloxServiceActivity$1;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 76
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity$1;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v2, v3}, Lcom/roblox/client/RobloxServiceActivity;->access$202(Lcom/roblox/client/RobloxServiceActivity;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 80
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity$1;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    invoke-static {v2}, Lcom/roblox/client/RobloxServiceActivity;->access$300(Lcom/roblox/client/RobloxServiceActivity;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 81
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity$1;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    invoke-static {v2}, Lcom/roblox/client/RobloxServiceActivity;->access$200(Lcom/roblox/client/RobloxServiceActivity;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 82
    invoke-static {}, Lcom/roblox/client/RobloxServiceActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RobloxServiceActivity.onServiceConnected success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity$1;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/roblox/client/RobloxServiceActivity;->doNotifyService(II)V

    .line 86
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity$1;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    invoke-virtual {v2}, Lcom/roblox/client/RobloxServiceActivity;->onServiceConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/RobloxServiceActivity$1;->this$0:Lcom/roblox/client/RobloxServiceActivity;

    invoke-static {v2}, Lcom/roblox/client/RobloxServiceActivity;->access$406(Lcom/roblox/client/RobloxServiceActivity;)I

    .line 92
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/roblox/client/RobloxServiceActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RobloxServiceActivity.onServiceConnected failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    invoke-static {}, Lcom/roblox/client/RobloxServiceActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RobloxServiceActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
