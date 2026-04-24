.class public Lcom/roblox/client/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/AutoResizeTextView$SizeTester;
    }
.end annotation


# static fields
.field private static final NO_LINE_LIMIT:I = -0x1


# instance fields
.field private mAvailableSpaceRect:Landroid/graphics/RectF;

.field private mEnableSizeCache:Z

.field private mInitiallized:Z

.field private mMaxLines:I

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mPaint:Landroid/text/TextPaint;

.field private final mSizeTester:Lcom/roblox/client/AutoResizeTextView$SizeTester;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextCachedSizes:Landroid/util/SparseIntArray;

.field private mTextRect:Landroid/graphics/RectF;

.field private mWidthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingMult:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingAdd:F

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMinTextSize:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->mEnableSizeCache:Z

    .line 232
    new-instance v0, Lcom/roblox/client/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/AutoResizeTextView$1;-><init>(Lcom/roblox/client/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSizeTester:Lcom/roblox/client/AutoResizeTextView$SizeTester;

    .line 99
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->initialize()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingMult:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingAdd:F

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMinTextSize:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->mEnableSizeCache:Z

    .line 232
    new-instance v0, Lcom/roblox/client/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/AutoResizeTextView$1;-><init>(Lcom/roblox/client/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSizeTester:Lcom/roblox/client/AutoResizeTextView$SizeTester;

    .line 104
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->initialize()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    .line 83
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingMult:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingAdd:F

    .line 87
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMinTextSize:F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->mEnableSizeCache:Z

    .line 232
    new-instance v0, Lcom/roblox/client/AutoResizeTextView$1;

    invoke-direct {v0, p0}, Lcom/roblox/client/AutoResizeTextView$1;-><init>(Lcom/roblox/client/AutoResizeTextView;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSizeTester:Lcom/roblox/client/AutoResizeTextView$SizeTester;

    .line 109
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->initialize()V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/AutoResizeTextView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/AutoResizeTextView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/roblox/client/AutoResizeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/AutoResizeTextView;

    .prologue
    .line 58
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->mWidthLimit:I

    return v0
.end method

.method static synthetic access$300(Lcom/roblox/client/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/AutoResizeTextView;

    .prologue
    .line 58
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingMult:F

    return v0
.end method

.method static synthetic access$400(Lcom/roblox/client/AutoResizeTextView;)F
    .locals 1
    .param p0, "x0"    # Lcom/roblox/client/AutoResizeTextView;

    .prologue
    .line 58
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingAdd:F

    return v0
.end method

.method private adjustTextSize(Ljava/lang/String;)V
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-boolean v2, p0, Lcom/roblox/client/AutoResizeTextView;->mInitiallized:Z

    if-nez v2, :cond_0

    .line 230
    :goto_0
    return-void

    .line 219
    :cond_0
    iget v2, p0, Lcom/roblox/client/AutoResizeTextView;->mMinTextSize:F

    float-to-int v1, v2

    .line 220
    .local v1, "startSize":I
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 222
    .local v0, "heightLimit":I
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/roblox/client/AutoResizeTextView;->mWidthLimit:I

    .line 224
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/roblox/client/AutoResizeTextView;->mWidthLimit:I

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 225
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 226
    const/4 v2, 0x0

    iget v3, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxTextSize:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/roblox/client/AutoResizeTextView;->mSizeTester:Lcom/roblox/client/AutoResizeTextView$SizeTester;

    iget-object v5, p0, Lcom/roblox/client/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/roblox/client/AutoResizeTextView;->efficientTextSizeSearch(IILcom/roblox/client/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v3

    int-to-float v3, v3

    invoke-super {p0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private static binarySearch(IILcom/roblox/client/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 6
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "sizeTester"    # Lcom/roblox/client/AutoResizeTextView$SizeTester;
    .param p3, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 311
    move v1, p0

    .line 312
    .local v1, "lastBest":I
    move v2, p0

    .line 313
    .local v2, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 314
    .local v0, "hi":I
    const/4 v3, 0x0

    .line 315
    .local v3, "mid":I
    :goto_0
    if-gt v2, v0, :cond_2

    .line 316
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 317
    invoke-interface {p2, v3, p3}, Lcom/roblox/client/AutoResizeTextView$SizeTester;->onTestSize(ILandroid/graphics/RectF;)I

    move-result v4

    .line 318
    .local v4, "midValCmp":I
    if-gez v4, :cond_0

    .line 319
    move v1, v2

    .line 320
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 321
    :cond_0
    if-lez v4, :cond_1

    .line 322
    add-int/lit8 v0, v3, -0x1

    .line 323
    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 330
    .end local v1    # "lastBest":I
    .end local v4    # "midValCmp":I
    :cond_2
    return v1
.end method

.method private efficientTextSizeSearch(IILcom/roblox/client/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "sizeTester"    # Lcom/roblox/client/AutoResizeTextView$SizeTester;
    .param p4, "availableSpace"    # Landroid/graphics/RectF;

    .prologue
    .line 295
    iget-boolean v3, p0, Lcom/roblox/client/AutoResizeTextView;->mEnableSizeCache:Z

    if-nez v3, :cond_1

    .line 296
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/AutoResizeTextView;->binarySearch(IILcom/roblox/client/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 306
    :cond_0
    :goto_0
    return v1

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 300
    .local v0, "key":I
    :goto_1
    iget-object v3, p0, Lcom/roblox/client/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 301
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 304
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/client/AutoResizeTextView;->binarySearch(IILcom/roblox/client/AutoResizeTextView$SizeTester;Landroid/graphics/RectF;)I

    move-result v1

    .line 305
    iget-object v3, p0, Lcom/roblox/client/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 299
    .end local v0    # "key":I
    .end local v1    # "size":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mPaint:Landroid/text/TextPaint;

    .line 114
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxTextSize:F

    .line 115
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mAvailableSpaceRect:Landroid/graphics/RectF;

    .line 116
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    .line 117
    iget v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxLines:I

    if-nez v0, :cond_0

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxLines:I

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/AutoResizeTextView;->mInitiallized:Z

    .line 122
    return-void
.end method

.method private reAdjust()V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public enableSizeCache(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/roblox/client/AutoResizeTextView;->mEnableSizeCache:Z

    .line 289
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 290
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldwidth"    # I
    .param p4, "oldheight"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 346
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->reAdjust()V

    .line 349
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 338
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->reAdjust()V

    .line 339
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 197
    iput p2, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingMult:F

    .line 198
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->mSpacingAdd:F

    .line 199
    return-void
.end method

.method public setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 175
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxLines:I

    .line 176
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->reAdjust()V

    .line 177
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .param p1, "minTextSize"    # F

    .prologue
    .line 207
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->mMinTextSize:F

    .line 208
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->reAdjust()V

    .line 209
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 157
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxLines:I

    .line 158
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->reAdjust()V

    .line 159
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .param p1, "singleLine"    # Z

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxLines:I

    .line 169
    :goto_0
    invoke-direct {p0}, Lcom/roblox/client/AutoResizeTextView;->reAdjust()V

    .line 170
    return-void

    .line 167
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxLines:I

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxTextSize:F

    .line 135
    iget-object v0, p0, Lcom/roblox/client/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/roblox/client/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    .local v0, "c":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    .local v1, "r":Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/roblox/client/AutoResizeTextView;->mMaxTextSize:F

    .line 190
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView;->mTextCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 191
    invoke-virtual {p0}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/roblox/client/AutoResizeTextView;->adjustTextSize(Ljava/lang/String;)V

    .line 192
    return-void

    .line 187
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1    # "r":Landroid/content/res/Resources;
    goto :goto_0
.end method
