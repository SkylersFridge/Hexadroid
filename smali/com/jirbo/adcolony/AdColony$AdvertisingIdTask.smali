.class Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;
.super Landroid/os/AsyncTask;
.source "AdColony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/AdColony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdvertisingIdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field advertising_id:Ljava/lang/String;

.field limit_ad_tracking:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 412
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->advertising_id:Ljava/lang/String;

    .line 413
    iput-object p1, p0, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->activity:Landroid/app/Activity;

    .line 414
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 404
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 419
    const/4 v1, 0x0

    .line 422
    .local v1, "info":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v2, p0, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->advertising_id:Ljava/lang/String;

    .line 438
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->limit_ad_tracking:Z

    .line 439
    :goto_0
    return-object v4

    .line 424
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Google Play Services SDK not installed! Collecting Android Id instead of Advertising Id."

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 430
    .end local v0    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Advertising Id not available! Collecting Android Id instead of Advertising Id."

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 434
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->advertising_id:Ljava/lang/String;

    sput-object v0, Lcom/jirbo/adcolony/ADCDevice;->advertising_id:Ljava/lang/String;

    .line 446
    iget-boolean v0, p0, Lcom/jirbo/adcolony/AdColony$AdvertisingIdTask;->limit_ad_tracking:Z

    sput-boolean v0, Lcom/jirbo/adcolony/ADCDevice;->limit_ad_tracking:Z

    .line 447
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/AdColony;->advertising_id_ready:Z

    .line 448
    return-void
.end method
