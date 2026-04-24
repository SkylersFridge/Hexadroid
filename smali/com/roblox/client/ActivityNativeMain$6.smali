.class Lcom/roblox/client/ActivityNativeMain$6;
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
    .line 276
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$6;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$6;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v0}, Lcom/roblox/client/ActivityNativeMain;->onLogout()V

    .line 280
    return-void
.end method
