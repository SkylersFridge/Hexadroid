.class Lcom/jirbo/adcolony/ADCMRAIDHandler;
.super Ljava/lang/Object;
.source "ADCMRAIDHandler.java"


# instance fields
.field ad:Lcom/jirbo/adcolony/AdColonyAd;

.field ctx:Landroid/app/Activity;

.field end_card_web_view:Landroid/webkit/WebView;

.field h:Landroid/os/Handler;

.field play_order_index_json:Ljava/lang/String;

.field r:Ljava/lang/Runnable;

.field video:Lcom/jirbo/adcolony/ADCVideo;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 1
    .param p1, "video"    # Lcom/jirbo/adcolony/ADCVideo;
    .param p2, "end_card_web_view"    # Landroid/webkit/WebView;
    .param p3, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->end_card_web_view:Landroid/webkit/WebView;

    .line 51
    iput-object p3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    .line 52
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/jirbo/adcolony/ADCMRAIDHandler$1;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCMRAIDHandler$1;-><init>(Lcom/jirbo/adcolony/ADCMRAIDHandler;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    .line 61
    return-void
.end method


# virtual methods
.method MRAIDCommandAutoPlay(Ljava/util/HashMap;)V
    .locals 2
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 576
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "ADC [info] MRAIDCommandCheckAutoPlay called with parameters: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 577
    return-void
.end method

.method MRAIDCommandCheckAppPresence(Ljava/util/HashMap;)V
    .locals 4
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 567
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "ADC [info] MRAIDCommandCheckAppPresence called with parameters: "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 568
    const-string v2, "handle"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "handle":Ljava/lang/String;
    invoke-static {v0}, Lcom/jirbo/adcolony/ADCUtil;->application_exists(Ljava/lang/String;)Z

    move-result v1

    .line 570
    .local v1, "status":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adc_bridge.fireAppPresenceEvent(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->execute_javascript(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method MRAIDCommandClose()V
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "ADC [info] MRAIDCommandClose called"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 199
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 200
    sget-object v0, Lcom/jirbo/adcolony/ADC;->end_card_finished_handler:Lcom/jirbo/adcolony/ADC$EndCardFinished;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADC$EndCardFinished;->notify_continuation(Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 201
    return-void
.end method

.method MRAIDCommandCreateCalendarEvent(Ljava/util/HashMap;)V
    .locals 38
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 292
    sget-object v33, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v34, "ADC [info] MRAIDCommandCreateCalendarEvent called with parameters: "

    invoke-virtual/range {v33 .. v34}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 294
    const/16 v33, 0x1

    sput-boolean v33, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    move-object/from16 v34, v0

    const-wide/16 v35, 0x3e8

    invoke-virtual/range {v33 .. v36}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    const-string v33, "html5_interaction"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    move-object/from16 v35, v0

    invoke-static/range {v33 .. v35}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 301
    const/16 v29, 0x0

    .local v29, "time_start":Ljava/util/Date;
    const/16 v22, 0x0

    .local v22, "time_end":Ljava/util/Date;
    const/16 v28, 0x0

    .local v28, "time_reminder":Ljava/util/Date;
    const/16 v25, 0x0

    .line 304
    .local v25, "time_expire":Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v33, "yyyy-MM-dd\'T\'hh:mmZ"

    move-object/from16 v0, v33

    invoke-direct {v8, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 305
    .local v8, "df":Ljava/text/DateFormat;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v33, "yyyy-MM-dd\'T\'hh:mm:ssZ"

    move-object/from16 v0, v33

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 306
    .local v9, "df2":Ljava/text/DateFormat;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v33, "yyyy-MM-dd"

    move-object/from16 v0, v33

    invoke-direct {v10, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .local v10, "df3":Ljava/text/DateFormat;
    const-string v33, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "description":Ljava/lang/String;
    const-string v33, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 311
    .local v15, "location":Ljava/lang/String;
    const-string v33, "start"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 312
    .local v20, "start":Ljava/lang/String;
    const-string v33, "end"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 313
    .local v12, "end":Ljava/lang/String;
    const-string v33, "summary"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 314
    .local v21, "summary":Ljava/lang/String;
    const-string v33, "recurrence"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 315
    .local v18, "recurrence":Ljava/lang/String;
    const-string v13, ""

    .line 316
    .local v13, "expires":Ljava/lang/String;
    const-string v14, ""

    .line 318
    .local v14, "frequency":Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 321
    .local v5, "count":J
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v19, "recurrence_map":Ljava/util/HashMap;
    const-string v33, "\""

    const-string v34, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "{"

    const-string v35, ""

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "}"

    const-string v35, ""

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 325
    const-string v33, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 327
    const-string v33, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v35, v0

    const/16 v33, 0x0

    :goto_0
    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    aget-object v17, v34, v33

    .line 329
    .local v17, "pair":Ljava/lang/String;
    const-string v36, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v16, v36, v37

    .line 330
    .local v16, "name":Ljava/lang/String;
    const-string v36, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    aget-object v32, v36, v37

    .line 331
    .local v32, "value":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 333
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "pair":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_0
    const-string v33, "expires"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 334
    const-string v33, "frequency"

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 335
    sget-object v33, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v34, "Calendar Recurrence - "

    invoke-virtual/range {v33 .. v34}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 336
    sget-object v33, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v34, "Calendar Recurrence - frequency = "

    invoke-virtual/range {v33 .. v34}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 337
    sget-object v33, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v34, "Calendar Recurrence - expires =  "

    invoke-virtual/range {v33 .. v34}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 340
    :cond_1
    const-string v33, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 342
    const-string v33, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 348
    :cond_2
    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v29

    .line 349
    invoke-virtual {v8, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v22

    .line 357
    :goto_1
    if-nez v29, :cond_3

    .line 361
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v29

    .line 362
    invoke-virtual {v9, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v22

    .line 373
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v10, v13}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v25

    .line 380
    :goto_3
    if-nez v29, :cond_4

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    move-object/from16 v33, v0

    const-string v34, "Unable to create Calendar Event."

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    .line 447
    :goto_4
    return-void

    .line 387
    :cond_4
    invoke-virtual/range {v29 .. v29}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    .line 388
    .local v30, "time_start_epoch":J
    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    .line 389
    .local v23, "time_end_epoch":J
    const-wide/16 v26, 0x0

    .line 392
    .local v26, "time_expire_seconds":J
    if-eqz v25, :cond_5

    .line 394
    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v33

    invoke-virtual/range {v29 .. v29}, Ljava/util/Date;->getTime()J

    move-result-wide v35

    sub-long v33, v33, v35

    const-wide/16 v35, 0x3e8

    div-long v26, v33, v35

    .line 398
    :cond_5
    const-string v33, "DAILY"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 400
    const-wide/32 v33, 0x15180

    div-long v33, v26, v33

    const-wide/16 v35, 0x1

    add-long v5, v33, v35

    .line 417
    :cond_6
    :goto_5
    const-string v33, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_a

    .line 419
    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.EDIT"

    invoke-direct/range {v33 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "vnd.android.cursor.item/event"

    .line 420
    invoke-virtual/range {v33 .. v34}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "title"

    .line 421
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "description"

    .line 422
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "beginTime"

    .line 423
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "endTime"

    .line 424
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "rrule"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "FREQ="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ";"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "COUNT="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 425
    invoke-virtual/range {v33 .. v35}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 426
    .local v4, "calendar_intent":Landroid/content/Intent;
    sget-object v33, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v34, "Calendar Recurrence - count = "

    invoke-virtual/range {v33 .. v34}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v33

    long-to-double v0, v5

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Lcom/jirbo/adcolony/ADCLog;->println(D)Lcom/jirbo/adcolony/ADCLog;

    .line 441
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 443
    :catch_0
    move-exception v11

    .line 445
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    move-object/from16 v33, v0

    const-string v34, "Unable to create Calendar Event."

    const/16 v35, 0x0

    invoke-static/range {v33 .. v35}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 402
    .end local v4    # "calendar_intent":Landroid/content/Intent;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v33, "WEEKLY"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 404
    const-wide/32 v33, 0x93a80

    div-long v33, v26, v33

    const-wide/16 v35, 0x1

    add-long v5, v33, v35

    goto/16 :goto_5

    .line 406
    :cond_8
    const-string v33, "MONTHLY"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 408
    const-wide/32 v33, 0x2820a8

    div-long v33, v26, v33

    const-wide/16 v35, 0x1

    add-long v5, v33, v35

    goto/16 :goto_5

    .line 410
    :cond_9
    const-string v33, "YEARLY"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 412
    const-wide/32 v33, 0x1e187e0

    div-long v33, v26, v33

    const-wide/16 v35, 0x1

    add-long v5, v33, v35

    goto/16 :goto_5

    .line 430
    :cond_a
    new-instance v33, Landroid/content/Intent;

    const-string v34, "android.intent.action.EDIT"

    invoke-direct/range {v33 .. v34}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v34, "vnd.android.cursor.item/event"

    .line 431
    invoke-virtual/range {v33 .. v34}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "title"

    .line 432
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "description"

    .line 433
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "beginTime"

    .line 434
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v33

    const-string v34, "endTime"

    .line 435
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    .restart local v4    # "calendar_intent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 375
    .end local v4    # "calendar_intent":Landroid/content/Intent;
    .end local v23    # "time_end_epoch":J
    .end local v26    # "time_expire_seconds":J
    .end local v30    # "time_start_epoch":J
    :catch_1
    move-exception v33

    goto/16 :goto_3

    .line 364
    :catch_2
    move-exception v33

    goto/16 :goto_2

    .line 351
    :catch_3
    move-exception v33

    goto/16 :goto_1
.end method

.method MRAIDCommandExpand(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 284
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "ADC [info] MRAIDCommandExpand called with url: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 287
    const-string v0, "adc_bridge.fireChangeEvent({state:\'expanded\'});"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->execute_javascript(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method MRAIDCommandLaunchApp(Ljava/util/HashMap;)V
    .locals 7
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 542
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "ADC [info] MRAIDCommandLaunchApp called with parameters: "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 544
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 545
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    const-string v3, "handle"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "handle":Ljava/lang/String;
    const-string v3, "html5_interaction"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v3, v4, v5}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 555
    :try_start_0
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 556
    .local v0, "app_intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v0    # "app_intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v1

    .line 560
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v4, "Failed to launch external application."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method MRAIDCommandMail(Ljava/util/HashMap;)V
    .locals 10
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 451
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "ADC [info] MRAIDCommandMail called with parameters: "

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 453
    sput-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 454
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    const-string v5, "subject"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "subject":Ljava/lang/String;
    const-string v5, "body"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "body":Ljava/lang/String;
    const-string v5, "to"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "to":Ljava/lang/String;
    const-string v5, "html5_interaction"

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v5, v6, v7}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 466
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v2, "email_intent":Landroid/content/Intent;
    const-string v5, "plain/text"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.EMAIL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    .line 469
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v2    # "email_intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v6, "Unable to launch email client."

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method MRAIDCommandOpen(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 230
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "ADC [info] MRAIDCommandOpen called with url: "

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 232
    const/4 v4, 0x1

    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 233
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "formatted_url":Ljava/lang/String;
    const-string v4, "adcvideo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    const-string v4, "adcvideo"

    const-string v5, "http"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v4, v2}, Lcom/jirbo/adcolony/ADCVideo;->playVideo(Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v4, "youtube"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    const/16 v4, 0x76

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vnd.youtube:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    const-string v4, "safari"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "safari"

    const-string v5, "http"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 257
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v4, "browser"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 265
    const-string v4, "html5_interaction"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v4, v5}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 266
    const-string v4, "browser"

    const-string v5, "http"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 274
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v4, "html5_interaction"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v4, v5, v6}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 275
    sput-object v2, Lcom/jirbo/adcolony/AdColonyBrowser;->url:Ljava/lang/String;

    .line 276
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-class v5, Lcom/jirbo/adcolony/AdColonyBrowser;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, "browser_intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method MRAIDCommandOpenStore(Ljava/lang/String;)V
    .locals 7
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "ADC [info] MRAIDCommandOpenStore called with item: "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 207
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 208
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    const-string v3, "html5_interaction"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v3, v4, v5}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "formatted_item":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v2, "store_intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v2    # "store_intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v4, "Unable to open store."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method MRAIDCommandSMS(Ljava/util/HashMap;)V
    .locals 8
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 482
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "ADC [info] MRAIDCommandSMS called with parameters: "

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 484
    const/4 v4, 0x1

    sput-boolean v4, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 485
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    const-string v4, "to"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "number":Ljava/lang/String;
    const-string v4, "body"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "body":Ljava/lang/String;
    const-string v4, "html5_interaction"

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v6, v6, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v4, v5, v6}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 496
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "sms_body"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 497
    .local v3, "sms_intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v3    # "sms_intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 503
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v5, "Failed to create sms."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method MRAIDCommandSendADCEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 192
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "ADC [info] MRAIDCommandSendADCEvent called with type: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 193
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {p1, v0}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 194
    return-void
.end method

.method MRAIDCommandSendCustomADCEvent(Ljava/util/HashMap;)V
    .locals 4
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 534
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "ADC [info] MRAIDCommandSendCustomADCEvent called with parameters: "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 535
    const-string v2, "event_type"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "event_type":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"event_type\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v3, v3, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v3, v3, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "json":Ljava/lang/String;
    const-string v2, "custom_event"

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v2, v1, v3}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 538
    return-void
.end method

.method MRAIDCommandSocialPost(Ljava/util/HashMap;)V
    .locals 7
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 119
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 120
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    const-string v3, "text"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "text":Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "social_intent":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v4, "Share this post using..."

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method MRAIDCommandTakeScreenshot()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 133
    sput-boolean v14, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 134
    iget-object v9, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v10, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v11, 0x3e8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    const-string v9, "html5_interaction"

    iget-object v10, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    iget-object v11, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v11, v11, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v9, v10, v11}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Pictures/AdColony_Screenshots/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "AdColony_Screenshot_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "path":Ljava/lang/String;
    iget-object v9, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->end_card_web_view:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 144
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8, v14}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 145
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v13}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 149
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Pictures"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v7, "pictures":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/Pictures/AdColony_Screenshots"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "adcolony_screencaps":Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 162
    :goto_0
    const/4 v3, 0x0

    .line 163
    .local v3, "fout":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v5, "image_file":Ljava/io/File;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v3    # "fout":Ljava/io/OutputStream;
    .local v4, "fout":Ljava/io/OutputStream;
    :try_start_2
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v1, v9, v10, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 168
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 169
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 170
    iget-object v9, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x0

    new-instance v12, Lcom/jirbo/adcolony/ADCMRAIDHandler$2;

    invoke-direct {v12, p0}, Lcom/jirbo/adcolony/ADCMRAIDHandler$2;-><init>(Lcom/jirbo/adcolony/ADCMRAIDHandler;)V

    invoke-static {v9, v10, v11, v12}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 188
    .end local v4    # "fout":Ljava/io/OutputStream;
    .restart local v3    # "fout":Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    iget-object v9, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v10, "Error saving screenshot."

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 181
    sget-object v9, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v10, "ADC [info] FileNotFoundException in MRAIDCommandTakeScreenshot"

    invoke-virtual {v9, v10}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_1

    .line 183
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    iget-object v9, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v10, "Error saving screenshot."

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 186
    sget-object v9, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v10, "ADC [info] IOException in MRAIDCommandTakeScreenshot"

    invoke-virtual {v9, v10}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_1

    .line 183
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fout":Ljava/io/OutputStream;
    .restart local v4    # "fout":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/OutputStream;
    .restart local v3    # "fout":Ljava/io/OutputStream;
    goto :goto_3

    .line 178
    .end local v3    # "fout":Ljava/io/OutputStream;
    .restart local v4    # "fout":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/OutputStream;
    .restart local v3    # "fout":Ljava/io/OutputStream;
    goto :goto_2

    .line 156
    .end local v3    # "fout":Ljava/io/OutputStream;
    .end local v5    # "image_file":Ljava/io/File;
    :catch_4
    move-exception v9

    goto :goto_0
.end method

.method MRAIDCommandTel(Ljava/util/HashMap;)V
    .locals 7
    .param p1, "parameter_map"    # Ljava/util/HashMap;

    .prologue
    .line 509
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "ADC [info] MRAIDCommandTel called with parameters: "

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 511
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 512
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->h:Landroid/os/Handler;

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->r:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    const-string v3, "number"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "number":Ljava/lang/String;
    const-string v3, "html5_interaction"

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->video:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCVideo;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    invoke-static {v3, v4, v5}, Lcom/jirbo/adcolony/ADC;->track_ad_event(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/AdColonyAd;)V

    .line 522
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 523
    .local v0, "dial_intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v0    # "dial_intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ctx:Landroid/app/Activity;

    const-string v4, "Failed to dial number."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 587
    if-nez p1, :cond_0

    const-string v0, ""

    .line 588
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method execute_javascript(Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->end_card_web_view:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method handleMRAIDCommand(Ljava/lang/String;)V
    .locals 12
    .param p1, "call"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 65
    const-string v7, "mraid://"

    const-string v9, ""

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 69
    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    const-string v7, "\\?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "call_elements":[Ljava/lang/String;
    aget-object v2, v0, v8

    .line 82
    .local v2, "call_type":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    aget-object v7, v0, v11

    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "call_parameter_list":[Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v5, "parameter_map":Ljava/util/HashMap;
    array-length v9, v1

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_2

    aget-object v4, v1, v7

    .line 89
    .local v4, "parameter":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v3, v10, v8

    .line 90
    .local v3, "name":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v6, v10, v11

    .line 91
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 76
    .end local v0    # "call_elements":[Ljava/lang/String;
    .end local v1    # "call_parameter_list":[Ljava/lang/String;
    .end local v2    # "call_type":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v5    # "parameter_map":Ljava/util/HashMap;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 77
    .restart local v0    # "call_elements":[Ljava/lang/String;
    move-object v2, p1

    .restart local v2    # "call_type":Ljava/lang/String;
    goto :goto_0

    .line 83
    :cond_1
    new-array v1, v8, [Ljava/lang/String;

    .restart local v1    # "call_parameter_list":[Ljava/lang/String;
    goto :goto_1

    .line 95
    .restart local v5    # "parameter_map":Ljava/util/HashMap;
    :cond_2
    sget-object v7, Lcom/jirbo/adcolony/ADC;->current_ad:Lcom/jirbo/adcolony/AdColonyAd;

    iput-object v7, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{\"ad_slot\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->ad:Lcom/jirbo/adcolony/AdColonyAd;

    iget-object v8, v8, Lcom/jirbo/adcolony/AdColonyAd;->zone_info:Lcom/jirbo/adcolony/ADCManifest$Zone;

    iget-object v8, v8, Lcom/jirbo/adcolony/ADCManifest$Zone;->state:Lcom/jirbo/adcolony/ADCZoneState;

    iget v8, v8, Lcom/jirbo/adcolony/ADCZoneState;->session_play_count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler;->play_order_index_json:Ljava/lang/String;

    .line 98
    const-string v7, "send_adc_event"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "type"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandSendADCEvent(Ljava/lang/String;)V

    .line 114
    :cond_3
    :goto_3
    const-string v7, "adc_bridge.nativeCallComplete()"

    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->execute_javascript(Ljava/lang/String;)V

    .line 115
    return-void

    .line 99
    :cond_4
    const-string v7, "close"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandClose()V

    goto :goto_3

    .line 100
    :cond_5
    const-string v7, "open_store"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_6

    const-string v7, "item"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandOpenStore(Ljava/lang/String;)V

    goto :goto_3

    .line 101
    :cond_6
    const-string v7, "open"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_7

    const-string v7, "url"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandOpen(Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :cond_7
    const-string v7, "expand"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "url"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandExpand(Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_8
    const-string v7, "create_calendar_event"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_9

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandCreateCalendarEvent(Ljava/util/HashMap;)V

    goto :goto_3

    .line 104
    :cond_9
    const-string v7, "mail"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_a

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandMail(Ljava/util/HashMap;)V

    goto :goto_3

    .line 105
    :cond_a
    const-string v7, "sms"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_b

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandSMS(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 106
    :cond_b
    const-string v7, "tel"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_c

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandTel(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 107
    :cond_c
    const-string v7, "custom_event"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandSendCustomADCEvent(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 108
    :cond_d
    const-string v7, "launch_app"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandLaunchApp(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 109
    :cond_e
    const-string v7, "check_app_presence"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandCheckAppPresence(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 110
    :cond_f
    const-string v7, "auto_play"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandAutoPlay(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 111
    :cond_10
    const-string v7, "save_screenshot"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandTakeScreenshot()V

    goto/16 :goto_3

    .line 112
    :cond_11
    const-string v7, "social_post"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    if-nez v7, :cond_3

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCMRAIDHandler;->MRAIDCommandSocialPost(Ljava/util/HashMap;)V

    goto/16 :goto_3
.end method
