.class Lcom/jirbo/adcolony/ADCConfiguration;
.super Ljava/lang/Object;
.source "ADCConfiguration.java"


# static fields
.field static ad_manifest_url:Ljava/lang/String;


# instance fields
.field advertising_id:Ljava/lang/String;

.field android_id:Ljava/lang/String;

.field android_id_sha1:Ljava/lang/String;

.field app_id:Ljava/lang/String;

.field app_version:Ljava/lang/String;

.field available_stores:Ljava/lang/String;

.field carrier_name:Ljava/lang/String;

.field configured:Z

.field controller:Lcom/jirbo/adcolony/ADCController;

.field current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

.field current_progress:D

.field current_zone:Lcom/jirbo/adcolony/ADCManifest$Zone;

.field custom_id:Ljava/lang/String;

.field device_api:Ljava/lang/String;

.field device_id:Ljava/lang/String;

.field device_manufacturer:Ljava/lang/String;

.field device_model:Ljava/lang/String;

.field device_type:Ljava/lang/String;

.field fatal_error:Z

.field imei:Ljava/lang/String;

.field imei_sha1:Ljava/lang/String;

.field info_string:Ljava/lang/String;

.field language:Ljava/lang/String;

.field limit_tracking:Z

.field memory_class:Ljava/lang/String;

.field memory_used:Ljava/lang/String;

.field open_udid:Ljava/lang/String;

.field origin_store:Ljava/lang/String;

.field os_name:Ljava/lang/String;

.field os_version:Ljava/lang/String;

.field properties:Lcom/jirbo/adcolony/ADCData$Table;

.field sdk_type:Ljava/lang/String;

.field sdk_version:Ljava/lang/String;

.field session_timeout_seconds:I

.field skippable:Z

.field sleep_count:I

.field zone_ids:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "https://androidads20.adcolony.com/configure"

    sput-object v0, Lcom/jirbo/adcolony/ADCConfiguration;->ad_manifest_url:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 3
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "2.1.1"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_version:Ljava/lang/String;

    .line 14
    const/16 v0, 0x12c

    iput v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->session_timeout_seconds:I

    .line 15
    iput v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sleep_count:I

    .line 17
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->fatal_error:Z

    .line 18
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->configured:Z

    .line 21
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_progress:D

    .line 33
    const-string v0, "android"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->os_name:Ljava/lang/String;

    .line 34
    const-string v0, "android_native"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_type:Ljava/lang/String;

    .line 37
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->app_version:Ljava/lang/String;

    .line 38
    const-string v0, "google"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->origin_store:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->skippable:Z

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCConfiguration;->custom_id:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 67
    return-void
.end method


