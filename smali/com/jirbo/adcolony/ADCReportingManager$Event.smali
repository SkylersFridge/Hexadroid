.class Lcom/jirbo/adcolony/ADCReportingManager$Event;
.super Ljava/lang/Object;
.source "ADCReportingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCReportingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# instance fields
.field attempts:I

.field discard:Z

.field next_attempt_delay:I

.field next_attempt_time:D

.field payload:Ljava/lang/String;

.field submitting:Z

.field third_party:Z

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field v4vc_amount:I

.field v4vc_name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
