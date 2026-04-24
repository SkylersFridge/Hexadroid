.class Lcom/jirbo/adcolony/ADCPlayHistory;
.super Ljava/lang/Object;
.source "ADCPlayHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;
    }
.end annotation


# instance fields
.field controller:Lcom/jirbo/adcolony/ADCController;

.field loaded:Z

.field modified:Z

.field play_counts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field play_events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;",
            ">;"
        }
    .end annotation
.end field

.field reward_credit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    .line 15
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->modified:Z

    .line 16
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->loaded:Z

    .line 20
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 21
    return-void
.end method


# virtual methods
.method ad_daily_play_count(I)I
    .locals 2
    .param p1, "ad_id"    # I

    .prologue
    .line 114
    const-wide v0, 0x40f5180000000000L    # 86400.0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_interval_play_count(ID)I

    move-result v0

    return v0
.end method

.method ad_half_year_play_count(I)I
    .locals 2
    .param p1, "ad_id"    # I

    .prologue
    .line 117
    const-wide v0, 0x416e133800000000L    # 1.5768E7

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_interval_play_count(ID)I

    move-result v0

    return v0
.end method

.method declared-synchronized ad_interval_play_count(ID)I
    .locals 6
    .param p1, "ad_id"    # I
    .param p2, "seconds"    # D

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v4

    sub-double v2, v4, p2

    .line 91
    .local v2, "min_time":D
    const/4 v0, 0x0

    .line 92
    .local v0, "count":I
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 94
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-wide v4, v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->timestamp:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    .line 98
    :cond_0
    monitor-exit p0

    return v0

    .line 96
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget v4, v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->ad_id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 92
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "min_time":D
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method ad_monthly_play_count(I)I
    .locals 2
    .param p1, "ad_id"    # I

    .prologue
    .line 116
    const-wide v0, 0x41440cd000000000L    # 2628000.0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_interval_play_count(ID)I

    move-result v0

    return v0
.end method

.method ad_weekly_play_count(I)I
    .locals 2
    .param p1, "ad_id"    # I

    .prologue
    .line 115
    const-wide v0, 0x4122750000000000L    # 604800.0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->ad_interval_play_count(ID)I

    move-result v0

    return v0
.end method

