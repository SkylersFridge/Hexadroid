.class Lcom/jirbo/adcolony/ADCManifest$AppTracking;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppTracking"
.end annotation


# instance fields
.field dynamic_interests:Ljava/lang/String;

.field in_app_purchase:Ljava/lang/String;

.field install:Ljava/lang/String;

.field lookup:Lcom/jirbo/adcolony/ADCData$Table;

.field session_end:Ljava/lang/String;

.field session_start:Ljava/lang/String;

.field update:Ljava/lang/String;

.field user_meta_data:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 4
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 128
    :goto_0
    return v3

    .line 110
    :cond_0
    const-string v0, "update"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->update:Ljava/lang/String;

    .line 111
    const-string v0, "install"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->install:Ljava/lang/String;

    .line 112
    const-string v0, "dynamic_interests"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->dynamic_interests:Ljava/lang/String;

    .line 113
    const-string v0, "user_meta_data"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->user_meta_data:Ljava/lang/String;

    .line 114
    const-string v0, "in_app_purchase"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->in_app_purchase:Ljava/lang/String;

    .line 115
    const-string v0, "session_end"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->session_end:Ljava/lang/String;

    .line 116
    const-string v0, "session_start"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->session_start:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/jirbo/adcolony/ADCData$Table;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCData$Table;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    .line 120
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "update"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->update:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "install"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->install:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "dynamic_interests"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->dynamic_interests:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "user_meta_data"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->user_meta_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "in_app_purchase"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->in_app_purchase:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "session_end"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->session_end:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->lookup:Lcom/jirbo/adcolony/ADCData$Table;

    const-string v1, "session_start"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$AppTracking;->session_start:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ADCData$Table;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
