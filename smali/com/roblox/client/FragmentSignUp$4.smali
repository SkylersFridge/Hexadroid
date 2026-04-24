.class Lcom/roblox/client/FragmentSignUp$4;
.super Ljava/lang/Object;
.source "FragmentSignUp.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 166
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$4;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$4;->this$0:Lcom/roblox/client/FragmentSignUp;

    invoke-static {v0}, Lcom/roblox/client/FragmentSignUp;->access$100(Lcom/roblox/client/FragmentSignUp;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$4;->this$0:Lcom/roblox/client/FragmentSignUp;

    sget-object v1, Lcom/roblox/client/FragmentSignUp$ValidationOp;->PASSWORD:Lcom/roblox/client/FragmentSignUp$ValidationOp;

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentSignUp;->doValidationTask(Lcom/roblox/client/FragmentSignUp$ValidationOp;)V

    .line 173
    :cond_0
    return-void
.end method
