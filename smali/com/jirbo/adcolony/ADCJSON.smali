.class Lcom/jirbo/adcolony/ADCJSON;
.super Ljava/lang/Object;
.source "ADCJSON.java"


# static fields
.field static buffer:Lcom/jirbo/adcolony/ADCStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCStringBuilder;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V
    .locals 2
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    .line 139
    .local v0, "ch":C
    :goto_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    const/16 v1, 0x7e

    if-le v0, v1, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    .line 142
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method static hex_character_to_value(I)I
    .locals 1
    .param p0, "ch"    # I

    .prologue
    .line 246
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 249
    :goto_0
    return v0

    .line 247
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 248
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static load(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Value;
    .locals 2
    .param p0, "file"    # Lcom/jirbo/adcolony/ADCDataFile;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCDataFile;->create_reader()Lcom/jirbo/adcolony/ADCParseReader;

    move-result-object v0

    .line 57
    .local v0, "reader":Lcom/jirbo/adcolony/ADCParseReader;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 58
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/jirbo/adcolony/ADCJSON;->parse_value(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v1

    goto :goto_0
.end method

.method static load_List(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 2
    .param p0, "file"    # Lcom/jirbo/adcolony/ADCDataFile;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->load(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v0

    .line 71
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_List()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_List()Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v1

    goto :goto_0
.end method

.method static load_Table(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Table;
    .locals 2
    .param p0, "file"    # Lcom/jirbo/adcolony/ADCDataFile;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->load(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v0

    .line 64
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Table()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Table()Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 361
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "==== ADCJSON Test ===="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v2, "test.txt"

    invoke-direct {v0, v2}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "file":Lcom/jirbo/adcolony/ADCDataFile;
    invoke-static {v0}, Lcom/jirbo/adcolony/ADCJSON;->load_Table(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v1

    .line 367
    .local v1, "table":Lcom/jirbo/adcolony/ADCData$Table;
    new-instance v2, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v3, "test2.txt"

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v4, "test.txt"

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/jirbo/adcolony/ADCJSON;->load(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jirbo/adcolony/ADCJSON;->save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 368
    new-instance v2, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v3, "test3.txt"

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/jirbo/adcolony/ADCDataFile;

    const-string v4, "test2.txt"

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCDataFile;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/jirbo/adcolony/ADCJSON;->load(Lcom/jirbo/adcolony/ADCDataFile;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jirbo/adcolony/ADCJSON;->save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 369
    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Value;
    .locals 1
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/ADCParseReader;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCParseReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jirbo/adcolony/ADCJSON;->parse_value(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v0

    goto :goto_0
.end method

.method static parse_List(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 5
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x5d

    .line 187
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 189
    const/16 v3, 0x5b

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 206
    :cond_0
    :goto_0
    return-object v1

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 193
    new-instance v1, Lcom/jirbo/adcolony/ADCData$List;

    invoke-direct {v1}, Lcom/jirbo/adcolony/ADCData$List;-><init>()V

    .line 194
    .local v1, "list":Lcom/jirbo/adcolony/ADCData$List;
    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 197
    .local v0, "first":Z
    :goto_1
    if-nez v0, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    :cond_2
    const/4 v0, 0x0

    .line 200
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_value(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    .line 201
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0
.end method

.method static parse_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 2
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v0

    .line 91
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_List()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_List()Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v1

    goto :goto_0
.end method

.method static parse_Number(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;
    .locals 15
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    .line 299
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 301
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 302
    .local v9, "sign":D
    const/16 v11, 0x2d

    invoke-virtual {p0, v11}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 304
    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    .line 305
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 308
    :cond_0
    const-wide/16 v4, 0x0

    .line 309
    .local v4, "n":D
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    .line 310
    .local v0, "ch":I
    :goto_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v11

    if-eqz v11, :cond_1

    const/16 v11, 0x30

    if-lt v0, v11, :cond_1

    const/16 v11, 0x39

    if-gt v0, v11, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    .line 313
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v11, v4

    add-int/lit8 v13, v0, -0x30

    int-to-double v13, v13

    add-double v4, v11, v13

    .line 314
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    goto :goto_0

    .line 317
    :cond_1
    const/4 v3, 0x0

    .line 319
    .local v3, "is_Real":Z
    const/16 v11, 0x2e

    invoke-virtual {p0, v11}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 321
    const/4 v3, 0x1

    .line 322
    const-wide/16 v1, 0x0

    .line 323
    .local v1, "decimal":D
    const-wide/16 v7, 0x0

    .line 324
    .local v7, "power":D
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    .line 325
    :goto_1
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x30

    if-lt v0, v11, :cond_2

    const/16 v11, 0x39

    if-gt v0, v11, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    .line 328
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v11, v1

    add-int/lit8 v13, v0, -0x30

    int-to-double v13, v13

    add-double v1, v11, v13

    .line 329
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v11

    .line 330
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    goto :goto_1

    .line 332
    :cond_2
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double v11, v1, v11

    add-double/2addr v4, v11

    .line 335
    .end local v1    # "decimal":D
    .end local v7    # "power":D
    :cond_3
    const/16 v11, 0x65

    invoke-virtual {p0, v11}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v11

    if-nez v11, :cond_4

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 337
    :cond_4
    const/4 v6, 0x0

    .line 338
    .local v6, "negexp":Z
    const/16 v11, 0x2b

    invoke-virtual {p0, v11}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v11

    if-nez v11, :cond_5

    const/16 v11, 0x2d

    invoke-virtual {p0, v11}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    .line 340
    :cond_5
    const-wide/16 v7, 0x0

    .line 341
    .restart local v7    # "power":D
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    .line 342
    :goto_2
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x30

    if-lt v0, v11, :cond_6

    const/16 v11, 0x39

    if-gt v0, v11, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    .line 345
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v11, v7

    add-int/lit8 v13, v0, -0x30

    int-to-double v13, v13

    add-double v7, v11, v13

    .line 346
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    goto :goto_2

    .line 349
    :cond_6
    if-eqz v6, :cond_9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    div-double/2addr v4, v11

    .line 353
    .end local v6    # "negexp":Z
    .end local v7    # "power":D
    :cond_7
    :goto_3
    mul-double/2addr v4, v9

    .line 355
    if-nez v3, :cond_8

    double-to-int v11, v4

    int-to-double v11, v11

    cmpl-double v11, v4, v11

    if-eqz v11, :cond_a

    :cond_8
    new-instance v11, Lcom/jirbo/adcolony/ADCData$RealValue;

    invoke-direct {v11, v4, v5}, Lcom/jirbo/adcolony/ADCData$RealValue;-><init>(D)V

    .line 356
    :goto_4
    return-object v11

    .line 350
    .restart local v6    # "negexp":Z
    .restart local v7    # "power":D
    :cond_9
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v4, v11

    goto :goto_3

    .line 356
    .end local v6    # "negexp":Z
    .end local v7    # "power":D
    :cond_a
    new-instance v11, Lcom/jirbo/adcolony/ADCData$IntegerValue;

    double-to-int v12, v4

    invoke-direct {v11, v12}, Lcom/jirbo/adcolony/ADCData$IntegerValue;-><init>(I)V

    goto :goto_4
.end method

.method static parse_String(Lcom/jirbo/adcolony/ADCParseReader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    .line 211
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 213
    const/16 v1, 0x22

    .line 214
    .local v1, "terminator":C
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x22

    .line 217
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    .line 241
    :goto_1
    return-object v2

    .line 215
    :cond_1
    const/16 v2, 0x27

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x27

    goto :goto_0

    .line 219
    :cond_2
    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCStringBuilder;->clear()V

    .line 220
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    move-result v0

    .line 221
    .local v0, "ch":C
    :goto_2
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eq v0, v1, :cond_a

    .line 223
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_9

    .line 225
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    move-result v0

    .line 226
    const/16 v2, 0x62

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    .line 238
    :goto_3
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    move-result v0

    goto :goto_2

    .line 227
    :cond_3
    const/16 v2, 0x66

    if-ne v0, v2, :cond_4

    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    goto :goto_3

    .line 228
    :cond_4
    const/16 v2, 0x6e

    if-ne v0, v2, :cond_5

    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    goto :goto_3

    .line 229
    :cond_5
    const/16 v2, 0x72

    if-ne v0, v2, :cond_6

    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    goto :goto_3

    .line 230
    :cond_6
    const/16 v2, 0x74

    if-ne v0, v2, :cond_7

    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    goto :goto_3

    .line 231
    :cond_7
    const/16 v2, 0x75

    if-ne v0, v2, :cond_8

    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_hex_quad(Lcom/jirbo/adcolony/ADCParseReader;)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    goto :goto_3

    .line 232
    :cond_8
    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    goto :goto_3

    .line 236
    :cond_9
    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    goto :goto_3

    .line 241
    :cond_a
    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method static parse_Table(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Table;
    .locals 7
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x7d

    .line 148
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 150
    const/16 v5, 0x7b

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 182
    :cond_0
    :goto_0
    return-object v2

    .line 152
    :cond_1
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 154
    new-instance v2, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 155
    .local v2, "table":Lcom/jirbo/adcolony/ADCData$Table;
    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "first":Z
    :goto_1
    if-nez v0, :cond_2

    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    :cond_2
    const/4 v0, 0x0

    .line 162
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_identifier(Lcom/jirbo/adcolony/ADCParseReader;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 165
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 167
    const/4 v5, 0x1

    invoke-virtual {v2, v1, v5}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Z)V

    .line 177
    :goto_2
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    goto :goto_1

    .line 171
    :cond_3
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 173
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_value(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v3

    .line 174
    .local v3, "value":Lcom/jirbo/adcolony/ADCData$Value;
    invoke-virtual {v2, v1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    goto :goto_2

    .line 180
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/jirbo/adcolony/ADCData$Value;
    :cond_4
    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCParseReader;->consume(C)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    goto :goto_0
.end method

.method static parse_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;
    .locals 2
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v0

    .line 84
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Table()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Table()Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v1

    goto :goto_0
.end method

.method static parse_hex_quad(Lcom/jirbo/adcolony/ADCParseReader;)C
    .locals 4
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "code":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    shl-int/lit8 v2, v0, 0x4

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    move-result v3

    invoke-static {v3}, Lcom/jirbo/adcolony/ADCJSON;->hex_character_to_value(I)I

    move-result v3

    or-int v0, v2, v3

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    int-to-char v2, v0

    return v2
.end method

.method static parse_identifier(Lcom/jirbo/adcolony/ADCParseReader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    .line 267
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 269
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    .line 270
    .local v0, "ch":I
    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    const/16 v2, 0x27

    if-ne v0, v2, :cond_1

    .line 272
    :cond_0
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_String(Lcom/jirbo/adcolony/ADCParseReader;)Ljava/lang/String;

    move-result-object v2

    .line 292
    :goto_0
    return-object v2

    .line 276
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCStringBuilder;->clear()V

    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "finished":Z
    :goto_1
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->has_another()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 280
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x41

    if-lt v0, v2, :cond_3

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_3
    const/16 v2, 0x5f

    if-eq v0, v2, :cond_4

    const/16 v2, 0x24

    if-ne v0, v2, :cond_5

    .line 282
    :cond_4
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->read()C

    .line 283
    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStringBuilder;->print(C)V

    .line 284
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    goto :goto_1

    .line 288
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 292
    :cond_6
    sget-object v2, Lcom/jirbo/adcolony/ADCJSON;->buffer:Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static parse_value(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;
    .locals 8
    .param p0, "reader"    # Lcom/jirbo/adcolony/ADCParseReader;

    .prologue
    const/16 v7, 0x74

    const/16 v6, 0x6e

    const/16 v5, 0x66

    const/4 v4, 0x0

    .line 97
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->discard_space(Lcom/jirbo/adcolony/ADCParseReader;)V

    .line 99
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCParseReader;->peek()C

    move-result v0

    .line 100
    .local v0, "ch":C
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_0

    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_Table(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    .line 132
    :goto_0
    return-object v3

    .line 101
    :cond_0
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_1

    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_List(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v3

    goto :goto_0

    .line 103
    :cond_1
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_Number(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-gt v0, v3, :cond_3

    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_Number(Lcom/jirbo/adcolony/ADCParseReader;)Lcom/jirbo/adcolony/ADCData$Value;

    move-result-object v3

    goto :goto_0

    .line 106
    :cond_3
    const/16 v3, 0x22

    if-eq v0, v3, :cond_4

    const/16 v3, 0x27

    if-ne v0, v3, :cond_9

    .line 108
    :cond_4
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_String(Lcom/jirbo/adcolony/ADCParseReader;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lcom/jirbo/adcolony/ADCData$StringValue;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCData$StringValue;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 112
    .local v1, "first_ch":C
    if-ne v1, v7, :cond_6

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/jirbo/adcolony/ADCData;->true_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto :goto_0

    .line 113
    :cond_6
    if-ne v1, v5, :cond_7

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/jirbo/adcolony/ADCData;->false_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto :goto_0

    .line 114
    :cond_7
    if-ne v1, v6, :cond_8

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/jirbo/adcolony/ADCData;->null_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto :goto_0

    .line 116
    :cond_8
    new-instance v3, Lcom/jirbo/adcolony/ADCData$StringValue;

    invoke-direct {v3, v2}, Lcom/jirbo/adcolony/ADCData$StringValue;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v1    # "first_ch":C
    .end local v2    # "result":Ljava/lang/String;
    :cond_9
    const/16 v3, 0x61

    if-lt v0, v3, :cond_a

    const/16 v3, 0x7a

    if-le v0, v3, :cond_c

    :cond_a
    const/16 v3, 0x41

    if-lt v0, v3, :cond_b

    const/16 v3, 0x5a

    if-le v0, v3, :cond_c

    :cond_b
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_c

    const/16 v3, 0x24

    if-ne v0, v3, :cond_11

    .line 120
    :cond_c
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCJSON;->parse_identifier(Lcom/jirbo/adcolony/ADCParseReader;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2    # "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Lcom/jirbo/adcolony/ADCData$StringValue;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/jirbo/adcolony/ADCData$StringValue;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_d
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 124
    .restart local v1    # "first_ch":C
    if-ne v1, v7, :cond_e

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/jirbo/adcolony/ADCData;->true_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto/16 :goto_0

    .line 125
    :cond_e
    if-ne v1, v5, :cond_f

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/jirbo/adcolony/ADCData;->false_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto/16 :goto_0

    .line 126
    :cond_f
    if-ne v1, v6, :cond_10

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/jirbo/adcolony/ADCData;->null_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto/16 :goto_0

    .line 128
    :cond_10
    new-instance v3, Lcom/jirbo/adcolony/ADCData$StringValue;

    invoke-direct {v3, v2}, Lcom/jirbo/adcolony/ADCData$StringValue;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v1    # "first_ch":C
    .end local v2    # "result":Ljava/lang/String;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method static save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$List;)V
    .locals 3
    .param p0, "file"    # Lcom/jirbo/adcolony/ADCDataFile;
    .param p1, "list"    # Lcom/jirbo/adcolony/ADCData$List;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCDataFile;->create_writer()Lcom/jirbo/adcolony/ADCStreamWriter;

    move-result-object v0

    .line 41
    .local v0, "writer":Lcom/jirbo/adcolony/ADCStreamWriter;
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$List;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 44
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->println()V

    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->close()V

    .line 52
    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Saving empty property list."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 49
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$Table;)V
    .locals 3
    .param p0, "file"    # Lcom/jirbo/adcolony/ADCDataFile;
    .param p1, "table"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCDataFile;->create_writer()Lcom/jirbo/adcolony/ADCStreamWriter;

    move-result-object v0

    .line 25
    .local v0, "writer":Lcom/jirbo/adcolony/ADCStreamWriter;
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 28
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->println()V

    .line 35
    :goto_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->close()V

    .line 36
    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v2, "Saving empty property table."

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 33
    const-string v1, "{}"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static save(Lcom/jirbo/adcolony/ADCDataFile;Lcom/jirbo/adcolony/ADCData$Value;)V
    .locals 2
    .param p0, "file"    # Lcom/jirbo/adcolony/ADCDataFile;
    .param p1, "value"    # Lcom/jirbo/adcolony/ADCData$Value;

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCDataFile;->create_writer()Lcom/jirbo/adcolony/ADCStreamWriter;

    move-result-object v0

    .line 10
    .local v0, "writer":Lcom/jirbo/adcolony/ADCStreamWriter;
    if-nez p1, :cond_0

    .line 12
    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;->println(Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->close()V

    .line 20
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Value;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 17
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStreamWriter;->println()V

    goto :goto_0
.end method
