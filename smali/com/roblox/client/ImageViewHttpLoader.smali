.class Lcom/roblox/client/ImageViewHttpLoader;
.super Landroid/os/AsyncTask;
.source "ImageViewHttpLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static mBitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCacheKey:Ljava/lang/String;

.field public mImageView:Landroid/widget/ImageView;

.field private mLateTaskCheck:Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;

.field public mLateTaskCheckIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/roblox/client/ImageViewHttpLoader;->mBitmapCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mImageView:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mCacheKey:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheck:Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheckIndex:I

    .line 32
    iput-object p1, p0, Lcom/roblox/client/ImageViewHttpLoader;->mImageView:Landroid/widget/ImageView;

    .line 33
    iput-object p2, p0, Lcom/roblox/client/ImageViewHttpLoader;->mCacheKey:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;I)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "lateTaskCheck"    # Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;
    .param p4, "lateTaskCheckIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mImageView:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mCacheKey:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheck:Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheckIndex:I

    .line 38
    iput-object p1, p0, Lcom/roblox/client/ImageViewHttpLoader;->mImageView:Landroid/widget/ImageView;

    .line 39
    iput-object p2, p0, Lcom/roblox/client/ImageViewHttpLoader;->mCacheKey:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheck:Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;

    .line 41
    iput p4, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheckIndex:I

    .line 42
    return-void
.end method

.method public static checkBitmapCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/roblox/client/ImageViewHttpLoader;->mBitmapCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 52
    .local v1, "s":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    .end local v1    # "s":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/ImageViewHttpLoader;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/roblox/client/ImageViewHttpLoader;->mBitmapCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/roblox/client/ImageViewHttpLoader;->mCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheck:Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheck:Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;

    invoke-interface {v0}, Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;->getCurrentIndex()I

    move-result v0

    iget v1, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheckIndex:I

    if-ne v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    iget-object v0, p0, Lcom/roblox/client/ImageViewHttpLoader;->mLateTaskCheck:Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;

    invoke-interface {v0, p0}, Lcom/roblox/client/ImageViewHttpLoader$TaskTracking;->setDone(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/roblox/client/ImageViewHttpLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
