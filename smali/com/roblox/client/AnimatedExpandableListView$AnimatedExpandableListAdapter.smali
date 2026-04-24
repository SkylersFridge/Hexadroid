.class public abstract Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AnimatedExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/AnimatedExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimatedExpandableListAdapter"
.end annotation


# instance fields
.field private groupInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parent:Lcom/roblox/client/AnimatedExpandableListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;Lcom/roblox/client/AnimatedExpandableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # Lcom/roblox/client/AnimatedExpandableListView;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->setParent(Lcom/roblox/client/AnimatedExpandableListView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->startExpandAnimation(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->startCollapseAnimation(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->stopAnimation(I)V

    return-void
.end method

.method private getGroupInfo(I)Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 250
    iget-object v1, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    .line 251
    .local v0, "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    .end local v0    # "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;-><init>(Lcom/roblox/client/AnimatedExpandableListView$1;)V

    .line 253
    .restart local v0    # "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    iget-object v1, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->groupInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    :cond_0
    return-object v0
.end method

.method private setParent(Lcom/roblox/client/AnimatedExpandableListView;)V
    .locals 0
    .param p1, "parent"    # Lcom/roblox/client/AnimatedExpandableListView;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->parent:Lcom/roblox/client/AnimatedExpandableListView;

    .line 236
    return-void
.end method

.method private startCollapseAnimation(II)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "firstChildPosition"    # I

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 267
    .local v0, "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->animating:Z

    .line 268
    iput p2, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->expanding:Z

    .line 270
    return-void
.end method

.method private startExpandAnimation(II)V
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "firstChildPosition"    # I

    .prologue
    const/4 v1, 0x1

    .line 259
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 260
    .local v0, "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    iput-boolean v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->animating:Z

    .line 261
    iput p2, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    .line 262
    iput-boolean v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->expanding:Z

    .line 263
    return-void
.end method

