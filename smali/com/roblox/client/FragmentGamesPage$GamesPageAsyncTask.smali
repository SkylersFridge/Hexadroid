.class Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;
.super Landroid/os/AsyncTask;
.source "FragmentGamesPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGamesPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GamesPageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mJson:Lorg/json/JSONArray;

.field public mLength:I

.field private mNewGameData:[Lcom/roblox/client/FragmentGamesPage$GameData;

.field private mResponse:Ljava/lang/String;

.field public mStart:I

.field final synthetic this$0:Lcom/roblox/client/FragmentGamesPage;


# direct methods
.method private constructor <init>(Lcom/roblox/client/FragmentGamesPage;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 687
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 688
    iput v1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mStart:I

    .line 689
    iput v1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mLength:I

    .line 691
    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mResponse:Ljava/lang/String;

    .line 692
    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mJson:Lorg/json/JSONArray;

    .line 693
    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mNewGameData:[Lcom/roblox/client/FragmentGamesPage$GameData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/FragmentGamesPage;
    .param p2, "x1"    # Lcom/roblox/client/FragmentGamesPage$1;

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;-><init>(Lcom/roblox/client/FragmentGamesPage;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 687
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "arg0"    # [Ljava/lang/Void;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 698
    const-string v5, "http://www.hexagon.pw/Games/List-Json?sortFilter=0&startRows=%d&maxRows=%d&genreFilter=1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mStart:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget v7, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "request":Ljava/lang/String;
    invoke-static {v4, v10, v10}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mResponse:Ljava/lang/String;

    .line 701
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mResponse:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 704
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "{\"j\":%s}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mResponse:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "j"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iput-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mJson:Lorg/json/JSONArray;

    .line 706
    iget v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mLength:I

    new-array v5, v5, [Lcom/roblox/client/FragmentGamesPage$GameData;

    iput-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mNewGameData:[Lcom/roblox/client/FragmentGamesPage$GameData;

    .line 708
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mLength:I

    if-ge v3, v5, :cond_0

    .line 710
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mJson:Lorg/json/JSONArray;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 712
    .local v1, "game":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mNewGameData:[Lcom/roblox/client/FragmentGamesPage$GameData;

    new-instance v2, Lcom/roblox/client/FragmentGamesPage$GameData;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/roblox/client/FragmentGamesPage$GameData;-><init>(Lcom/roblox/client/FragmentGamesPage$1;)V

    aput-object v2, v5, v3

    .line 714
    .local v2, "gd":Lcom/roblox/client/FragmentGamesPage$GameData;
    const-string v5, "PlaceID"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/roblox/client/FragmentGamesPage$GameData;->mPlaceId:Ljava/lang/String;

    .line 715
    const-string v5, "Name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/roblox/client/FragmentGamesPage$GameData;->mName:Ljava/lang/String;

    .line 716
    const-string v5, "CreatorName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/roblox/client/FragmentGamesPage$GameData;->mCreatorName:Ljava/lang/String;

    .line 717
    const-string v5, "PlayerCount"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/roblox/client/FragmentGamesPage$GameData;->mPlayerCount:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 719
    .end local v1    # "game":Lorg/json/JSONObject;
    .end local v2    # "gd":Lcom/roblox/client/FragmentGamesPage$GameData;
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "roblox_client"

    const-string v6, "Games page JSON fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 687
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 729
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 731
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-virtual {v5}, Lcom/roblox/client/FragmentGamesPage;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 768
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mJson:Lorg/json/JSONArray;

    if-nez v5, :cond_1

    .line 737
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-static {v6}, Lcom/roblox/client/FragmentGamesPage;->access$800(Lcom/roblox/client/FragmentGamesPage;)Lcom/roblox/client/ActivityNativeSidebar;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 738
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v5, "Cannot connect to games page"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 739
    const v5, 0x7f020022

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 740
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 744
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mLength:I

    if-ge v1, v5, :cond_2

    .line 746
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-static {v5}, Lcom/roblox/client/FragmentGamesPage;->access$500(Lcom/roblox/client/FragmentGamesPage;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mStart:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mNewGameData:[Lcom/roblox/client/FragmentGamesPage$GameData;

    aget-object v7, v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 753
    :cond_2
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-static {v5}, Lcom/roblox/client/FragmentGamesPage;->access$400(Lcom/roblox/client/FragmentGamesPage;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 755
    .local v2, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    .line 756
    .local v4, "v":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    iget v5, v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewPosition:I

    if-eq v5, v9, :cond_3

    .line 758
    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->getCurrentIndex()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 760
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-static {v5}, Lcom/roblox/client/FragmentGamesPage;->access$900(Lcom/roblox/client/FragmentGamesPage;)Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

    move-result-object v5

    iget v6, v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewPosition:I

    iget-object v7, v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewConvertView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v10, v8}, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->getOrUpdateView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_2

    .line 766
    .end local v2    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/widget/ImageView;Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;>;"
    .end local v4    # "v":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    :cond_4
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-static {v5, v10}, Lcom/roblox/client/FragmentGamesPage;->access$1002(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;)Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    .line 767
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-virtual {v5}, Lcom/roblox/client/FragmentGamesPage;->updateGameDataFetching()V

    goto :goto_0
.end method
