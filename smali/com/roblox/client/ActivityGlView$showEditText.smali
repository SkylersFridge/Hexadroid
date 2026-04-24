.class public Lcom/roblox/client/ActivityGlView$showEditText;
.super Ljava/lang/Object;
.source "ActivityGlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ActivityGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "showEditText"
.end annotation


# instance fields
.field param:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/roblox/client/ActivityGlView$showEditText;->param:Ljava/lang/String;

    .line 617
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 620
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/ActivityGlView;->access$300(Lcom/roblox/client/ActivityGlView;)Lcom/roblox/client/RbxKeyboard;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView$showEditText;->param:Ljava/lang/String;

    .line 623
    .local v0, "charText":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/ActivityGlView;->access$300(Lcom/roblox/client/ActivityGlView;)Lcom/roblox/client/RbxKeyboard;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/ActivityGlView;->access$300(Lcom/roblox/client/ActivityGlView;)Lcom/roblox/client/RbxKeyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/RbxKeyboard;->requestFocus()Z

    .line 627
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/ActivityGlView;->access$400(Lcom/roblox/client/ActivityGlView;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 628
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v2

    invoke-static {v2}, Lcom/roblox/client/ActivityGlView;->access$300(Lcom/roblox/client/ActivityGlView;)Lcom/roblox/client/RbxKeyboard;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 629
    return-void
.end method
