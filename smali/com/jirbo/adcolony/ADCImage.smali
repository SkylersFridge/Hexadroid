.class public Lcom/jirbo/adcolony/ADCImage;
.super Ljava/lang/Object;
.source "ADCImage.java"


# static fields
.field static mutable_h:I

.field static mutable_w:I


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field dest_rect:Landroid/graphics/Rect;

.field error:Z

.field height:I

.field loaded:Z

.field original_bitmap:Landroid/graphics/Bitmap;

.field original_height:I

.field original_width:I

.field paint:Landroid/graphics/Paint;

.field src_rect:Landroid/graphics/Rect;

.field width:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;D)V

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;D)V
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "scale"    # D

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;DZ)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;DZ)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "scale"    # D
    .param p4, "down_state"    # Z

    .prologue
    .line 64
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;DZZ)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;DZZ)V
    .locals 11
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "scale"    # D
    .param p4, "down_state"    # Z
    .param p5, "is_native"    # Z

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->paint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    .line 71
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 73
    .local v10, "infile":Ljava/io/InputStream;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    .line 77
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    .line 78
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    .line 79
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    .line 80
    iget v0, p0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    sput v0, Lcom/jirbo/adcolony/ADCImage;->mutable_w:I

    .line 81
    iget v0, p0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    sput v0, Lcom/jirbo/adcolony/ADCImage;->mutable_h:I

    .line 83
    invoke-virtual {p0, p2, p3}, Lcom/jirbo/adcolony/ADCImage;->resize(D)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCImage;->loaded:Z

    .line 87
    if-eqz p4, :cond_2

    .line 90
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/jirbo/adcolony/ADCImage;->convertToMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    .line 93
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v1, v0, [I

    .line 94
    .local v1, "pixels":[I
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 97
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v1

    if-ge v9, v0, :cond_1

    .line 99
    aget v0, v1, v9

    const/16 v2, 0xff

    if-ge v0, v2, :cond_0

    aget v0, v1, v9

    if-eqz v0, :cond_0

    aget v0, v1, v9

    shr-int/lit8 v0, v0, 0x1

    const v2, 0x7f7f7f

    and-int/2addr v0, v2

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    aput v0, v1, v9

    .line 97
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 104
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    .line 106
    .end local v1    # "pixels":[I
    .end local v9    # "i":I
    :cond_2
    if-nez p5, :cond_3

    sget-object v0, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v10    # "infile":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-void

    .line 108
    :catch_0
    move-exception v8

    .line 110
    .local v8, "err":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load image "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/ADC;->log_error(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCImage;->error:Z

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 43
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;D)V

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/jirbo/adcolony/ADCImage;->resize(II)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "down_state"    # Z

    .prologue
    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;DZ)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "is_native"    # Z
    .param p3, "down_state"    # Z

    .prologue
    .line 49
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jirbo/adcolony/ADCImage;-><init>(Ljava/lang/String;DZZ)V

    .line 50
    return-void
.end method

