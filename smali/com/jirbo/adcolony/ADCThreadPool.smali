.class Lcom/jirbo/adcolony/ADCThreadPool;
.super Ljava/lang/Object;
.source "ADCThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;
    }
.end annotation


# static fields
.field static all_threads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;",
            ">;"
        }
    .end annotation
.end field

.field static idle_threads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;",
            ">;"
        }
    .end annotation
.end field

.field static mutex:Ljava/lang/String;

.field static pending_runnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile shutting_down:Z

.field static working_runnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, "mutex"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jirbo/adcolony/ADCThreadPool;->mutex:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCThreadPool;->idle_threads:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCThreadPool;->all_threads:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCThreadPool;->pending_runnables:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCThreadPool;->working_runnables:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method static reset()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/jirbo/adcolony/ADCThreadPool;->stop()V

    .line 29
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->mutex:Ljava/lang/String;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/ADCThreadPool;->pending_runnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/jirbo/adcolony/ADCThreadPool;->start()V

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static run(Ljava/lang/Runnable;)V
    .locals 6
    .param p0, "target"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "thread":Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;
    sget-object v4, Lcom/jirbo/adcolony/ADCThreadPool;->mutex:Ljava/lang/String;

    monitor-enter v4

    .line 46
    :try_start_0
    sget-boolean v3, Lcom/jirbo/adcolony/ADCThreadPool;->shutting_down:Z

    if-eqz v3, :cond_0

    .line 48
    sget-object v3, Lcom/jirbo/adcolony/ADCThreadPool;->pending_runnables:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v4

    .line 74
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v3, Lcom/jirbo/adcolony/ADCThreadPool;->idle_threads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 53
    .local v1, "count":I
    if-lez v1, :cond_1

    sget-object v3, Lcom/jirbo/adcolony/ADCThreadPool;->idle_threads:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;

    move-object v2, v0

    .line 54
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-nez v2, :cond_2

    .line 58
    new-instance v2, Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;

    .end local v2    # "thread":Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;
    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;-><init>()V

    .line 59
    .restart local v2    # "thread":Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;
    sget-object v4, Lcom/jirbo/adcolony/ADCThreadPool;->mutex:Ljava/lang/String;

    monitor-enter v4

    .line 61
    :try_start_1
    sget-object v3, Lcom/jirbo/adcolony/ADCThreadPool;->all_threads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    iput-object p0, v2, Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;->target:Ljava/lang/Runnable;

    .line 64
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;->start()V

    goto :goto_0

    .line 54
    .end local v1    # "count":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 62
    .restart local v1    # "count":I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 68
    :cond_2
    monitor-enter v2

    .line 70
    :try_start_4
    iput-object p0, v2, Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;->target:Ljava/lang/Runnable;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 72
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method static start()V
    .locals 4

    .prologue
    .line 78
    sget-object v2, Lcom/jirbo/adcolony/ADCThreadPool;->mutex:Ljava/lang/String;

    monitor-enter v2

    .line 80
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/jirbo/adcolony/ADCThreadPool;->shutting_down:Z

    .line 81
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->working_runnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 82
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->working_runnables:Ljava/util/ArrayList;

    sget-object v3, Lcom/jirbo/adcolony/ADCThreadPool;->pending_runnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->pending_runnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->all_threads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 85
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->working_runnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "target":Ljava/lang/Runnable;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "target":Ljava/lang/Runnable;
    check-cast v0, Ljava/lang/Runnable;

    .line 89
    .restart local v0    # "target":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/jirbo/adcolony/ADCThreadPool;->run(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 85
    .end local v0    # "target":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 91
    .restart local v0    # "target":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method static stop()V
    .locals 4

    .prologue
    .line 98
    sget-object v2, Lcom/jirbo/adcolony/ADCThreadPool;->mutex:Ljava/lang/String;

    monitor-enter v2

    .line 100
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/jirbo/adcolony/ADCThreadPool;->shutting_down:Z

    .line 102
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->idle_threads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "thread":Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "thread":Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;
    check-cast v0, Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;

    .line 104
    .restart local v0    # "thread":Lcom/jirbo/adcolony/ADCThreadPool$ReusableThread;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 107
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 114
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 110
    :cond_0
    :try_start_3
    sget-object v3, Lcom/jirbo/adcolony/ADCThreadPool;->mutex:Ljava/lang/String;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :try_start_4
    sget-object v1, Lcom/jirbo/adcolony/ADCThreadPool;->idle_threads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 113
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 114
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    return-void

    .line 113
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method
