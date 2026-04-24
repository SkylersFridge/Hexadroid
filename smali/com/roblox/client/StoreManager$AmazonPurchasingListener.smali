.class public Lcom/roblox/client/StoreManager$AmazonPurchasingListener;
.super Ljava/lang/Object;
.source "StoreManager.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/StoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmazonPurchasingListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmazonPurchasingListener"


# instance fields
.field private currentMarketplace:Ljava/lang/String;

.field private currentUserId:Ljava/lang/String;

.field private rvsProductionMode:Z

.field final synthetic this$0:Lcom/roblox/client/StoreManager;


# direct methods
.method public constructor <init>(Lcom/roblox/client/StoreManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    iput-object p1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->currentUserId:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->currentMarketplace:Ljava/lang/String;

    .line 65
    iput-boolean v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->rvsProductionMode:Z

    .line 68
    sget-boolean v1, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->rvsProductionMode:Z

    .line 69
    sget-object v0, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    iput-object v0, p1, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    .line 70
    return-void
.end method


# virtual methods
.method public consumePurchase(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "receiptId"    # Ljava/lang/String;
    .param p2, "isRetry"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consuming Receipt: receiptID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fulfilled: receiptID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {p1, v0}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 201
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$200(Lcom/roblox/client/StoreManager;)Lcom/roblox/client/RobloxServiceActivity;

    move-result-object v0

    const-string v1, "Purchase successful, your product will be delivered shortly."

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 202
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$400(Lcom/roblox/client/StoreManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$500(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/ActivityGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$600(Lcom/roblox/client/StoreManager;)V

    .line 208
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    const-string v1, "End consumption flow."

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 209
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$400(Lcom/roblox/client/StoreManager;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v3}, Lcom/roblox/client/StoreManager;->access$500(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/ActivityGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    goto :goto_0
.end method

.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 10
    .param p1, "response"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .prologue
    .line 95
    sget-object v5, Lcom/roblox/client/StoreManager$5;->$SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    .local v4, "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unavailable SKU:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v3

    .line 104
    .local v3, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/iap/model/Product;

    .line 107
    .local v2, "product":Lcom/amazon/device/iap/model/Product;
    iget-object v5, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    const-string v6, "Product: %s\n Type: %s\n SKU: %s\n Price: %s\n Description: %s\n"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getTitle()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getPrice()Lcom/amazon/device/iap/model/Price;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 112
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "product":Lcom/amazon/device/iap/model/Product;
    .end local v3    # "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    :pswitch_1
    iget-object v5, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    const-string v6, "ProductDataRequestStatus: FAILED"

    invoke-virtual {v5, v6}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 13
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 171
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v12

    .line 173
    .local v12, "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    sget-object v0, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v12, v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v11

    .line 176
    .local v11, "receipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual {v11}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v7

    .line 177
    .local v7, "receiptId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "userId":Ljava/lang/String;
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$000(Lcom/roblox/client/StoreManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 181
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "RobloxUserNameForPendingAmazonPurchase"

    iget-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Fresh Receipt for verification: receiptID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "userID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;

    iget-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$200(Lcom/roblox/client/StoreManager;)Lcom/roblox/client/RobloxServiceActivity;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/StoreManager;->access$300()Lcom/roblox/client/StoreManager;

    move-result-object v2

    move-object v4, v3

    move-object v6, v3

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;-><init>(Landroid/app/Activity;Lcom/roblox/client/StoreManager;Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabHelper;ZLcom/roblox/iab/IabHelper$OnConsumeFinishedListener;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/StoreManager$AmazonPurchasingListener;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    .end local v7    # "receiptId":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/String;
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v0}, Lcom/roblox/client/StoreManager;->access$400(Lcom/roblox/client/StoreManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v2}, Lcom/roblox/client/StoreManager;->access$500(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v1, v2}, Lcom/roblox/client/ActivityGlView;->inGamePurchaseFinished(ZJLjava/lang/String;)V

    goto :goto_0
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 24
    .param p1, "response"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    const-string v2, "Purchase Update Response"

    invoke-virtual {v1, v2}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$000(Lcom/roblox/client/StoreManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "RobloxUserNameForPendingAmazonPurchase"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 121
    .local v22, "pendingAmazonPurchaseRobloxUserName":Ljava/lang/String;
    sget-object v1, Lcom/roblox/client/StoreManager$5;->$SwitchMap$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$000(Lcom/roblox/client/StoreManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "AmazonUserIDForPendingAmazonPurchase"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, "pendingAmazonPurchaseUserID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$000(Lcom/roblox/client/StoreManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "AmazonReceiptIDForPendingAmazonPurchase"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 161
    .local v17, "pendingAmazonPurchaseReceiptID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Retry Receipt for verification: receiptID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "userID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 165
    new-instance v10, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$200(Lcom/roblox/client/StoreManager;)Lcom/roblox/client/RobloxServiceActivity;

    move-result-object v11

    invoke-static {}, Lcom/roblox/client/StoreManager;->access$300()Lcom/roblox/client/StoreManager;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v10 .. v19}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;-><init>(Landroid/app/Activity;Lcom/roblox/client/StoreManager;Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabHelper;ZLcom/roblox/iab/IabHelper$OnConsumeFinishedListener;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/StoreManager$AmazonPurchasingListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v10, v1}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    .end local v17    # "pendingAmazonPurchaseReceiptID":Ljava/lang/String;
    .end local v18    # "pendingAmazonPurchaseUserID":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/amazon/device/iap/model/Receipt;

    .line 127
    .local v23, "receipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual/range {v23 .. v23}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, "receiptId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amazon: receiptID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "userID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending Retry Receipt for verification: receiptID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "userID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v2}, Lcom/roblox/client/StoreManager;->access$200(Lcom/roblox/client/StoreManager;)Lcom/roblox/client/RobloxServiceActivity;

    move-result-object v2

    invoke-static {}, Lcom/roblox/client/StoreManager;->access$300()Lcom/roblox/client/StoreManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v1 .. v10}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;-><init>(Landroid/app/Activity;Lcom/roblox/client/StoreManager;Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabHelper;ZLcom/roblox/iab/IabHelper$OnConsumeFinishedListener;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/StoreManager$AmazonPurchasingListener;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 139
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    invoke-static {v1}, Lcom/roblox/client/StoreManager;->access$000(Lcom/roblox/client/StoreManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 140
    .local v20, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AmazonUserIDForPendingAmazonPurchase"

    move-object/from16 v0, v20

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v1, "AmazonReceiptIDForPendingAmazonPurchase"

    move-object/from16 v0, v20

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 150
    .end local v8    # "receiptId":Ljava/lang/String;
    .end local v9    # "userId":Ljava/lang/String;
    .end local v20    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v23    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    const-string v2, "On Purchase Update Response Status Failed"

    invoke-virtual {v1, v2}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v0

    .line 76
    .local v0, "status":Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;
    sget-object v1, Lcom/roblox/client/StoreManager$5;->$SwitchMap$com$amazon$device$iap$model$UserDataResponse$RequestStatus:[I

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->currentUserId:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->currentMarketplace:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    sget-object v2, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    iput-object v2, v1, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v1, p0, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->this$0:Lcom/roblox/client/StoreManager;

    sget-object v2, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_NONE:Lcom/roblox/client/StoreManager$StoreManagerType;

    iput-object v2, v1, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
