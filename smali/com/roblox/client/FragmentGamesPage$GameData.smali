.class Lcom/roblox/client/FragmentGamesPage$GameData;
.super Ljava/lang/Object;
.source "FragmentGamesPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/FragmentGamesPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameData"
.end annotation


# instance fields
.field public mCreatorName:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPlaceId:Ljava/lang/String;

.field public mPlayerCount:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/FragmentGamesPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/roblox/client/FragmentGamesPage$1;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/roblox/client/FragmentGamesPage$GameData;-><init>()V

    return-void
.end method
