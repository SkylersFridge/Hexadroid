.class Lcom/roblox/client/FragmentGamesPage$2;
.super Ljava/lang/Object;
.source "FragmentGamesPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/FragmentGamesPage;->onScroll(Landroid/widget/AbsListView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/FragmentGamesPage;


# direct methods
.method constructor <init>(Lcom/roblox/client/FragmentGamesPage;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/roblox/client/FragmentGamesPage$2;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 375
    iget-object v0, p0, Lcom/roblox/client/FragmentGamesPage$2;->this$0:Lcom/roblox/client/FragmentGamesPage;

    invoke-static {v0}, Lcom/roblox/client/FragmentGamesPage;->access$200(Lcom/roblox/client/FragmentGamesPage;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, " %d .. %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$2;->this$0:Lcom/roblox/client/FragmentGamesPage;

    iget v4, v4, Lcom/roblox/client/FragmentGamesPage;->mFirstVisibleRow:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/roblox/client/FragmentGamesPage$2;->this$0:Lcom/roblox/client/FragmentGamesPage;

    iget v4, v4, Lcom/roblox/client/FragmentGamesPage;->mLastVisibleRow:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/roblox/client/Utils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void
.end method
