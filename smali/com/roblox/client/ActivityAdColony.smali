.class public Lcom/roblox/client/ActivityAdColony;
.super Lcom/roblox/client/RobloxActivity;
.source "ActivityAdColony.java"

# interfaces
.implements Lcom/jirbo/adcolony/AdColonyAdListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/roblox/client/RobloxActivity;-><init>()V

    return-void
.end method

.method private showVideoAd()V
    .locals 2

    .prologue
    .line 37
    new-instance v1, Lcom/jirbo/adcolony/AdColonyVideoAd;

    invoke-direct {v1}, Lcom/jirbo/adcolony/AdColonyVideoAd;-><init>()V

    invoke-virtual {v1, p0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->withListener(Lcom/jirbo/adcolony/AdColonyAdListener;)Lcom/jirbo/adcolony/AdColonyVideoAd;

    move-result-object v0

    .line 38
    .local v0, "ad":Lcom/jirbo/adcolony/AdColonyVideoAd;
    invoke-virtual {v0}, Lcom/jirbo/adcolony/AdColonyVideoAd;->show()V

    .line 39
    return-void
.end method


# virtual methods
.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/roblox/client/ActivityAdColony;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "shown"

    invoke-virtual {p1}, Lcom/jirbo/adcolony/AdColonyAd;->shown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/ActivityAdColony;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/roblox/client/ActivityAdColony;->finish()V

    .line 52
    return-void
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onPause()V

    .line 33
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->pause()V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/roblox/client/RobloxActivity;->onResume()V

    .line 24
    invoke-static {p0}, Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V

    .line 26
    invoke-direct {p0}, Lcom/roblox/client/ActivityAdColony;->showVideoAd()V

    .line 27
    return-void
.end method
