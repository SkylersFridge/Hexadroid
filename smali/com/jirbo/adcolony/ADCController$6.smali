.class Lcom/jirbo/adcolony/ADCController$6;
.super Lcom/jirbo/adcolony/ADCEvent;
.source "ADCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCController;->on_video_finish(ZLcom/jirbo/adcolony/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCController;

.field final synthetic val$ad:Lcom/jirbo/adcolony/AdColonyAd;

.field final synthetic val$v4vc_amount:I

.field final synthetic val$v4vc_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;ILcom/jirbo/adcolony/AdColonyAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCController$6;->this$0:Lcom/jirbo/adcolony/ADCController;

    iput-object p3, p0, Lcom/jirbo/adcolony/ADCController$6;->val$v4vc_name:Ljava/lang/String;

    iput p4, p0, Lcom/jirbo/adcolony/ADCController$6;->val$v4vc_amount:I

    iput-object p5, p0, Lcom/jirbo/adcolony/ADCController$6;->val$ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 4

    .prologue
    .line 194
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 195
    .local v0, "table":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v1, "v4vc_name"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController$6;->val$v4vc_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "v4vc_amount"

    iget v2, p0, Lcom/jirbo/adcolony/ADCController$6;->val$v4vc_amount:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 197
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController$6;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController$6;->val$ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 198
    return-void
.end method
