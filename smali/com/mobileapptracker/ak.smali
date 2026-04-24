.class final Lcom/mobileapptracker/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mobileapptracker/MobileAppTracker;


# direct methods
.method constructor <init>(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/ak;->b:Lcom/mobileapptracker/MobileAppTracker;

    iput-object p2, p0, Lcom/mobileapptracker/ak;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobileapptracker/ak;->b:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v1, p0, Lcom/mobileapptracker/ak;->a:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/mobileapptracker/ak;->b:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v5}, Lcom/mobileapptracker/MobileAppTracker;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lcom/mobileapptracker/MobileAppTracker;->a(Lcom/mobileapptracker/MobileAppTracker;Ljava/lang/Object;Lorg/json/JSONArray;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
