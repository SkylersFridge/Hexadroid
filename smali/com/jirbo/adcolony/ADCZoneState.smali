.class Lcom/jirbo/adcolony/ADCZoneState;
.super Ljava/lang/Object;
.source "ADCZoneState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field play_order_index:I

.field session_play_count:I

.field skipped_plays:I

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCZoneState;->uuid:Ljava/lang/String;

    .line 16
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCZoneState;->uuid:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCZoneState;->uuid:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 2
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 25
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 26
    :cond_0
    const-string v0, "uuid"

    const-string v1, "error"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCZoneState;->uuid:Ljava/lang/String;

    .line 27
    const-string v0, "skipped_plays"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCZoneState;->skipped_plays:I

    .line 28
    const-string v0, "play_order_index"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    .line 29
    const/4 v0, 0x1

    goto :goto_0
.end method

.method to_Table()Lcom/jirbo/adcolony/ADCData$Table;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 35
    .local v0, "result":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCZoneState;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "skipped_plays"

    iget v2, p0, Lcom/jirbo/adcolony/ADCZoneState;->skipped_plays:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 37
    const-string v1, "play_order_index"

    iget v2, p0, Lcom/jirbo/adcolony/ADCZoneState;->play_order_index:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 38
    return-object v0
.end method
