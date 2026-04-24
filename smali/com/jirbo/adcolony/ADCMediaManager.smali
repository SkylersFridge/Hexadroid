.class Lcom/jirbo/adcolony/ADCMediaManager;
.super Ljava/lang/Object;
.source "ADCMediaManager.java"

# interfaces
.implements Lcom/jirbo/adcolony/ADCDownload$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    }
.end annotation


# instance fields
.field active_downloads:I

.field assets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCMediaManager$Asset;",
            ">;"
        }
    .end annotation
.end field

.field configured:Z

.field controller:Lcom/jirbo/adcolony/ADCController;

.field lookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/ADCMediaManager$Asset;",
            ">;"
        }
    .end annotation
.end field

.field modified:Z

.field next_file_number:I

.field pending_downloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

.field total_media_bytes:D


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 3
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    .line 15
    new-instance v0, Lcom/jirbo/adcolony/ADCUtil$Timer;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/ADCUtil$Timer;-><init>(D)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->pending_downloads:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 28
    return-void
.end method


# virtual methods
.method cache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "last_modified"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 212
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .line 215
    :cond_2
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 216
    .local v0, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    if-eqz v0, :cond_5

    .line 218
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    .line 219
    iget-object v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_modified:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 221
    iget-boolean v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    if-nez v4, :cond_0

    .line 226
    iget-boolean v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->downloading:Z

    if-nez v4, :cond_0

    .line 242
    :cond_3
    :goto_1
    iget v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->file_number:I

    if-nez v4, :cond_4

    .line 244
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMediaManager;->get_next_file_number()I

    move-result v1

    .line 245
    .local v1, "file_number":I
    invoke-virtual {p0, p1, v1}, Lcom/jirbo/adcolony/ADCMediaManager;->url_to_filename(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "filename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCStorage;->media_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "filepath":Ljava/lang/String;
    iput v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->file_number:I

    .line 248
    iput-object v3, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    .line 251
    .end local v1    # "file_number":I
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "filepath":Ljava/lang/String;
    :cond_4
    iput-object p2, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_modified:Ljava/lang/String;

    .line 252
    iput-boolean v7, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->downloading:Z

    .line 253
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    .line 255
    sget-object v4, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v4

    const-string v5, " to pending downloads."

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 256
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMediaManager;->pending_downloads:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iput-boolean v7, p0, Lcom/jirbo/adcolony/ADCMediaManager;->modified:Z

    .line 258
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMediaManager;->save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCUtil$Timer;->restart(D)V

    .line 259
    sput-boolean v7, Lcom/jirbo/adcolony/ADC;->active:Z

    goto :goto_0

    .line 235
    :cond_5
    new-instance v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .end local v0    # "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCMediaManager$Asset;-><init>()V

    .line 236
    .restart local v0    # "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    iput-object p1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->url:Ljava/lang/String;

    .line 237
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    .line 239
    iget-object v4, p0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method configure()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMediaManager;->load()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->configured:Z

    .line 34
    return-void
.end method

.method get_next_file_number()I
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->modified:Z

    .line 365
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCUtil$Timer;->restart(D)V

    .line 366
    iget v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    return v0
.end method

.method is_cached(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 180
    .local v0, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    if-nez v0, :cond_2

    .line 182
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$App;->cache_media()V

    goto :goto_0

    .line 185
    :cond_2
    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    if-eqz v2, :cond_3

    .line 187
    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->downloading:Z

    if-nez v2, :cond_0

    .line 188
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    .line 189
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    :cond_3
    iget-boolean v2, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->downloading:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCManifest$App;->cache_media()V

    goto :goto_0
.end method

.method load()V
    .locals 7

    .prologue
    .line 38
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Loading media info"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 39
    new-instance v5, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v6, "media_info.txt"

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/jirbo/adcolony/ADCJSON;->load_Table(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v4

    .line 41
    .local v4, "info":Lcom/jirbo/adcolony/ADCData$Table;
    if-nez v4, :cond_2

    .line 43
    new-instance v4, Lcom/jirbo/adcolony/ADCData$Table;

    .end local v4    # "info":Lcom/jirbo/adcolony/ADCData$Table;
    invoke-direct {v4}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 44
    .restart local v4    # "info":Lcom/jirbo/adcolony/ADCData$Table;
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "No saved media info exists."

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 51
    :goto_0
    const-string v5, "next_file_number"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    .line 52
    iget v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    iput v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    .line 54
    :cond_0
    const-string v5, "assets"

    invoke-virtual {v4, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v2

    .line 55
    .local v2, "asset_info_list":Lcom/jirbo/adcolony/ADCData$List;
    if-eqz v2, :cond_3

    .line 57
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 58
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 60
    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCData$List;->get_Table(I)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v1

    .line 61
    .local v1, "asset_info":Lcom/jirbo/adcolony/ADCData$Table;
    new-instance v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCMediaManager$Asset;-><init>()V

    .line 62
    .local v0, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    const-string v5, "url"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->url:Ljava/lang/String;

    .line 63
    const-string v5, "filepath"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    .line 64
    const-string v5, "last_modified"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_modified:Ljava/lang/String;

    .line 65
    const-string v5, "file_number"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->file_number:I

    .line 66
    const-string v5, "size"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->size:I

    .line 67
    const-string v5, "ready"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    .line 68
    const-string v5, "last_accessed"

    invoke-virtual {v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    .line 69
    iget v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->file_number:I

    iget v6, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    if-le v5, v6, :cond_1

    iget v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->file_number:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    .end local v0    # "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    .end local v1    # "asset_info":Lcom/jirbo/adcolony/ADCData$Table;
    .end local v2    # "asset_info_list":Lcom/jirbo/adcolony/ADCData$List;
    .end local v3    # "i":I
    :cond_2
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Loaded media info"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 74
    .restart local v2    # "asset_info_list":Lcom/jirbo/adcolony/ADCData$List;
    :cond_3
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMediaManager;->refresh()V

    .line 75
    return-void
.end method

.method local_filepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 201
    .local v0, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "(file not found)"

    .line 206
    :goto_0
    return-object v1

    .line 203
    :cond_1
    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->current_time()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->modified:Z

    .line 205
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCUtil$Timer;->restart(D)V

    .line 206
    iget-object v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    goto :goto_0
.end method

.method public on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 5
    .param p1, "download"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    .line 309
    iget-object v0, p1, Lcom/jirbo/adcolony/ADCDownload;->info:Ljava/lang/Object;

    check-cast v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 311
    .local v0, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    iget v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->active_downloads:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->active_downloads:I

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->modified:Z

    .line 313
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCUtil$Timer;->restart(D)V

    .line 314
    iget-boolean v1, p1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->downloading:Z

    .line 316
    iget-boolean v1, p1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    if-eqz v1, :cond_0

    .line 318
    iget v1, p1, Lcom/jirbo/adcolony/ADCDownload;->size:I

    iput v1, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->size:I

    .line 319
    iget-wide v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    iget v3, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->size:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    .line 320
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Downloaded "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 323
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/ADC;->has_ad_availability_changed()V

    .line 324
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMediaManager;->start_next_download()V

    .line 325
    return-void
.end method

.method purge_old_assets()V
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    .line 329
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v5, v5, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-wide v3, v5, Lcom/jirbo/adcolony/ADCManifest$App;->media_pool_size:D

    .line 330
    .local v3, "media_pool_size":D
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-nez v5, :cond_2

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 349
    .local v1, "i":I
    .local v2, "least_recently_used":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    :cond_1
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Deleting "

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    iget-object v6, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 350
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    .line 351
    new-instance v5, Ljava/io/File;

    iget-object v6, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 352
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    .line 353
    iget-wide v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    iget v7, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->size:I

    int-to-double v7, v7

    sub-double/2addr v5, v7

    iput-wide v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    .line 355
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Media pool now at "

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    iget-wide v6, p0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    div-double/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(D)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    div-double v6, v3, v9

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCLog;->print(D)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v5

    const-string v6, " MB"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 357
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->modified:Z

    .line 358
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v5, v6, v7}, Lcom/jirbo/adcolony/ADCUtil$Timer;->restart(D)V

    .line 332
    .end local v1    # "i":I
    .end local v2    # "least_recently_used":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    :cond_2
    iget-wide v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v7, v7, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-wide v7, v7, Lcom/jirbo/adcolony/ADCManifest$App;->media_pool_size:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 334
    const/4 v2, 0x0

    .line 335
    .restart local v2    # "least_recently_used":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 337
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 338
    .local v0, "cur":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    iget-boolean v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    if-eqz v5, :cond_4

    .line 340
    if-eqz v2, :cond_3

    iget-wide v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    iget-wide v7, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    cmpg-double v5, v5, v7

    if-gez v5, :cond_4

    .line 342
    :cond_3
    move-object v2, v0

    .line 335
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 347
    .end local v0    # "cur":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    :cond_5
    if-nez v2, :cond_1

    goto/16 :goto_0
.end method

.method refresh()V
    .locals 17

    .prologue
    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v3, "existing_files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v12, v12, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    iget-object v8, v12, Lcom/jirbo/adcolony/ADCStorage;->media_path:Ljava/lang/String;

    .line 82
    .local v8, "media_path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "listing":[Ljava/lang/String;
    if-nez v7, :cond_0

    const/4 v12, 0x0

    new-array v7, v12, [Ljava/lang/String;

    .line 85
    :cond_0
    array-length v13, v7

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v4, v7, v12

    .line 87
    .local v4, "filename":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "filepath":Ljava/lang/String;
    invoke-virtual {v3, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "filepath":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v1, "active_files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    .line 95
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v11, "validated_assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jirbo/adcolony/ADCMediaManager$Asset;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 99
    .local v2, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    iget-boolean v12, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->downloading:Z

    if-nez v12, :cond_2

    .line 101
    iget-boolean v12, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    if-eqz v12, :cond_2

    .line 103
    iget-object v5, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    .line 104
    .restart local v5    # "filepath":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 106
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    iget v14, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->size:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    iget v14, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->size:I

    int-to-double v14, v14

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    .line 109
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v1, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v5    # "filepath":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    :cond_3
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    .line 120
    array-length v13, v7

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_5

    aget-object v4, v7, v12

    .line 122
    .restart local v4    # "filename":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    .restart local v5    # "filepath":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 125
    sget-object v14, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v15, "Deleting unused media "

    invoke-virtual {v14, v15}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 126
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 120
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 131
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "filepath":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 132
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 135
    .restart local v2    # "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    iget-object v13, v2, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->url:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 138
    .end local v2    # "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v12, v12, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v12, v12, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-wide v9, v12, Lcom/jirbo/adcolony/ADCManifest$App;->media_pool_size:D

    .line 139
    .local v9, "media_pool_size":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v9, v12

    if-lez v12, :cond_7

    .line 141
    sget-object v12, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v13, "Media pool at "

    invoke-virtual {v12, v13}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/jirbo/adcolony/ADCMediaManager;->total_media_bytes:D

    const-wide/high16 v15, 0x4130000000000000L    # 1048576.0

    div-double/2addr v13, v15

    invoke-virtual {v12, v13, v14}, Lcom/jirbo/adcolony/ADCLog;->print(D)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v12

    const-wide/high16 v13, 0x4130000000000000L    # 1048576.0

    div-double v13, v9, v13

    invoke-virtual {v12, v13, v14}, Lcom/jirbo/adcolony/ADCLog;->print(D)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v12

    const-string v13, " MB"

    invoke-virtual {v12, v13}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 143
    :cond_7
    return-void
.end method

.method save()V
    .locals 8

    .prologue
    .line 147
    sget-object v5, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v6, "Saving media info"

    invoke-virtual {v5, v6}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 149
    new-instance v2, Lcom/jirbo/adcolony/ADCData$List;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$List;-><init>()V

    .line 150
    .local v2, "asset_info_list":Lcom/jirbo/adcolony/ADCData$List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 152
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->assets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 153
    .local v0, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    iget-boolean v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->downloading:Z

    if-nez v5, :cond_0

    .line 155
    new-instance v1, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 156
    .local v1, "asset_info":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v5, "url"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->url:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v5, "filepath"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "last_modified"

    iget-object v6, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_modified:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v5, "file_number"

    iget v6, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->file_number:I

    invoke-virtual {v1, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 160
    const-string v5, "size"

    iget v6, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->size:I

    invoke-virtual {v1, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 161
    const-string v5, "ready"

    iget-boolean v6, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->ready:Z

    invoke-virtual {v1, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 162
    const-string v5, "last_accessed"

    iget-wide v6, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->last_accessed:D

    invoke-virtual {v1, v5, v6, v7}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 163
    invoke-virtual {v2, v1}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    .line 150
    .end local v1    # "asset_info":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    :cond_1
    new-instance v4, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v4}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 168
    .local v4, "info":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v5, "next_file_number"

    iget v6, p0, Lcom/jirbo/adcolony/ADCMediaManager;->next_file_number:I

    invoke-virtual {v4, v5, v6}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 169
    const-string v5, "assets"

    invoke-virtual {v4, v5, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 171
    new-instance v5, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v6, "media_info.txt"

    invoke-direct {v5, v6}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/jirbo/adcolony/ADCJSON;->save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$Table;)V

    .line 172
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCMediaManager;->modified:Z

    .line 173
    return-void
.end method

.method start_next_download()V
    .locals 5

    .prologue
    .line 276
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_wifi()Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Skipping asset download due to CACHE_FILTER_WIFI"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCController;->ad_manager:Lcom/jirbo/adcolony/ADCAdManager;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCAdManager;->app:Lcom/jirbo/adcolony/ADCManifest$App;

    iget-object v2, v2, Lcom/jirbo/adcolony/ADCManifest$App;->cache_network_pass_filter:Ljava/lang/String;

    const-string v3, "cell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_mobile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 283
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "Skipping asset download due to CACHE_FILTER_CELL."

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 287
    :cond_2
    :goto_1
    iget v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->active_downloads:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->pending_downloads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->pending_downloads:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->lookup:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;

    .line 292
    .local v0, "asset":Lcom/jirbo/adcolony/ADCMediaManager$Asset;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    :cond_3
    sget-object v2, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v3, "[ADC ERROR] - NULL URL"

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 295
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 298
    :cond_4
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    const/4 v2, 0x1

    sput-boolean v2, Lcom/jirbo/adcolony/ADC;->active:Z

    .line 301
    iget v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->active_downloads:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jirbo/adcolony/ADCMediaManager;->active_downloads:I

    .line 302
    new-instance v2, Lcom/jirbo/adcolony/ADCDownload;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCMediaManager;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCMediaManager$Asset;->filepath:Ljava/lang/String;

    invoke-direct {v2, v3, v1, p0, v4}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCDownload;->with_info(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCDownload;->start()V

    goto :goto_1
.end method

.method update()V
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMediaManager;->start_next_download()V

    .line 266
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->modified:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCMediaManager;->save_timer:Lcom/jirbo/adcolony/ADCUtil$Timer;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCUtil$Timer;->expired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMediaManager;->purge_old_assets()V

    .line 269
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCMediaManager;->save()V

    .line 271
    :cond_0
    return-void
.end method

.method url_to_filename(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file_number"    # I

    .prologue
    .line 371
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 372
    .local v0, "dot_index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
