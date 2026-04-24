.class Lcom/roblox/client/ActivityNativeMain$9;
.super Ljava/lang/Object;
.source "ActivityNativeMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->initializeMAT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 622
    :try_start_0
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v2}, Lcom/roblox/client/ActivityNativeMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 623
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v2, v2, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mobileapptracker/MobileAppTracker;->setGoogleAdvertisingId(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 638
    .end local v0    # "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v1

    .line 627
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v2, v2, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v3, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v3}, Lcom/roblox/client/ActivityNativeMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobileapptracker/MobileAppTracker;->setAndroidId(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 630
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v2, v2, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v3, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v3}, Lcom/roblox/client/ActivityNativeMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobileapptracker/MobileAppTracker;->setAndroidId(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    :catch_2
    move-exception v1

    .line 633
    .local v1, "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v2, v2, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v3, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v3}, Lcom/roblox/client/ActivityNativeMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobileapptracker/MobileAppTracker;->setAndroidId(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .end local v1    # "e":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    :catch_3
    move-exception v1

    .line 636
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v2, v2, Lcom/roblox/client/ActivityNativeMain;->mobileAppTracker:Lcom/mobileapptracker/MobileAppTracker;

    iget-object v3, p0, Lcom/roblox/client/ActivityNativeMain$9;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-virtual {v3}, Lcom/roblox/client/ActivityNativeMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobileapptracker/MobileAppTracker;->setAndroidId(Ljava/lang/String;)V

    goto :goto_0
.end method
