.class synthetic Lcom/roblox/client/FragmentSignUp$13;
.super Ljava/lang/Object;
.source "FragmentSignUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentSignUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$roblox$client$FragmentSignUp$Validation:[I

.field static final synthetic $SwitchMap$com$roblox$client$FragmentSignUp$ValidationOp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 432
    invoke-static {}, Lcom/roblox/client/FragmentSignUp$ValidationOp;->values()[Lcom/roblox/client/FragmentSignUp$ValidationOp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$ValidationOp:[I

    :try_start_0
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$ValidationOp:[I

    sget-object v1, Lcom/roblox/client/FragmentSignUp$ValidationOp;->USERNAME:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp$ValidationOp;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$ValidationOp:[I

    sget-object v1, Lcom/roblox/client/FragmentSignUp$ValidationOp;->PASSWORD:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp$ValidationOp;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 309
    :goto_1
    invoke-static {}, Lcom/roblox/client/FragmentSignUp$Validation;->values()[Lcom/roblox/client/FragmentSignUp$Validation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$Validation:[I

    :try_start_2
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$Validation:[I

    sget-object v1, Lcom/roblox/client/FragmentSignUp$Validation;->BLANK:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp$Validation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$Validation:[I

    sget-object v1, Lcom/roblox/client/FragmentSignUp$Validation;->VALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp$Validation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/roblox/client/FragmentSignUp$13;->$SwitchMap$com$roblox$client$FragmentSignUp$Validation:[I

    sget-object v1, Lcom/roblox/client/FragmentSignUp$Validation;->INVALID:Lcom/roblox/client/FragmentSignUp$Validation;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp$Validation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 432
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
