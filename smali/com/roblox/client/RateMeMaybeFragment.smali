.class public Lcom/roblox/client/RateMeMaybeFragment;
.super Landroid/app/DialogFragment;
.source "RateMeMaybeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;
    }
.end annotation


# instance fields
.field private customIcon:I

.field private mInterface:Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;

.field private message:Ljava/lang/String;

.field private negativeBtn:Ljava/lang/String;

.field private neutralBtn:Ljava/lang/String;

.field private positiveBtn:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybeFragment;->mInterface:Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;

    invoke-interface {v0}, Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;->_handleCancel()V

    .line 77
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "choice"    # I

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybeFragment;->mInterface:Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;

    invoke-interface {v0}, Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;->_handlePositiveChoice()V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybeFragment;->mInterface:Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;

    invoke-interface {v0}, Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;->_handleNeutralChoice()V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lcom/roblox/client/RateMeMaybeFragment;->mInterface:Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;

    invoke-interface {v0}, Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;->_handleNegativeChoice()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roblox/client/RateMeMaybeFragment;->setRetainInstance(Z)V

    .line 54
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lcom/roblox/client/RateMeMaybeFragment;->customIcon:I

    if-eqz v2, :cond_0

    .line 62
    iget v2, p0, Lcom/roblox/client/RateMeMaybeFragment;->customIcon:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybeFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 65
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybeFragment;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybeFragment;->positiveBtn:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybeFragment;->neutralBtn:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    iget-object v2, p0, Lcom/roblox/client/RateMeMaybeFragment;->negativeBtn:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 71
    .local v0, "alert":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybeFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 100
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/RateMeMaybeFragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 104
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 105
    return-void
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;)V
    .locals 0
    .param p1, "customIcon"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "positiveBtn"    # Ljava/lang/String;
    .param p5, "neutralBtn"    # Ljava/lang/String;
    .param p6, "negativeBtn"    # Ljava/lang/String;
    .param p7, "myInterface"    # Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;

    .prologue
    .line 39
    iput p1, p0, Lcom/roblox/client/RateMeMaybeFragment;->customIcon:I

    .line 40
    iput-object p2, p0, Lcom/roblox/client/RateMeMaybeFragment;->title:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/roblox/client/RateMeMaybeFragment;->message:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/roblox/client/RateMeMaybeFragment;->positiveBtn:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/roblox/client/RateMeMaybeFragment;->neutralBtn:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/roblox/client/RateMeMaybeFragment;->negativeBtn:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/roblox/client/RateMeMaybeFragment;->mInterface:Lcom/roblox/client/RateMeMaybeFragment$RMMFragInterface;

    .line 46
    return-void
.end method
