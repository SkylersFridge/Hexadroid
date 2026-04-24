.class Lcom/jirbo/adcolony/ADCMediaManager$Asset;
.super Ljava/lang/Object;
.source "ADCMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Asset"
.end annotation


# instance fields
.field downloading:Z

.field file_number:I

.field filepath:Ljava/lang/String;

.field last_accessed:D

.field last_modified:Ljava/lang/String;

.field ready:Z

.field size:I

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
