.class Lcom/jirbo/adcolony/ADCStreamWriter;
.super Lcom/jirbo/adcolony/ADCWriter;
.source "ADCStreamWriter.java"


# static fields
.field static final buffer_size:I = 0x400


# instance fields
.field buffer:[B

.field dx:I

.field filepath:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field position:I

.field x:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCWriter;-><init>()V

    .line 12
    const/16 v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->buffer:[B

    .line 13
    const/4 v1, 0x0

    iput v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    .line 19
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->filepath:Ljava/lang/String;

    .line 21
    sget v1, Lcom/jirbo/adcolony/ADC;->log_level:I

    if-eqz v1, :cond_0

    .line 23
    const/16 v1, 0x17

    iput v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->dx:I

    .line 24
    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->dx:I

    iput v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->x:I

    .line 29
    :cond_0
    :try_start_0
    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCStorage;->validate_storage_paths()V

    .line 30
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "err":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->on_error(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCWriter;-><init>()V

    .line 12
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->buffer:[B

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    .line 40
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->filepath:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;

    .line 42
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Lcom/jirbo/adcolony/ADCStreamWriter;

    const-string v1, "test.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "buffer":Lcom/jirbo/adcolony/ADCStreamWriter;
    const-string v1, "A king who was mad at the time"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    .line 103
    const-string v1, "Declared limerick writing a crime"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    .line 104
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 105
    const-string v1, "So late in the night"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "All the poets would write"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    .line 107
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 108
    const-string v1, "Verses without any rhyme or meter"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->println()V

    .line 110
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 111
    const-string v1, "David\nGerrold"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    .line 112
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 113
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(D)V

    .line 114
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 115
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(D)V

    .line 116
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 117
    const-wide v1, -0x3f07949000000000L    # -100023.0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(D)V

    .line 118
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 119
    const-wide/16 v1, -0x6

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(J)V

    .line 120
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 121
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(J)V

    .line 122
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 123
    const-wide/16 v1, 0xea

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(J)V

    .line 124
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 125
    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(J)V

    .line 126
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Z)V

    .line 128
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Z)V

    .line 130
    iget v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jirbo/adcolony/ADCStreamWriter;->indent:I

    .line 131
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->close()V

    .line 132
    return-void
.end method


# virtual methods
.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStreamWriter;->flush()V

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "err":Ljava/io/IOException;
    iput-object v2, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;

    .line 83
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->on_error(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method flush()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    .line 59
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "err":Ljava/io/IOException;
    iput v5, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    .line 64
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->on_error(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method on_error(Ljava/io/IOException;)V
    .locals 2
    .param p1, "err"    # Ljava/io/IOException;

    .prologue
    .line 89
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "Error writing \""

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 90
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 93
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStreamWriter;->close()V

    .line 94
    return-void
.end method

.method write(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->buffer:[B

    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    iget v2, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->x:I

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 47
    iget v0, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->x:I

    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->dx:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->x:I

    .line 48
    iget v0, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/ADCStreamWriter;->position:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStreamWriter;->flush()V

    .line 49
    :cond_0
    return-void
.end method
