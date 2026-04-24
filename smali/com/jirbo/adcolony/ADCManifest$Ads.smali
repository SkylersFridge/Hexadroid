.class Lcom/jirbo/adcolony/ADCManifest$Ads;
.super Ljava/lang/Object;
.source "ADCManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/ADCManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ads"
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/ADCManifest$Ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method add(Lcom/jirbo/adcolony/ADCManifest$Ad;)V
    .locals 1
    .param p1, "ad"    # Lcom/jirbo/adcolony/ADCManifest$Ad;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method count()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method find(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCManifest$Ad;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 848
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 850
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCManifest$Ad;

    .line 851
    .local v0, "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    iget-object v2, v0, Lcom/jirbo/adcolony/ADCManifest$Ad;->uuid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 853
    .end local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :goto_1
    return-object v0

    .line 848
    .restart local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    .end local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method find_native_ad(I)Lcom/jirbo/adcolony/ADCManifest$Ad;
    .locals 3
    .param p1, "closest"    # I

    .prologue
    .line 857
    move v1, p1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 859
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCManifest$Ad;

    .line 860
    .local v0, "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    iget-object v2, v0, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->enabled:Z

    if-eqz v2, :cond_1

    .line 868
    .end local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_0
    :goto_1
    return-object v0

    .line 857
    .restart local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 863
    .end local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 865
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCManifest$Ad;

    .line 866
    .restart local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    iget-object v2, v0, Lcom/jirbo/adcolony/ADCManifest$Ad;->native_ad:Lcom/jirbo/adcolony/ADCManifest$NativeAd;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCManifest$NativeAd;->enabled:Z

    if-nez v2, :cond_0

    .line 863
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 868
    .end local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method first()Lcom/jirbo/adcolony/ADCManifest$Ad;
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCManifest$Ad;

    return-object v0
.end method

.method get(I)Lcom/jirbo/adcolony/ADCManifest$Ad;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/ADCManifest$Ad;

    return-object v0
.end method

.method parse(Lcom/jirbo/adcolony/ADCData$List;)Z
    .locals 4
    .param p1, "list"    # Lcom/jirbo/adcolony/ADCData$List;

    .prologue
    const/4 v2, 0x0

    .line 827
    if-nez p1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v2

    .line 829
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ADCData$List;->count()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 831
    new-instance v0, Lcom/jirbo/adcolony/ADCManifest$Ad;

    invoke-direct {v0}, Lcom/jirbo/adcolony/ADCManifest$Ad;-><init>()V

    .line 832
    .local v0, "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/ADCData$List;->get_Table(I)Lcom/jirbo/adcolony/ADCData$Table;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/ADCManifest$Ad;->parse(Lcom/jirbo/adcolony/ADCData$Table;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    iget-object v3, p0, Lcom/jirbo/adcolony/ADCManifest$Ads;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 835
    .end local v0    # "ad":Lcom/jirbo/adcolony/ADCManifest$Ad;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