# virtual methods
.method configure()V
    .locals 4

    .prologue
    .line 104
    :goto_0
    sget-boolean v1, Lcom/jirbo/adcolony/AdColony;->advertising_id_ready:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sleep_count:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_0

    .line 108
    :try_start_0
    iget v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sleep_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sleep_count:I

    .line 109
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    goto :goto_0

    .line 116
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sleep_count:I

    .line 117
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->zone_state_manager:Lcom/jirbo/adcolony/ADCZoneStateManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCZoneStateManager;->load()V

    .line 120
    sget-object v1, Lcom/jirbo/adcolony/ADCDevice;->advertising_id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->advertising_id:Ljava/lang/String;

    .line 121
    sget-boolean v1, Lcom/jirbo/adcolony/ADCDevice;->limit_ad_tracking:Z

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->limit_tracking:Z

    .line 122
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->android_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->android_id:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->advertising_id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ""

    :goto_1
    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->android_id_sha1:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->carrier_name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->carrier_name:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_id:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 129
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->device_id()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_id:Ljava/lang/String;

    .line 132
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->manufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_manufacturer:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->model()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_model:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->language()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->language:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->open_udid()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->open_udid:Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->os_version()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->os_version:Ljava/lang/String;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_api:Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->imei()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->imei:Ljava/lang/String;

    .line 140
    const-string v1, ""

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->imei_sha1:Ljava/lang/String;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->memory_class()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->memory_class:Ljava/lang/String;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->memory_used()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->memory_used:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->os_version:Ljava/lang/String;

    sput-object v1, Lcom/jirbo/adcolony/ADC;->os_version:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_version:Ljava/lang/String;

    sput-object v1, Lcom/jirbo/adcolony/ADC;->sdk_version:Ljava/lang/String;

    .line 149
    sget-boolean v1, Lcom/jirbo/adcolony/ADC;->is_tablet:Z

    if-eqz v1, :cond_c

    const-string v1, "tablet"

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_type:Ljava/lang/String;

    .line 152
    :goto_2
    const-string v1, ""

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    .line 153
    const-string v1, "com.android.vending"

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCUtil;->application_exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.market"

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCUtil;->application_exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    :cond_2
    const-string v1, "google"

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    .line 157
    :cond_3
    const-string v1, "com.amazon.venezia"

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCUtil;->application_exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    .line 160
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "amazon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    .line 163
    :cond_5
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/ADCLog;->enabled:Z

    if-eqz v1, :cond_6

    .line 165
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "sdk_version:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 166
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "ad_manifest_url:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    sget-object v2, Lcom/jirbo/adcolony/ADCConfiguration;->ad_manifest_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 168
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "app_id:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 169
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "zone_ids:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->zone_ids:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 171
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "os_name:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->os_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 172
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "sdk_type:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 174
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "app_version:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->app_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 175
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "origin_store:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->origin_store:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 176
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "skippable:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->skippable:Z

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Z)Lcom/jirbo/adcolony/ADCLog;

    .line 178
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "android_id:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->android_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 179
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "android_id_sha1:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->android_id_sha1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 180
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "available_stores:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 181
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "carrier_name:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->carrier_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 182
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "custom_id:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->custom_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 183
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "device_id:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 184
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "device_manufacturer:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 185
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "device_model:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 186
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "device_type:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 187
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "imei:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 188
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "imei_sha1:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->imei_sha1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 189
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "language:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 190
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "open_udid:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->open_udid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 191
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "os_version:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->os_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 194
    :cond_6
    new-instance v0, Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCStringBuilder;-><init>()V

    .line 195
    .local v0, "buffer":Lcom/jirbo/adcolony/ADCStringBuilder;
    const-string v1, "&os_name="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->os_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 197
    const-string v1, "&os_version="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->os_version:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 199
    const-string v1, "&device_api="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_api:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 201
    const-string v1, "&app_version="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->app_version:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 203
    const-string v1, "&android_id_sha1="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->android_id_sha1:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 205
    const-string v1, "&device_id="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 207
    const-string v1, "&open_udid="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->open_udid:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 209
    const-string v1, "&device_type="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 211
    const-string v1, "&ln="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->language:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 213
    const-string v1, "&device_brand="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_manufacturer:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 215
    const-string v1, "&device_model="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_model:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 217
    const-string v1, "&screen_width="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->display_width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 219
    const-string v1, "&screen_height="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jirbo/adcolony/ADCDevice;->display_height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 221
    const-string v1, "&sdk_type="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_type:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 223
    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->sdk_version:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 225
    const-string v1, "&origin_store="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->origin_store:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 227
    const-string v1, "&available_stores="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->available_stores:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 229
    const-string v1, "&imei_sha1="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->imei_sha1:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 231
    const-string v1, "&memory_class="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->memory_class:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 233
    const-string v1, "&memory_used_mb="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->memory_used:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 235
    const-string v1, "&advertiser_id="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->advertising_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCNetwork;->url_encoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 237
    const-string v1, "&limit_tracking="

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Ljava/lang/String;)V

    .line 238
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->limit_tracking:Z

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(Z)V

    .line 239
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->info_string:Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCStorage;->configure()V

    .line 244
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCMediaManager;->configure()V

    .line 245
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCReportingManager;->configure()V

    .line 246
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCAdManager;->configure()V

    .line 247
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCSessionManager;->configure()V

    .line 248
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->play_history:Lcom/jirbo/adcolony/ADCPlayHistory;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->configure()V

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->configured:Z

    .line 252
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCAdManager;->refresh()V

    .line 253
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 255
    :cond_7
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    const-string v2, "all"

    iput-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$App;->view_network_pass_filter:Ljava/lang/String;

    .line 257
    :cond_8
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 259
    :cond_9
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    const-string v2, "all"

    iput-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    .line 261
    :cond_a
    return-void

    .line 123
    .end local v0    # "buffer":Lcom/jirbo/adcolony/ADCStringBuilder;
    :cond_b
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->android_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCUtil;->calculate_sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/jirbo/adcolony/ADCConfiguration;->either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 150
    :cond_c
    const-string v1, "phone"

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCConfiguration;->device_type:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method either_or(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "st1"    # Ljava/lang/String;
    .param p2, "st2"    # Ljava/lang/String;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    .end local p1    # "st1":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "st1":Ljava/lang/String;
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method parse_client_options(Ljava/lang/String;)V
    .locals 10
    .param p1, "options"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 73
    if-nez p1, :cond_0

    const-string p1, ""

    .line 74
    :cond_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_7

    aget-object v1, v6, v4

    .line 76
    .local v1, "option":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "pair":[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 79
    aget-object v0, v2, v5

    .line 80
    .local v0, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v3, v2, v8

    .line 81
    .local v3, "value":Ljava/lang/String;
    const-string v8, "version"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->app_version:Ljava/lang/String;

    .line 74
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_2
    const-string v8, "store"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "amazon"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 86
    :cond_3
    iput-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->origin_store:Ljava/lang/String;

    goto :goto_1

    .line 90
    :cond_4
    new-instance v4, Lcom/jirbo/adcolony/AdColonyException;

    const-string v5, "Origin store in client options must be set to either \'google\' or \'amazon\'"

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/AdColonyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_5
    const-string v8, "skippable"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->skippable:Z

    goto :goto_1

    .line 97
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    aget-object v8, v2, v5

    const-string v9, "skippable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->skippable:Z

    goto :goto_1

    .line 100
    .end local v1    # "option":Ljava/lang/String;
    .end local v2    # "pair":[Ljava/lang/String;
    :cond_7
    return-void
.end method

.method prepare_end_card()V
    .locals 8

    .prologue
    .line 391
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-object v0, v4, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->_static:Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;

    .line 392
    .local v0, "_static":Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-object v1, v4, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    .line 394
    .local v1, "html5":Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v4, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    .line 395
    .local v2, "mm":Lcom/jirbo/adcolony/ADCMediaManager;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    if-nez v4, :cond_0

    .line 436
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->is_ready()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    const/4 v4, 0x1

    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->end_card_is_html5:Z

    .line 399
    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->html5_tag:Ljava/lang/String;

    sput-object v4, Lcom/jirbo/adcolony/ADC;->end_card_url:Ljava/lang/String;

    .line 400
    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->mraid_js:Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$MRAIDJS;->url:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/jirbo/adcolony/ADC;->end_card_mraid_filepath:Ljava/lang/String;

    .line 403
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "close_image_normal"

    iget-object v6, v1, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "close_image_down"

    iget-object v6, v1, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "reload_image_normal"

    iget-object v6, v1, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "reload_image_down"

    iget-object v6, v1, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_1
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v3, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    .line 431
    .local v3, "video":Lcom/jirbo/adcolony/ADCManifest$Video;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "end_card_enabled"

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-boolean v6, v6, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->enabled:Z

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 432
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "load_timeout_enabled"

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    iget-boolean v6, v6, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->load_timeout_enabled:Z

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 433
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "load_timeout"

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$Ad;->companion_ad:Lcom/jirbo/adcolony/ADCManifest$CompanionAd;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$CompanionAd;->html5:Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;

    iget-wide v6, v6, Lcom/jirbo/adcolony/ADCManifest$HTML5CompanionAdInfo;->load_timeout:D

    invoke-virtual {v4, v5, v6, v7}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 434
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "hardware_acceleration_disabled"

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-boolean v6, v6, Lcom/jirbo/adcolony/ADCManifest$App;->hardware_acceleration_disabled:Z

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 411
    .end local v3    # "video":Lcom/jirbo/adcolony/ADCManifest$Video;
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->end_card_is_html5:Z

    .line 412
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "end_card_filepath"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->background_image:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "info_image_normal"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "info_image_down"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "info_url"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->info:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->click_action:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "replay_image_normal"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "replay_image_down"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->replay:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "continue_image_normal"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->_continue:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "continue_image_down"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->_continue:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "download_image_normal"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "download_image_down"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v5, "download_url"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCManifest$StaticCompanionAdInfo;->download:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->click_action:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method prepare_v4vc_ad(Ljava/lang/String;)V
    .locals 7
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 334
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_zone:Lcom/jirbo/adcolony/ADCManifest$Zone;

    .line 335
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_zone:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCManifest$Zone;->current_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v3

    iput-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    .line 337
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v3, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    .line 340
    .local v0, "mm":Lcom/jirbo/adcolony/ADCMediaManager;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v2, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    .line 342
    .local v2, "video":Lcom/jirbo/adcolony/ADCManifest$Video;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "video_enabled"

    iget-boolean v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->enabled:Z

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 343
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "video_filepath"

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Video;->filepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "video_width"

    iget v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->width:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 345
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "video_height"

    iget v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 346
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "video_duration"

    iget-wide v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->duration:D

    invoke-virtual {v3, v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 349
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "engagement_delay"

    iget-object v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->delay:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 350
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "skip_delay"

    iget-object v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->delay:I

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 352
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_end_card()V

    .line 355
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v1, v3, Lcom/jirbo/adcolony/ADCManifest$Ad;->v4vc:Lcom/jirbo/adcolony/ADCManifest$AdV4VC;

    .line 356
    .local v1, "v4vc":Lcom/jirbo/adcolony/ADCManifest$AdV4VC;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "pre_popup_bg"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "v4vc_logo"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "no_button_normal"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_no:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "no_button_down"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_no:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "yes_button_normal"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_yes:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "yes_button_down"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->pre_popup:Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PrePopupDialogInfo;->option_yes:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "done_button_normal"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->post_popup:Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->option_done:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "done_button_down"

    iget-object v5, v1, Lcom/jirbo/adcolony/ADCManifest$AdV4VC;->post_popup:Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PostPopupInfo;->dialog:Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$PostPopupDialogInfo;->option_done:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_close_image_normal"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_close_image_down"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_reload_image_normal"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_reload_image_down"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_back_image_normal"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_back_image_down"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_forward_image_normal"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_forward_image_down"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_stop_image_normal"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_stop_image_down"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_glow_button"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->tiny_glow_image:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "browser_icon"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "skip_video_image_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "skip_video_image_down"

    iget-object v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "engagement_image_normal"

    iget-object v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v4, "engagement_image_down"

    iget-object v5, v2, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method prepare_video_ad(Ljava/lang/String;)V
    .locals 1
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_video_ad(Ljava/lang/String;Lcom/jirbo/adcolony/ADCManifest$Ad;)V

    .line 272
    return-void
.end method

.method prepare_video_ad(Ljava/lang/String;Lcom/jirbo/adcolony/ADCManifest$Ad;)V
    .locals 6
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/jirbo/adcolony/ADCManifest$Ad;

    .prologue
    .line 275
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_zone:Lcom/jirbo/adcolony/ADCManifest$Zone;

    .line 276
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_zone:Lcom/jirbo/adcolony/ADCManifest$Zone;

    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_zone:Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$Zone;->current_ad()Lcom/jirbo/adcolony/ADCManifest$Ad;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    .line 279
    :goto_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v2, Lcom/jirbo/adcolony/ADCController;->media_manager:Lcom/jirbo/adcolony/ADCMediaManager;

    .line 284
    .local v0, "mm":Lcom/jirbo/adcolony/ADCMediaManager;
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v1, v2, Lcom/jirbo/adcolony/ADCManifest$Ad;->video:Lcom/jirbo/adcolony/ADCManifest$Video;

    .line 286
    .local v1, "video":Lcom/jirbo/adcolony/ADCManifest$Video;
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "video_enabled"

    iget-boolean v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->enabled:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 287
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "video_filepath"

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Video;->filepath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "video_width"

    iget v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->width:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 289
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "video_height"

    iget v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 290
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "video_duration"

    iget-wide v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->duration:D

    invoke-virtual {v2, v3, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 293
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "engagement_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->delay:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 294
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "skip_delay"

    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->delay:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 297
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_close_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_close_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->close:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_reload_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_reload_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->reload:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_back_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_back_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->back:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_forward_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_forward_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->forward:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_stop_image_normal"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_stop_image_down"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->stop:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_glow_button"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->tiny_glow_image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "browser_icon"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->in_app_browser:Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$InAppBrowser;->logo:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "mute"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->mute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "unmute"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->unmute:Lcom/jirbo/adcolony/ADCManifest$ImageInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ImageInfo;->image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "poster_image"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->poster_image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "thumb_image"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->thumb_image:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "advertiser_name"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->advertiser_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "description"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "title"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "native_engagement_enabled"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->native_overlay:Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

    iget-boolean v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->enabled:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 318
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "native_engagement_type"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->native_overlay:Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->click_action_type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "native_engagement_command"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->native_overlay:Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->click_action:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "native_engagement_label"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->native_overlay:Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "skip_video_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "skip_video_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->skip_video:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "engagement_image_normal"

    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_normal:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->properties:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v3, "engagement_image_down"

    iget-object v4, v1, Lcom/jirbo/adcolony/ADCManifest$Video;->in_video_engagement:Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$ButtonInfo;->image_down:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/ADCMediaManager;->local_filepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCConfiguration;->prepare_end_card()V

    goto/16 :goto_0

    .line 278
    .end local v0    # "mm":Lcom/jirbo/adcolony/ADCMediaManager;
    .end local v1    # "video":Lcom/jirbo/adcolony/ADCManifest$Video;
    :cond_2
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCConfiguration;->current_ad:Lcom/jirbo/adcolony/ADCManifest$Ad;

    goto/16 :goto_1
.end method
