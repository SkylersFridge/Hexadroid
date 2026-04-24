.class final enum Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
.super Ljava/lang/Enum;
.source "UpgradeCheckHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/UpgradeCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UpgradeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

.field public static final enum NotRequired:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

.field public static final enum Recommended:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

.field public static final enum Required:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

.field public static final enum UnKnown:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    const-string v1, "UnKnown"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->UnKnown:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    .line 20
    new-instance v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    const-string v1, "Recommended"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Recommended:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    .line 21
    new-instance v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    const-string v1, "Required"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Required:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    .line 22
    new-instance v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    const-string v1, "NotRequired"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->NotRequired:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    sget-object v1, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->UnKnown:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Recommended:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->Required:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->NotRequired:Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->$VALUES:[Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->$VALUES:[Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    invoke-virtual {v0}, [Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/UpgradeCheckHelper$UpgradeStatus;

    return-object v0
.end method
