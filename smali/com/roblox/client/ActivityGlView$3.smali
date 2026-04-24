.class Lcom/roblox/client/ActivityGlView$3;
.super Ljava/lang/Object;
.source "ActivityGlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityGlView;->doCrashGuardUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityGlView;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityGlView;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/roblox/client/ActivityGlView$3;->this$0:Lcom/roblox/client/ActivityGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView$3;->this$0:Lcom/roblox/client/ActivityGlView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/roblox/client/ActivityGlView;->access$500(Lcom/roblox/client/ActivityGlView;Z)V

    .line 528
    return-void
.end method
