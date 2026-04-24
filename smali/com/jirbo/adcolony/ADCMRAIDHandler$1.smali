.class Lcom/jirbo/adcolony/ADCMRAIDHandler$1;
.super Ljava/lang/Object;
.source "ADCMRAIDHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCMRAIDHandler;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCMRAIDHandler;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCMRAIDHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCMRAIDHandler;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCMRAIDHandler$1;->this$0:Lcom/jirbo/adcolony/ADCMRAIDHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/ADC;->mraid_block:Z

    .line 59
    return-void
.end method
