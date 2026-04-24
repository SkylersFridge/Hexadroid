.class Lcom/jirbo/adcolony/ADCData$Value;
.super Ljava/lang/Object;
.source "ADCData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Value"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method is_Integer()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method is_List()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method is_Logical()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method is_Number()Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Real()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Integer()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method is_Real()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method is_String()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method is_Table()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method is_compact()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method is_null()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 0
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    .line 64
    return-void
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;
    .param p2, "st"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x22

    .line 68
    invoke-virtual {p1, v8}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 70
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 72
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 73
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    .line 84
    const/16 v6, 0x20

    if-lt v0, v6, :cond_1

    const/16 v6, 0x7e

    if-gt v0, v6, :cond_1

    .line 86
    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    .line 70
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :sswitch_0
    const-string v6, "\\\""

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :sswitch_1
    const-string v6, "\\\\"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :sswitch_2
    const-string v6, "\\/"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :sswitch_3
    const-string v6, "\\b"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :sswitch_4
    const-string v6, "\\f"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :sswitch_5
    const-string v6, "\\n"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :sswitch_6
    const-string v6, "\\r"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :sswitch_7
    const-string v6, "\\t"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 90
    :cond_1
    const-string v6, "\\u"

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 91
    move v4, v0

    .line 92
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "nibble":I
    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_0

    .line 94
    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v2, v6, 0xf

    .line 95
    .local v2, "digit":I
    shl-int/lit8 v4, v4, 0x4

    .line 96
    const/16 v6, 0x9

    if-gt v2, v6, :cond_2

    int-to-long v6, v2

    invoke-virtual {p1, v6, v7}, Lcom/jirbo/adcolony/ADCWriter;->print(J)V

    .line 92
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 97
    :cond_2
    add-int/lit8 v6, v2, -0xa

    add-int/lit8 v6, v6, 0x61

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    goto :goto_3

    .line 102
    .end local v0    # "ch":C
    .end local v2    # "digit":I
    .end local v4    # "n":I
    .end local v5    # "nibble":I
    :cond_3
    invoke-virtual {p1, v8}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    .line 103
    return-void

    .line 73
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x9 -> :sswitch_7
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_6
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCData$Value;->to_json()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method to_Integer()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method to_List()Lcom/jirbo/adcolony/ADCData$List;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method to_Logical()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method to_Real()D
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method to_String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCData$Value;->to_json()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method to_Table()Lcom/jirbo/adcolony/ADCData$Table;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method to_json()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/jirbo/adcolony/ADCStringBuilder;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCStringBuilder;-><init>()V

    .line 60
    .local v0, "buffer":Lcom/jirbo/adcolony/ADCStringBuilder;
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCData$Value;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 61
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
