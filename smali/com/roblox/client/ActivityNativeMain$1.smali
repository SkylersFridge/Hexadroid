.class Lcom/roblox/client/ActivityNativeMain$1;
.super Ljava/lang/Object;
.source "ActivityNativeMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$1;->this$0:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$1;->this$0:Lcom/roblox/client/ActivityNativeMain;

    iget-object v0, v0, Lcom/roblox/client/ActivityNativeMain;->mSpinnerEnvironment:Landroid/widget/Spinner;

    new-instance v1, Lcom/roblox/client/ActivityNativeMain$1$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/ActivityNativeMain$1$1;-><init>(Lcom/roblox/client/ActivityNativeMain$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 200
    return-void
.end method
