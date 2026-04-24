.class Lcom/jirbo/adcolony/ADCData$Table;
.super Lcom/jirbo/adcolony/ADCData$Value;
.source "ADCData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# instance fields
.field data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jirbo/adcolony/ADCData$Value;",
            ">;"
        }
    .end annotation
.end field

.field keys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCData$Value;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method count()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method get_Integer(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method get_Integer(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 240
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Number()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Integer()I

    move-result p2

    .line 241
    .end local p2    # "default_value":I
    :cond_0
    return p2
.end method

.method get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$List;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v0

    .line 264
    .local v0, "result":Lcom/jirbo/adcolony/ADCData$List;
    if-eqz v0, :cond_0

    .line 265
    .end local v0    # "result":Lcom/jirbo/adcolony/ADCData$List;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/jirbo/adcolony/ADCData$List;
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/ADCData$List;

    .end local v0    # "result":Lcom/jirbo/adcolony/ADCData$List;
    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$List;-><init>()V

    goto :goto_0
.end method

.method get_List(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$List;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # Lcom/jirbo/adcolony/ADCData$List;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 204
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_List()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_List()Lcom/jirbo/adcolony/ADCData$List;

    move-result-object p2

    .line 205
    .end local p2    # "default_value":Lcom/jirbo/adcolony/ADCData$List;
    :cond_0
    return-object p2
.end method

.method get_Logical(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method get_Logical(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # Z

    .prologue
    .line 246
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 247
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Logical()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_String()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Logical()Z

    move-result p2

    .line 251
    .end local p2    # "default_value":Z
    :cond_1
    return p2
.end method

.method get_Real(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 276
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method get_Real(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # D

    .prologue
    .line 232
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 233
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Number()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Real()D

    move-result-wide p2

    .line 234
    .end local p2    # "default_value":D
    :cond_0
    return-wide p2
.end method

.method get_String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 226
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_String()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_String()Ljava/lang/String;

    move-result-object p2

    .line 227
    .end local p2    # "default_value":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method get_StringList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_StringList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method get_StringList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "default_value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v1

    .line 211
    .local v1, "list":Lcom/jirbo/adcolony/ADCData$List;
    if-nez v1, :cond_0

    .line 220
    .end local p2    # "default_value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 213
    .restart local p2    # "default_value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 216
    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/ADCData$List;->get_String(I)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    move-object p2, v2

    .line 220
    goto :goto_0
.end method

.method get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v0

    .line 257
    .local v0, "result":Lcom/jirbo/adcolony/ADCData$Table;
    if-eqz v0, :cond_0

    .line 258
    .end local v0    # "result":Lcom/jirbo/adcolony/ADCData$Table;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_0
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    .end local v0    # "result":Lcom/jirbo/adcolony/ADCData$Table;
    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    goto :goto_0
.end method

.method get_Table(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Table;)Lcom/jirbo/adcolony/ADCData$Table;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 197
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Table()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Table()Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object p2

    .line 198
    .end local p2    # "default_value":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_0
    return-object p2
.end method

.method is_Table()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method is_compact()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_compact()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method key_at(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 9
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    const/16 v8, 0x3a

    const/4 v7, 0x0

    .line 142
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 144
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 146
    const-string v5, "{}"

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 148
    :cond_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jirbo/adcolony/ADCData$Value;

    invoke-virtual {v5}, Lcom/jirbo/adcolony/ADCData$Value;->is_compact()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    const-string v5, "{"

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCData$Value;

    .line 155
    .local v4, "value":Lcom/jirbo/adcolony/ADCData$Value;
    invoke-virtual {p0, p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->print_json(Lcom/jirbo/adcolony/ADCWriter;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v8}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    .line 157
    invoke-virtual {v4, p1}, Lcom/jirbo/adcolony/ADCData$Value;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 159
    const-string v5, "}"

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/jirbo/adcolony/ADCData$Value;
    :cond_1
    const-string v5, "{"

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ADCWriter;->println(Ljava/lang/String;)V

    .line 164
    iget v5, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    .line 166
    const/4 v1, 0x1

    .line 167
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 169
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 171
    :goto_2
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    .restart local v3    # "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jirbo/adcolony/ADCData$Value;

    .line 173
    .restart local v4    # "value":Lcom/jirbo/adcolony/ADCData$Value;
    invoke-virtual {p0, p1, v3}, Lcom/jirbo/adcolony/ADCData$Table;->print_json(Lcom/jirbo/adcolony/ADCWriter;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1, v8}, Lcom/jirbo/adcolony/ADCWriter;->print(C)V

    .line 175
    invoke-virtual {v4}, Lcom/jirbo/adcolony/ADCData$Value;->is_compact()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCWriter;->println()V

    .line 176
    :cond_2
    invoke-virtual {v4, p1}, Lcom/jirbo/adcolony/ADCData$Value;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 170
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Lcom/jirbo/adcolony/ADCData$Value;
    :cond_3
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ADCWriter;->println(C)V

    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCWriter;->println()V

    .line 180
    iget v5, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    .line 181
    const-string v5, "}"

    invoke-virtual {p1, v5}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method set(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 288
    new-instance v0, Lcom/jirbo/adcolony/ADCData$RealValue;

    invoke-direct {v0, p2, p3}, Lcom/jirbo/adcolony/ADCData$RealValue;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    return-void
.end method

.method set(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 289
    new-instance v0, Lcom/jirbo/adcolony/ADCData$IntegerValue;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/ADCData$IntegerValue;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    return-void
.end method

.method set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/jirbo/adcolony/ADCData$Value;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$Table;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Lcom/jirbo/adcolony/ADCData$StringValue;

    invoke-direct {v0, p2}, Lcom/jirbo/adcolony/ADCData$StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    return-void
.end method

.method set(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 290
    if-eqz p2, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ADCData;->true_value:Lcom/jirbo/adcolony/ADCData$Value;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    return-void

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADCData;->false_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto :goto_0
.end method

.method to_Table()Lcom/jirbo/adcolony/ADCData$Table;
    .locals 0

    .prologue
    .line 138
    return-object p0
.end method
