.class Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThirdPartyAppTracking"
.end annotation


# instance fields
.field install:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field session_start:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field update:Ljava/util/ArrayList;
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
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->update:Ljava/util/ArrayList;

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->install:Ljava/util/ArrayList;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->session_start:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->lookup:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method parse(Lcom/jirbo/adcolony/ADCData$Table;)Z
    .locals 3
    .param p1, "info"    # Lcom/jirbo/adcolony/ADCData$Table;

    .prologue
    const/4 v0, 0x0

    .line 255
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    const-string v1, "update"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_StringList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->update:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 258
    const-string v1, "install"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_StringList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->install:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "session_start"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$Table;->get_StringList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->session_start:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->lookup:Ljava/util/HashMap;

    const-string v1, "update"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->update:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->lookup:Ljava/util/HashMap;

    const-string v1, "install"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->install:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->lookup:Ljava/util/HashMap;

    const-string v1, "session_start"

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$ThirdPartyAppTracking;->session_start:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/4 v0, 0x1

    goto :goto_0
.end method
