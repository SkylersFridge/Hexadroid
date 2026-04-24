.class Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;
.super Landroid/os/Handler;
.source "ADC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "V4VCResultsHandler"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 366
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 367
    .local v2, "name":Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->what:I

    .line 369
    .local v0, "amount":I
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 370
    .local v4, "success":Z
    :goto_0
    if-nez v4, :cond_0

    const-string v2, ""

    .line 372
    :cond_0
    new-instance v3, Lcom/jirbo/adcolony/AdColonyV4VCReward;

    invoke-direct {v3, v4, v2, v0}, Lcom/jirbo/adcolony/AdColonyV4VCReward;-><init>(ZLjava/lang/String;I)V

    .line 373
    .local v3, "reward":Lcom/jirbo/adcolony/AdColonyV4VCReward;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v5, Lcom/jirbo/adcolony/ADC;->v4vc_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 375
    sget-object v5, Lcom/jirbo/adcolony/ADC;->v4vc_listener_list:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jirbo/adcolony/AdColonyV4VCListener;

    invoke-interface {v5, v3}, Lcom/jirbo/adcolony/AdColonyV4VCListener;->onAdColonyV4VCReward(Lcom/jirbo/adcolony/AdColonyV4VCReward;)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    .end local v1    # "i":I
    .end local v3    # "reward":Lcom/jirbo/adcolony/AdColonyV4VCReward;
    .end local v4    # "success":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 377
    .restart local v1    # "i":I
    .restart local v3    # "reward":Lcom/jirbo/adcolony/AdColonyV4VCReward;
    .restart local v4    # "success":Z
    :cond_2
    return-void
.end method

.method public notify_listeners(ZLjava/lang/String;I)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "v4vc_name"    # Ljava/lang/String;
    .param p3, "amount"    # I

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .end local p2    # "v4vc_name":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADC$V4VCResultsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    return-void

    .line 381
    .restart local p2    # "v4vc_name":Ljava/lang/String;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method
