.class public Lcom/roblox/client/StoreManager;
.super Ljava/lang/Object;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/StoreManager$5;,
        Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;,
        Lcom/roblox/client/StoreManager$AmazonPurchasingListener;,
        Lcom/roblox/client/StoreManager$StoreManagerType;
    }
.end annotation


# static fields
.field protected static final PENDING_PURCHASE_AMAZON_RECEIPT_ID:Ljava/lang/String; = "AmazonReceiptIDForPendingAmazonPurchase"

.field protected static final PENDING_PURCHASE_AMAZON_USER_ID:Ljava/lang/String; = "AmazonUserIDForPendingAmazonPurchase"

.field protected static final PENDING_PURCHASE_ROBLOX_USER_NAME:Ljava/lang/String; = "RobloxUserNameForPendingAmazonPurchase"

.field protected static final TAG:Ljava/lang/String; = "StoreManager"

.field private static storeMgr:Lcom/roblox/client/StoreManager;


# instance fields
.field private bDebugPurchasing:Z

.field public iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

.field private mActivity:Lcom/roblox/client/RobloxServiceActivity;

.field mConsumeFinishedListener:Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;

.field private mContext:Landroid/content/Context;

.field private mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

.field mGotInventoryListener:Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;

.field private mKeyValues:Landroid/content/SharedPreferences;

.field private mPlayerPtr:J

.field private mProductId:Ljava/lang/String;

.field mPurchaseFinishedListener:Lcom/roblox/iab/IabHelper$OnIabPurchaseFinishedListener;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/StoreManager;->storeMgr:Lcom/roblox/client/StoreManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->mProductId:Ljava/lang/String;

    .line 40
    const-string v2, ""

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->mUserName:Ljava/lang/String;

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/roblox/client/StoreManager;->mPlayerPtr:J

    .line 43
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/roblox/client/StoreManager;->bDebugPurchasing:Z

    .line 51
    sget-object v2, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_UNKNOWN:Lcom/roblox/client/StoreManager$StoreManagerType;

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    .line 378
    new-instance v2, Lcom/roblox/client/StoreManager$2;

    invoke-direct {v2, p0}, Lcom/roblox/client/StoreManager$2;-><init>(Lcom/roblox/client/StoreManager;)V

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->mGotInventoryListener:Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;

    .line 448
    new-instance v2, Lcom/roblox/client/StoreManager$3;

    invoke-direct {v2, p0}, Lcom/roblox/client/StoreManager$3;-><init>(Lcom/roblox/client/StoreManager;)V

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->mPurchaseFinishedListener:Lcom/roblox/iab/IabHelper$OnIabPurchaseFinishedListener;

    .line 468
    new-instance v2, Lcom/roblox/client/StoreManager$4;

    invoke-direct {v2, p0}, Lcom/roblox/client/StoreManager$4;-><init>(Lcom/roblox/client/StoreManager;)V

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->mConsumeFinishedListener:Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;

    .line 215
    iput-object p1, p0, Lcom/roblox/client/StoreManager;->mContext:Landroid/content/Context;

    .line 216
    sget-object v2, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->mKeyValues:Landroid/content/SharedPreferences;

    .line 217
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 218
    .local v1, "deviceBrand":Ljava/lang/String;
    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/roblox/client/StoreManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;

    invoke-direct {v3, p0}, Lcom/roblox/client/StoreManager$AmazonPurchasingListener;-><init>(Lcom/roblox/client/StoreManager;)V

    invoke-static {v2, v3}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: sandbox mode is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 222
    sget-object v2, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    .line 252
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gQsTOERl7cAXlms9RMRN+XhTyE9h1oX/Wubr0x6FthR6gqktjdHOJ7ge6RR5Tbdpnv9/uhBMjk2hZOG/UktG8gxHbC0FZYdgm2T56tZrkpmodVk3+jN4gPBDIDhSPoKPIbu0dCbiTNOudL68nJVj+jRZI3nk4UDATTktWL7mzHkkt2B9BvKoA7MLJdGVhOSQzMgcTycI14em75apxWliIUDPz11L2USvIddTT+oPvRqLGe+BmIIvS5rCqdEqpLN4G0Qn6ioCw5R6I+kBy0cDY1604Vs5/FEPI+fSk48Kme+peiX+hGVlPF6ZZ9jF6yT/vAjpvn/DEEwkMMa7JnmhwIDAQAB"

    .line 228
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    new-instance v2, Lcom/roblox/iab/IabHelper;

    iget-object v3, p0, Lcom/roblox/client/StoreManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/roblox/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    .line 231
    iget-object v2, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    iget-boolean v3, p0, Lcom/roblox/client/StoreManager;->bDebugPurchasing:Z

    invoke-virtual {v2, v3}, Lcom/roblox/iab/IabHelper;->enableDebugLogging(Z)V

    .line 233
    iget-object v2, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    new-instance v3, Lcom/roblox/client/StoreManager$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/StoreManager$1;-><init>(Lcom/roblox/client/StoreManager;)V

    invoke-virtual {v2, v3}, Lcom/roblox/iab/IabHelper;->startSetup(Lcom/roblox/iab/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/roblox/client/StoreManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mKeyValues:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/roblox/client/StoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/roblox/client/StoreManager;)Lcom/roblox/client/RobloxServiceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    return-object v0
