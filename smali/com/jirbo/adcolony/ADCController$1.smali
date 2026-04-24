.class Lcom/jirbo/adcolony/ADCController$1;
.super Lcom/jirbo/adcolony/ADCEvent;
.source "ADCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCController;->on_resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCController;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCController$1;->this$0:Lcom/jirbo/adcolony/ADCController;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController$1;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCSessionManager;->on_resume()V

    .line 87
    return-void
.end method
