.class Lcom/roblox/client/AutoResizeTextView$1;
.super Ljava/lang/Object;
.source "AutoResizeTextView.java"

# interfaces
.implements Lcom/roblox/client/AutoResizeTextView$SizeTester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/AutoResizeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/AutoResizeTextView;


# direct methods
.method constructor <init>(Lcom/roblox/client/AutoResizeTextView;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTestSize(ILandroid/graphics/RectF;)I
    .locals 13
    .param p1, "suggestedSize"    # I
    .param p2, "availableSPace"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 235
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$000(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 236
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/roblox/client/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-virtual {v2}, Lcom/roblox/client/AutoResizeTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v11

    .line 240
    .local v11, "trans":Landroid/text/method/TransformationMethod;
    instance-of v10, v11, Landroid/text/method/SingleLineTransformationMethod;

    .line 243
    .local v10, "singleline":Z
    if-eqz v10, :cond_1

    .line 244
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$100(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v3}, Lcom/roblox/client/AutoResizeTextView;->access$000(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 245
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$100(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v3}, Lcom/roblox/client/AutoResizeTextView;->access$000(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 267
    :goto_0
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$100(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v12, v12}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 268
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$100(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const/4 v7, -0x1

    .line 273
    :cond_0
    return v7

    .line 247
    :cond_1
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$000(Lcom/roblox/client/AutoResizeTextView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v3}, Lcom/roblox/client/AutoResizeTextView;->access$200(Lcom/roblox/client/AutoResizeTextView;)I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v5, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v5}, Lcom/roblox/client/AutoResizeTextView;->access$300(Lcom/roblox/client/AutoResizeTextView;)F

    move-result v5

    iget-object v6, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v6}, Lcom/roblox/client/AutoResizeTextView;->access$400(Lcom/roblox/client/AutoResizeTextView;)F

    move-result v6

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 257
    .local v0, "layout":Landroid/text/StaticLayout;
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$100(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 258
    const/4 v9, -0x1

    .line 259
    .local v9, "maxWidth":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ge v8, v2, :cond_3

    .line 260
    int-to-float v2, v9

    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 261
    invoke-virtual {v0, v8}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    float-to-int v9, v2

    .line 259
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 264
    :cond_3
    iget-object v2, p0, Lcom/roblox/client/AutoResizeTextView$1;->this$0:Lcom/roblox/client/AutoResizeTextView;

    invoke-static {v2}, Lcom/roblox/client/AutoResizeTextView;->access$100(Lcom/roblox/client/AutoResizeTextView;)Landroid/graphics/RectF;

    move-result-object v2

    int-to-float v3, v9

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0
.end method
