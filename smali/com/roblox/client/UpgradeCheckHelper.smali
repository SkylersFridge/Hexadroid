.class public Lcom/roblox/client/UpgradeCheckHelper;
.super Ljava/lang/Object;
.source "UpgradeCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;,
        Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeCheckHelper"

.field private static mActivity:Lcom/roblox/client/RobloxActivity;

.field private static upgradeStatus:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/UpgradeCheckHelper;->mActivity:Lcom/roblox/client/RobloxActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$000()Lcom/roblox/client/RobloxActivity;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/roblox/client/UpgradeCheckHelper;->mActivity:Lcom/roblox/client/RobloxActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;)Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    .prologue
    .line 13
    sput-object p0, Lcom/roblox/client/UpgradeCheckHelper;->upgradeStatus:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    return-object p0
.end method

.method public static checkForUpdate()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->UnKnown:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    sput-object v0, Lcom/roblox/client/UpgradeCheckHelper;->upgradeStatus:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    .line 31
    new-instance v0, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;

    invoke-direct {v0}, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/roblox/client/UpgradeCheckHelper$ForceUpgradeCheck;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    return-void
.end method

.method public static showUpdateDialogIfRequired(Lcom/roblox/client/RobloxActivity;)Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    .locals 3
    .param p0, "activity"    # Lcom/roblox/client/RobloxActivity;

    .prologue
    const v2, 0x7f0b007c

    .line 36
    sget-object v0, Lcom/roblox/client/UpgradeCheckHelper;->upgradeStatus:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    sget-object v1, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Required:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    if-ne v0, v1, :cond_1

    .line 38
    sput-object p0, Lcom/roblox/client/UpgradeCheckHelper;->mActivity:Lcom/roblox/client/RobloxActivity;

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "ROBLOX Upgrade"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Upgrade"

    new-instance v2, Lcom/roblox/client/UpgradeCheckHelper$1;

    invoke-direct {v2}, Lcom/roblox/client/UpgradeCheckHelper$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    :cond_0
    :goto_0
    sget-object v0, Lcom/roblox/client/UpgradeCheckHelper;->upgradeStatus:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    return-object v0

    .line 56
    :cond_1
    sget-object v0, Lcom/roblox/client/UpgradeCheckHelper;->upgradeStatus:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    sget-object v1, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Recommended:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    if-ne v0, v1, :cond_0

    .line 58
    sput-object p0, Lcom/roblox/client/UpgradeCheckHelper;->mActivity:Lcom/roblox/client/RobloxActivity;

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "ROBLOX Upgrade"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Upgrade"

    new-instance v2, Lcom/roblox/client/UpgradeCheckHelper$3;

    invoke-direct {v2}, Lcom/roblox/client/UpgradeCheckHelper$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Not Now"

    new-instance v2, Lcom/roblox/client/UpgradeCheckHelper$2;

    invoke-direct {v2}, Lcom/roblox/client/UpgradeCheckHelper$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
