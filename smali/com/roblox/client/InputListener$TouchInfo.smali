.class Lcom/roblox/client/InputListener$TouchInfo;
.super Ljava/lang/Object;
.source "InputListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/InputListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchInfo"
.end annotation


# instance fields
.field private eventType:I

.field lastEventType:I

.field lastX:I

.field lastY:I

.field final synthetic this$0:Lcom/roblox/client/InputListener;

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(Lcom/roblox/client/InputListener;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/roblox/client/InputListener$TouchInfo;->this$0:Lcom/roblox/client/InputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->eventType:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->y:I

    return v0
.end method

.method public setEventType(I)V
    .locals 1
    .param p1, "newEventType"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->eventType:I

    iput v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->lastEventType:I

    .line 63
    iput p1, p0, Lcom/roblox/client/InputListener$TouchInfo;->eventType:I

    .line 64
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "X"    # I

    .prologue
    .line 44
    iget v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->x:I

    iput v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->lastX:I

    .line 45
    iput p1, p0, Lcom/roblox/client/InputListener$TouchInfo;->x:I

    .line 46
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "Y"    # I

    .prologue
    .line 53
    iget v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->y:I

    iput v0, p0, Lcom/roblox/client/InputListener$TouchInfo;->lastY:I

    .line 54
    iput p1, p0, Lcom/roblox/client/InputListener$TouchInfo;->y:I

    .line 55
    return-void
.end method
