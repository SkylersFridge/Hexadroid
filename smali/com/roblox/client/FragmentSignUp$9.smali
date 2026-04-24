.class Lcom/roblox/client/FragmentSignUp$9;
.super Ljava/lang/Object;
.source "FragmentSignUp.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 220
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$9;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 222
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$9;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v1}, Lcom/roblox/client/FragmentSignUp;->access$300(Lcom/roblox/client/FragmentSignUp;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 224
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$9;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->doEmailValidation()V

    .line 225
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$9;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/roblox/client/FragmentSignUp$9;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-virtual {v1}, Lcom/roblox/client/FragmentSignUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 227
    const/4 v1, 0x1

    .line 229
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
