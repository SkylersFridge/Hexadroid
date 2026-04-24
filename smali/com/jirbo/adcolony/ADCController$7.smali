.class Lcom/jirbo/adcolony/ADCController$7;
.super Lcom/jirbo/adcolony/ADCEvent;
.source "ADCController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCController;->track_app_event(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCController;

.field final synthetic val$json_payload:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCController$7;->this$0:Lcom/jirbo/adcolony/ADCController;

    iput-object p3, p0, Lcom/jirbo/adcolony/ADCController$7;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/jirbo/adcolony/ADCController$7;->val$json_payload:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCController$7;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCController$7;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCController$7;->val$json_payload:Ljava/lang/String;

    invoke-static {v2}, Lcom/jirbo/adcolony/ADCJSON;->parse_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_app_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 212
    return-void
.end method
