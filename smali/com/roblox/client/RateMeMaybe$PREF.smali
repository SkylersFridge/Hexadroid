.class Lcom/roblox/client/RateMeMaybe$PREF;
.super Ljava/lang/Object;
.source "RateMeMaybe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/RateMeMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PREF"
.end annotation


# static fields
.field private static final DONT_SHOW_AGAIN:Ljava/lang/String; = "PREF_DONT_SHOW_AGAIN"

.field public static final LAUNCHES_SINCE_LAST_PROMPT:Ljava/lang/String; = "PREF_LAUNCHES_SINCE_LAST_PROMPT"

.field public static final NAME:Ljava/lang/String; = "rate_me_maybe"

.field public static final TIME_OF_ABSOLUTE_FIRST_LAUNCH:Ljava/lang/String; = "PREF_TIME_OF_ABSOLUTE_FIRST_LAUNCH"

.field public static final TIME_OF_LAST_PROMPT:Ljava/lang/String; = "PREF_TIME_OF_LAST_PROMPT"

.field public static final TOTAL_LAUNCH_COUNT:Ljava/lang/String; = "PREF_TOTAL_LAUNCH_COUNT"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
