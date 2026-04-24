.class Lcom/jirbo/adcolony/ADCStreamReader;
.super Ljava/io/InputStream;
.source "ADCStreamReader.java"


# instance fields
.field buffer:[B

.field buffer_count:I

.field buffer_position:I

.field dx:I

.field input:Ljava/io/InputStream;

.field position:I

.field size:I

.field x:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 8
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer:[B

    .line 19
    sget v0, Lcom/jirbo/adcolony/ADC;->log_level:I

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    iput v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->dx:I

    iput v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->x:I

    .line 21
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->size:I

    .line 22
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->input:Ljava/io/InputStream;

    .line 23
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 33
    return-void
.end method

.method fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 93
    iput v4, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    .line 94
    :goto_0
    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer:[B

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer:[B

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer:[B

    aget-byte v2, v2, v0

    iget v3, p0, Lcom/jirbo/adcolony/ADCStreamReader;->x:I

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 102
    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->x:I

    iget v2, p0, Lcom/jirbo/adcolony/ADCStreamReader;->dx:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->x:I

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_1
    iput v4, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    .line 106
    return-void
.end method

.method public mark(I)V
    .locals 0
    .param p1, "read_limit"    # I

    .prologue
    .line 37
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->position:I

    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->size:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    iget v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStreamReader;->fillBuffer()V

    .line 50
    :cond_1
    iget v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->position:I

    .line 51
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer:[B

    iget v1, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    aget-byte v0, v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCStreamReader;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget v5, p0, Lcom/jirbo/adcolony/ADCStreamReader;->position:I

    iget v6, p0, Lcom/jirbo/adcolony/ADCStreamReader;->size:I

    if-ne v5, v6, :cond_1

    const/4 v4, -0x1

    .line 78
    :cond_0
    return v4

    .line 63
    :cond_1
    iget v5, p0, Lcom/jirbo/adcolony/ADCStreamReader;->size:I

    iget v6, p0, Lcom/jirbo/adcolony/ADCStreamReader;->position:I

    sub-int v3, v5, v6

    .line 64
    .local v3, "remaining":I
    if-le p3, v3, :cond_2

    move p3, v3

    .line 66
    :cond_2
    const/4 v4, 0x0

    .line 67
    .local v4, "result_count":I
    :goto_0
    if-lez p3, :cond_0

    .line 69
    iget v5, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    iget v6, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    if-ne v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCStreamReader;->fillBuffer()V

    .line 71
    :cond_3
    iget v5, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    if-ge p3, v5, :cond_4

    move v0, p3

    .line 72
    .local v0, "copy_count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, p2

    .end local p2    # "offset":I
    .local v2, "offset":I
    :goto_2
    if-ge v1, v0, :cond_5

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer:[B

    iget v6, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_position:I

    aget-byte v5, v5, v6

    aput-byte v5, p1, v2

    add-int/lit8 v1, v1, 0x1

    move v2, p2

    .end local p2    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 71
    .end local v0    # "copy_count":I
    .end local v1    # "i":I
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    :cond_4
    iget v0, p0, Lcom/jirbo/adcolony/ADCStreamReader;->buffer_count:I

    goto :goto_1

    .line 73
    .end local p2    # "offset":I
    .restart local v0    # "copy_count":I
    .restart local v1    # "i":I
    .restart local v2    # "offset":I
    :cond_5
    sub-int/2addr p3, v0

    .line 74
    add-int/2addr v4, v0

    .line 75
    iget v5, p0, Lcom/jirbo/adcolony/ADCStreamReader;->position:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/jirbo/adcolony/ADCStreamReader;->position:I

    move p2, v2

    .line 76
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ADCStreamReader does not support reset()."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ADCStreamReader does not support skip()."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
