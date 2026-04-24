.class final Lcom/roblox/client/ActivityGlView$4;
.super Ljava/lang/Object;
.source "ActivityGlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityGlView;->sendAppEvent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appEventSentSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$blockUntilSent:Z


# direct methods
.method constructor <init>(ZLjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/roblox/client/ActivityGlView$4;->val$blockUntilSent:Z

    iput-object p2, p0, Lcom/roblox/client/ActivityGlView$4;->val$appEventSentSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 586
    invoke-static {}, Lcom/roblox/client/ActivityGlView;->access$600()V

    .line 587
    iget-boolean v0, p0, Lcom/roblox/client/ActivityGlView$4;->val$blockUntilSent:Z

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView$4;->val$appEventSentSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 591
    :cond_0
    return-void
.end method
