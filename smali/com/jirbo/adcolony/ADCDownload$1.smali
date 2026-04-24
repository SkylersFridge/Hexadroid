.class Lcom/jirbo/adcolony/ADCDownload$1;
.super Ljava/lang/Object;
.source "ADCDownload.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCDownload;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCDownload;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCDownload;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCDownload;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload$1;->this$0:Lcom/jirbo/adcolony/ADCDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 271
    sget-object v0, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v1, "ADCDownload - verify called"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 272
    const/4 v0, 0x1

    return v0
.end method
