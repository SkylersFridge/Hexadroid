.class Lcom/jirbo/adcolony/ADCAdManager$1;
.super Ljava/lang/Object;
.source "ADCAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCAdManager;-><init>(Lcom/jirbo/adcolony/ADCController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCAdManager;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCAdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCAdManager;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCAdManager$1;->this$0:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager$1;->this$0:Lcom/jirbo/adcolony/ADCAdManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCAdManager;->do_refresh:Z

    .line 35
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager$1;->this$0:Lcom/jirbo/adcolony/ADCAdManager;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCAdManager;->try_refresh:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCAdManager$1;->this$0:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCAdManager;->refresh()V

    .line 39
    :cond_0
    return-void
.end method
