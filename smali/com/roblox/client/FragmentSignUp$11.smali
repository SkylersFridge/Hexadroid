.class Lcom/roblox/client/FragmentSignUp$11;
.super Ljava/lang/Object;
.source "FragmentSignUp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 243
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$11;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$11;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 247
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$11;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v0, p3}, Lcom/roblox/client/FragmentSignUp;->access$402(Lcom/roblox/client/FragmentSignUp;I)I

    .line 248
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$11;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v0}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 252
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$11;->this$0:Lcom/roblox/client/FragmentSignUp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/FragmentSignUp;->access$402(Lcom/roblox/client/FragmentSignUp;I)I

    .line 253
    return-void
.end method
