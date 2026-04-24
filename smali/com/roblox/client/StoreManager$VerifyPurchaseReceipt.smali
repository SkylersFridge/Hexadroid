.class Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;
.super Landroid/os/AsyncTask;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/StoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifyPurchaseReceipt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mAmazonListener:Lcom/roblox/client/StoreManager$AmazonPurchasingListener;

.field mAmazonReceiptId:Ljava/lang/String;

.field mAmazonUserId:Ljava/lang/String;

.field mConsumeFinishListener:Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;

.field mInAppBillingHelper:Lcom/roblox/iab/IabHelper;

.field mIsRetry:Z

.field mPurchase:Lcom/roblox/iab/Purchase;

.field mResponse:Ljava/lang/String;

.field mRobloxActivity:Landroid/app/Activity;

.field mStatus:Ljava/lang/String;

.field mStoreMgr:Lcom/roblox/client/StoreManager;

.field upgradeCheckUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/roblox/client/StoreManager;Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabHelper;ZLcom/roblox/iab/IabHelper$OnConsumeFinishedListener;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/StoreManager$AmazonPurchasingListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mgr"    # Lcom/roblox/client/StoreManager;
    .param p3, "p"    # Lcom/roblox/iab/Purchase;
    .param p4, "h"    # Lcom/roblox/iab/IabHelper;
    .param p5, "isRetry"    # Z
    .param p6, "listener"    # Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;
    .param p7, "amazonReceiptId"    # Ljava/lang/String;
    .param p8, "amazonUserId"    # Ljava/lang/String;
    .param p9, "amazonListener"    # Lcom/roblox/client/StoreManager$AmazonPurchasingListener;

    .prologue
    const/4 v1, 0x0

    .line 519
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 503
    iput-object v1, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    .line 505
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->upgradeCheckUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->upgradeCheckUrl:Ljava/lang/String;

    .line 506
    iput-object v1, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mRobloxActivity:Landroid/app/Activity;

    .line 520
    iput-object p1, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mRobloxActivity:Landroid/app/Activity;

    .line 521
    iput-object p3, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mPurchase:Lcom/roblox/iab/Purchase;

    .line 522
    iput-object p4, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mInAppBillingHelper:Lcom/roblox/iab/IabHelper;

    .line 523
    iput-object p6, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mConsumeFinishListener:Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;

    .line 524
    iput-object p2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mStoreMgr:Lcom/roblox/client/StoreManager;

    .line 525
    iput-boolean p5, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mIsRetry:Z

    .line 526
    iput-object p7, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonReceiptId:Ljava/lang/String;

    .line 527
    iput-object p8, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonUserId:Ljava/lang/String;

    .line 528
    iput-object p9, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonListener:Lcom/roblox/client/StoreManager$AmazonPurchasingListener;

    .line 530
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 501
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "uri"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 535
    iget-boolean v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mIsRetry:Z

    if-eqz v2, :cond_1

    const-string v0, "true"

    .line 538
    .local v0, "retry":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mStoreMgr:Lcom/roblox/client/StoreManager;

    iget-object v2, v2, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v3, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v2, v3, :cond_2

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->verifyPurchaseReceiptUrlForGoogle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mPurchase:Lcom/roblox/iab/Purchase;

    invoke-virtual {v3}, Lcom/roblox/iab/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&productId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mPurchase:Lcom/roblox/iab/Purchase;

    invoke-virtual {v3}, Lcom/roblox/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&orderId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mPurchase:Lcom/roblox/iab/Purchase;

    invoke-virtual {v3}, Lcom/roblox/iab/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&isRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mPurchase:Lcom/roblox/iab/Purchase;

    invoke-virtual {v3}, Lcom/roblox/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "urlVerify":Ljava/lang/String;
    :goto_1
    const-string v2, ""

    invoke-static {v1, v2, v4}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    .line 559
    .end local v1    # "urlVerify":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 535
    .end local v0    # "retry":Ljava/lang/String;
    :cond_1
    const-string v0, "false"

    goto :goto_0

    .line 547
    .restart local v0    # "retry":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mStoreMgr:Lcom/roblox/client/StoreManager;

    iget-object v2, v2, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v3, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v2, v3, :cond_0

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->verifyPurchaseReceiptUrlForAmazon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "receiptId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonReceiptId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&amazonUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&isRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "urlVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 501
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 564
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mRobloxActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    .line 569
    const-string v0, "StoreManager"

    const-string v1, "Response NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mRobloxActivity:Landroid/app/Activity;

    check-cast v0, Lcom/roblox/client/RobloxServiceActivity;

    const-string v1, "StoreManager"

    const-string v2, "PurchaseOK"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "StoreManager"

    const-string v1, "Receipt Verification Successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mStoreMgr:Lcom/roblox/client/StoreManager;

    iget-object v0, v0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_2

    .line 579
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mInAppBillingHelper:Lcom/roblox/iab/IabHelper;

    iget-object v1, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mPurchase:Lcom/roblox/iab/Purchase;

    iget-object v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mConsumeFinishListener:Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/iab/IabHelper;->consumeAsync(Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mStoreMgr:Lcom/roblox/client/StoreManager;

    iget-object v0, v0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonListener:Lcom/roblox/client/StoreManager$AmazonPurchasingListener;

    iget-object v1, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonReceiptId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mIsRetry:Z

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->consumePurchase(Ljava/lang/String;Z)V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 587
    :cond_4
    const-string v0, "StoreManager"

    const-string v1, "ROBLOX Billing service is down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mRobloxActivity:Landroid/app/Activity;

    check-cast v0, Lcom/roblox/client/RobloxServiceActivity;

    const-string v1, "StoreManager"

    const-string v2, "PurchaseFailedDueToBillingServiceFailed"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_5
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    const-string v1, "Bogus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mResponse:Ljava/lang/String;

    const-string v1, "bogus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    :cond_6
    const-string v0, "StoreManager"

    const-string v1, "Bogus Amazon Receipt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mRobloxActivity:Landroid/app/Activity;

    check-cast v0, Lcom/roblox/client/RobloxServiceActivity;

    const-string v1, "StoreManager"

    const-string v2, "BogusAmazonReceiptDetected"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mStoreMgr:Lcom/roblox/client/StoreManager;

    iget-object v0, v0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_7

    .line 604
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mInAppBillingHelper:Lcom/roblox/iab/IabHelper;

    iget-object v1, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mPurchase:Lcom/roblox/iab/Purchase;

    iget-object v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mConsumeFinishListener:Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/iab/IabHelper;->consumeAsync(Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;)V

    goto/16 :goto_0

    .line 605
    :cond_7
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mStoreMgr:Lcom/roblox/client/StoreManager;

    iget-object v0, v0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mAmazonListener:Lcom/roblox/client/StoreManager$AmazonPurchasingListener;

    const-string v1, ""

    iget-boolean v2, p0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->mIsRetry:Z

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;->consumePurchase(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
