.class public Lcom/roblox/client/FragmentGamesPage;
.super Landroid/app/Fragment;
.source "FragmentGamesPage.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;,
        Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;,
        Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;,
        Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;,
        Lcom/roblox/client/FragmentGamesPage$GameData;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0xc

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0xc

.field private static final MAX_ASYNC_TASK:I = 0x100

.field private static final NUM_FRAMES_PER_ROW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "roblox_client"

.field private static mUIThreadHandler:Landroid/os/Handler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field public static final sThreadPoolExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mActivity:Lcom/roblox/client/ActivityNativeSidebar;

.field mCurrentFrames:[Landroid/widget/FrameLayout;

.field mFirstVisibleRow:I

.field private mGameData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/roblox/client/FragmentGamesPage$GameData;",
            ">;"
        }
    .end annotation
.end field

.field private mGameRowListAdapter:Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

.field private mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

.field private mImageViewStateTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;",
            ">;"
        }
    .end annotation
.end field

.field mLastVisibleRow:I

.field private mListView:Landroid/widget/ListView;

.field private mPageStatus:Landroid/widget/TextView;

.field mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v1, 0xc

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/roblox/client/FragmentGamesPage;->mUIThreadHandler:Landroid/os/Handler;

    .line 407
    new-instance v0, Lcom/roblox/client/FragmentGamesPage$3;

    invoke-direct {v0}, Lcom/roblox/client/FragmentGamesPage$3;-><init>()V

    sput-object v0, Lcom/roblox/client/FragmentGamesPage;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 415
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/roblox/client/FragmentGamesPage;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 417
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/roblox/client/FragmentGamesPage;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/roblox/client/FragmentGamesPage;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/roblox/client/FragmentGamesPage;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    .line 52
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mPageStatus:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    .line 54
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mGameRowListAdapter:Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mGameData:Landroid/util/SparseArray;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    .line 59
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mImageViewStateTracker:Ljava/util/Map;

    .line 60
    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    .line 61
    iput v2, p0, Lcom/roblox/client/FragmentGamesPage;->mFirstVisibleRow:I

    .line 62
    iput v2, p0, Lcom/roblox/client/FragmentGamesPage;->mLastVisibleRow:I

    .line 63
    iput v2, p0, Lcom/roblox/client/FragmentGamesPage;->mScrollState:I

    .line 687
    return-void
.end method

.method static synthetic access$1002(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;)Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/FragmentGamesPage;
    .param p1, "x1"    # Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/roblox/client/FragmentGamesPage;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentGamesPage;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mPageStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/roblox/client/FragmentGamesPage;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentGamesPage;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mImageViewStateTracker:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/roblox/client/FragmentGamesPage;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentGamesPage;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mGameData:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/roblox/client/FragmentGamesPage;)Lcom/roblox/client/ActivityNativeSidebar;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentGamesPage;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/roblox/client/FragmentGamesPage;)Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/FragmentGamesPage;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mGameRowListAdapter:Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

    return-object v0
.end method


