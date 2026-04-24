.class Lcom/roblox/client/ActivityNativeMain$8;
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
    .line 302
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$8;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$8;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeMain;->mViewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 307
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$8;->this$0:Lcom/roblox/client/ActivityNativeMain;

    const-string v1, "LoginScreen"

    invoke-static {v0, v1}, Lcom/roblox/client/Utils;->sendAnalyticsScreen(Lcom/roblox/client/RobloxServiceActivity;Ljava/lang/String;)V

    .line 308
    return-void
.end method
