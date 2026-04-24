.class Lcom/jirbo/adcolony/ADCController$5;
.super Lcom/jirbo/adcolony/ADCEvent;
.source "ADCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCController;->on_video_progress(DLcom/jirbo/adcolony/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCController;

.field final synthetic val$ad:Lcom/jirbo/adcolony/AdColonyAd;

.field final synthetic val$p:D


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;DLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCController$5;->this$0:Lcom/jirbo/adcolony/ADCController;

    iput-wide p3, p0, Lcom/jirbo/adcolony/ADCController$5;->val$p:D

    iput-object p5, p0, Lcom/jirbo/adcolony/ADCController$5;->val$ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController$5;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    iget-wide v1, p0, Lcom/jirbo/adcolony/ADCController$5;->val$p:D

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController$5;->val$ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_video_progress(DLcom/jirbo/adcolony/AdColonyAd;)V

    .line 146
    return-void
.end method