# virtual methods
.method closeFindFramesScope()V
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method public isGameDataFetched(I)Z
    .locals 3
    .param p1, "rowOffset"    # I

    .prologue
    .line 258
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mGameData:Landroid/util/SparseArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 265
    :goto_1
    return v1

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 245
    check-cast p1, Lcom/roblox/client/ActivityNativeSidebar;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    .line 246
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 196
    const v1, 0x7f030009

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mPageStatus:Landroid/widget/TextView;

    .line 200
    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    .line 201
    new-instance v1, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

    invoke-direct {v1, p0, v5}, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;-><init>(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$1;)V

    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mGameRowListAdapter:Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

    .line 202
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/roblox/client/FragmentGamesPage;->mGameRowListAdapter:Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 204
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 205
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 206
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFriction(F)V

    .line 207
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 209
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/roblox/client/FragmentGamesPage$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/FragmentGamesPage$1;-><init>(Lcom/roblox/client/FragmentGamesPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    invoke-virtual {v1, v4}, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->cancel(Z)Z

    .line 223
    iput-object v5, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    .line 225
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mImageViewStateTracker:Ljava/util/Map;

    .line 226
    iput v4, p0, Lcom/roblox/client/FragmentGamesPage;->mFirstVisibleRow:I

    .line 227
    const/4 v1, 0x5

    iput v1, p0, Lcom/roblox/client/FragmentGamesPage;->mLastVisibleRow:I

    .line 228
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGamesPage;->updateGameDataFetching()V

    .line 230
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 237
    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mListView:Landroid/widget/ListView;

    .line 238
    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mGameRowListAdapter:Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;

    .line 239
    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mImageViewStateTracker:Ljava/util/Map;

    .line 240
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage;->mActivity:Lcom/roblox/client/ActivityNativeSidebar;

    .line 252
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/roblox/client/FragmentGamesPage;->openFindFramesScope(Landroid/view/View;)V

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v0

    const v4, 0x7f090048

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 390
    .local v1, "image":Landroid/widget/ImageView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v3, p0, Lcom/roblox/client/FragmentGamesPage;->mImageViewStateTracker:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    .line 393
    .local v2, "v":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    invoke-virtual {v2}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setScrapped()V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "image":Landroid/widget/ImageView;
    .end local v2    # "v":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    :cond_0
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGamesPage;->closeFindFramesScope()V

    .line 397
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 366
    iput p2, p0, Lcom/roblox/client/FragmentGamesPage;->mFirstVisibleRow:I

    .line 367
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/roblox/client/FragmentGamesPage;->mLastVisibleRow:I

    .line 369
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGamesPage;->updateGameDataFetching()V

    .line 372
    sget-object v0, Lcom/roblox/client/FragmentGamesPage;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/FragmentGamesPage$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/FragmentGamesPage$2;-><init>(Lcom/roblox/client/FragmentGamesPage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 360
    iput p2, p0, Lcom/roblox/client/FragmentGamesPage;->mScrollState:I

    .line 361
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGamesPage;->updateGameDataFetching()V

    .line 362
    return-void
.end method

.method openFindFramesScope(Landroid/view/View;)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const v0, 0x7f09004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    .line 341
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x1

    const v0, 0x7f09004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    .line 342
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    const v0, 0x7f09004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    .line 343
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x3

    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    aput-object v0, v1, v2

    .line 344
    return-void
.end method

.method public updateGameDataFetching()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 271
    iget v5, p0, Lcom/roblox/client/FragmentGamesPage;->mScrollState:I

    if-ne v5, v8, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    if-nez v5, :cond_0

    .line 282
    const/4 v3, 0x3

    .line 284
    .local v3, "prefetchRows":I
    iget v5, p0, Lcom/roblox/client/FragmentGamesPage;->mFirstVisibleRow:I

    sub-int/2addr v5, v3

    mul-int/lit8 v4, v5, 0x4

    .line 285
    .local v4, "startRange":I
    if-gez v4, :cond_2

    .line 287
    const/4 v4, 0x0

    .line 290
    :cond_2
    iget v5, p0, Lcom/roblox/client/FragmentGamesPage;->mLastVisibleRow:I

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v5, 0x3

    .line 294
    .local v2, "lastRange":I
    :goto_1
    if-gt v4, v2, :cond_3

    .line 296
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage;->mGameData:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    :cond_3
    :goto_2
    if-gt v4, v2, :cond_4

    .line 307
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage;->mGameData:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 309
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 318
    :cond_4
    if-gt v4, v2, :cond_0

    .line 322
    new-instance v5, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    invoke-direct {v5, p0, v6}, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;-><init>(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$1;)V

    iput-object v5, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    .line 323
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    iput v4, v5, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mStart:I

    .line 324
    iget-object v5, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    sub-int v6, v2, v4

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->mLength:I

    .line 328
    :try_start_0
    iget-object v6, p0, Lcom/roblox/client/FragmentGamesPage;->mGamesPageAsyncTask:Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;

    sget-object v7, Lcom/roblox/client/FragmentGamesPage;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v5}, Lcom/roblox/client/FragmentGamesPage$GamesPageAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 332
    .local v1, "ex":Ljava/util/concurrent/RejectedExecutionException;
    const-string v5, "Flooding GamesPageAsyncTask: %d..%d"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "err":Ljava/lang/String;
    const-string v5, "roblox_client"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
