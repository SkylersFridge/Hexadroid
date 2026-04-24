.class Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
.super Ljava/lang/Object;
.source "FragmentGamesPage.java"

# interfaces
.implements Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGamesPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageViewStateTracking"
.end annotation


# instance fields
.field private mAsyncTaskInternal:Landroid/os/AsyncTask;

.field private mCurrentIndexInternal:I

.field public mListViewConvertView:Landroid/view/View;

.field public mListViewIsScrapInternal:Z

.field public mListViewPosition:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput v1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    .line 184
    iput-object v2, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewIsScrapInternal:Z

    .line 188
    iput v1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewPosition:I

    .line 189
    iput-object v2, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewConvertView:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/FragmentGamesPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/FragmentGamesPage$1;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;-><init>()V

    return-void
.end method


# virtual methods
.method public getClearScrapped()Z
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewIsScrapInternal:Z

    .line 177
    .local v0, "wasScrapped":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewIsScrapInternal:Z

    .line 178
    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    return v0
.end method

.method public isStarted()Z
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 160
    .local v0, "hasTask":Z
    :goto_0
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 162
    const-string v1, "roblox_client"

    const-string v2, "ImageViewStateTracking started but no index"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return v0

    .line 159
    .end local v0    # "hasTask":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancel()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "roblox_client"

    const-string v1, "ImageViewStateTracking scrapping non-existant task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    .line 130
    return-void
.end method

.method public setDone(Landroid/os/AsyncTask;)V
    .locals 2
    .param p1, "task"    # Landroid/os/AsyncTask;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    if-eq p1, v0, :cond_0

    .line 91
    const-string v0, "roblox_client"

    const-string v1, "ImageViewStateTracking done task mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    .line 94
    iget v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 96
    const-string v0, "roblox_client"

    const-string v1, "ImageViewStateTracking done but no index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    return-void
.end method

.method public setScrapped()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewIsScrapInternal:Z

    .line 172
    return-void
.end method

.method public setStarting(Landroid/os/AsyncTask;IZ)V
    .locals 2
    .param p1, "task"    # Landroid/os/AsyncTask;
    .param p2, "newIndex"    # I
    .param p3, "continuing"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "roblox_client"

    const-string v1, "ImageViewStateTracking starting task without finishing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    .line 110
    if-eqz p3, :cond_1

    .line 112
    iget v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    if-eq v0, p2, :cond_1

    .line 114
    const-string v0, "roblox_client"

    const-string v1, "ImageViewStateTracking continuing task not started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    iput p2, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    .line 118
    return-void
.end method

.method public setSwitchTo(Landroid/os/AsyncTask;I)V
    .locals 2
    .param p1, "newTask"    # Landroid/os/AsyncTask;
    .param p2, "newIndex"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 137
    :cond_0
    const-string v0, "roblox_client"

    const-string v1, "ImageViewStateTracking switching from non-existant task"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    iget v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    if-ne v0, p2, :cond_2

    .line 141
    const-string v0, "roblox_client"

    const-string v1, "ImageViewStateTracking switching to same index"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    .line 144
    iput p2, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    .line 145
    return-void
.end method

.method public setSwitchToNoTask(I)V
    .locals 1
    .param p1, "newIndex"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mAsyncTaskInternal:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setCancel()V

    .line 154
    :cond_0
    iput p1, p0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mCurrentIndexInternal:I

    .line 155
    return-void
.end method
