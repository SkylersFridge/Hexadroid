.class Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentGamesPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGamesPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameRowListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/FragmentGamesPage;


# direct methods
.method private constructor <init>(Lcom/roblox/client/FragmentGamesPage;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/FragmentGamesPage;
    .param p2, "x1"    # Lcom/roblox/client/FragmentGamesPage$1;

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;-><init>(Lcom/roblox/client/FragmentGamesPage;)V

    return-void
.end method


# virtual methods
.method public blankFramesInScope(ILandroid/view/View;)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "row"    # Landroid/view/View;

    .prologue
    .line 584
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x4

    if-ge v3, v7, :cond_2

    .line 586
    iget-object v7, p0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    iget-object v7, v7, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    aget-object v2, v7, v3

    .line 587
    .local v2, "frame":Landroid/widget/FrameLayout;
    iget-object v7, p0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    iget-object v7, v7, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    aget-object v7, v7, v3

    const v8, 0x7f090048

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 590
    .local v4, "imageView":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-static {v7}, Lcom/roblox/client/FragmentGamesPage;->access$400(Lcom/roblox/client/FragmentGamesPage;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    .line 592
    .local v0, "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 594
    invoke-virtual {v0}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setCancel()V

    .line 597
    :cond_0
    if-nez v3, :cond_1

    .line 600
    iput p1, v0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewPosition:I

    .line 601
    iput-object p2, v0, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewConvertView:Landroid/view/View;

    .line 610
    :cond_1
    iget-object v7, p0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-virtual {v7}, Lcom/roblox/client/FragmentGamesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 612
    const v7, 0x7f090049

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 613
    .local v5, "link":Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    const v7, 0x7f09004a

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 616
    .local v1, "creator":Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    const v7, 0x7f09004b

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 619
    .local v6, "playerNumber":Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 621
    .end local v0    # "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    .end local v1    # "creator":Landroid/widget/TextView;
    .end local v2    # "frame":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "link":Landroid/widget/TextView;
    .end local v6    # "playerNumber":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 427
    const/16 v0, 0x1400

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 435
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOrUpdateView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 25
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "isUpdating"    # Z

    .prologue
    .line 445
    const/4 v14, 0x0

    .line 446
    .local v14, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v17, p2

    .line 447
    .local v17, "row":Landroid/view/View;
    if-nez p2, :cond_0

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 450
    const v21, 0x7f03000b

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 454
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentGamesPage;->openFindFramesScope(Landroid/view/View;)V

    .line 456
    if-nez p2, :cond_2

    .line 459
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v11, v0, :cond_2

    .line 461
    const v21, 0x7f03000a

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 462
    .local v20, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    aget-object v21, v21, v11

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    aget-object v21, v21, v11

    const v22, 0x7f090048

    invoke-virtual/range {v21 .. v22}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 465
    .local v12, "imageView":Landroid/widget/ImageView;
    new-instance v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;-><init>(Lcom/roblox/client/FragmentGamesPage$1;)V

    .line 466
    .local v4, "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/roblox/client/FragmentGamesPage;->access$400(Lcom/roblox/client/FragmentGamesPage;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    if-nez v11, :cond_1

    .line 471
    move/from16 v0, p1

    iput v0, v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewPosition:I

    .line 472
    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewConvertView:Landroid/view/View;

    .line 459
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 477
    .end local v4    # "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    .end local v11    # "i":I
    .end local v12    # "imageView":Landroid/widget/ImageView;
    .end local v20    # "view":Landroid/view/View;
    :cond_2
    mul-int/lit8 v18, p1, 0x4

    .line 478
    .local v18, "rowOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/roblox/client/FragmentGamesPage;->isGameDataFetched(I)Z

    move-result v10

    .line 490
    .local v10, "haveGameData":Z
    if-nez v10, :cond_4

    .line 493
    if-nez p4, :cond_3

    if-eqz p2, :cond_3

    .line 495
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->blankFramesInScope(ILandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/roblox/client/FragmentGamesPage;->closeFindFramesScope()V

    .line 578
    :goto_1
    return-object v17

    .line 501
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v11, v0, :cond_b

    .line 503
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage;->mCurrentFrames:[Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    aget-object v8, v21, v11

    .line 504
    .local v8, "frame":Landroid/widget/FrameLayout;
    const v21, 0x7f090048

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 505
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/roblox/client/FragmentGamesPage;->access$400(Lcom/roblox/client/FragmentGamesPage;)Ljava/util/Map;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    .line 507
    .restart local v4    # "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    add-int v13, v18, v11

    .line 508
    .local v13, "index":I
    if-eqz p4, :cond_5

    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->getCurrentIndex()I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v13, :cond_5

    .line 501
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 514
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/roblox/client/FragmentGamesPage;->access$500(Lcom/roblox/client/FragmentGamesPage;)Landroid/util/SparseArray;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/roblox/client/FragmentGamesPage$GameData;

    .line 515
    .local v9, "game":Lcom/roblox/client/FragmentGamesPage$GameData;
    iget-object v0, v9, Lcom/roblox/client/FragmentGamesPage$GameData;->mPlaceId:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/roblox/client/ImageViewHttpLoader;->checkBitmapCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 516
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_8

    .line 518
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 519
    invoke-virtual {v4, v13}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setSwitchToNoTask(I)V

    .line 520
    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->getClearScrapped()Z

    .line 558
    :cond_6
    :goto_4
    if-nez v11, :cond_7

    .line 560
    move/from16 v0, p1

    iput v0, v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewPosition:I

    .line 561
    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->mListViewConvertView:Landroid/view/View;

    .line 564
    :cond_7
    const v21, 0x7f090049

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 565
    .local v15, "link":Landroid/widget/TextView;
    iget-object v0, v9, Lcom/roblox/client/FragmentGamesPage$GameData;->mName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    const v21, 0x7f09004a

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 568
    .local v5, "creator":Landroid/widget/TextView;
    iget-object v0, v9, Lcom/roblox/client/FragmentGamesPage$GameData;->mCreatorName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const v21, 0x7f09004b

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 571
    .local v16, "playerNumber":Landroid/widget/TextView;
    iget-object v0, v9, Lcom/roblox/client/FragmentGamesPage$GameData;->mPlayerCount:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 576
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    .end local v5    # "creator":Landroid/widget/TextView;
    .end local v8    # "frame":Landroid/widget/FrameLayout;
    .end local v9    # "game":Lcom/roblox/client/FragmentGamesPage$GameData;
    .end local v10    # "haveGameData":Z
    .end local v11    # "i":I
    .end local v12    # "imageView":Landroid/widget/ImageView;
    .end local v13    # "index":I
    .end local v15    # "link":Landroid/widget/TextView;
    .end local v16    # "playerNumber":Landroid/widget/TextView;
    .end local v18    # "rowOffset":I
    :catchall_0
    move-exception v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/roblox/client/FragmentGamesPage;->closeFindFramesScope()V

    throw v21

    .line 524
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    .restart local v8    # "frame":Landroid/widget/FrameLayout;
    .restart local v9    # "game":Lcom/roblox/client/FragmentGamesPage$GameData;
    .restart local v10    # "haveGameData":Z
    .restart local v11    # "i":I
    .restart local v12    # "imageView":Landroid/widget/ImageView;
    .restart local v13    # "index":I
    .restart local v18    # "rowOffset":I
    :cond_8
    :try_start_2
    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->getCurrentIndex()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v13, :cond_6

    .line 526
    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->getClearScrapped()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/roblox/client/FragmentGamesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f020028

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    :cond_9
    new-instance v19, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;-><init>(Lcom/roblox/client/FragmentGamesPage;Lcom/roblox/client/FragmentGamesPage$1;)V

    .line 532
    .local v19, "task":Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mImageView:Landroid/widget/ImageView;

    .line 533
    iget-object v0, v9, Lcom/roblox/client/FragmentGamesPage$GameData;->mPlaceId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mPlaceId:Ljava/lang/String;

    .line 534
    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mTracking:Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;

    .line 535
    move-object/from16 v0, v19

    iput v13, v0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mIndex:I

    .line 537
    invoke-virtual {v4}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->isStarted()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 539
    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v13}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setSwitchTo(Landroid/os/AsyncTask;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    :goto_5
    :try_start_3
    sget-object v22, Lcom/roblox/client/FragmentGamesPage;->sThreadPoolExecutor:Ljava/util/concurrent/Executor;

    const/16 v21, 0x0

    check-cast v21, [Ljava/lang/Void;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 550
    :catch_0
    move-exception v7

    .line 552
    .local v7, "ex":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_4
    const-string v21, "Flooding GamesPageThumbnailAsyncTask: %d : %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;->mPlaceId:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 553
    .local v6, "err":Ljava/lang/String;
    const-string v21, "roblox_client"

    move-object/from16 v0, v21

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 543
    .end local v6    # "err":Ljava/lang/String;
    .end local v7    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v4, v0, v13, v1}, Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;->setStarting(Landroid/os/AsyncTask;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 576
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "ce":Lcom/roblox/client/FragmentGamesPage$ImageViewStateTracking;
    .end local v8    # "frame":Landroid/widget/FrameLayout;
    .end local v9    # "game":Lcom/roblox/client/FragmentGamesPage$GameData;
    .end local v12    # "imageView":Landroid/widget/ImageView;
    .end local v13    # "index":I
    .end local v19    # "task":Lcom/roblox/client/FragmentGamesPage$GamesPageThumbnailAsyncTask;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->this$0:Lcom/roblox/client/FragmentGamesPage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/roblox/client/FragmentGamesPage;->closeFindFramesScope()V

    goto/16 :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/roblox/client/FragmentGamesPage$GameRowListAdapter;->getOrUpdateView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
