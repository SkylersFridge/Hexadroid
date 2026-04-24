.class Lcom/jirbo/adcolony/ADCManifest$Zones;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Zones"
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCManifest$Zone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method count()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zones;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Zone;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zones;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Zones;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/ADCManifest$Zone;

    .line 409
    .local v1, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    iget-object v2, v1, Lcom/jirbo/adcolony/ADCManifest$Zone;->uuid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    .end local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :goto_1
    return-object v1

    .line 406
    .restart local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .end local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "No such zone: "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 413
    const/4 v1, 0x0

    goto :goto_1
.end method

.method first()Lcom/jirbo/adcolony/ADCManifest$Zone;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zones;->data:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCManifest$Zone;

    return-object v0
.end method

.method get(I)Lcom/jirbo/adcolony/ADCManifest$Zone;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Zones;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCManifest$Zone;

    return-object v0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$List;)Z
    .locals 5
    .param p1, "zone_list"    # Lcom/jirbo/adcolony/ADCData$List;

    .prologue
    const/4 v3, 0x0

    .line 384
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCManifest$Zones;->data:Ljava/util/ArrayList;

    .line 385
    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v3

    .line 387
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 389
    new-instance v1, Lcom/jirbo/adcolony/ADCManifest$Zone;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCManifest$Zone;-><init>()V

    .line 390
    .local v1, "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$List;->get_Table(I)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    .line 391
    .local v2, "zone_info":Lcom/jirbo/adcolony/ADCData$Table;
    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCManifest$Zone;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCManifest$Zones;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v1    # "zone":Lcom/jirbo/adcolony/ADCManifest$Zone;
    .end local v2    # "zone_info":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
