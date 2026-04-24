.class abstract Lcom/jirbo/adcolony/ADCWriter;
.super Ljava/lang/Object;
.source "ADCWriter.java"


# instance fields
.field beginning_of_line:Z

.field indent:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 138
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Test..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method indent_if_necessary()V
    .locals 2

    .prologue
    .line 14
    iget-boolean v1, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    if-eqz v1, :cond_0

    .line 16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    .line 17
    iget v0, p0, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    goto :goto_0

    .line 19
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method print(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCWriter;->indent_if_necessary()V

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    .line 25
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    .line 26
    :cond_1
    return-void
.end method

.method print(D)V
    .locals 12
    .param p1, "value"    # D

    .prologue
    .line 43
    iget-boolean v8, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCWriter;->indent_if_necessary()V

    .line 44
    :cond_0
    const/4 v0, 0x4

    .line 46
    .local v0, "decimal_places":I
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 48
    :cond_1
    const-string v8, "0.0"

    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 86
    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
    const-wide/16 v8, 0x0

    cmpg-double v8, p1, v8

    if-gez v8, :cond_4

    .line 54
    neg-double p1, p1

    .line 55
    const/16 v8, 0x2d

    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    .line 58
    :cond_4
    if-nez v0, :cond_5

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/jirbo/adcolony/ADCWriter;->print(J)V

    goto :goto_0

    .line 64
    :cond_5
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-long v4, v8

    .line 65
    .local v4, "power_10":J
    long-to-double v8, v4

    mul-double/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 66
    .local v2, "long_value":J
    div-long v8, v2, v4

    invoke-virtual {p0, v8, v9}, Lcom/jirbo/adcolony/ADCWriter;->print(J)V

    .line 67
    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    .line 68
    rem-long/2addr v2, v4

    .line 69
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_6

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 73
    const/16 v8, 0x30

    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "i":I
    :cond_6
    const-wide/16 v8, 0xa

    mul-long v6, v2, v8

    .local v6, "temp":J
    :goto_2
    cmp-long v8, v6, v4

    if-gez v8, :cond_7

    .line 80
    const/16 v8, 0x30

    invoke-virtual {p0, v8}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    .line 78
    const-wide/16 v8, 0xa

    mul-long/2addr v6, v8

    goto :goto_2

    .line 82
    :cond_7
    invoke-virtual {p0, v2, v3}, Lcom/jirbo/adcolony/ADCWriter;->print(J)V

    goto :goto_0
.end method

.method print(J)V
    .locals 4
    .param p1, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCWriter;->indent_if_necessary()V

    .line 92
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 94
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    .line 110
    :goto_0
    return-void

    .line 96
    :cond_1
    neg-long v0, p1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 99
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    .line 103
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    .line 104
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/ADCWriter;->print(J)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/ADCWriter;->print_recursive(J)V

    goto :goto_0
.end method

.method print(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCWriter;->beginning_of_line:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCWriter;->indent_if_necessary()V

    .line 31
    :cond_0
    if-nez p1, :cond_1

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method print(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 38
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method print(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 121
    if-eqz p1, :cond_0

    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method print_recursive(J)V
    .locals 4
    .param p1, "value"    # J

    .prologue
    const-wide/16 v2, 0xa

    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    div-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/ADCWriter;->print_recursive(J)V

    .line 116
    const-wide/16 v0, 0x30

    rem-long v2, p1, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->write(C)V

    goto :goto_0
.end method

.method println()V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    return-void
.end method

.method println(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    return-void
.end method

.method println(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/ADCWriter;->print(D)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    return-void
.end method

.method println(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/jirbo/adcolony/ADCWriter;->print(J)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    return-void
.end method

.method println(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    return-void
.end method

.method println(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    return-void
.end method

.method println(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCWriter;->print(Z)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    return-void
.end method

.method abstract write(C)V
.end method
