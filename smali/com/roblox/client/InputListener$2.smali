.class Lcom/roblox/client/InputListener$2;
.super Ljava/lang/Object;
.source "InputListener.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/InputListener;->setupControllerInput(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/InputListener;


# direct methods
.method constructor <init>(Lcom/roblox/client/InputListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/roblox/client/InputListener$2;->this$0:Lcom/roblox/client/InputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, "handled":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    const/16 v10, 0x1002

    if-eq v9, v10, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    const v10, 0x100008

    if-eq v9, v10, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    const/16 v10, 0x2002

    if-eq v9, v10, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    const/16 v10, 0x4002

    if-eq v9, v10, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    :cond_0
    move v5, v4

    .line 239
    .end local v4    # "handled":Z
    .local v5, "handled":I
    :goto_0
    return v5

    .line 199
    .end local v5    # "handled":I
    .restart local v4    # "handled":Z
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 201
    .local v0, "deltaXLeft":F
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 205
    .local v2, "deltaYLeft":F
    const/16 v9, 0xb

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 207
    .local v1, "deltaXRight":F
    const/16 v9, 0xe

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 210
    .local v3, "deltaYRight":F
    const/16 v9, 0x16

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    .line 213
    .local v7, "rightTrigger":F
    const v9, 0x3e4ccccd    # 0.2f

    cmpl-float v9, v7, v9

    if-lez v9, :cond_2

    .line 214
    const/4 v4, 0x1

    .line 215
    iget-object v9, p0, Lcom/roblox/client/InputListener$2;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v9}, Lcom/roblox/client/InputListener;->access$400(Lcom/roblox/client/InputListener;)Landroid/view/SurfaceView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/roblox/client/InputListener$2;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v10}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v8, v9

    .line 216
    .local v8, "width":I
    iget-object v9, p0, Lcom/roblox/client/InputListener$2;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v9}, Lcom/roblox/client/InputListener;->access$400(Lcom/roblox/client/InputListener;)Landroid/view/SurfaceView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/roblox/client/InputListener$2;->this$0:Lcom/roblox/client/InputListener;

    invoke-static {v10}, Lcom/roblox/client/InputListener;->access$500(Lcom/roblox/client/InputListener;)F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v6, v9

    .line 217
    .local v6, "height":I
    int-to-float v9, v8

    int-to-float v10, v6

    invoke-static {v9, v10}, Lcom/roblox/client/InputListener;->access$600(FF)V

    .line 220
    .end local v6    # "height":I
    .end local v8    # "width":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fa999999999999aL    # 0.05

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fa999999999999aL    # 0.05

    cmpl-double v9, v9, v11

    if-lez v9, :cond_5

    .line 222
    :cond_3
    const/4 v4, 0x1

    .line 223
    invoke-static {v0, v2}, Lcom/roblox/client/InputListener;->access$700(FF)V

    .line 229
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fa999999999999aL    # 0.05

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fa999999999999aL    # 0.05

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6

    .line 231
    :cond_4
    const/4 v4, 0x1

    .line 232
    neg-float v9, v1

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    neg-float v10, v3

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v10, v11

    invoke-static {v9, v10}, Lcom/roblox/client/InputListener;->access$800(FF)V

    :goto_2
    move v5, v4

    .line 239
    .restart local v5    # "handled":I
    goto/16 :goto_0

    .line 225
    .end local v5    # "handled":I
    :cond_5
    const/4 v4, 0x1

    .line 226
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/roblox/client/InputListener;->access$700(FF)V

    goto :goto_1

    .line 235
    :cond_6
    const/4 v4, 0x1

    .line 236
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/roblox/client/InputListener;->access$800(FF)V

    goto :goto_2
.end method
