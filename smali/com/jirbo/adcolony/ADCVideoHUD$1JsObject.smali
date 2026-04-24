.class Lcom/jirbo/adcolony/ADCVideoHUD$1JsObject;
.super Ljava/lang/Object;
.source "ADCVideoHUD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/ADCVideoHUD;->dec_fire_keyboard_viewable_change(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JsObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCVideoHUD;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/jirbo/adcolony/ADCVideoHUD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideoHUD$1JsObject;->this$0:Lcom/jirbo/adcolony/ADCVideoHUD;

    iput-boolean p2, p0, Lcom/jirbo/adcolony/ADCVideoHUD$1JsObject;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1166
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideoHUD$1JsObject;->val$visible:Z

    if-eqz v0, :cond_0

    const-string v0, "keyboard_opened"

    .line 1167
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "keyboard_closed"

    goto :goto_0
.end method
