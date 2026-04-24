.class Lcom/jirbo/adcolony/ADCData$List;
.super Lcom/jirbo/adcolony/ADCData$Value;
.source "ADCData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "List"
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCData$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/jirbo/adcolony/ADCData$Value;-><init>()V

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(D)Lcom/jirbo/adcolony/ADCData$List;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 341
    new-instance v0, Lcom/jirbo/adcolony/ADCData$RealValue;

    invoke-direct {v0, p1, p2}, Lcom/jirbo/adcolony/ADCData$RealValue;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    return-object p0
.end method

.method add(I)Lcom/jirbo/adcolony/ADCData$List;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 342
    new-instance v0, Lcom/jirbo/adcolony/ADCData$IntegerValue;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/ADCData$IntegerValue;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    return-object p0
.end method

.method add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 1
    .param p1, "value"    # Lcom/jirbo/adcolony/ADCData$Value;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method add(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 1
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    .line 340
    new-instance v0, Lcom/jirbo/adcolony/ADCData$StringValue;

    invoke-direct {v0, p1}, Lcom/jirbo/adcolony/ADCData$StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    return-object p0
.end method

.method add(Z)Lcom/jirbo/adcolony/ADCData$List;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 343
    if-eqz p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ADCData;->true_value:Lcom/jirbo/adcolony/ADCData$Value;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    return-object p0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ADCData;->false_value:Lcom/jirbo/adcolony/ADCData$Value;

    goto :goto_0
.end method

.method add_all(Lcom/jirbo/adcolony/ADCData$List;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 2
    .param p1, "other"    # Lcom/jirbo/adcolony/ADCData$List;

    .prologue
    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 349
    iget-object v1, p1, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jirbo/adcolony/ADCData$Value;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCData$List;->add(Lcom/jirbo/adcolony/ADCData$Value;)Lcom/jirbo/adcolony/ADCData$List;

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-object p0
.end method

.method clear()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method count()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method get_Integer(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$List;->get_Integer(II)I

    move-result v0

    return v0
.end method

.method get_Integer(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "default_value"    # I

    .prologue
    .line 384
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 385
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Number()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Integer()I

    move-result p2

    .line 386
    .end local p2    # "default_value":I
    :cond_0
    return p2
.end method

.method get_List(I)Lcom/jirbo/adcolony/ADCData$List;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 408
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/jirbo/adcolony/ADCData$List;->get_List(ILcom/jirbo/adcolony/ADCData$List;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v0

    .line 409
    .local v0, "result":Lcom/jirbo/adcolony/ADCData$List;
    if-eqz v0, :cond_0

    .line 410
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

.method get_List(ILcom/jirbo/adcolony/ADCData$List;)Lcom/jirbo/adcolony/ADCData$List;
    .locals 2
    .param p1, "index"    # I
    .param p2, "default_value"    # Lcom/jirbo/adcolony/ADCData$List;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 364
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_List()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_List()Lcom/jirbo/adcolony/ADCData$List;

    move-result-object p2

    .line 365
    .end local p2    # "default_value":Lcom/jirbo/adcolony/ADCData$List;
    :cond_0
    return-object p2
.end method

.method get_Logical(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$List;->get_Logical(IZ)Z

    move-result v0

    return v0
.end method

.method get_Logical(IZ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "default_value"    # Z

    .prologue
    .line 391
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 392
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Logical()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_String()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Logical()Z

    move-result p2

    .line 396
    .end local p2    # "default_value":Z
    :cond_1
    return p2
.end method

.method get_Real(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 414
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$List;->get_Real(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method get_Real(ID)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "default_value"    # D

    .prologue
    .line 377
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 378
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Number()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Real()D

    move-result-wide p2

    .line 379
    .end local p2    # "default_value":D
    :cond_0
    return-wide p2
.end method

.method get_String(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 413
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/jirbo/adcolony/ADCData$List;->get_String(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method get_String(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "default_value"    # Ljava/lang/String;

    .prologue
    .line 370
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 371
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_String()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_String()Ljava/lang/String;

    move-result-object p2

    .line 372
    .end local p2    # "default_value":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method get_Table(I)Lcom/jirbo/adcolony/ADCData$Table;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 401
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/jirbo/adcolony/ADCData$List;->get_Table(ILcom/jirbo/adcolony/ADCData$Table;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v0

    .line 402
    .local v0, "result":Lcom/jirbo/adcolony/ADCData$Table;
    if-eqz v0, :cond_0

    .line 403
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

.method get_Table(ILcom/jirbo/adcolony/ADCData$Table;)Lcom/jirbo/adcolony/ADCData$Table;
    .locals 2
    .param p1, "index"    # I
    .param p2, "default_value"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 356
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    .line 357
    .local v0, "value":Lcom/jirbo/adcolony/ADCData$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->is_Table()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCData$Value;->to_Table()Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object p2

    .line 358
    .end local p2    # "default_value":Lcom/jirbo/adcolony/ADCData$Table;
    :cond_0
    return-object p2
.end method

.method is_List()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method is_compact()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

.method print_json(Lcom/jirbo/adcolony/ADCWriter;)V
    .locals 5
    .param p1, "writer"    # Lcom/jirbo/adcolony/ADCWriter;

    .prologue
    const/4 v4, 0x0

    .line 304
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 306
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 308
    const-string v3, "[]"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/ADCData$Value;

    invoke-virtual {v3}, Lcom/jirbo/adcolony/ADCData$Value;->is_compact()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const-string v3, "["

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/ADCData$Value;

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCData$Value;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 314
    const-string v3, "]"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    const-string v3, "["

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCWriter;->println(Ljava/lang/String;)V

    .line 319
    iget v3, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    .line 321
    const/4 v1, 0x1

    .line 322
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 324
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 326
    :goto_2
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jirbo/adcolony/ADCData$Value;

    invoke-virtual {v3, p1}, Lcom/jirbo/adcolony/ADCData$Value;->print_json(Lcom/jirbo/adcolony/ADCWriter;)V

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 325
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCWriter;->println(C)V

    goto :goto_2

    .line 328
    :cond_3
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCWriter;->println()V

    .line 330
    iget v3, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    add-int/lit8 v3, v3, -0x2

    iput v3, p1, Lcom/jirbo/adcolony/ADCWriter;->indent:I

    .line 331
    const-string v3, "]"

    invoke-virtual {p1, v3}, Lcom/jirbo/adcolony/ADCWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method remove_last()Lcom/jirbo/adcolony/ADCData$Value;
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCData$List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCData$Value;

    return-object v0
.end method

.method to_List()Lcom/jirbo/adcolony/ADCData$List;
    .locals 0

    .prologue
    .line 300
    return-object p0
.end method
