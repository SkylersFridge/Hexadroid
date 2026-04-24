.class Lcom/jirbo/adcolony/ADCMonitor$Pinger;
.super Landroid/os/Handler;
.source "ADCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pinger"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMonitor$Pinger;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/jirbo/adcolony/ADCMonitor$Pinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 123
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "Monitor pinger exiting."

    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->log_dev(Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Lcom/jirbo/adcolony/ADCMonitor;->ping()V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMonitor$Pinger;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/jirbo/adcolony/ADCMonitor$Pinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
