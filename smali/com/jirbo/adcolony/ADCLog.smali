.class Lcom/jirbo/adcolony/ADCLog;
.super Ljava/lang/Object;
.source "ADCLog.java"


# static fields
.field static debug:Lcom/jirbo/adcolony/ADCLog;

.field static dev:Lcom/jirbo/adcolony/ADCLog;

.field static error:Lcom/jirbo/adcolony/ADCLog;

.field static info:Lcom/jirbo/adcolony/ADCLog;


# instance fields
.field buffer:Ljava/lang/StringBuilder;

.field enabled:Z

.field log_level:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    new-instance v0, Lcom/jirbo/adcolony/ADCLog;

    invoke-direct {v0, v1, v1}, Lcom/jirbo/adcolony/ADCLog;-><init>(IZ)V

    sput-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    .line 8
    new-instance v0, Lcom/jirbo/adcolony/ADCLog;

    invoke-direct {v0, v2, v1}, Lcom/jirbo/adcolony/ADCLog;-><init>(IZ)V

    sput-object v0, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    .line 9
    new-instance v0, Lcom/jirbo/adcolony/ADCLog;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/ADCLog;-><init>(IZ)V

    sput-object v0, Lcom/jirbo/adcolony/ADCLog;->info:Lcom/jirbo/adcolony/ADCLog;

    .line 10
    new-instance v0, Lcom/jirbo/adcolony/ADCLog;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jirbo/adcolony/ADCLog;-><init>(IZ)V

    sput-object v0, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1
    .param p1, "log_level"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    .line 18
    iput p1, p0, Lcom/jirbo/adcolony/ADCLog;->log_level:I

    .line 19
    iput-boolean p2, p0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method fail(Ljava/lang/String;)Z
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method int_fail(Ljava/lang/String;)I
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized print(C)Lcom/jirbo/adcolony/ADCLog;
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v0, p0

    .line 32
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .local v0, "this":Lcom/jirbo/adcolony/ADCLog;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 26
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 29
    iget v1, p0, Lcom/jirbo/adcolony/ADCLog;->log_level:I

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jirbo/adcolony/ADC;->log(ILjava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v0, p0

    .line 32
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    goto :goto_0

    .line 24
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized print(D)Lcom/jirbo/adcolony/ADCLog;
    .locals 3
    .param p1, "n"    # D

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v0, p0

    .line 65
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .local v0, "this":Lcom/jirbo/adcolony/ADCLog;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 64
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :cond_0
    const/4 v1, 0x2

    :try_start_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v1, v2}, Lcom/jirbo/adcolony/ADCUtil;->format(DILjava/lang/StringBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 65
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    goto :goto_0

    .line 63
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized print(I)Lcom/jirbo/adcolony/ADCLog;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v0, p0

    .line 72
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .local v0, "this":Lcom/jirbo/adcolony/ADCLog;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 71
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 72
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    goto :goto_0

    .line 70
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized print(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z

    if-eqz v0, :cond_0

    .line 55
    if-nez p1, :cond_1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p0

    .line 56
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    move-object v2, p0

    .line 48
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .local v2, "this":Lcom/jirbo/adcolony/ADCLog;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 39
    .end local v2    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :cond_0
    if-nez p1, :cond_2

    .line 41
    :try_start_1
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move-object v2, p0

    .line 48
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local v2    # "this":Lcom/jirbo/adcolony/ADCLog;
    goto :goto_0

    .line 45
    .end local v2    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 46
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCLog;->print(C)Lcom/jirbo/adcolony/ADCLog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized print(Z)Lcom/jirbo/adcolony/ADCLog;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCLog;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    move-object v0, p0

    .line 79
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .local v0, "this":Lcom/jirbo/adcolony/ADCLog;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 78
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCLog;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    .line 79
    .end local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    goto :goto_0

    .line 77
    .end local v0    # "this":Lcom/jirbo/adcolony/ADCLog;
    .restart local p0    # "this":Lcom/jirbo/adcolony/ADCLog;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized println()Lcom/jirbo/adcolony/ADCLog;
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(C)Lcom/jirbo/adcolony/ADCLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized println(D)Lcom/jirbo/adcolony/ADCLog;
    .locals 1
    .param p1, "n"    # D

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/ADCLog;->print(D)Lcom/jirbo/adcolony/ADCLog;

    .line 91
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(C)Lcom/jirbo/adcolony/ADCLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized println(I)Lcom/jirbo/adcolony/ADCLog;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCLog;->print(I)Lcom/jirbo/adcolony/ADCLog;

    .line 97
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(C)Lcom/jirbo/adcolony/ADCLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 85
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(C)Lcom/jirbo/adcolony/ADCLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized println(Z)Lcom/jirbo/adcolony/ADCLog;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCLog;->print(Z)Lcom/jirbo/adcolony/ADCLog;

    .line 103
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCLog;->print(C)Lcom/jirbo/adcolony/ADCLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
