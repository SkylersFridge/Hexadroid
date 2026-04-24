.class public Lcom/roblox/client/ActivityWebView;
.super Lcom/roblox/client/RobloxActivity;
.source "ActivityWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "webview"


# instance fields
.field private mGridImageButton:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mPlaceId:Ljava/lang/String;

.field private mRobuxBalanceTextView:Landroid/widget/TextView;

.field private mRobuxLayout:Landroid/widget/LinearLayout;

.field private mUrlBar:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClientEmbedded:Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;

.field private mWebViewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/roblox/client/RobloxActivity;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mGridImageButton:Landroid/widget/ImageButton;

    .line 33
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mUrlBar:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mRobuxLayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mRobuxBalanceTextView:Landroid/widget/TextView;

    .line 38
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    .line 39
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mWebViewUrl:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mHandler:Landroid/os/Handler;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityWebView;->mIsForeground:Z

    .line 43
    iput-object v1, p0, Lcom/roblox/client/ActivityWebView;->mWebViewClientEmbedded:Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/ActivityWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/ActivityWebView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/roblox/client/ActivityWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/roblox/client/ActivityWebView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/ActivityWebView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView;->mUrlBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/roblox/client/ActivityWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/roblox/client/ActivityWebView;->mWebViewUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/roblox/client/ActivityWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/ActivityWebView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/roblox/client/ActivityWebView;->goBackToShell()V

    return-void
.end method

