.class final enum Lcom/roblox/client/FragmentSignUp$ValidationOp;
.super Ljava/lang/Enum;
.source "FragmentSignUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentSignUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ValidationOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/FragmentSignUp$ValidationOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/roblox/client/FragmentSignUp$ValidationOp;

.field public static final enum PASSWORD:Lcom/roblox/client/FragmentSignUp$ValidationOp;

.field public static final enum USERNAME:Lcom/roblox/client/FragmentSignUp$ValidationOp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;

    const-string v1, "USERNAME"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/FragmentSignUp$ValidationOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;->USERNAME:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    new-instance v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/FragmentSignUp$ValidationOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;->PASSWORD:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/roblox/client/FragmentSignUp$ValidationOp;

    sget-object v1, Lcom/roblox/client/FragmentSignUp$ValidationOp;->USERNAME:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/FragmentSignUp$ValidationOp;->PASSWORD:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    aput-object v1, v0, v3

    sput-object v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;->$VALUES:[Lcom/roblox/client/FragmentSignUp$ValidationOp;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/FragmentSignUp$ValidationOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/FragmentSignUp$ValidationOp;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/roblox/client/FragmentSignUp$ValidationOp;->$VALUES:[Lcom/roblox/client/FragmentSignUp$ValidationOp;

    invoke-virtual {v0}, [Lcom/roblox/client/FragmentSignUp$ValidationOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/FragmentSignUp$ValidationOp;

    return-object v0
.end method
