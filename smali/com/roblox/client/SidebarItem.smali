.class public Lcom/roblox/client/SidebarItem;
.super Ljava/lang/Object;
.source "SidebarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/SidebarItem$Detail;
    }
.end annotation


# instance fields
.field public mDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/roblox/client/SidebarItem$Detail;",
            ">;"
        }
    .end annotation
.end field

.field public mImage:Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "item"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v6, p0, Lcom/roblox/client/SidebarItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 21
    const-string v5, ""

    iput-object v5, p0, Lcom/roblox/client/SidebarItem;->mLabel:Ljava/lang/String;

    .line 22
    iput-object v6, p0, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "image"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 26
    .local v4, "imageId":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/roblox/client/SidebarItem;->mImage:Landroid/graphics/drawable/Drawable;

    .line 28
    const-string v5, "label"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/roblox/client/SidebarItem;->mLabel:Ljava/lang/String;

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    .line 32
    const-string v5, "details"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 33
    .local v2, "detailsJson":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 35
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 37
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 38
    .local v1, "detailJson":Lorg/json/JSONObject;
    new-instance v0, Lcom/roblox/client/SidebarItem$Detail;

    invoke-direct {v0, p0}, Lcom/roblox/client/SidebarItem$Detail;-><init>(Lcom/roblox/client/SidebarItem;)V

    .line 39
    .local v0, "detail":Lcom/roblox/client/SidebarItem$Detail;
    const-string v5, "label"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/roblox/client/SidebarItem$Detail;->mLabel:Ljava/lang/String;

    .line 40
    iget-object v5, p0, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "detail":Lcom/roblox/client/SidebarItem$Detail;
    .end local v1    # "detailJson":Lorg/json/JSONObject;
    .end local v3    # "i":I
    :cond_0
    return-void
.end method
