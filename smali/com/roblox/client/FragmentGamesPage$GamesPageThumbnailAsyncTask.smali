.class Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;
.super Landroid/os/AsyncTask;
.source "FragmentGamesPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGamesPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GamesPageThumbnailAsyncTask"
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
.field public mImageView:Landroid/widget/ImageView;

.field public mIndex:I

.field private mJson:Lorg/json/JSONObject;

.field public mPlaceId:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field public mTracking:Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

.field final synthetic this$0:Lcom/roblox/client/FragmentGamesPage;


# direct methods
.method private constructor <init>(Lcom/roblox/client/FragmentGamesPage;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 625
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 627
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mImageView:Landroid/widget/ImageView;

    .line 628
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mPlaceId:Ljava/lang/String;

    .line 629
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mTracking:Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mIndex:I

    .line 632
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mResponse:Ljava/lang/String;

    .line 633
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mJson:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/FragmentGamesPage;
    .param p2, "x1"    # Lcom/roblox/client/FragmentGamesPage$1;

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;-><init>(Lcom/roblox/client/FragmentGamesPage;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 625
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "placeId"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 637
    const-string v2, "http://www.hexagon.pw/asset-thumbnail/json?assetId=%s&width=396&height=216&format=jpeg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mPlaceId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "request":Ljava/lang/String;
    invoke-static {v1, v6, v6}, Lcom/roblox/client/HttpAgent;->readUrlToString(Ljava/lang/String;Ljava/lang/String;[Lcom/roblox/client/HttpAgent$HttpHeader;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mResponse:Ljava/lang/String;

    .line 639
    iget-object v2, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mResponse:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 641
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mResponse:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :cond_0
    :goto_0
    return-object v6

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "roblox_client"

    const-string v3, "Games page thumbnail JSON fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 625
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 651
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 653
    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mJson:Lorg/json/JSONObject;

    if-nez v4, :cond_2

    .line 659
    const-string v4, "roblox_client"

    const-string v5, "Cannot connect to games page icon JSON."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 663
    :cond_2
    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mTracking:Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->getCurrentIndex()I

    move-result v4

    iget v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mIndex:I

    if-ne v4, v5, :cond_0

    .line 669
    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mTracking:Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    invoke-virtual {v4, p0}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setDone(Landroid/os/AsyncTask;)V

    .line 672
    :try_start_0
    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mJson:Lorg/json/JSONObject;

    const-string v5, "Url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/roblox/client/ImageViewHttpLoader;

    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mPlaceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mTracking:Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    iget v7, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mIndex:I

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/roblox/client/ImageViewHttpLoader;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;I)V

    .line 674
    .local v2, "task":Lcom/roblox/client/ImageViewHttpLoader;
    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mTracking:Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    iget v5, p0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mIndex:I

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setStarting(Landroid/os/AsyncTask;IZ)V

    .line 675
    sget-object v4, Lcom/roblox/client/FragmentGamesPage;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/roblox/client/ImageViewHttpLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 676
    .end local v2    # "task":Lcom/roblox/client/ImageViewHttpLoader;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "roblox_client"

    const-string v5, "Games page icon incomplete JSON."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 681
    .local v1, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const-string v4, "roblox_client"

    const-string v5, "Flooding ImageViewHttpLoader"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
