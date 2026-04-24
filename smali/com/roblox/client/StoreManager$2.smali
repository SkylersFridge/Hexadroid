.class Lcom/roblox/client/StoreManager$2;
.super Ljava/lang/Object;
.source "StoreManager.java"

# interfaces
.implements Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;


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
    .line 378
    iput-object p1, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/roblox/iab/IabResult;Lcom/roblox/iab/Inventory;)V
    .locals 6
    .param p1, "result"    # Lcom/roblox/iab/IabResult;
    .param p2, "inventory"    # Lcom/roblox/iab/Inventory;

    .prologue
    .line 380
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    const-string v4, "Query inventory finished."

    invoke-virtual {v3, v4}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$700(Lcom/roblox/client/StoreManager;)Lcom/roblox/iab/IabHelper;

    move-result-object v3

    if-nez v3, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Lcom/roblox/iab/IabResult;->isFailure()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query inventory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    const-string v4, "Query inventory was successful."

    invoke-virtual {v3, v4}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Lcom/roblox/iab/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v2

    .line 394
    .local v2, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/roblox/iab/Purchase;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/roblox/iab/Purchase;>;"
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/roblox/iab/Purchase;

    .line 397
    .local v1, "purchase":Lcom/roblox/iab/Purchase;
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/roblox/iab/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 398
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/roblox/client/StoreManager;->verifyDeveloperPayload(Lcom/roblox/iab/Purchase;Z)V

    goto :goto_1

    .line 401
    .end local v1    # "purchase":Lcom/roblox/iab/Purchase;
    :cond_4
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$800(Lcom/roblox/client/StoreManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/roblox/client/StoreManager$2;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$700(Lcom/roblox/client/StoreManager;)Lcom/roblox/iab/IabHelper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/roblox/iab/IabHelper;->consumeAsync(Ljava/util/List;Lcom/roblox/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    goto :goto_0
.end method
