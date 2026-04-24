.class Lcom/roblox/client/FragmentSignUp$7;
.super Ljava/lang/Object;
.source "FragmentSignUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/FragmentSignUp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/FragmentSignUp;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentSignUp;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$7;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    new-instance v0, Lcom/roblox/client/FragmentSignUp$DatePickerFragment;

    invoke-direct {v0}, Lcom/roblox/client/FragmentSignUp$DatePickerFragment;-><init>()V

    .line 202
    .local v0, "newFragment":Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$7;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$7;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$7;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 207
    :cond_0
    return-void
.end method
