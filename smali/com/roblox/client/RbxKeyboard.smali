.class public Lcom/roblox/client/RbxKeyboard;
.super Landroid/widget/EditText;
.source "RbxKeyboard.java"


# instance fields
.field currentTextBox:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 32
    iget-wide v1, p0, Lcom/roblox/client/RbxKeyboard;->currentTextBox:J

    invoke-static {v1, v2}, Lcom/roblox/client/ActivityGlView;->releaseFocus(J)V

    .line 33
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/roblox/client/RbxKeyboard;->currentTextBox:J

    .line 35
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/roblox/client/RbxKeyboard;->setVisibility(I)V

    .line 36
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/roblox/client/RbxKeyboard;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 39
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/roblox/client/RbxKeyboard;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 42
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public setCurrentTextBox(J)V
    .locals 0
    .param p1, "newTextBox"    # J

    .prologue
    .line 24
    iput-wide p1, p0, Lcom/roblox/client/RbxKeyboard;->currentTextBox:J

    .line 25
    return-void
.end method
