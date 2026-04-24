.class Lcom/roblox/iab/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/roblox/iab/IabHelper;ZLjava/util/List;Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/roblox/iab/IabHelper$2;->this$0:Lcom/roblox/iab/IabHelper;

    iput-boolean p2, p0, Lcom/roblox/iab/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/roblox/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/roblox/iab/IabHelper$2;->val$listener:Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/roblox/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 618
    new-instance v3, Lcom/roblox/iab/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/roblox/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 619
    .local v3, "result":Lcom/roblox/iab/IabResult;
    const/4 v1, 0x0

    .line 621
    .local v1, "inv":Lcom/roblox/iab/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/roblox/iab/IabHelper$2;->this$0:Lcom/roblox/iab/IabHelper;

    iget-boolean v6, p0, Lcom/roblox/iab/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/roblox/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/roblox/iab/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/roblox/iab/Inventory;
    :try_end_0
    .catch Lcom/roblox/iab/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 627
    :goto_0
    iget-object v5, p0, Lcom/roblox/iab/IabHelper$2;->this$0:Lcom/roblox/iab/IabHelper;

    invoke-virtual {v5}, Lcom/roblox/iab/IabHelper;->flagEndAsync()V

    .line 629
    move-object v4, v3

    .line 630
    .local v4, "result_f":Lcom/roblox/iab/IabResult;
    move-object v2, v1

    .line 631
    .local v2, "inv_f":Lcom/roblox/iab/Inventory;
    iget-object v5, p0, Lcom/roblox/iab/IabHelper$2;->this$0:Lcom/roblox/iab/IabHelper;

    iget-boolean v5, v5, Lcom/roblox/iab/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/roblox/iab/IabHelper$2;->val$listener:Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 632
    iget-object v5, p0, Lcom/roblox/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/roblox/iab/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/roblox/iab/IabHelper$2$1;-><init>(Lcom/roblox/iab/IabHelper$2;Lcom/roblox/iab/IabResult;Lcom/roblox/iab/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 638
    :cond_0
    return-void

    .line 623
    .end local v2    # "inv_f":Lcom/roblox/iab/Inventory;
    .end local v4    # "result_f":Lcom/roblox/iab/IabResult;
    :catch_0
    move-exception v0

    .line 624
    .local v0, "ex":Lcom/roblox/iab/IabException;
    invoke-virtual {v0}, Lcom/roblox/iab/IabException;->getResult()Lcom/roblox/iab/IabResult;

    move-result-object v3

    goto :goto_0
.end method
