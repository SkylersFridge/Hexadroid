.class public Lcom/roblox/client/SidebarAdapter;
.super Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;
.source "SidebarAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "roblox.sidebar"


# instance fields
.field private mActivity:Lcom/roblox/client/ActivityNativeSidebar;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/roblox/client/SidebarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/roblox/client/ActivityNativeSidebar;)V
    .locals 1
    .param p1, "act"    # Lcom/roblox/client/ActivityNativeSidebar;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    .line 23
    iput-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    .line 28
    iput-object p1, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {p1}, Lcom/roblox/client/ActivityNativeSidebar;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    invoke-virtual {p0}, Lcom/roblox/client/SidebarAdapter;->LoadData()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/SidebarAdapter;)Lcom/roblox/client/ActivityNativeSidebar;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/SidebarAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    return-object v0
.end method


# virtual methods
.method public LoadData()V
    .locals 10

    .prologue
    .line 151
    const/4 v3, 0x1

    .line 153
    .local v3, "isOk":Z
    :try_start_0
    iget-object v7, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    const v8, 0x7f060001

    invoke-static {v7, v8}, Lcom/roblox/client/Utils;->loadJson(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v6

    .line 156
    .local v6, "json":Lorg/json/JSONObject;
    const-string v7, "items"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 157
    .local v5, "items":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 159
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 160
    .local v4, "item":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    new-instance v8, Lcom/roblox/client/SidebarItem;

    iget-object v9, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-direct {v8, v9, v4}, Lcom/roblox/client/SidebarItem;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;)V

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "items":Lorg/json/JSONArray;
    .end local v6    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Lorg/json/JSONException;
    const-string v7, "roblox.sidebar"

    const-string v8, "JSONException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v3, 0x0

    .line 169
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 171
    iget-object v7, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    invoke-virtual {v7}, Lcom/roblox/client/ActivityNativeSidebar;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RobloxApplication;

    .line 172
    .local v0, "app":Lcom/roblox/client/RobloxApplication;
    const-string v7, "Unable to load res/raw/sidebar_json"

    invoke-virtual {v0, v7}, Lcom/roblox/client/RobloxApplication;->setCriticalErrorOccured(Ljava/lang/String;)V

    .line 174
    .end local v0    # "app":Lcom/roblox/client/RobloxApplication;
    :cond_1
    return-void

    .line 165
    :catch_1
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/SidebarItem;

    iget-object v0, v0, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    if-nez p3, :cond_0

    .line 112
    iget-object v4, p0, Lcom/roblox/client/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030010

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 115
    :cond_0
    const v4, 0x7f090061

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .local v0, "image":Landroid/widget/ImageView;
    const v4, 0x7f090062

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 117
    .local v3, "label":Landroid/widget/TextView;
    const v4, 0x7f090063

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 119
    .local v1, "indicator":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/SidebarItem;

    .line 121
    .local v2, "item":Lcom/roblox/client/SidebarItem;
    iget-object v4, v2, Lcom/roblox/client/SidebarItem;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v4, v2, Lcom/roblox/client/SidebarItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, v2, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const v4, 0x7f020057

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :goto_0
    return-object p3

    .line 127
    :cond_1
    if-eqz p2, :cond_2

    .line 129
    const v4, 0x7f020058

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 133
    :cond_2
    const v4, 0x7f020056

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "label":Landroid/widget/TextView;
    if-nez p4, :cond_0

    .line 50
    iget-object v2, p0, Lcom/roblox/client/SidebarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/SidebarAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/SidebarItem$Detail;

    .line 55
    .local v0, "item":Lcom/roblox/client/SidebarItem$Detail;
    const v2, 0x7f090060

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "label":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 56
    .restart local v1    # "label":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/roblox/client/SidebarItem$Detail;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v2, Lcom/roblox/client/SidebarAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/roblox/client/SidebarAdapter$1;-><init>(Lcom/roblox/client/SidebarAdapter;Lcom/roblox/client/SidebarItem$Detail;)V

    invoke-virtual {p4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-object p4
.end method

.method public getRealChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/SidebarItem;

    iget-object v0, v0, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->onGroupCollapsed(I)V

    .line 86
    iget-object v1, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/SidebarItem;

    .line 87
    .local v0, "item":Lcom/roblox/client/SidebarItem;
    iget-object v1, v0, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v2, v0, Lcom/roblox/client/SidebarItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/roblox/client/ActivityNativeSidebar;->onPageSelected(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->onGroupExpanded(I)V

    .line 97
    iget-object v1, p0, Lcom/roblox/client/SidebarAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/SidebarItem;

    .line 98
    .local v0, "item":Lcom/roblox/client/SidebarItem;
    iget-object v1, v0, Lcom/roblox/client/SidebarItem;->mDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/roblox/client/SidebarAdapter;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    iget-object v2, v0, Lcom/roblox/client/SidebarItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/roblox/client/ActivityNativeSidebar;->onPageSelected(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
