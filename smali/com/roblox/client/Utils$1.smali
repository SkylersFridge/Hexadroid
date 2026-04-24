.class final Lcom/roblox/client/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/Utils;->setExclusiveDialog(Landroid/content/Context;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/roblox/client/Utils;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 273
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/roblox/client/Utils;->access$102(I)I

    .line 274
    return-void
.end method
