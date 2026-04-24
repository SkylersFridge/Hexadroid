.class final Lcom/jirbo/adcolony/AdColony$2;
.super Ljava/lang/Object;
.source "AdColony.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColony;->resume(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColony$2;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColony$2;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColony$2;->val$a:Landroid/app/Activity;

    new-instance v1, Lcom/jirbo/adcolony/AdColony$2$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/AdColony$2$1;-><init>(Lcom/jirbo/adcolony/AdColony$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method
