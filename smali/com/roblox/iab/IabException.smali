.class public Lcom/roblox/iab/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# static fields
.field private static final serialVersionUID:J = -0x4c699d003f19307fL


# instance fields
.field mResult:Lcom/roblox/iab/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/roblox/iab/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/roblox/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/roblox/iab/IabException;-><init>(Lcom/roblox/iab/IabResult;)V

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 42
    new-instance v0, Lcom/roblox/iab/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/roblox/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/roblox/iab/IabException;-><init>(Lcom/roblox/iab/IabResult;Ljava/lang/Exception;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/roblox/iab/IabResult;)V
    .locals 1
    .param p1, "r"    # Lcom/roblox/iab/IabResult;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/iab/IabException;-><init>(Lcom/roblox/iab/IabResult;Ljava/lang/Exception;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/roblox/iab/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "r"    # Lcom/roblox/iab/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/roblox/iab/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iput-object p1, p0, Lcom/roblox/iab/IabException;->mResult:Lcom/roblox/iab/IabResult;

    .line 40
    return-void
.end method


# virtual methods
.method public getResult()Lcom/roblox/iab/IabResult;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/roblox/iab/IabException;->mResult:Lcom/roblox/iab/IabResult;

    return-object v0
.end method
