.class public Lcom/roblox/client/ActivityCurlTest;
.super Lcom/roblox/client/RobloxActivity;
.source "ActivityCurlTest.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "roblox.activitycurltest"

    sput-object v0, Lcom/roblox/client/ActivityCurlTest;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "curl"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    const-string v0, "roblox"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/roblox/client/RobloxActivity;-><init>()V

    return-void
.end method

.method public static native nativeGetURL(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeOnPause()V
.end method

.method public static native nativeOnResume()V
.end method

.method public static native nativeOnStart()V
.end method

.method public static native nativeOnStop()V
.end method

.method public static native nativePostAnalytics(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget-object v0, Lcom/roblox/client/ActivityCurlTest;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityCurlTest;->setContentView(I)V

    .line 28
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityCurlTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/ActivityCurlTest;->textView:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/roblox/client/ActivityCurlTest;->textView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 30
    iget-object v0, p0, Lcom/roblox/client/ActivityCurlTest;->textView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object v0, p0, Lcom/roblox/client/ActivityCurlTest;->textView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onPause()V

    .line 64
    invoke-static {}, Lcom/roblox/client/ActivityCurlTest;->nativeOnPause()V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onResume()V

    .line 58
    invoke-static {}, Lcom/roblox/client/ActivityCurlTest;->nativeOnResume()V

    .line 59
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onStart()V

    .line 48
    invoke-static {}, Lcom/roblox/client/ActivityCurlTest;->nativeOnStart()V

    .line 50
    invoke-virtual {p0}, Lcom/roblox/client/ActivityCurlTest;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "cacheDirName":Ljava/lang/String;
    sget-object v2, Lcom/roblox/client/ActivityCurlTest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheDirName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onStop()V

    .line 70
    invoke-static {}, Lcom/roblox/client/ActivityCurlTest;->nativeOnStop()V

    .line 71
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxActivity;->onTrimMemory(I)V

    .line 76
    sget-object v0, Lcom/roblox/client/ActivityCurlTest;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/roblox/client/RobloxApplication;->logTrimMemory(Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public onURLGo(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/roblox/client/ActivityCurlTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 37
    .local v2, "urlEdit":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/roblox/client/ActivityCurlTest;->textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "....\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-static {v1}, Lcom/roblox/client/ActivityCurlTest;->nativeGetURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "html":Ljava/lang/String;
    iget-object v3, p0, Lcom/roblox/client/ActivityCurlTest;->textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
