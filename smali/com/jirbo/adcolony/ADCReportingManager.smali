.class Lcom/jirbo/adcolony/ADCReportingManager;
.super Ljava/lang/Object;
.source "ADCReportingManager.java"

# interfaces
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCReportingManager$Event;
    }
.end annotation


# instance fields
.field active_submissions:I

.field controller:Lcom/jirbo/adcolony/ADCController;

.field culling_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCReportingManager$Event;",
            ">;"
        }
    .end annotation
.end field

.field modified:Z

.field pending_events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCReportingManager$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 2
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCReportingManager;->culling_list:Ljava/util/ArrayList;

    .line 11
    iput v1, p0, Lcom/jirbo/adcolony/ADCReportingManager;->active_submissions:I

    .line 12
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCReportingManager;->modified:Z

    .line 17
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 18
    return-void
.end method


# virtual methods
.method configure()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCReportingManager;->load()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCReportingManager;->active_submissions:I

    .line 166
    return-void
.end method

.method dispatch_events()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 241
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 269
    :cond_0
    return-void

    .line 243
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->connected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 247
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v0

    .line 248
    .local v0, "cur_time":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 250
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;

    .line 251
    .local v3, "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    iget-wide v5, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->next_attempt_time:D

    cmpg-double v5, v5, v0

    if-gez v5, :cond_5

    iget-boolean v5, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->submitting:Z

    if-nez v5, :cond_5

    .line 253
    iget v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->active_submissions:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 254
    iget v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->active_submissions:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->active_submissions:I

    .line 255
    iput-boolean v8, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->submitting:Z

    .line 257
    new-instance v5, Lcom/jirbo/adcolony/ADCDownload;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v7, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->url:Ljava/lang/String;

    invoke-direct {v5, v6, v7, p0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V

    invoke-virtual {v5, v3}, Lcom/jirbo/adcolony/ADCDownload;->with_info(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;

    move-result-object v2

    .line 258
    .local v2, "download":Lcom/jirbo/adcolony/ADCDownload;
    iget-boolean v5, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->third_party:Z

    if-eqz v5, :cond_3

    iput-boolean v8, v2, Lcom/jirbo/adcolony/ADCDownload;->third_party_tracking:Z

    .line 259
    :cond_3
    iget-object v5, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->payload:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 261
    const-string v5, "application/json"

    iget-object v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->payload:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/jirbo/adcolony/ADCDownload;->with_post_data(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;

    .line 264
    :cond_4
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Submitting \'"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    iget-object v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    const-string v6, "\' event."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 265
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCDownload;->start()V

    .line 266
    sput-boolean v8, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 248
    .end local v2    # "download":Lcom/jirbo/adcolony/ADCDownload;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method load()V
    .locals 6

    .prologue
    .line 170
    const/4 v4, 0x1

    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 171
    new-instance v4, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v5, "tracking_info.txt"

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/jirbo/adcolony/ADCJSON;->load_List(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v3

    .line 172
    .local v3, "tracking_info":Lcom/jirbo/adcolony/ADCData$List;
    if-eqz v3, :cond_2

    .line 174
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 177
    invoke-virtual {v3, v1}, Lcom/jirbo/adcolony/ADCData$List;->get_Table(I)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    .line 178
    .local v2, "src":Lcom/jirbo/adcolony/ADCData$Table;
    new-instance v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCReportingManager$Event;-><init>()V

    .line 179
    .local v0, "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    .line 180
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->url:Ljava/lang/String;

    .line 181
    const-string v4, "payload"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->payload:Ljava/lang/String;

    .line 182
    const-string v4, "attempts"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->attempts:I

    .line 183
    const-string v4, "third_party"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->third_party:Z

    .line 185
    iget-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    const-string v5, "v4vc_callback"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    const-string v5, "reward_v4vc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    :cond_0
    const-string v4, "v4vc_name"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_name:Ljava/lang/String;

    .line 188
    const-string v4, "v4vc_amount"

    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_amount:I

    .line 190
    :cond_1
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    .end local v1    # "i":I
    .end local v2    # "src":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_2
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "Loaded "

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(I)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    const-string v5, " events"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 194
    return-void
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 11
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 273
    sput-boolean v9, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 274
    iput-boolean v9, p0, Lcom/jirbo/adcolony/ADCReportingManager;->modified:Z

    .line 275
    iget v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->active_submissions:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->active_submissions:I

    .line 276
    iget-object v3, p1, Lcom/jirbo/adcolony/ADCDownload;->info:Ljava/lang/Object;

    check-cast v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;

    .line 277
    .local v3, "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "on_download_finished - event.type = "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget-object v7, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 278
    iput-boolean v10, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->submitting:Z

    .line 280
    iget-boolean v5, p1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    .line 281
    .local v5, "success":Z
    if-eqz v5, :cond_0

    iget-object v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->payload:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 283
    iget-object v6, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/jirbo/adcolony/ADCJSON;->parse_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v4

    .line 284
    .local v4, "result":Lcom/jirbo/adcolony/ADCData$Table;
    if-eqz v4, :cond_8

    .line 286
    const-string v6, "status"

    invoke-virtual {v4, v6}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 287
    if-eqz v5, :cond_0

    .line 289
    iget-object v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    const-string v7, "reward_v4vc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 291
    const-string v6, "v4vc_status"

    invoke-virtual {v4, v6}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 293
    const-string v6, "v4vc_callback"

    invoke-virtual {v4, v6}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "callback_url":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 297
    new-instance v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCReportingManager$Event;-><init>()V

    .line 298
    .local v0, "callback_event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    const-string v6, "v4vc_callback"

    iput-object v6, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    .line 299
    iput-object v1, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->url:Ljava/lang/String;

    .line 300
    iget-object v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_name:Ljava/lang/String;

    iput-object v6, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_name:Ljava/lang/String;

    .line 301
    iget v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_amount:I

    iput v6, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_amount:I

    .line 302
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v0    # "callback_event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    .end local v1    # "callback_url":Ljava/lang/String;
    .end local v4    # "result":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    iget-object v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    const-string v7, "v4vc_callback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 327
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "v4vc_callback response:"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget-object v7, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 328
    iget-object v6, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    const-string v7, "vc_success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_9

    .line 330
    sget-object v6, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v9, v6, Lcom/jirbo/adcolony/ADCVideo;->rewarded:Z

    .line 331
    :cond_1
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "v4vc_callback success"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 332
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v7, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_name:Ljava/lang/String;

    iget v8, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_amount:I

    invoke-virtual {v6, v9, v7, v8}, Lcom/jirbo/adcolony/ADCController;->on_v4vc_result(ZLjava/lang/String;I)V

    .line 347
    :cond_2
    :goto_1
    if-eqz v5, :cond_c

    .line 349
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Event submission SUCCESS for type: "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget-object v7, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 350
    iput-boolean v9, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->discard:Z

    .line 375
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    iget-boolean v6, v6, Lcom/jirbo/adcolony/ADCSessionManager;->active:Z

    if-nez v6, :cond_4

    .line 377
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCReportingManager;->save()V

    .line 379
    :cond_4
    return-void

    .line 307
    .restart local v1    # "callback_url":Ljava/lang/String;
    .restart local v4    # "result":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_5
    sget-object v6, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/jirbo/adcolony/ADC;->current_video:Lcom/jirbo/adcolony/ADCVideo;

    iput-boolean v9, v6, Lcom/jirbo/adcolony/ADCVideo;->rewarded:Z

    .line 308
    :cond_6
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Client-side V4VC success"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 314
    .end local v1    # "callback_url":Ljava/lang/String;
    :cond_7
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Client-side V4VC failure"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 321
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 334
    .end local v4    # "result":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_9
    iget-object v6, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    const-string v7, "vc_decline"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_a

    iget-object v6, p1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    const-string v7, "vc_noreward"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v8, :cond_b

    .line 336
    :cond_a
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Server-side V4VC failure: "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget-object v7, p1, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 337
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "v4vc_callback declined"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 338
    iget-object v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    const-string v7, ""

    invoke-virtual {v6, v10, v7, v10}, Lcom/jirbo/adcolony/ADCController;->on_v4vc_result(ZLjava/lang/String;I)V

    goto :goto_1

    .line 342
    :cond_b
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Server-side V4VC failure: "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget-object v7, p1, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 343
    const/4 v5, 0x0

    goto :goto_1

    .line 354
    :cond_c
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Event submission FAILED for type: "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget-object v7, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    const-string v7, " on try "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget v7, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->attempts:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(I)Lcom/jirbo/adcolony/ADCLog;

    .line 355
    iget v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->attempts:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->attempts:I

    .line 357
    iget v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->attempts:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_d

    .line 359
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Discarding event after 24 attempts to report."

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 360
    iput-boolean v9, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->discard:Z

    .line 362
    iget-object v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    const-string v7, "v4vc_callback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    const-string v7, ""

    invoke-virtual {v6, v10, v7, v10}, Lcom/jirbo/adcolony/ADCController;->on_v4vc_result(ZLjava/lang/String;I)V

    goto/16 :goto_2

    .line 366
    :cond_d
    const/16 v2, 0x14

    .line 367
    .local v2, "delay":I
    iget v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->next_attempt_delay:I

    if-lez v6, :cond_e

    iget v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->next_attempt_delay:I

    mul-int/lit8 v2, v6, 0x3

    .line 368
    :cond_e
    const/16 v6, 0x2710

    if-le v2, v6, :cond_f

    const/16 v2, 0x2710

    .line 369
    :cond_f
    sget-object v6, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v7, "Retrying in "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/jirbo/adcolony/ADCLog;->print(I)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    const-string v7, " seconds (attempt "

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    iget v7, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->attempts:I

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(I)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 370
    iput v2, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->next_attempt_delay:I

    .line 371
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v6

    int-to-double v8, v2

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/jirbo/adcolony/ADCReportingManager$Event;->next_attempt_time:D

    goto/16 :goto_2
.end method

.method save()V
    .locals 6

    .prologue
    .line 198
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->culling_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->culling_list:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 201
    new-instance v3, Lcom/jirbo/adcolony/ADCData$List;

    invoke-direct {v3}, Lcom/jirbo/adcolony/ADCData$List;-><init>()V

    .line 202
    .local v3, "tracking_info":Lcom/jirbo/adcolony/ADCData$List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->culling_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 204
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->culling_list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;

    .line 205
    .local v0, "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    iget-boolean v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->discard:Z

    if-nez v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 210
    .local v1, "event_info":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v4, "type"

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "url"

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->url:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->payload:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, "payload"

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->payload:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    const-string v4, "attempts"

    iget v5, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->attempts:I

    invoke-virtual {v1, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 214
    iget-object v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 216
    const-string v4, "v4vc_name"

    iget-object v5, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v4, "v4vc_amount"

    iget v5, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_amount:I

    invoke-virtual {v1, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 219
    :cond_1
    iget-boolean v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->third_party:Z

    if-eqz v4, :cond_2

    const-string v4, "third_party"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 220
    :cond_2
    invoke-virtual {v3, v1}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    .line 202
    .end local v1    # "event_info":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    :cond_4
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->culling_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 225
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "Saving tracking_info ("

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(I)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    const-string v5, " events)"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 226
    new-instance v4, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v5, "tracking_info.txt"

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/jirbo/adcolony/ADCJSON;->save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$List;)V

    .line 227
    return-void
.end method

.method track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "payload"    # Lcom/jirbo/adcolony/ADCData$Table;
    .param p3, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 65
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "No such event type:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    if-nez p2, :cond_1

    .line 70
    new-instance p2, Lcom/jirbo/adcolony/ADCData$Table;

    .end local p2    # "payload":Lcom/jirbo/adcolony/ADCData$Table;
    invoke-direct {p2}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 71
    .restart local p2    # "payload":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v0, "replay"

    iget-boolean v1, p3, Lcom/jirbo/adcolony/AdColonyAd;->replay:Z

    invoke-virtual {p2, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 73
    :cond_1
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$Ad;->ad_tracking:Lcom/jirbo/adcolony/ADCManifest$AdTracking;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$AdTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_adcolony_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 74
    iget-object v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->ad_info:Lcom/jirbo/adcolony/ADCManifest$Ad;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$Ad;->third_party_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyTracking;->lookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCReportingManager;->track_third_party_event(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 59
    return-void
.end method

.method track_ad_request(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 4
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    .line 22
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    .line 26
    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v2

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Ad request for zone "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 29
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->zones:Lcom/jirbo/adcolony/ADCManifest$Zones;

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCManifest$Zones;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;

    move-result-object v1

    .line 30
    .local v1, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->zone_tracking:Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->zone_tracking:Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;->request:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 32
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 33
    .local v0, "request_payload":Lcom/jirbo/adcolony/ADCData$Table;
    sget v2, Lcom/jirbo/adcolony/ADC;->error_code:I

    if-nez v2, :cond_2

    const-string v2, "request_denied"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 35
    :goto_1
    const-string v2, "request_denied_reason"

    sget v3, Lcom/jirbo/adcolony/ADC;->error_code:I

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 36
    const-string v2, "request"

    iget-object v3, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->zone_tracking:Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;->request:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v0, p2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_adcolony_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 37
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Tracking ad request - URL : "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    iget-object v3, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->zone_tracking:Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$ZoneTracking;->request:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 34
    :cond_2
    const-string v2, "request_denied"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method track_adcolony_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "payload"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/ADCReportingManager;->track_adcolony_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 80
    return-void
.end method

.method track_adcolony_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "payload"    # Lcom/jirbo/adcolony/ADCData$Table;
    .param p4, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    const/4 v5, 0x1

    .line 83
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Lcom/jirbo/adcolony/ADCData$Table;

    .end local p3    # "payload":Lcom/jirbo/adcolony/ADCData$Table;
    invoke-direct {p3}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 86
    .restart local p3    # "payload":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_2
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->create_uuid()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "guid":Ljava/lang/String;
    if-eqz p4, :cond_3

    const-string v2, "asi"

    iget-object v3, p4, Lcom/jirbo/adcolony/AdColonyAd;->asi:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_3
    const-string v2, "sid"

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCSessionManager;->current_session_id:Ljava/lang/String;

    invoke-virtual {p3, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "guid"

    invoke-virtual {p3, v2, v1}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "guid_key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DUBu6wJ27y6xs7VWmNDw67DD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jirbo/adcolony/ADCUtil;->calculate_sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCReportingManager$Event;-><init>()V

    .line 93
    .local v0, "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    iput-object p1, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    .line 94
    iput-object p2, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->url:Ljava/lang/String;

    .line 95
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "EVENT ----------------------------"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 96
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "EVENT - TYPE = "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 97
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "EVENT - URL  = "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 98
    invoke-virtual {p3}, Lcom/jirbo/adcolony/ADCData$Table;->to_json()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->payload:Ljava/lang/String;

    .line 100
    const-string v2, "reward_v4vc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    const-string v2, "v4vc_name"

    invoke-virtual {p3, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_name:Ljava/lang/String;

    .line 103
    const-string v2, "v4vc_amount"

    invoke-virtual {p3, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->v4vc_amount:I

    .line 106
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCReportingManager;->modified:Z

    .line 109
    sput-boolean v5, Lcom/jirbo/adcolony/ADC;->active:Z

    goto/16 :goto_0
.end method

.method track_app_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "payload"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v0, v2, Lcom/jirbo/adcolony/ADCManifest$App;->app_tracking:Lcom/jirbo/adcolony/ADCManifest$AppTracking;

    .line 44
    .local v0, "adc_tracking":Lcom/jirbo/adcolony/ADCManifest$AppTracking;
    if-eqz v0, :cond_0

    .line 46
    iget-object v2, v0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_adcolony_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCReportingManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v1, v2, Lcom/jirbo/adcolony/ADCManifest$App;->third_party_app_tracking:Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;

    .line 50
    .local v1, "third_party_tracking":Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;
    if-eqz v1, :cond_1

    .line 52
    iget-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->lookup:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Lcom/jirbo/adcolony/ADCReportingManager;->track_third_party_event(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    :cond_1
    return-void
.end method

.method track_third_party_event(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 114
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 118
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCReportingManager$Event;-><init>()V

    .line 121
    .local v0, "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    iput-object p1, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->type:Ljava/lang/String;

    .line 122
    iput-object v2, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->url:Ljava/lang/String;

    .line 123
    iput-boolean v4, v0, Lcom/jirbo/adcolony/ADCReportingManager$Event;->third_party:Z

    .line 124
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCReportingManager;->pending_events:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "event":Lcom/jirbo/adcolony/ADCReportingManager$Event;
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCReportingManager;->modified:Z

    .line 128
    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->active:Z

    goto :goto_0
.end method

.method track_video_progress(DLcom/jirbo/adcolony/AdColonyAd;)V
    .locals 12
    .param p1, "progress"    # D
    .param p3, "ad"    # Lcom/jirbo/adcolony/AdColonyAd;

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    .line 133
    iget-wide v0, p3, Lcom/jirbo/adcolony/AdColonyAd;->current_progress:D

    .line 134
    .local v0, "current_progress":D
    cmpg-double v3, p1, v0

    if-gez v3, :cond_0

    .line 160
    :goto_0
    return-void

    .line 135
    :cond_0
    cmpg-double v3, v0, v4

    if-gez v3, :cond_1

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_1

    .line 137
    iget-object v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->zone_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->view_format:Ljava/lang/String;

    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "native_first_quartile"

    invoke-virtual {p0, v3, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 140
    :cond_1
    :goto_1
    cmpg-double v3, v0, v6

    if-gez v3, :cond_2

    cmpl-double v3, p1, v6

    if-ltz v3, :cond_2

    .line 142
    iget-object v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->zone_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->view_format:Ljava/lang/String;

    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "native_midpoint"

    invoke-virtual {p0, v3, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 145
    :cond_2
    :goto_2
    cmpg-double v3, v0, v8

    if-gez v3, :cond_3

    cmpl-double v3, p1, v8

    if-ltz v3, :cond_3

    .line 147
    iget-object v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->zone_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/jirbo/adcolony/AdColony;->isZoneV4VC(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->view_format:Ljava/lang/String;

    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "native_third_quartile"

    invoke-virtual {p0, v3, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 150
    :cond_3
    :goto_3
    cmpg-double v3, v0, v10

    if-gez v3, :cond_4

    cmpl-double v3, p1, v10

    if-ltz v3, :cond_4

    iget-object v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->view_format:Ljava/lang/String;

    const-string v4, "native"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 152
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Tracking ad event - complete"

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    .line 153
    new-instance v2, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 154
    .local v2, "table":Lcom/jirbo/adcolony/ADCData$Table;
    iget-boolean v3, p3, Lcom/jirbo/adcolony/AdColonyAd;->is_native_expanded:Z

    if-eqz v3, :cond_8

    const-string v3, "ad_slot"

    iget-object v4, p3, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v4, v4, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 156
    :goto_4
    const-string v3, "replay"

    iget-boolean v4, p3, Lcom/jirbo/adcolony/AdColonyAd;->replay:Z

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 157
    const-string v3, "complete"

    invoke-virtual {p0, v3, v2, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 159
    .end local v2    # "table":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_4
    iput-wide p1, p3, Lcom/jirbo/adcolony/AdColonyAd;->current_progress:D

    goto/16 :goto_0

    .line 138
    :cond_5
    const-string v3, "first_quartile"

    invoke-virtual {p0, v3, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto :goto_1

    .line 143
    :cond_6
    const-string v3, "midpoint"

    invoke-virtual {p0, v3, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto :goto_2

    .line 148
    :cond_7
    const-string v3, "third_quartile"

    invoke-virtual {p0, v3, p3}, Lcom/jirbo/adcolony/ADCReportingManager;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    goto :goto_3

    .line 155
    .restart local v2    # "table":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_8
    const-string v3, "ad_slot"

    iget-object v4, p3, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v4, v4, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    invoke-virtual {v2, v3, v4}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    goto :goto_4
.end method

.method update()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCReportingManager;->modified:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCReportingManager;->modified:Z

    .line 234
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCReportingManager;->save()V

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCReportingManager;->dispatch_events()V

    .line 237
    return-void
.end method
