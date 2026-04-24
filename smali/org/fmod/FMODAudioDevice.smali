.class public Lorg/fmod/FMODAudioDevice;
.super Ljava/lang/Object;
.source "FMODAudioDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static FMOD_INFO_CHANNELCOUNT:I

.field private static FMOD_INFO_DSPBUFFERLENGTH:I

.field private static FMOD_INFO_DSPNUMBUFFERS:I

.field private static FMOD_INFO_MIXERRUNNING:I

.field private static FMOD_INFO_SAMPLERATE:I


# instance fields
.field private mInitialised:Z

.field private mRunning:Z

.field private mThread:Ljava/lang/Thread;

.field private mTrack:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_SAMPLERATE:I

    .line 168
    const/4 v0, 0x1

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPBUFFERLENGTH:I

    .line 169
    const/4 v0, 0x2

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPNUMBUFFERS:I

    .line 170
    const/4 v0, 0x3

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_MIXERRUNNING:I

    .line 171
    const/4 v0, 0x4

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_CHANNELCOUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    .line 15
    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 16
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 17
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    return-void
.end method

.method private fetchChannelConfigFromCount(I)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 161
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 164
    :goto_0
    return v0

    .line 162
    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/16 v0, 0xfc

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native fmodGetInfo(I)I
.end method

.method private native fmodProcess(Ljava/nio/ByteBuffer;)I
.end method

.method private shutDown()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 151
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    .line 156
    return-void
.end method


# virtual methods
.method public isMixing()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v6, 0x1

    .line 58
    move v7, v1

    move-object v0, v10

    move-object v3, v10

    .line 62
    :goto_0
    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    if-eqz v2, :cond_6

    .line 64
    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    if-nez v2, :cond_4

    .line 67
    sget v2, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_SAMPLERATE:I

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v2

    .line 68
    sget v5, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPBUFFERLENGTH:I

    invoke-direct {p0, v5}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v8

    .line 69
    sget v5, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPNUMBUFFERS:I

    invoke-direct {p0, v5}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v5

    .line 70
    sget v9, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_CHANNELCOUNT:I

    invoke-direct {p0, v9}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v9

    .line 72
    if-lez v2, :cond_3

    if-lez v8, :cond_3

    if-lez v5, :cond_3

    if-lez v9, :cond_3

    .line 74
    invoke-direct {p0, v9}, Lorg/fmod/FMODAudioDevice;->fetchChannelConfigFromCount(I)I

    move-result v3

    .line 75
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 76
    if-gez v0, :cond_0

    .line 78
    const-string v11, "fmod"

    const-string v12, "FMOD: AudioDevice::run               : Couldn\'t query minimum buffer size, possibly unsupported sample rate or channel count"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_1
    mul-int/2addr v5, v8

    mul-int/2addr v5, v9

    mul-int/lit8 v5, v5, 0x2

    .line 86
    if-le v5, v0, :cond_7

    .line 91
    :goto_2
    const-string v0, "fmod"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FMOD: AudioDevice::run               : Actual buffer size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    mul-int v0, v8, v9

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 94
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v8, v0, [B

    .line 96
    new-instance v0, Landroid/media/AudioTrack;

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 97
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 99
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 100
    iput-boolean v6, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    move v0, v7

    :goto_3
    move v7, v0

    move-object v2, v9

    move-object v0, v8

    :goto_4
    move-object v3, v2

    .line 123
    goto/16 :goto_0

    .line 82
    :cond_0
    const-string v11, "fmod"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FMOD: AudioDevice::run               : Min buffer size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 105
    iput-object v10, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 107
    add-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_2

    .line 109
    const-string v2, "fmod"

    const-string v3, "FMOD: AudioDevice::run               : Couldn\'t initialize AudioTrack, giving up"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-boolean v14, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    goto :goto_3

    .line 114
    :cond_2
    const-string v2, "fmod"

    const-string v3, "FMOD: AudioDevice::run               : Couldn\'t initialize AudioTrack, retrying..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_3

    .line 121
    :cond_3
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v2, v3

    goto :goto_4

    .line 126
    :cond_4
    sget v2, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_MIXERRUNNING:I

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v2

    .line 127
    if-ne v2, v6, :cond_5

    .line 129
    invoke-direct {p0, v3}, Lorg/fmod/FMODAudioDevice;->fmodProcess(Ljava/nio/ByteBuffer;)I

    .line 131
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v0, v14, v5}, Landroid/media/AudioTrack;->write([BII)I

    goto/16 :goto_0

    .line 138
    :cond_5
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->shutDown()V

    goto/16 :goto_0

    .line 143
    :cond_6
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->shutDown()V

    .line 144
    return-void

    :cond_7
    move v5, v0

    goto/16 :goto_2
.end method

.method public start()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->stop()V

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    .line 32
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 35
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 36
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 40
    :goto_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 46
    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
