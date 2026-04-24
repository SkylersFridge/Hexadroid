.class Lcom/jirbo/adcolony/ADCController$8;
.super Lcom/jirbo/adcolony/ADCEvent;
.source "ADCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCController;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCController;

.field final synthetic val$ad:Lcom/jirbo/adcolony/AdColonyAd;

.field final synthetic val$json_payload:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCController$8;->this$0:Lcom/jirbo/adcolony/ADCController;

    iput-object p3, p0, Lcom/jirbo/adcolony/ADCController$8;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/jirbo/adcolony/ADCController$8;->val$json_payload:Ljava/lang/String;

    iput-object p5, p0, Lcom/jirbo/adcolony/ADCController$8;->val$ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController$8;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController$8;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController$8;->val$json_payload:Ljava/lang/String;

    invoke-static {v2}, Lcom/jirbo/adcolony/ADCJSON;->parse_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCController$8;->val$ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 223
    return-void
.end method
