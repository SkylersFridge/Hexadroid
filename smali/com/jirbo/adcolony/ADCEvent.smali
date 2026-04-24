.class abstract Lcom/jirbo/adcolony/ADCEvent;
.super Ljava/lang/Object;
.source "ADCEvent.java"


# instance fields
.field controller:Lcom/jirbo/adcolony/ADCController;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 9
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;Z)V

    .line 10
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Z)V
    .locals 0
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "auto_queue"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCEvent;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 15
    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/jirbo/adcolony/ADCController;->queue_event(Lcom/jirbo/adcolony/ADCEvent;)V

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method abstract dispatch()V
.end method
