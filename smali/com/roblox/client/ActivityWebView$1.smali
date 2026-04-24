.class Lcom/roblox/client/ActivityWebView$1;
.super Ljava/lang/Object;
.source "ActivityWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityWebView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityWebView;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityWebView;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/roblox/client/ActivityWebView$1;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/roblox/client/ActivityWebView$1;->this$0:Lcom/roblox/client/ActivityWebView;

    invoke-static {v0}, Lcom/roblox/client/ActivityWebView;->access$300(Lcom/roblox/client/ActivityWebView;)V

    .line 168
    return-void
.end method
