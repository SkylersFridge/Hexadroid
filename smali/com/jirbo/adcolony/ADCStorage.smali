.class public Lcom/jirbo/adcolony/ADCStorage;
.super Ljava/lang/Object;
.source "ADCStorage.java"


# instance fields
.field adcolony_path:Ljava/lang/String;

.field controller:Lcom/jirbo/adcolony/ADCController;

.field data_file:Ljava/io/File;

.field data_path:Ljava/lang/String;

.field media_file:Ljava/io/File;

.field media_path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;)V
    .locals 0
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCStorage;->controller:Lcom/jirbo/adcolony/ADCController;

    .line 30
    return-void
.end method


# virtual methods
.method available_space(Ljava/lang/String;)D
    .locals 10
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 129
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 130
    .local v2, "block_size":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v0, v8

    .line 131
    .local v0, "available_blocks":J
    mul-long v4, v0, v2

    .line 132
    .local v4, "bytes_free":J
    long-to-double v8, v4

    .line 136
    .end local v0    # "available_blocks":J
    .end local v2    # "block_size":J
    .end local v4    # "bytes_free":J
    .end local v7    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v8

    .line 134
    :catch_0
    move-exception v6

    .line 136
    .local v6, "err":Ljava/lang/RuntimeException;
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method configure()V
    .locals 7

    .prologue
    .line 34
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Configuring storage"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 36
    const/4 v0, 0x1

    .line 37
    .local v0, "use_internal":Z
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStorage;->external_storage_path()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStorage;->external_storage_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCStorage;->available_space(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStorage;->internal_storage_path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCStorage;->available_space(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    add-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStorage;->internal_storage_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCStorage;->available_space(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x417e000000000000L    # 3.145728E7

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 50
    :cond_0
    if-eqz v0, :cond_2

    .line 52
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Using internal storage:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStorage;->internal_storage_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/adc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->adcolony_path:Ljava/lang/String;

    .line 60
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStorage;->adcolony_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->media_path:Ljava/lang/String;

    .line 61
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStorage;->media_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 63
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStorage;->media_path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    .line 65
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 68
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    const-string v1, "Cannot create media folder."

    invoke-static {v1}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/String;)V

    .line 92
    :goto_1
    return-void

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStorage;->external_storage_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.adc2/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/jirbo/adcolony/ADCUtil;->package_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->adcolony_path:Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Using external storage:"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto :goto_0

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->media_path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCStorage;->available_space(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4174000000000000L    # 2.097152E7

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space to store temporary files ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStorage;->media_path:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCStorage;->available_space(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes available)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jirbo/adcolony/ADC;->on_fatal_error(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStorage;->internal_storage_path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/adc/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->data_path:Ljava/lang/String;

    .line 85
    sget v1, Lcom/jirbo/adcolony/ADC;->log_level:I

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStorage;->adcolony_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->data_path:Ljava/lang/String;

    .line 87
    :cond_5
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Internal data path: "

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStorage;->data_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 89
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStorage;->data_path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    .line 90
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 91
    :cond_6
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_1
.end method

.method external_storage_path()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "storage_state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method internal_storage_path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate_storage_paths()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->media_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 102
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStorage;->data_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method
