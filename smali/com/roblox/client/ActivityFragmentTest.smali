.class public Lcom/roblox/client/ActivityFragmentTest;
.super Lcom/roblox/client/RobloxActivity;
.source "ActivityFragmentTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/roblox/client/RobloxActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/roblox/client/RobloxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/roblox/client/ActivityFragmentTest;->setContentView(I)V

    .line 12
    return-void
.end method