.method private stopAnimation(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 274
    .local v0, "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->animating:Z

    .line 275
    return-void
.end method


# virtual methods
.method public final getChildType(II)I
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 283
    .local v0, "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 286
    const/4 v1, 0x0

    .line 291
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildType(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final getChildTypeCount()I
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 309
    invoke-direct/range {p0 .. p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    move-result-object v10

    .line 311
    .local v10, "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    iget-boolean v3, v10, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->animating:Z

    if-eqz v3, :cond_7

    .line 313
    if-nez p4, :cond_0

    .line 314
    new-instance p4, Lcom/roblox/client/AnimatedExpandableListView$DummyView;

    .end local p4    # "convertView":Landroid/view/View;
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-direct {v0, v3}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;-><init>(Landroid/content/Context;)V

    .line 315
    .restart local p4    # "convertView":Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    :cond_0
    iget v3, v10, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    move/from16 v0, p2

    if-ge v0, v3, :cond_1

    .line 338
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v3, p4

    .line 428
    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v21, p5

    .line 342
    check-cast v21, Landroid/widget/ExpandableListView;

    .local v21, "listView":Landroid/widget/ExpandableListView;
    move-object/from16 v12, p4

    .line 344
    check-cast v12, Lcom/roblox/client/AnimatedExpandableListView$DummyView;

    .line 347
    .local v12, "dummyView":Lcom/roblox/client/AnimatedExpandableListView$DummyView;
    invoke-virtual {v12}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->clearViews()V

    .line 350
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getDividerHeight()I

    move-result v7

    invoke-virtual {v12, v3, v4, v7}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->setDivider(Landroid/graphics/drawable/Drawable;II)V

    .line 353
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 354
    .local v23, "measureSpecW":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 356
    .local v22, "measureSpecH":I
    const/4 v9, 0x0

    .line 357
    .local v9, "totalHeight":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v19

    .line 359
    .local v19, "clipHeight":I
    invoke-virtual/range {p0 .. p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildrenCount(I)I

    move-result v20

    .line 360
    .local v20, "len":I
    iget v5, v10, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    .local v5, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_4

    .line 361
    add-int/lit8 v3, v20, -0x1

    if-ne v5, v3, :cond_2

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 362
    .local v18, "childView":Landroid/view/View;
    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 363
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v9, v3

    .line 365
    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 367
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->addFakeView(Landroid/view/View;)V

    .line 360
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 361
    .end local v18    # "childView":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 369
    .restart local v18    # "childView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->addFakeView(Landroid/view/View;)V

    .line 374
    add-int/lit8 v3, v5, 0x1

    div-int v17, v9, v3

    .line 375
    .local v17, "averageHeight":I
    sub-int v3, v20, v5

    add-int/lit8 v3, v3, -0x1

    mul-int v3, v3, v17

    add-int/2addr v9, v3

    .line 380
    .end local v17    # "averageHeight":I
    .end local v18    # "childView":Landroid/view/View;
    :cond_4
    iget-boolean v3, v10, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->expanding:Z

    if-eqz v3, :cond_5

    .line 381
    new-instance v6, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v7, v12

    invoke-direct/range {v6 .. v11}, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;-><init>(Landroid/view/View;IILcom/roblox/client/AnimatedExpandableListView$GroupInfo;Lcom/roblox/client/AnimatedExpandableListView$1;)V

    .line 382
    .local v6, "ani":Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->parent:Lcom/roblox/client/AnimatedExpandableListView;

    invoke-static {v3}, Lcom/roblox/client/AnimatedExpandableListView;->access$500(Lcom/roblox/client/AnimatedExpandableListView;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v6, v3, v4}, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;->setDuration(J)V

    .line 383
    new-instance v3, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$1;-><init>(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;I)V

    invoke-virtual {v6, v3}, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 398
    invoke-virtual {v12, v6}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    move-object/from16 v3, p4

    .line 426
    goto/16 :goto_0

    .line 400
    .end local v6    # "ani":Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;
    :cond_5
    iget v3, v10, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 401
    iput v9, v10, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    .line 404
    :cond_6
    new-instance v6, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;

    iget v13, v10, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->dummyHeight:I

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v6

    move-object v15, v10

    invoke-direct/range {v11 .. v16}, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;-><init>(Landroid/view/View;IILcom/roblox/client/AnimatedExpandableListView$GroupInfo;Lcom/roblox/client/AnimatedExpandableListView$1;)V

    .line 405
    .restart local v6    # "ani":Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->parent:Lcom/roblox/client/AnimatedExpandableListView;

    invoke-static {v3}, Lcom/roblox/client/AnimatedExpandableListView;->access$500(Lcom/roblox/client/AnimatedExpandableListView;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v6, v3, v4}, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;->setDuration(J)V

    .line 406
    new-instance v3, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v3, v0, v1, v2, v10}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter$2;-><init>(Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;ILandroid/widget/ExpandableListView;Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;)V

    invoke-virtual {v6, v3}, Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 423
    invoke-virtual {v12, v6}, Lcom/roblox/client/AnimatedExpandableListView$DummyView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 428
    .end local v5    # "i":I
    .end local v6    # "ani":Lcom/roblox/client/AnimatedExpandableListView$ExpandAnimation;
    .end local v9    # "totalHeight":I
    .end local v12    # "dummyView":Lcom/roblox/client/AnimatedExpandableListView$DummyView;
    .end local v19    # "clipHeight":I
    .end local v20    # "len":I
    .end local v21    # "listView":Landroid/widget/ExpandableListView;
    .end local v22    # "measureSpecH":I
    .end local v23    # "measureSpecW":I
    :cond_7
    invoke-virtual/range {p0 .. p5}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public final getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getGroupInfo(I)Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;

    move-result-object v0

    .line 435
    .local v0, "info":Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;
    iget-boolean v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->animating:Z

    if-eqz v1, :cond_0

    .line 436
    iget v1, v0, Lcom/roblox/client/AnimatedExpandableListView$GroupInfo;->firstChildPosition:I

    add-int/lit8 v1, v1, 0x1

    .line 438
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/AnimatedExpandableListView$AnimatedExpandableListAdapter;->getRealChildrenCount(I)I

    move-result v1

    goto :goto_0
.end method

.method public getRealChildType(II)I
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public getRealChildTypeCount()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getRealChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getRealChildrenCount(I)I
.end method
