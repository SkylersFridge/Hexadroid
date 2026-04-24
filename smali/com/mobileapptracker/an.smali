.class final Lcom/mobileapptracker/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/mobileapptracker/MobileAppTracker;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/MobileAppTracker;D)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/an;->b:Lcom/mobileapptracker/MobileAppTracker;

    iput-wide p2, p0, Lcom/mobileapptracker/an;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/mobileapptracker/an;->b:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v0, v0, Lcom/mobileapptracker/MobileAppTracker;->params:Lcom/mobileapptracker/Parameters;

    iget-wide v1, p0, Lcom/mobileapptracker/an;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobileapptracker/Parameters;->setLongitude(Ljava/lang/String;)V

    return-void
.end method
