.class Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeOverlay"
.end annotation


# instance fields
.field click_action:Ljava/lang/String;

.field click_action_type:Ljava/lang/String;

.field enabled:Z

.field in_app:Z

.field label:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 1
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    .line 996
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1004
    :goto_0
    return v0

    .line 998
    :cond_0
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->enabled:Z

    .line 999
    const-string v0, "in_app"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_Logical(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->in_app:Z

    .line 1000
    const-string v0, "click_action_type"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->click_action_type:Ljava/lang/String;

    .line 1001
    const-string v0, "click_action"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->click_action:Ljava/lang/String;

    .line 1002
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$NativeOverlay;->label:Ljava/lang/String;

    .line 1004
    const/4 v0, 0x1

    goto :goto_0
.end method
