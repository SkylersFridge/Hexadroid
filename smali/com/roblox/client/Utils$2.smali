.class final Lcom/roblox/client/Utils$2;
.super Landroid/text/style/ClickableSpan;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/Utils;->makeTextViewHtml(Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$urlFinal:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/text/style/URLSpan;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/roblox/client/Utils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/roblox/client/Utils$2;->val$urlFinal:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 479
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/roblox/client/Utils$2;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/roblox/client/ActivityWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "roblox_url"

    iget-object v2, p0, Lcom/roblox/client/Utils$2;->val$urlFinal:Landroid/text/style/URLSpan;

    invoke-virtual {v2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/roblox/client/Utils$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 482
    return-void
.end method
