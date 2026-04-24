.class Lcom/roblox/client/FragmentSignUp$2;
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
    .line 143
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$2;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "x"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$2;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v1}, Lcom/roblox/client/FragmentSignUp;->access$000(Lcom/roblox/client/FragmentSignUp;)Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$2;->this$0:Lcom/roblox/client/FragmentSignUp;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/roblox/client/FragmentSignUp;->access$102(Lcom/roblox/client/FragmentSignUp;Z)Z

    .line 148
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$2;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 149
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$2;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 151
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$2;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v1}, Lcom/roblox/client/FragmentSignUp;->access$000(Lcom/roblox/client/FragmentSignUp;)Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/roblox/client/FragmentSignUp$SignUpCallbacks;->onFragmentSignUpCancel()V

    .line 153
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
