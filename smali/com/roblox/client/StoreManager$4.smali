.class Lcom/roblox/client/StoreManager$4;
.super Ljava/lang/Object;
.source "StoreManager.java"

# interfaces
.implements Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/StoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/StoreManager;


# direct methods
.method constructor <init>(Lcom/roblox/client/StoreManager;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabResult;)V
    .locals 4
    .param p1, "purchase"    # Lcom/roblox/iab/Purchase;
    .param p2, "result"    # Lcom/roblox/iab/IabResult;

    .prologue
    .line 470
    iget-object v0, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consumption finished. Purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$700(Lcom/roblox/client/StoreManager;)Lcom/roblox/iab/IabHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-virtual {p2}, Lcom/roblox/iab/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$200(Lcom/roblox/client/StoreManager;)Lcom/roblox/client/RobloxServiceActivity;

    move-result-object v0

    const-string v1, "Purchase successful, your product will be delivered shortly."

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 477
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$400(Lcom/roblox/client/StoreManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$500(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/ActivityGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    .line 484
    :goto_1
    iget-object v0, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$600(Lcom/roblox/client/StoreManager;)V

    .line 486
    iget-object v0, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    const-string v1, "End consumption flow."

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$200(Lcom/roblox/client/StoreManager;)Lcom/roblox/client/RobloxServiceActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while purchasing. Receipt verification failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 481
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$400(Lcom/roblox/client/StoreManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/roblox/client/StoreManager$4;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$500(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/ActivityGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    goto :goto_1
.end method