.method add_play_event(Ljava/lang/String;I)V
    .locals 9
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "ad_id"    # I

    .prologue
    const/4 v8, 0x1

    .line 31
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Adding play event to play history"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 33
    iput-boolean v8, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->modified:Z

    .line 35
    iget-object v7, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    new-instance v0, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCSessionManager;->current_session_id:Ljava/lang/String;

    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v2

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;-><init>(Ljava/lang/String;DLjava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 38
    .local v6, "play_count":Ljava/lang/Integer;
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Got play count of "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    const-string v1, " for this ad"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 39
    if-nez v6, :cond_0

    .line 41
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method configure()V
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCPlayHistory;->load()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->modified:Z

    .line 27
    return-void
.end method

.method get_reward_credit(Ljava/lang/String;)I
    .locals 2
    .param p1, "currency_name"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 104
    .local v0, "credits":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method load()V
    .locals 17

    .prologue
    .line 121
    const/4 v1, 0x1

    sput-boolean v1, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 122
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->loaded:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->session_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCSessionManager;->current_session_id:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v2, "play_history_info.txt"

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/jirbo/adcolony/ADCJSON;->load_Table(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v10

    .line 125
    .local v10, "play_history_info":Lcom/jirbo/adcolony/ADCData$Table;
    if-eqz v10, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    .line 129
    const-string v1, "reward_credit"

    invoke-virtual {v10, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v13

    .line 130
    .local v13, "reward_credit_info":Lcom/jirbo/adcolony/ADCData$Table;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v13}, Lcom/jirbo/adcolony/ADCData$Table;->count()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 132
    invoke-virtual {v13, v7}, Lcom/jirbo/adcolony/ADCData$Table;->key_at(I)Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v13, v8}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v15

    .line 134
    .local v15, "value":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 137
    .end local v8    # "key":Ljava/lang/String;
    .end local v15    # "value":I
    :cond_2
    const-string v1, "play_events"

    invoke-virtual {v10, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v12

    .line 138
    .local v12, "plays":Lcom/jirbo/adcolony/ADCData$List;
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v12}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v1

    if-ge v7, v1, :cond_4

    .line 140
    invoke-virtual {v12, v7}, Lcom/jirbo/adcolony/ADCData$List;->get_Table(I)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v11

    .line 141
    .local v11, "play_info":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v1, "timestamp"

    invoke-virtual {v11, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v3

    .line 142
    .local v3, "timestamp":D
    const-string v1, "zone_id"

    invoke-virtual {v11, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "zone":Ljava/lang/String;
    const-string v1, "ad_id"

    invoke-virtual {v11, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v6

    .line 144
    .local v6, "adID":I
    const-wide/16 v1, 0x0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;-><init>(Ljava/lang/String;DLjava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 150
    .end local v3    # "timestamp":D
    .end local v5    # "zone":Ljava/lang/String;
    .end local v6    # "adID":I
    .end local v11    # "play_info":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    .line 151
    const-string v1, "play_counts"

    invoke-virtual {v10, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v9

    .line 152
    .local v9, "play_count_info":Lcom/jirbo/adcolony/ADCData$Table;
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v9}, Lcom/jirbo/adcolony/ADCData$Table;->count()I

    move-result v1

    if-ge v7, v1, :cond_5

    .line 154
    invoke-virtual {v9, v7}, Lcom/jirbo/adcolony/ADCData$Table;->key_at(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, "key":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v14

    .line 156
    .local v14, "val":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 159
    .end local v8    # "key":I
    .end local v14    # "val":I
    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCPlayHistory;->loaded:Z

    goto/16 :goto_0
.end method

.method save()V
    .locals 15

    .prologue
    .line 166
    new-instance v9, Lcom/jirbo/adcolony/ADCData$List;

    invoke-direct {v9}, Lcom/jirbo/adcolony/ADCData$List;-><init>()V

    .line 168
    .local v9, "plays":Lcom/jirbo/adcolony/ADCData$List;
    new-instance v7, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v7}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 169
    .local v7, "play_history_info":Lcom/jirbo/adcolony/ADCData$Table;
    new-instance v6, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v6}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 170
    .local v6, "play_count_info":Lcom/jirbo/adcolony/ADCData$Table;
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v11

    const-wide v13, 0x41446f4000000000L    # 2678400.0

    sub-double v3, v11, v13

    .line 171
    .local v3, "min_time":D
    iget-object v11, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 173
    iget-object v11, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    .line 174
    .local v5, "play":Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;
    iget-wide v11, v5, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->timestamp:D

    cmpg-double v11, v11, v3

    if-gez v11, :cond_1

    .line 181
    .end local v5    # "play":Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;
    :cond_0
    const-string v11, "play_events"

    invoke-virtual {v7, v11, v9}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 183
    iget-object v11, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 185
    iget-object v11, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_counts:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 186
    .local v0, "count":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v0}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 175
    .end local v0    # "count":I
    .restart local v5    # "play":Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;
    :cond_1
    new-instance v8, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v8}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 176
    .local v8, "play_info":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v11, "zone_id"

    iget-object v12, v5, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->zone_id:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v11, "ad_id"

    iget v12, v5, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->ad_id:I

    invoke-virtual {v8, v11, v12}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 178
    const-string v11, "timestamp"

    iget-wide v12, v5, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->timestamp:D

    invoke-virtual {v8, v11, v12, v13}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 179
    invoke-virtual {v9, v8}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    .line 171
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    .end local v5    # "play":Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;
    .end local v8    # "play_info":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_2
    const-string v11, "play_counts"

    invoke-virtual {v7, v11, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 190
    new-instance v10, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v10}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 191
    .local v10, "reward_credit_info":Lcom/jirbo/adcolony/ADCData$Table;
    iget-object v11, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 193
    iget-object v11, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "key":Ljava/lang/String;
    iget-object v11, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v2, v11}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    goto :goto_2

    .line 198
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    const-string v11, "reward_credit"

    invoke-virtual {v7, v11, v10}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 200
    sget-object v11, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v12, "Saving play history"

    invoke-virtual {v11, v12}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    .line 201
    new-instance v11, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v12, "play_history_info.txt"

    invoke-direct {v11, v12}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v7}, Lcom/jirbo/adcolony/ADCJSON;->save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 202
    return-void
.end method

.method set_reward_credit(Ljava/lang/String;I)V
    .locals 2
    .param p1, "currency_name"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->reward_credit:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->modified:Z

    .line 112
    return-void
.end method

.method update()V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->modified:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->modified:Z

    .line 212
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCPlayHistory;->save()V

    .line 214
    :cond_0
    return-void
.end method

.method zone_daily_play_count(Ljava/lang/String;)I
    .locals 2
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 85
    const-wide v0, 0x40f5180000000000L    # 86400.0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCPlayHistory;->zone_interval_play_count(Ljava/lang/String;D)I

    move-result v0

    return v0
.end method

.method declared-synchronized zone_interval_play_count(Ljava/lang/String;D)I
    .locals 6
    .param p1, "zone_id"    # Ljava/lang/String;
    .param p2, "seconds"    # D

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v4

    sub-double v2, v4, p2

    .line 76
    .local v2, "min_time":D
    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 79
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-wide v4, v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->timestamp:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_1

    .line 82
    :cond_0
    monitor-exit p0

    return v0

    .line 80
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->zone_id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 74
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "min_time":D
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized zone_session_play_count(Ljava/lang/String;)I
    .locals 5
    .param p1, "zone_id"    # Ljava/lang/String;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCController;->session_manager:Lcom/jirbo/adcolony/ADCSessionManager;

    iget-object v1, v4, Lcom/jirbo/adcolony/ADCSessionManager;->current_session_id:Ljava/lang/String;

    .line 53
    .local v1, "cur_session_id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 54
    .local v2, "found":Z
    const/4 v0, 0x0

    .line 56
    .local v0, "count":I
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 58
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->session_id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 69
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 59
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->session_id:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    const/4 v2, 0x1

    .line 62
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCPlayHistory;->play_events:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;

    iget-object v4, v4, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->zone_id:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 56
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 66
    :cond_3
    if-eqz v2, :cond_2

    goto :goto_1

    .line 51
    .end local v0    # "count":I
    .end local v1    # "cur_session_id":Ljava/lang/String;
    .end local v2    # "found":Z
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
