.class Lcom/roblox/client/FragmentSignUp$12;
.super Ljava/lang/Object;
.source "FragmentSignUp.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/FragmentSignUp;->setNextButton(Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/FragmentSignUp;

.field final synthetic val$nextViewFinal:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentSignUp;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/roblox/client/FragmentSignUp$12;->this$0:Lcom/roblox/client/FragmentSignUp;

    iput-object p2, p0, Lcom/roblox/client/FragmentSignUp$12;->val$nextViewFinal:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 396
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/roblox/client/FragmentSignUp$12;->val$nextViewFinal:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 398
    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
