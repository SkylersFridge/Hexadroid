.class Lcom/jirbo/adcolony/ADCZoneStateManager;
.super Ljava/lang/Object;
.source "ADCZoneStateManager.java"


# instance fields
.field controller:Lcom/jirbo/adcolony/ADCController;

.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCZoneState;",
            ">;"
        }
    .end annotation
.end field

.field modified:Z


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->modified:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 18
    return-void
.end method


# virtual methods
.method count()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCZoneState;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 71
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/ADCZoneState;

    .line 72
    .local v2, "state":Lcom/jirbo/adcolony/ADCZoneState;
    iget-object v3, v2, Lcom/jirbo/adcolony/ADCZoneState;->uuid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    :goto_1
    return-object v2

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v2    # "state":Lcom/jirbo/adcolony/ADCZoneState;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->modified:Z

    .line 76
    new-instance v2, Lcom/jirbo/adcolony/ADCZoneState;

    invoke-direct {v2, p1}, Lcom/jirbo/adcolony/ADCZoneState;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v2    # "state":Lcom/jirbo/adcolony/ADCZoneState;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method get(I)Lcom/jirbo/adcolony/ADCZoneState;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCZoneState;

    return-object v0
.end method

.method load()V
    .locals 8

    .prologue
    .line 22
    new-instance v5, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v6, "zone_state.txt"

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/jirbo/adcolony/ADCJSON;->load_List(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v1

    .line 23
    .local v1, "info":Lcom/jirbo/adcolony/ADCData$List;
    if-eqz v1, :cond_1

    .line 25
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 28
    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCData$List;->get_Table(I)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v4

    .line 29
    .local v4, "zone_info":Lcom/jirbo/adcolony/ADCData$Table;
    new-instance v2, Lcom/jirbo/adcolony/ADCZoneState;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCZoneState;-><init>()V

    .line 30
    .local v2, "state":Lcom/jirbo/adcolony/ADCZoneState;
    invoke-virtual {v2, v4}, Lcom/jirbo/adcolony/ADCZoneState;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "i":I
    .end local v2    # "state":Lcom/jirbo/adcolony/ADCZoneState;
    .end local v4    # "zone_info":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_1
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v6, v5, Lcom/jirbo/adcolony/ADCConfiguration;->zone_ids:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 38
    .local v3, "zone_id":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCZoneStateManager;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCZoneState;

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 40
    .end local v3    # "zone_id":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method save()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 44
    sget-object v3, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v4, "Saving zone state..."

    invoke-virtual {v3, v4}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 45
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->modified:Z

    .line 47
    new-instance v0, Lcom/jirbo/adcolony/ADCData$List;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$List;-><init>()V

    .line 48
    .local v0, "list":Lcom/jirbo/adcolony/ADCData$List;
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCController;->configuration:Lcom/jirbo/adcolony/ADCConfiguration;

    iget-object v3, v3, Lcom/jirbo/adcolony/ADCConfiguration;->zone_ids:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 50
    .local v1, "zone_id":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCZoneStateManager;->find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCZoneState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCZoneState;->to_Table()Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "zone_id":Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v3, "zone_state.txt"

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/jirbo/adcolony/ADCJSON;->save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$List;)V

    .line 53
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Saved zone state"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 54
    return-void
.end method

.method update()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCZoneStateManager;->modified:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCZoneStateManager;->save()V

    .line 84
    :cond_0
    return-void
.end method
