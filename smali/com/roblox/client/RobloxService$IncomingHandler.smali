.class Lcom/roblox/client/RobloxService$IncomingHandler;
.super Landroid/os/Handler;
.source "RobloxService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RobloxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/RobloxService;


# direct methods
.method private constructor <init>(Lcom/roblox/client/RobloxService;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/RobloxService;Lcom/roblox/client/RobloxService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/RobloxService;
    .param p2, "x1"    # Lcom/roblox/client/RobloxService$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/roblox/client/RobloxService$IncomingHandler;-><init>(Lcom/roblox/client/RobloxService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    .line 82
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v2}, Lcom/roblox/client/RobloxService;->access$100(Lcom/roblox/client/RobloxService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v2}, Lcom/roblox/client/RobloxService;->access$200(Lcom/roblox/client/RobloxService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-static {}, Lcom/roblox/client/RobloxService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RobloxService waiting for debugger"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 86
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/roblox/client/RobloxService;->access$202(Lcom/roblox/client/RobloxService;Z)Z

    .line 89
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 126
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v2}, Lcom/roblox/client/RobloxService;->access$400(Lcom/roblox/client/RobloxService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v2}, Lcom/roblox/client/RobloxService;->access$400(Lcom/roblox/client/RobloxService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 100
    .local v1, "notification":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 101
    .local v0, "extra":I
    packed-switch v1, :pswitch_data_1

    .line 105
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v2, v1, v0}, Lcom/roblox/client/RobloxService;->access$500(Lcom/roblox/client/RobloxService;II)V

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v2, p1}, Lcom/roblox/client/RobloxService;->access$600(Lcom/roblox/client/RobloxService;Landroid/os/Message;)V

    goto :goto_0

    .line 112
    :pswitch_4
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/roblox/client/RobloxService;->access$702(Lcom/roblox/client/RobloxService;I)I

    .line 113
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    iget-object v3, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v3}, Lcom/roblox/client/RobloxService;->access$700(Lcom/roblox/client/RobloxService;)I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/roblox/client/RobloxService;->access$500(Lcom/roblox/client/RobloxService;II)V

    .line 114
    invoke-static {}, Lcom/roblox/client/RobloxService;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting CurrentPlaceId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v4}, Lcom/roblox/client/RobloxService;->access$700(Lcom/roblox/client/RobloxService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :pswitch_5
    invoke-static {}, Lcom/roblox/client/RobloxService;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending CurrentPlaceId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    iget-object v3, p0, Lcom/roblox/client/RobloxService$IncomingHandler;->this$0:Lcom/roblox/client/RobloxService;

    invoke-static {v3}, Lcom/roblox/client/RobloxService;->access$700(Lcom/roblox/client/RobloxService;)I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/roblox/client/RobloxService;->access$500(Lcom/roblox/client/RobloxService;II)V

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 101
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
