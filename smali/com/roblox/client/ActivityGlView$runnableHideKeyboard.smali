.class Lcom/roblox/client/ActivityGlView$runnableHideKeyboard;
.super Ljava/lang/Object;
.source "ActivityGlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ActivityGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "runnableHideKeyboard"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/ActivityGlView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/ActivityGlView$1;

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/roblox/client/ActivityGlView$runnableHideKeyboard;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 646
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/ActivityGlView;->access$400(Lcom/roblox/client/ActivityGlView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 647
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/ActivityGlView;->access$300(Lcom/roblox/client/ActivityGlView;)Lcom/roblox/client/RbxKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/roblox/client/RbxKeyboard;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 648
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$700()Lcom/roblox/client/ActivityGlView;

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/ActivityGlView;->access$300(Lcom/roblox/client/ActivityGlView;)Lcom/roblox/client/RbxKeyboard;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 649
    return-void
.end method
