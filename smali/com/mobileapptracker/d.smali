.class final Lcom/mobileapptracker/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobileapptracker/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobileapptracker/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/mobileapptracker/MobileAppTracker;->b()Lcom/mobileapptracker/MobileAppTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mobileapptracker/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobileapptracker/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mobileapptracker/MobileAppTracker;->initAll(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