.method static synthetic access$500(Lcom/roblox/client/ActivityWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/ActivityWebView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/roblox/client/ActivityWebView;->mIsForeground:Z

    return v0
.end method

.method private goBackToShell()V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "roblox_back_activity"

    const-string v2, "ActivityWebView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityWebView;->startActivity(Landroid/content/Intent;)V

    .line 430
    invoke-virtual {p0}, Lcom/roblox/client/ActivityWebView;->finish()V

    .line 431
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityWebView;->setContentView(I)V

    .line 146
    const-string v2, "webview"

    const-string v3, "in WebView.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/roblox/client/ActivityWebView;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxApplication;

    .line 149
    .local v0, "app":Lcom/roblox/client/RobloxApplication;
    invoke-virtual {v0}, Lcom/roblox/client/RobloxApplication;->checkShowCriticalError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const-string v2, "webview"

    const-string v3, "Trying to create WebView after critical error."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/roblox/client/ActivityWebView;->mHandler:Landroid/os/Handler;

    .line 157
    const v2, 0x7f09003c

    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/roblox/client/ActivityWebView;->mGridImageButton:Landroid/widget/ImageButton;

    .line 158
    const v2, 0x7f09003d

    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/roblox/client/ActivityWebView;->mUrlBar:Landroid/widget/TextView;

    .line 159
    const v2, 0x7f09003f

    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/roblox/client/ActivityWebView;->mRobuxLayout:Landroid/widget/LinearLayout;

    .line 161
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/roblox/client/ActivityWebView;->mRobuxBalanceTextView:Landroid/widget/TextView;

    .line 164
    iget-object v2, p0, Lcom/roblox/client/ActivityWebView;->mGridImageButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/roblox/client/ActivityWebView$1;

    invoke-direct {v3, p0}, Lcom/roblox/client/ActivityWebView$1;-><init>(Lcom/roblox/client/ActivityWebView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v2, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;-><init>(Lcom/roblox/client/ActivityWebView;Lcom/roblox/client/ActivityWebView$1;)V

    iput-object v2, p0, Lcom/roblox/client/ActivityWebView;->mWebViewClientEmbedded:Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;

    .line 172
    const v2, 0x7f090040

    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    .line 173
    iget-object v2, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/roblox/client/ActivityWebView;->mWebViewClientEmbedded:Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 174
    iget-object v2, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 175
    iget-object v2, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 178
    iget-object v3, p0, Lcom/roblox/client/ActivityWebView;->mUrlBar:Landroid/widget/TextView;

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isInternalBuild()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-static {p0}, Lcom/roblox/client/Utils;->alertIfNetworkNotConnected(Landroid/content/Context;)Z

    .line 182
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "baseUrl":Ljava/lang/String;
    const-string v2, "http://www.hexagon.pw/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://www.hexagon.pw/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 187
    :cond_2
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->enableBreakpad()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const-string v2, "Breakpad Disabled"

    invoke-static {p0, v2}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 178
    .end local v1    # "baseUrl":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 334
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    packed-switch p1, :pswitch_data_0

    .line 350
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/roblox/client/RobloxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 338
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 346
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/roblox/client/ActivityWebView;->goBackToShell()V

    goto :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onPause()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/ActivityWebView;->mIsForeground:Z

    .line 329
    invoke-virtual {p0}, Lcom/roblox/client/ActivityWebView;->writeWebViewUrl()V

    .line 330
    return-void
.end method

.method protected onResume()V
    .locals 22

    .prologue
    .line 198
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/ActivityWebView;->getCacheDir()Ljava/io/File;

    move-result-object v18

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->exceptionReasonFilename()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 201
    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/roblox/client/Utils;->readTextFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 202
    .local v12, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 203
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->alertUnexpectedError(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 207
    .end local v12    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/roblox/client/ActivityWebView;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 208
    .local v11, "incomingIntent":Landroid/content/Intent;
    if-eqz v11, :cond_5

    const-string v18, "roblox_url"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 210
    .local v17, "url":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "isReturningFromPurchase"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 212
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->buildersClubUrl()Ljava/lang/String;

    move-result-object v17

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "isReturningFromPurchase"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    :goto_1
    const-string v18, "webview"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "=> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v18, "WebView"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/roblox/client/Utils;->sendAnalytics(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mUrlBar:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "displayedUrl":Ljava/lang/String;
    if-eqz v6, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 283
    :cond_2
    const-string v18, "WebViewScreen"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 285
    invoke-static/range {p0 .. p0}, Lcom/roblox/client/Utils;->onRateMeMaybe(Landroid/app/Activity;)V

    .line 289
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/roblox/client/ActivityWebView;->mIsForeground:Z

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/roblox/client/ActivityWebView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/roblox/client/ActivityWebView$2;-><init>(Lcom/roblox/client/ActivityWebView;)V

    const-wide/16 v20, 0x7d0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 301
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isInternalBuild()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 303
    if-eqz v11, :cond_3

    const-string v18, "forceLaunchDebug"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 305
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/games/start?placeid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "roblox_placeid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 306
    .local v16, "placeUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebViewClientEmbedded:Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 310
    .end local v16    # "placeUrl":Ljava/lang/String;
    :cond_3
    if-eqz v11, :cond_4

    const-string v18, "launchWithProtocol"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 312
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--place?id="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "roblox_placeid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 313
    .local v10, "gamesDetailsPageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 314
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "launchWithProtocol"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrl()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "games/start?placeid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "roblox_placeid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 316
    .local v15, "placeLaunchUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebViewClientEmbedded:Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/roblox/client/ActivityWebView$WebViewClientEmbedded;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 320
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "gamesDetailsPageUrl":Ljava/lang/String;
    .end local v15    # "placeLaunchUrl":Ljava/lang/String;
    :cond_4
    invoke-super/range {p0 .. p0}, Lcom/roblox/client/RobloxActivity;->onResume()V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mStoreMgr:Lcom/roblox/client/StoreManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/roblox/client/StoreManager;->handleActivityResume()V

    .line 322
    return-void

    .line 208
    .end local v6    # "displayedUrl":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 215
    .restart local v17    # "url":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "launchWithProtocol"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_7

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "launchWithProtocol"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "launchWithProtocol"

    invoke-interface/range {v18 .. v19}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 222
    :cond_7
    if-nez v17, :cond_b

    .line 224
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->useWebURLOverride()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->webViewURLOverride()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 226
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->webViewURLOverride()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/roblox/client/ActivityWebView;->mWebViewUrl:Ljava/lang/String;

    .line 262
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebViewUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 231
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    move-object/from16 v18, v0

    const-string v19, "parcel"

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "parcelString":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 236
    .local v13, "p":Landroid/os/Parcel;
    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-static {v14, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 237
    .local v4, "data":[B
    const/16 v18, 0x0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v4, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 238
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 239
    invoke-virtual {v13}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 240
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_a

    .line 245
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 247
    .local v5, "deviceBrand":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/roblox/client/ActivityWebView;->mWebViewUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v5    # "deviceBrand":Ljava/lang/String;
    :goto_3
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 253
    :cond_a
    :try_start_1
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->gamesUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/roblox/client/ActivityWebView;->mWebViewUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 255
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "data":[B
    :catch_0
    move-exception v7

    .line 256
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v18, "webview"

    const-string v19, "Error reading in WebView bundle."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    throw v18

    .line 266
    .end local v13    # "p":Landroid/os/Parcel;
    .end local v14    # "parcelString":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/roblox/client/ActivityWebView;->mWebViewUrl:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected onServiceNotification(II)V
    .locals 11
    .param p1, "notification"    # I
    .param p2, "extra"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 356
    if-ne p1, v7, :cond_1

    .line 358
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "extraStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 361
    :cond_0
    const-string v4, "webview"

    const-string v5, "Mismatched place ID %s != %s "

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v1    # "extraStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 365
    .restart local v1    # "extraStr":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 366
    .local v3, "pid":I
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    .line 368
    .local v0, "debuggerAttached":Z
    const-string v5, "webview"

    const-string v6, "Launching PlaceId:%s Pid:%d Debuger:%s"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    aput-object v4, v7, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    if-eqz v0, :cond_3

    const-string v4, "attached"

    :goto_1
    aput-object v4, v7, v10

    invoke-static {v6, v7}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/roblox/client/ActivityGlView;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    const-string v4, "roblox_placeid"

    iget-object v5, p0, Lcom/roblox/client/ActivityWebView;->mPlaceId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    const-string v4, "roblox_launcher_pid"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v4, "roblox_launcher_debugger_attached"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v4, "roblox_back_activity"

    const-string v5, "ActivityWebView"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v2}, Lcom/roblox/client/ActivityWebView;->startActivity(Landroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lcom/roblox/client/ActivityWebView;->finish()V

    goto :goto_0

    .line 368
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, "none"

    goto :goto_1
.end method

.method public onUserInfoChanged(Z)V
    .locals 4
    .param p1, "trackScreen"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 386
    iget-object v3, p0, Lcom/roblox/client/ActivityWebView;->mRobuxLayout:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/roblox/client/ActivityWebView;->mLoggedIn:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView;->mRobuxBalanceTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/roblox/client/ActivityWebView;->mRobuxBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    return-void

    :cond_0
    move v0, v2

    .line 386
    goto :goto_0
.end method

.method protected writeWebViewUrl()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 395
    iget-object v7, p0, Lcom/roblox/client/ActivityWebView;->mKeyValues:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 397
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v6, "webBundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/roblox/client/ActivityWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v6}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 401
    .local v5, "testList":Landroid/webkit/WebBackForwardList;
    if-eqz v5, :cond_0

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 404
    .local v3, "parcel":Landroid/os/Parcel;
    invoke-virtual {v6, v3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 405
    const/4 v4, 0x0

    .line 408
    .local v4, "serialized":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 409
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 410
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 411
    const-string v7, "webview"

    const-string v8, "Writing web history"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 418
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 420
    const-string v7, "parcel"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    .end local v3    # "parcel":Landroid/os/Parcel;
    .end local v4    # "serialized":Ljava/lang/String;
    :cond_0
    return-void

    .line 412
    .restart local v3    # "parcel":Landroid/os/Parcel;
    .restart local v4    # "serialized":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "webview"

    const-string v8, "Error serializing WebView bundle."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v7
.end method