.end method

.method static synthetic access$300()Lcom/roblox/client/StoreManager;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/roblox/client/StoreManager;->storeMgr:Lcom/roblox/client/StoreManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/roblox/client/StoreManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/roblox/client/StoreManager;->mPlayerPtr:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/roblox/client/StoreManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/roblox/client/StoreManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/roblox/client/StoreManager;->resetPurchaseData()V

    return-void
.end method

.method static synthetic access$700(Lcom/roblox/client/StoreManager;)Lcom/roblox/iab/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/roblox/client/StoreManager;Lcom/roblox/iab/IabHelper;)Lcom/roblox/iab/IabHelper;
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;
    .param p1, "x1"    # Lcom/roblox/iab/IabHelper;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    return-object p1
.end method

.method static synthetic access$800(Lcom/roblox/client/StoreManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/StoreManager;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/roblox/client/StoreManager;->bDebugPurchasing:Z

    return v0
.end method

.method public static getStoreManager(Landroid/content/Context;)Lcom/roblox/client/StoreManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 255
    sget-object v0, Lcom/roblox/client/StoreManager;->storeMgr:Lcom/roblox/client/StoreManager;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/roblox/client/StoreManager;

    invoke-direct {v0, p0}, Lcom/roblox/client/StoreManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/roblox/client/StoreManager;->storeMgr:Lcom/roblox/client/StoreManager;

    .line 258
    :cond_0
    sget-object v0, Lcom/roblox/client/StoreManager;->storeMgr:Lcom/roblox/client/StoreManager;

    return-object v0
.end method

.method private internalDoInAppPurchase()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/roblox/client/StoreManager;->purchasingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_1

    .line 269
    const-string v0, "Do Google Purchase Initiate"

    invoke-virtual {p0, v0}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    iget-object v1, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    iget-object v2, p0, Lcom/roblox/client/StoreManager;->mProductId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/roblox/client/StoreManager;->mPurchaseFinishedListener:Lcom/roblox/iab/IabHelper$OnIabPurchaseFinishedListener;

    iget-object v5, p0, Lcom/roblox/client/StoreManager;->mUserName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/roblox/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 294
    :goto_1
    return v0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "RobloxUserNameForPendingAmazonPurchase"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "pendingAmazonPurchaseUserName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    const-string v0, "Do Amazon Purchase Initiate"

    invoke-virtual {p0, v0}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mProductId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    .end local v7    # "pendingAmazonPurchaseUserName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 289
    .local v6, "e":Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    const-string v1, "StoreManager IllegalStateException"

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    move v0, v8

    .line 290
    goto :goto_1

    .line 281
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "pendingAmazonPurchaseUserName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a pending Purchase with ROBLOX User Name. Please login with User Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 282
    invoke-virtual {p0}, Lcom/roblox/client/StoreManager;->grantPendingPurchases()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v7    # "pendingAmazonPurchaseUserName":Ljava/lang/String;
    :cond_3
    move v0, v8

    .line 294
    goto :goto_1
.end method

.method private resetPurchaseData()V
    .locals 3

    .prologue
    .line 300
    const-string v1, ""

    iput-object v1, p0, Lcom/roblox/client/StoreManager;->mUserName:Ljava/lang/String;

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    .line 302
    const-string v1, ""

    iput-object v1, p0, Lcom/roblox/client/StoreManager;->mProductId:Ljava/lang/String;

    .line 303
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/roblox/client/StoreManager;->mPlayerPtr:J

    .line 304
    iget-object v1, p0, Lcom/roblox/client/StoreManager;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "RobloxUserNameForPendingAmazonPurchase"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    const-string v1, "AmazonUserIDForPendingAmazonPurchase"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v1, "AmazonReceiptIDForPendingAmazonPurchase"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    invoke-virtual {v0}, Lcom/roblox/iab/IabHelper;->dispose()V

    .line 495
    :cond_0
    iput-object v1, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    .line 496
    sput-object v1, Lcom/roblox/client/StoreManager;->storeMgr:Lcom/roblox/client/StoreManager;

    .line 497
    return-void
.end method

.method public doInAppPurchaseForProduct(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1
    .param p1, "activity"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "playerPtr"    # J

    .prologue
    .line 316
    iput-object p3, p0, Lcom/roblox/client/StoreManager;->mUserName:Ljava/lang/String;

    .line 317
    iput-object p1, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    .line 318
    iput-object p2, p0, Lcom/roblox/client/StoreManager;->mProductId:Ljava/lang/String;

    .line 319
    iput-wide p4, p0, Lcom/roblox/client/StoreManager;->mPlayerPtr:J

    .line 321
    invoke-direct {p0}, Lcom/roblox/client/StoreManager;->internalDoInAppPurchase()Z

    move-result v0

    return v0
.end method

.method public doInAppPurchaseForUrl(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "activity"    # Lcom/roblox/client/RobloxServiceActivity;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p3, p0, Lcom/roblox/client/StoreManager;->mUserName:Ljava/lang/String;

    .line 343
    iput-object p1, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    .line 344
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 345
    .local v0, "uriObject":Landroid/net/Uri;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/roblox/client/StoreManager;->mProductId:Ljava/lang/String;

    .line 348
    invoke-direct {p0}, Lcom/roblox/client/StoreManager;->internalDoInAppPurchase()Z

    move-result v1

    return v1
.end method

.method public grantPendingPurchases()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_1

    .line 327
    const-string v0, "Do Amazon Purchase GrantPending"

    invoke-virtual {p0, v0}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    iget-object v1, p0, Lcom/roblox/client/StoreManager;->mGotInventoryListener:Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/roblox/iab/IabHelper;->queryInventoryAsync(Lcom/roblox/iab/IabHelper$QueryInventoryFinishedListener;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_0

    .line 332
    const-string v0, "Do Amazon Purchase GrantPending"

    invoke-virtual {p0, v0}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    goto :goto_0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v2, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/roblox/iab/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public handleActivityResume()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v0, v1, :cond_0

    .line 370
    const-string v0, "Handle Activity Resume"

    invoke-virtual {p0, v0}, Lcom/roblox/client/StoreManager;->printLogMessage(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 372
    invoke-virtual {p0}, Lcom/roblox/client/StoreManager;->grantPendingPurchases()V

    .line 374
    :cond_0
    return-void
.end method

.method printLogMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/roblox/client/StoreManager;->bDebugPurchasing:Z

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "StoreManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method purchasingEnabled()Z
    .locals 3

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/roblox/client/StoreManager;->mUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v2, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/roblox/client/StoreManager;->iabStoreType:Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v2, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    if-ne v1, v2, :cond_1

    .line 411
    :cond_0
    const/4 v0, 0x1

    .line 414
    :cond_1
    return v0
.end method

.method verifyDeveloperPayload(Lcom/roblox/iab/Purchase;Z)V
    .locals 10
    .param p1, "p"    # Lcom/roblox/iab/Purchase;
    .param p2, "isRetry"    # Z

    .prologue
    const/4 v9, 0x0

    .line 444
    new-instance v0, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;

    iget-object v1, p0, Lcom/roblox/client/StoreManager;->mActivity:Lcom/roblox/client/RobloxServiceActivity;

    iget-object v4, p0, Lcom/roblox/client/StoreManager;->mGoogleIABHelper:Lcom/roblox/iab/IabHelper;

    if-eqz p2, :cond_0

    move-object v6, v9

    :goto_0
    const-string v7, ""

    const-string v8, ""

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;-><init>(Landroid/app/Activity;Lcom/roblox/client/StoreManager;Lcom/roblox/iab/Purchase;Lcom/roblox/iab/IabHelper;ZLcom/roblox/iab/IabHelper$OnConsumeFinishedListener;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/StoreManager$AmazonPurchasingListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/StoreManager$VerifyPurchaseReceipt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 445
    return-void

    .line 444
    :cond_0
    iget-object v6, p0, Lcom/roblox/client/StoreManager;->mConsumeFinishedListener:Lcom/roblox/iab/IabHelper$OnConsumeFinishedListener;

    goto :goto_0
.end method
