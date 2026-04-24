.class public Lcom/jirbo/adcolony/ADCData;
.super Ljava/lang/Object;
.source "ADCData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCData$IntegerValue;,
        Lcom/jirbo/adcolony/ADCData$RealValue;,
        Lcom/jirbo/adcolony/ADCData$StringValue;,
        Lcom/jirbo/adcolony/ADCData$List;,
        Lcom/jirbo/adcolony/ADCData$Table;,
        Lcom/jirbo/adcolony/ADCData$FalseValue;,
        Lcom/jirbo/adcolony/ADCData$TrueValue;,
        Lcom/jirbo/adcolony/ADCData$NullValue;,
        Lcom/jirbo/adcolony/ADCData$Value;
    }
.end annotation


# static fields
.field static false_value:Lcom/jirbo/adcolony/ADCData$Value;

.field static null_value:Lcom/jirbo/adcolony/ADCData$Value;

.field static true_value:Lcom/jirbo/adcolony/ADCData$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/jirbo/adcolony/ADCData$TrueValue;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$TrueValue;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCData;->true_value:Lcom/jirbo/adcolony/ADCData$Value;

    .line 33
    new-instance v0, Lcom/jirbo/adcolony/ADCData$FalseValue;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$FalseValue;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCData;->false_value:Lcom/jirbo/adcolony/ADCData$Value;

    .line 34
    new-instance v0, Lcom/jirbo/adcolony/ADCData$NullValue;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$NullValue;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ADCData;->null_value:Lcom/jirbo/adcolony/ADCData$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 502
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "==== ADCData Test ===="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    .line 505
    .local v0, "table":Lcom/jirbo/adcolony/ADCData$Table;
    const-string v1, "one"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 506
    const-string v1, "pi"

    const-wide v2, 0x40091eb851eb851fL    # 3.14

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;D)V

    .line 507
    const-string v1, "name"

    const-string v2, "\"Abe Pralle\""

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v1, "list"

    new-instance v2, Lcom/jirbo/adcolony/ADCData$List;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$List;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 509
    const-string v1, "subtable"

    new-instance v2, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v2}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Lcom/jirbo/adcolony/ADCData$Value;)V

    .line 510
    const-string v1, "subtable"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v1

    const-string v2, "five"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;I)V

    .line 511
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIST:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 512
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ADCData$List;->add(I)Lcom/jirbo/adcolony/ADCData$List;

    .line 513
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 514
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "one"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 515
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "one"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->println(D)V

    .line 516
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "pi"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 517
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "pi"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->println(D)V

    .line 518
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 519
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Real(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->println(D)V

    .line 520
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Integer(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    .line 521
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "list"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 522
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "list2"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 523
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "subtable"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_List(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 524
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "subtable"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 525
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "subtable2"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 526
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "list"

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/ADCData$Table;->get_Table(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 527
    return-void
.end method
