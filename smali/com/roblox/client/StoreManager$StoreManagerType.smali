.class final enum Lcom/roblox/client/StoreManager$StoreManagerType;
.super Ljava/lang/Enum;
.source "StoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/StoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StoreManagerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/StoreManager$StoreManagerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/roblox/client/StoreManager$StoreManagerType;

.field public static final enum IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

.field public static final enum IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

.field public static final enum IAB_NONE:Lcom/roblox/client/StoreManager$StoreManagerType;

.field public static final enum IAB_UNKNOWN:Lcom/roblox/client/StoreManager$StoreManagerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/roblox/client/StoreManager$StoreManagerType;

    const-string v1, "IAB_GOOGLE"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/StoreManager$StoreManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    .line 47
    new-instance v0, Lcom/roblox/client/StoreManager$StoreManagerType;

    const-string v1, "IAB_AMAZON"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/StoreManager$StoreManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    .line 48
    new-instance v0, Lcom/roblox/client/StoreManager$StoreManagerType;

    const-string v1, "IAB_NONE"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/StoreManager$StoreManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_NONE:Lcom/roblox/client/StoreManager$StoreManagerType;

    .line 49
    new-instance v0, Lcom/roblox/client/StoreManager$StoreManagerType;

    const-string v1, "IAB_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/StoreManager$StoreManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_UNKNOWN:Lcom/roblox/client/StoreManager$StoreManagerType;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/roblox/client/StoreManager$StoreManagerType;

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_GOOGLE:Lcom/roblox/client/StoreManager$StoreManagerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_AMAZON:Lcom/roblox/client/StoreManager$StoreManagerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_NONE:Lcom/roblox/client/StoreManager$StoreManagerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/StoreManager$StoreManagerType;->IAB_UNKNOWN:Lcom/roblox/client/StoreManager$StoreManagerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/roblox/client/StoreManager$StoreManagerType;->$VALUES:[Lcom/roblox/client/StoreManager$StoreManagerType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/StoreManager$StoreManagerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/roblox/client/StoreManager$StoreManagerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/StoreManager$StoreManagerType;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/StoreManager$StoreManagerType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/roblox/client/StoreManager$StoreManagerType;->$VALUES:[Lcom/roblox/client/StoreManager$StoreManagerType;

    invoke-virtual {v0}, [Lcom/roblox/client/StoreManager$StoreManagerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/StoreManager$StoreManagerType;

    return-object v0
.end method