.method public static convertToMutable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "img_in"    # Landroid/graphics/Bitmap;

    .prologue
    .line 263
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v7, "file":Ljava/io/File;
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v10, v7, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v10, "random_access_file":Ljava/io/RandomAccessFile;
    sget v12, Lcom/jirbo/adcolony/ADCImage;->mutable_w:I

    .line 267
    .local v12, "width":I
    sget v8, Lcom/jirbo/adcolony/ADCImage;->mutable_h:I

    .line 268
    .local v8, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    .line 270
    .local v11, "type":Landroid/graphics/Bitmap$Config;
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 271
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    mul-int/2addr v4, v8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v9

    .line 272
    .local v9, "map":Ljava/nio/MappedByteBuffer;
    invoke-virtual {p0, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 277
    invoke-static {v12, v8, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 280
    invoke-virtual {p0, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 282
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 283
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 285
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "height":I
    .end local v9    # "map":Ljava/nio/MappedByteBuffer;
    .end local v10    # "random_access_file":Ljava/io/RandomAccessFile;
    .end local v11    # "type":Landroid/graphics/Bitmap$Config;
    .end local v12    # "width":I
    :goto_0
    return-object p0

    .line 287
    :catch_0
    move-exception v6

    .line 289
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method center_within(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 243
    iget v0, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 244
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCImage;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p2, p3}, Lcom/jirbo/adcolony/ADCImage;->set_position(II)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ADCImage;->draw(Landroid/graphics/Canvas;)V

    .line 250
    return-void
.end method

.method get_position()[I
    .locals 3

    .prologue
    .line 234
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v0, v1

    .line 235
    .local v0, "position":[I
    return-object v0
.end method

.method ninePatch(II)V
    .locals 20
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 175
    :goto_0
    return-void

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v8, v8, 0x3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    .local v2, "left":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v8, v8, 0x3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 125
    .local v17, "right":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v6, v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v8, v8, 0x3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 128
    .local v19, "stretch":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 131
    .local v16, "new_bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    mul-int/2addr v4, v6

    new-array v3, v4, [I

    .line 132
    .local v3, "left_pixels":[I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    mul-int/2addr v4, v6

    new-array v0, v4, [I

    move-object/from16 v18, v0

    .line 135
    .local v18, "right_pixels":[I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v5, v6, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v8, v8, 0x3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 136
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v7, v4, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v10, v4, 0x3

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 139
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    new-array v5, v4, [I

    .line 142
    .local v5, "new_bitmap_pixels":[I
    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v4, v16

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 145
    const/4 v13, 0x0

    .line 146
    .local v13, "current_row":I
    const/4 v12, 0x0

    .line 147
    .local v12, "current_column":I
    const/4 v14, 0x0

    .local v14, "i":I
    const/4 v15, 0x0

    .line 148
    .local v15, "j":I
    :cond_1
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v13, v4, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v4, v4, 0x3

    if-ge v12, v4, :cond_4

    .line 151
    array-length v4, v3

    if-ge v14, v4, :cond_2

    aget v4, v3, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 152
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 159
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 160
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v12, v4, :cond_1

    .line 162
    add-int/lit8 v13, v13, 0x1

    .line 163
    const/4 v12, 0x0

    goto :goto_1

    .line 154
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    div-int/lit8 v6, v6, 0x3

    sub-int/2addr v4, v6

    if-lt v12, v4, :cond_3

    .line 156
    move-object/from16 v0, v18

    array-length v4, v0

    if-ge v15, v4, :cond_5

    aget v4, v18, v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 157
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 167
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    .line 170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    .line 171
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_width:I

    .line 172
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jirbo/adcolony/ADCImage;->original_height:I

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->width:I

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jirbo/adcolony/ADCImage;->height:I

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method resize(D)V
    .locals 1
    .param p1, "scale"    # D

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jirbo/adcolony/ADCImage;->resize(DZ)V

    .line 196
    return-void
.end method

.method resize(DZ)V
    .locals 6
    .param p1, "scale"    # D
    .param p3, "is_native"    # Z

    .prologue
    .line 199
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-eqz v2, :cond_4

    .line 204
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v1, v2

    .line 205
    .local v1, "w":I
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v0, v2

    .line 206
    .local v0, "h":I
    iget v2, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    if-eq v0, v2, :cond_3

    .line 208
    :cond_2
    iput v1, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    .line 209
    iput v0, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    .line 210
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    .line 211
    if-nez p3, :cond_3

    sget-object v2, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_3
    if-eqz p3, :cond_4

    .line 215
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    .line 219
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_4
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 220
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method resize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    if-eq p2, v0, :cond_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->original_bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    .line 185
    iput p1, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    .line 186
    iput p2, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    .line 187
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 188
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->src_rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 190
    sget-object v0, Lcom/jirbo/adcolony/ADC;->bitmaps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method set_position(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 227
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 228
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/jirbo/adcolony/ADCImage;->width:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 229
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/jirbo/adcolony/ADCImage;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 230
    return-void
.end method

.method x()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method y()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCImage;->dest_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method
