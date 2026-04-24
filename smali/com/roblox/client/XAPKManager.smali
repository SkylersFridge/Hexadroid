.class public Lcom/roblox/client/XAPKManager;
.super Ljava/lang/Object;
.source "XAPKManager.java"


# static fields
.field private static ASSET_CONTAINER_FILENAME:Ljava/lang/String;

.field private static BUFFER_SIZE:I

.field private static FINGERPRINT_FILENAME:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mCachedAssetPath:Ljava/lang/String;

.field private static final mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "roblox.xapkmanager"

    sput-object v0, Lcom/roblox/client/XAPKManager;->TAG:Ljava/lang/String;

    .line 25
    const-string v0, "main.1.com.roblox.client.obb"

    sput-object v0, Lcom/roblox/client/XAPKManager;->ASSET_CONTAINER_FILENAME:Ljava/lang/String;

    .line 26
    const-string v0, "fingerprint.txt"

    sput-object v0, Lcom/roblox/client/XAPKManager;->FINGERPRINT_FILENAME:Ljava/lang/String;

    .line 27
    const/16 v0, 0x2000

    sput v0, Lcom/roblox/client/XAPKManager;->BUFFER_SIZE:I

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/roblox/client/XAPKManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/roblox/client/XAPKManager;->mCachedAssetPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static readAssetsFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "baseAssetPath"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v1, ""

    .line 145
    .local v1, "fingerprint":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/roblox/client/XAPKManager;->FINGERPRINT_FILENAME:Ljava/lang/String;

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 150
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 160
    if-eqz v3, :cond_0

    .line 161
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 168
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-object v1

    .line 163
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 166
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 153
    :catch_1
    move-exception v4

    .line 160
    :goto_1
    if-eqz v2, :cond_1

    .line 161
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 163
    :catch_2
    move-exception v4

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v4

    .line 160
    :goto_2
    if-eqz v2, :cond_2

    .line 161
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 165
    :cond_2
    :goto_3
    throw v4

    .line 163
    :catch_3
    move-exception v5

    goto :goto_3

    .line 158
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 153
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private static readOBBFingerprint(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    const/4 v3, 0x0

    .line 107
    .local v3, "fingerprint":Ljava/lang/String;
    const/4 v4, 0x0

    .line 108
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 111
    .local v0, "bufferReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/roblox/client/XAPKManager;->FINGERPRINT_FILENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 112
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 128
    :cond_0
    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 135
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 136
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 139
    :goto_1
    return-object v3

    .line 117
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/roblox/client/XAPKManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 128
    :cond_2
    if-eqz v4, :cond_3

    .line 129
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 135
    :cond_3
    :goto_3
    const/4 v0, 0x0

    .line 136
    const/4 v4, 0x0

    .line 137
    goto :goto_1

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 125
    :goto_4
    if-eqz v0, :cond_4

    .line 126
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 128
    :cond_4
    if-eqz v4, :cond_5

    .line 129
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 135
    :cond_5
    :goto_5
    const/4 v0, 0x0

    .line 136
    const/4 v4, 0x0

    throw v5

    .line 131
    :catch_1
    move-exception v6

    goto :goto_5

    .line 123
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 131
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    goto :goto_3

    .line 117
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 131
    .end local v0    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v5

    goto :goto_0
.end method

.method public static unpackAssets(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v3, Lcom/roblox/client/XAPKManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64
    :try_start_0
    sget-object v3, Lcom/roblox/client/XAPKManager;->mCachedAssetPath:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 66
    const-string v3, "assets"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, "baseAssetPath":Ljava/io/File;
    invoke-static {p0}, Lcom/roblox/client/XAPKManager;->readOBBFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "obbFingerprint":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/roblox/client/XAPKManager;->readAssetsFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "assetsFingerprint":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 73
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/roblox/client/XAPKManager;->unzipContainer(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/XAPKManager;->writeFingerprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/roblox/client/XAPKManager;->mCachedAssetPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v0    # "assetsFingerprint":Ljava/lang/String;
    .end local v1    # "baseAssetPath":Ljava/io/File;
    .end local v2    # "obbFingerprint":Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/roblox/client/XAPKManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    sget-object v3, Lcom/roblox/client/XAPKManager;->mCachedAssetPath:Ljava/lang/String;

    return-object v3

    .line 82
    .restart local v0    # "assetsFingerprint":Ljava/lang/String;
    .restart local v1    # "baseAssetPath":Ljava/io/File;
    .restart local v2    # "obbFingerprint":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    sget-object v3, Lcom/roblox/client/XAPKManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to reach a valid OBB file. Assets are not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    .end local v0    # "assetsFingerprint":Ljava/lang/String;
    .end local v1    # "baseAssetPath":Ljava/io/File;
    .end local v2    # "obbFingerprint":Ljava/lang/String;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/roblox/client/XAPKManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 89
    .restart local v0    # "assetsFingerprint":Ljava/lang/String;
    .restart local v1    # "baseAssetPath":Ljava/io/File;
    .restart local v2    # "obbFingerprint":Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v3, Lcom/roblox/client/XAPKManager;->TAG:Ljava/lang/String;

    const-string v4, "Assets are up to date"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static unpackAssetsAsync(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Lcom/roblox/client/XAPKManager$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/XAPKManager$1;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method private static unzipContainer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseAssetPath"    # Ljava/lang/String;

    .prologue
    .line 174
    sget v11, Lcom/roblox/client/XAPKManager;->BUFFER_SIZE:I

    new-array v0, v11, [B

    .line 178
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    sget-object v12, Lcom/roblox/client/XAPKManager;->ASSET_CONTAINER_FILENAME:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/util/zip/ZipInputStream;

    invoke-direct {v10, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v10, "zin":Ljava/util/zip/ZipInputStream;
    const/4 v9, 0x0

    .line 183
    .local v9, "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v8, "unzipFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 190
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_0

    .line 192
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    .end local v6    # "path":Ljava/lang/String;
    .end local v8    # "unzipFile":Ljava/io/File;
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V

    throw v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "ze":Ljava/util/zip/ZipEntry;
    .end local v10    # "zin":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    sget-object v11, Lcom/roblox/client/XAPKManager;->TAG:Ljava/lang/String;

    const-string v12, "Unzip exception"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 198
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v8    # "unzipFile":Ljava/io/File;
    .restart local v9    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v10    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 199
    .local v5, "parentDir":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 201
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_2

    .line 203
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 208
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-direct {v4, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 209
    .local v4, "out":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    sget v11, Lcom/roblox/client/XAPKManager;->BUFFER_SIZE:I

    invoke-direct {v2, v4, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .local v2, "fout":Ljava/io/BufferedOutputStream;
    :goto_2
    const/4 v11, 0x0

    :try_start_4
    sget v12, Lcom/roblox/client/XAPKManager;->BUFFER_SIZE:I

    invoke-virtual {v10, v0, v11, v12}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v7

    .local v7, "size":I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_3

    .line 214
    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 221
    .end local v7    # "size":I
    :catchall_1
    move-exception v11

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 222
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 217
    .restart local v7    # "size":I
    :cond_3
    :try_start_6
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 222
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 229
    .end local v2    # "fout":Ljava/io/BufferedOutputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "parentDir":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "unzipFile":Ljava/io/File;
    :cond_4
    :try_start_8
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1
.end method

.method private static writeFingerprint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "fingerprint"    # Ljava/lang/String;
    .param p1, "baseAssetPath"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 243
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/roblox/client/XAPKManager;->FINGERPRINT_FILENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 245
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    if-eqz v2, :cond_0

    .line 256
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 261
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 258
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 260
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v3, Lcom/roblox/client/XAPKManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    if-eqz v1, :cond_1

    .line 256
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 258
    :catch_2
    move-exception v3

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 255
    :goto_2
    if-eqz v1, :cond_2

    .line 256
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 259
    :cond_2
    :goto_3
    throw v3

    .line 258
    :catch_3
    move-exception v4

    goto :goto_3

    .line 253
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 247
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method
