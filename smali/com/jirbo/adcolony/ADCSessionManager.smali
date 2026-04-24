.class Lcom/jirbo/adcolony/ADCSessionManager;
.super Ljava/lang/Object;
.source "ADCSessionManager.java"


# instance fields
.field active:Z

.field allow_resume:Z

.field controller:Lcom/jirbo/adcolony/ADCController;

.field current_session_id:Ljava/lang/String;

.field finish_time:D

.field session_time:D

.field should_submit_app_install_event:Z

.field should_submit_session_start_event:Z

.field start_time:D


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_app_install_event:Z

    .line 23
    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_session_start_event:Z

    .line 29
    const-string v0, "uuid"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->current_session_id:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 35
    return-void
.end method


# virtual methods
.method configure()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method load()V
    .locals 3

    .prologue
    .line 132
    new-instance v1, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v2, "session_info.txt"

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCJSON;->load_Table(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v0

    .line 133
    .local v0, "info":Lcom/jirbo/adcolony/ADCData$Table;
    if-eqz v0, :cond_0

    .line 135
    const-string v1, "allow_resume"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->allow_resume:Z

    .line 136
    const-string v1, "start_time"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->start_time:D

    .line 137
    const-string v1, "finish_time"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->finish_time:D

    .line 138
    const-string v1, "session_time"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->session_time:D

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_app_install_event:Z

    goto :goto_0
.end method

.method on_new_session()V
    .locals 3

    .prologue
    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_session_start_event:Z

    .line 149
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->create_uuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->current_session_id:Ljava/lang/String;

    .line 150
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->session_time:D

    .line 153
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    if-nez v1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->count()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->get(I)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCManifest$Zones;->get(I)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    const/4 v2, 0x0

    iput v2, v1, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method on_resume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 61
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "AdColony resuming"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 62
    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 64
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->active:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "AdColony.onResume() called multiple times in succession."

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 65
    :cond_0
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCSessionManager;->active:Z

    .line 66
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSessionManager;->load()V

    .line 68
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v0

    .line 69
    .local v0, "cur_time":D
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->allow_resume:Z

    if-eqz v2, :cond_2

    .line 71
    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->finish_time:D

    sub-double v2, v0, v2

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCSessionManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget v4, v4, Lcom/jirbo/adcolony/ADCConfiguration;->session_timeout_seconds:I

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 73
    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->session_time:D

    invoke-virtual {p0, v2, v3}, Lcom/jirbo/adcolony/ADCSessionManager;->submit_session_duration(D)V

    .line 74
    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->start_time:D

    .line 75
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSessionManager;->on_new_session()V

    .line 83
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->allow_resume:Z

    .line 84
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSessionManager;->save()V

    .line 91
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    .line 92
    return-void

    .line 88
    :cond_2
    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->start_time:D

    .line 89
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSessionManager;->on_new_session()V

    goto :goto_0
.end method

.method on_stop()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "AdColony terminating"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 113
    iget-wide v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->session_time:D

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/ADCSessionManager;->submit_session_duration(D)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->allow_resume:Z

    .line 116
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSessionManager;->save()V

    .line 117
    return-void
.end method

.method on_suspend()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "AdColony suspending"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 97
    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 99
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->active:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "AdColony.onPause() called without initial call to onResume()."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->active:Z

    .line 102
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->allow_resume:Z

    .line 103
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->finish_time:D

    .line 104
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCSessionManager;->save()V

    .line 105
    return-void
.end method

.method save()V
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 122
    .local v0, "save_data":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v1, "allow_resume"

    iget-boolean v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->allow_resume:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 123
    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->start_time:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 124
    const-string v1, "finish_time"

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->finish_time:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 125
    const-string v1, "session_time"

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->session_time:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 127
    new-instance v1, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v2, "session_info.txt"

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/jirbo/adcolony/ADCJSON;->save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 128
    return-void
.end method

.method submit_session_duration(D)V
    .locals 3
    .param p1, "duration"    # D

    .prologue
    .line 164
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Submitting session duration "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/jirbo/adcolony/ADCLog;->println(D)Lcom/jirbo/adcolony/ADCLog;

    .line 165
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 166
    .local v0, "payload":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v1, "session_length"

    double-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 167
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCSessionManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v2, "session_end"

    invoke-virtual {v1, v2, v0}, Lcom/jirbo/adcolony/ADCReportingManager;->track_app_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 168
    return-void
.end method

.method update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCAdManager;->is_configured:Z

    if-eqz v0, :cond_1

    .line 45
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_app_install_event:Z

    if-eqz v0, :cond_0

    .line 47
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_app_install_event:Z

    .line 48
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v1, "install"

    invoke-virtual {v0, v1, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_app_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_session_start_event:Z

    if-eqz v0, :cond_1

    .line 53
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCSessionManager;->should_submit_session_start_event:Z

    .line 54
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCSessionManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->reporting_manager:Lcom/jirbo/adcolony/ADCReportingManager;

    const-string v1, "session_start"

    invoke-virtual {v0, v1, v3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_app_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 57
    :cond_1
    return-void
.end method
