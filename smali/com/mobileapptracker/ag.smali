.class final Lcom/mobileapptracker/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/mobileapptracker/MobileAppTracker;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/ag;->c:Lcom/mobileapptracker/MobileAppTracker;

    iput-object p2, p0, Lcom/mobileapptracker/ag;->a:Ljava/lang/String;

    iput p3, p0, Lcom/mobileapptracker/ag;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mobileapptracker/ag;->c:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v0, v0, Lcom/mobileapptracker/MobileAppTracker;->params:Lcom/mobileapptracker/Parameters;

    iget-object v1, p0, Lcom/mobileapptracker/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/Parameters;->setGoogleAdvertisingId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobileapptracker/ag;->c:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v0, v0, Lcom/mobileapptracker/MobileAppTracker;->params:Lcom/mobileapptracker/Parameters;

    iget v1, p0, Lcom/mobileapptracker/ag;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/Parameters;->setGoogleAdTrackingLimited(Ljava/lang/String;)V

    return-void
.end method
