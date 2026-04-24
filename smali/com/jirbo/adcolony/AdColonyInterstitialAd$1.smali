.class Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;
.super Lcom/jirbo/adcolony/ADCEvent;
.source "AdColonyInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/AdColonyInterstitialAd;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/AdColonyInterstitialAd;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/AdColonyInterstitialAd;Lcom/jirbo/adcolony/ADCController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/AdColonyInterstitialAd;
    .param p2, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;->this$0:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;)V

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;->this$0:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v0, v0, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    iget-object v1, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;->this$0:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    iget-object v1, v1, Lcom/jirbo/adcolony/AdColonyInterstitialAd;->zone_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/AdColonyInterstitialAd$1;->this$0:Lcom/jirbo/adcolony/AdColonyInterstitialAd;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_request(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 92
    :cond_0
    return-void
.end method
