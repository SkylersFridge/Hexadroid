.class Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;
.super Ljava/lang/Object;
.source "ADCPlayHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCPlayHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayEvent"
.end annotation


# instance fields
.field ad_id:I

.field session_id:Ljava/lang/String;

.field timestamp:D

.field zone_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;DLjava/lang/String;I)V
    .locals 0
    .param p1, "session_id"    # Ljava/lang/String;
    .param p2, "timestamp"    # D
    .param p4, "zone_id"    # Ljava/lang/String;
    .param p5, "ad_id"    # I

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->session_id:Ljava/lang/String;

    .line 226
    iput-wide p2, p0, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->timestamp:D

    .line 227
    iput-object p4, p0, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->zone_id:Ljava/lang/String;

    .line 228
    iput p5, p0, Lcom/jirbo/adcolony/ADCPlayHistory$PlayEvent;->ad_id:I

    .line 229
    return-void
.end method
