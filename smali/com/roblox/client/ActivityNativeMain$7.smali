.class Lcom/roblox/client/ActivityNativeMain$7;
.super Ljava/lang/Object;
.source "ActivityNativeMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$7;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$7;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeMain;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 295
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$7;->this$0:Lcom/roblox/client/ActivityNativeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/ActivityNativeMain;->onSignUp(Landroid/view/View;)V

    .line 296
    return-void
.end method
