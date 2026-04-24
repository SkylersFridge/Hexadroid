.class Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;
.super Landroid/webkit/WebViewClient;
.source "ActivityWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ActivityWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewClientEmbedded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityWebView;


# direct methods
.method private constructor <init>(Lcom/roblox/client/ActivityWebView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/ActivityWebView;Lcom/roblox/client/ActivityWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/ActivityWebView;
    .param p2, "x1"    # Lcom/roblox/client/ActivityWebView$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;-><init>(Lcom/roblox/client/ActivityWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 50
    const-string v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v5}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v9

    .line 57
    :cond_1
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-virtual {v5}, Lcom/roblox/client/ActivityWebView;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxApplication;

    .line 58
    .local v0, "app":Lcom/roblox/client/RobloxApplication;
    invoke-virtual {v0}, Lcom/roblox/client/RobloxApplication;->checkShowCriticalError()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    const-string v5, "webview"

    const-string v6, "Trying to use WebView after critical error."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "WebView"

    invoke-static {v5, v6, p2}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v5, "/games/start?"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v8, :cond_6

    .line 68
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->deviceNotSupportedString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 71
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->deviceNotSupportedSkippable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 73
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const v6, 0x7f0b007a

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v2, v7, v10

    invoke-static {v5, v6, v7}, Lcom/roblox/client/Utils;->alertExclusivelyFormatted(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 79
    .local v4, "uriObject":Landroid/net/Uri;
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "placeid"

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/roblox/client/ActivityWebView;->access$002(Lcom/roblox/client/ActivityWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v5}, Lcom/roblox/client/ActivityWebView;->access$000(Lcom/roblox/client/ActivityWebView;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 82
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "userID"

    invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/roblox/client/ActivityWebView;->access$002(Lcom/roblox/client/ActivityWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v5}, Lcom/roblox/client/ActivityWebView;->access$000(Lcom/roblox/client/ActivityWebView;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 85
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "Missing placeid or userID"

    invoke-static {v5, v6}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 94
    :cond_4
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v7}, Lcom/roblox/client/ActivityWebView;->access$000(Lcom/roblox/client/ActivityWebView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/roblox/client/ActivityWebView;->access$002(Lcom/roblox/client/ActivityWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    :cond_5
    const-string v5, "webview"

    const-string v6, "Signalling Service PlaceId:%s"

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v8}, Lcom/roblox/client/ActivityWebView;->access$000(Lcom/roblox/client/ActivityWebView;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v5}, Lcom/roblox/client/UpgradeCheckHelper;->showUpdateDialogIfRequired(Lcom/roblox/client/RobloxActivity;)Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    move-result-object v3

    .line 101
    .local v3, "status":Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    sget-object v5, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Recommended:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Required:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    if-eq v3, v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v7}, Lcom/roblox/client/ActivityWebView;->access$000(Lcom/roblox/client/ActivityWebView;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/roblox/client/ActivityWebView;->doNotifyService(II)V

    .line 105
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-virtual {v5}, Lcom/roblox/client/ActivityWebView;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/roblox/client/HttpAgent;->flushToDisk(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "status":Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    .end local v4    # "uriObject":Landroid/net/Uri;
    :cond_6
    const-string v5, "mobile-app-upgrades/buy?"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v8, :cond_8

    .line 113
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    iget-object v5, v5, Lcom/roblox/client/ActivityWebView;->mStoreMgr:Lcom/roblox/client/StoreManager;

    if-nez v5, :cond_7

    .line 115
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "Please upgrade your Android Version to allow Purchasing"

    invoke-static {v5, v6}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 116
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "WebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PurchaseFailedDueToOldAndroidVersion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_7
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    iget-object v5, v5, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 121
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    iget-object v5, v5, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "isReturningFromPurchase"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    iget-object v5, v5, Lcom/roblox/client/ActivityWebView;->mStoreMgr:Lcom/roblox/client/StoreManager;

    iget-object v6, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    iget-object v7, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    iget-object v7, v7, Lcom/roblox/client/ActivityWebView;->mUsername:Ljava/lang/String;

    invoke-virtual {v5, v6, p2, v7}, Lcom/roblox/client/StoreManager;->doInAppPurchaseForUrl(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 125
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "Please setup Google Play Store to make purchases."

    invoke-static {v5, v6}, Lcom/roblox/client/Utils;->alertExclusively(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 126
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    const-string v6, "StoreManager"

    const-string v7, "PurchaseFailedDueToGooglePlayStoreNotSetup"

    invoke-static {v5, v6, v7}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_8
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v5}, Lcom/roblox/client/ActivityWebView;->access$100(Lcom/roblox/client/ActivityWebView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v5, p2}, Lcom/roblox/client/ActivityWebView;->access$202(Lcom/roblox/client/ActivityWebView;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
