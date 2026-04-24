.class Lcom/jirbo/adcolony/ADCParseReader;
.super Ljava/lang/Object;
.source "ADCParseReader.java"


# instance fields
.field count:I

.field data:[C

.field position:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "x":I
    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 75
    if-lt v1, v7, :cond_0

    const/16 v4, 0x7e

    if-le v1, v4, :cond_1

    :cond_0
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 77
    :cond_1
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 79
    :cond_2
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_4

    .line 82
    and-int/lit16 v4, v1, 0xe0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_3

    .line 85
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 86
    .local v2, "y":I
    and-int/lit8 v4, v1, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 91
    .end local v2    # "y":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 92
    .restart local v2    # "y":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 93
    .local v3, "z":I
    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v5, v2, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 98
    .end local v2    # "y":I
    .end local v3    # "z":I
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    .line 103
    iget v4, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    new-array v4, v4, [C

    iput-object v4, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    .line 104
    iget v4, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    invoke-virtual {v0, v6, v4, v5, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 105
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "utf8_data"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-ge v1, v5, :cond_6

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 28
    .local v2, "x":C
    if-lt v2, v8, :cond_0

    const/16 v5, 0x7e

    if-le v2, v5, :cond_1

    :cond_0
    const/16 v5, 0xa

    if-ne v2, v5, :cond_2

    .line 30
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_2
    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_5

    .line 35
    and-int/lit16 v5, v2, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-ge v5, v6, :cond_3

    .line 38
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 39
    .local v3, "y":I
    and-int/lit8 v5, v2, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v3, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_1

    .line 42
    .end local v3    # "y":I
    :cond_3
    add-int/lit8 v5, v1, 0x2

    iget v6, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-ge v5, v6, :cond_4

    .line 45
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 46
    .restart local v3    # "y":I
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 47
    .local v4, "z":I
    and-int/lit8 v5, v2, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v6, v3, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/lit8 v6, v4, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v1, v1, 0x2

    .line 49
    goto :goto_1

    .line 53
    .end local v3    # "y":I
    .end local v4    # "z":I
    :cond_4
    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    .end local v2    # "x":C
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iput v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    .line 63
    iget v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    new-array v5, v5, [C

    iput-object v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    .line 64
    iget v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    invoke-virtual {v0, v7, v5, v6, v7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 65
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 165
    return-void
.end method


# virtual methods
.method consume(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 125
    iget v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    aget-char v0, v0, v1

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_1
    iget v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method consume(Ljava/lang/String;)Z
    .locals 6
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 138
    .local v1, "len":I
    iget v3, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-le v3, v4, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    iget v5, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_2
    iget v2, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    .line 144
    const/4 v2, 0x1

    goto :goto_0
.end method

.method consume_ws()V
    .locals 3

    .prologue
    .line 156
    :goto_0
    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    iget v2, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-ne v1, v2, :cond_1

    .line 159
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    iget v2, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    aget-char v0, v1, v2

    .line 158
    .local v0, "ch":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    goto :goto_0
.end method

.method has_another()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method must_consume(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jirbo/adcolony/AdColonyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method must_consume(Ljava/lang/String;)V
    .locals 3
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCParseReader;->consume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jirbo/adcolony/AdColonyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/AdColonyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    return-void
.end method

.method peek()C
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->count:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method read()C
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCParseReader;->data:[C

    iget v1, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jirbo/adcolony/ADCParseReader;->position:I

    aget-char v0, v0, v1

    return v0
.end method
