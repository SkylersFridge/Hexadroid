.class Lcom/roblox/client/InputListener$1;
.super Ljava/lang/Object;
.source "InputListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/InputListener;->setupControllerInput(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currWeaponPos:I

.field thirdPersonCam:Z

.field final synthetic this$0:Lcom/roblox/client/InputListener;


# direct methods
.method constructor <init>(Lcom/roblox/client/InputListener;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/roblox/client/InputListener$1;->this$0:Lcom/roblox/client/InputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/InputListener$1;->thirdPersonCam:Z

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 151
    .local v0, "handled":Z
    sparse-switch p2, :sswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 153
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lcom/roblox/client/InputListener;->access$100()V

    .line 155
    :cond_1
    const/4 v0, 0x1

    .line 156
    goto :goto_0

    .line 158
    :sswitch_1
    const/4 v0, 0x1

    .line 159
    goto :goto_0

    .line 161
    :sswitch_2
    const/4 v0, 0x1

    .line 162
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-boolean v1, p0, Lcom/roblox/client/InputListener$1;->thirdPersonCam:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/roblox/client/InputListener$1;->thirdPersonCam:Z

    .line 164
    iget-boolean v1, p0, Lcom/roblox/client/InputListener$1;->thirdPersonCam:Z

    invoke-static {v1}, Lcom/roblox/client/InputListener;->access$200(Z)V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    .line 170
    iget v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    invoke-static {v1}, Lcom/roblox/client/InputListener;->access$300(I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    goto :goto_0

    .line 174
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    .line 176
    iget v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    invoke-static {v1}, Lcom/roblox/client/InputListener;->access$300(I)I

    move-result v1

    iput v1, p0, Lcom/roblox/client/InputListener$1;->currWeaponPos:I

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x61 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0x6b -> :sswitch_2
    .end sparse-switch
.end method
