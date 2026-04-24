.class public Lcom/roblox/client/ConfigEncryption;
.super Ljava/lang/Object;
.source "ConfigEncryption.java"


# static fields
.field private static final pw:[C

.field private static final sal:[B

.field private static x:J

.field private static y:J

.field private static z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/32 v0, -0x2a41b4a7

    sput-wide v0, Lcom/roblox/client/ConfigEncryption;->x:J

    const-wide/32 v0, -0x40466712

    sput-wide v0, Lcom/roblox/client/ConfigEncryption;->y:J

    const-wide/32 v0, 0x427cca47

    sput-wide v0, Lcom/roblox/client/ConfigEncryption;->z:J

    .line 56
    invoke-static {}, Lcom/roblox/client/ConfigEncryption;->xorspw()[C

    move-result-object v0

    sput-object v0, Lcom/roblox/client/ConfigEncryption;->pw:[C

    .line 57
    invoke-static {}, Lcom/roblox/client/ConfigEncryption;->xorssal()[B

    move-result-object v0

    sput-object v0, Lcom/roblox/client/ConfigEncryption;->sal:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64Decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 64
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 85
    move-object v3, p0

    .line 88
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    const-string v5, "PBEWithMD5AndDES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 89
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v6, Lcom/roblox/client/ConfigEncryption;->pw:[C

    invoke-direct {v5, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 90
    .local v0, "key":Ljavax/crypto/SecretKey;
    const-string v5, "PBEWithMD5AndDES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 91
    .local v2, "pbeCipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v7, Lcom/roblox/client/ConfigEncryption;->sal:[B

    const/16 v8, 0x14

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, v5, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    new-instance v4, Ljava/lang/String;

    invoke-static {p0}, Lcom/roblox/client/ConfigEncryption;->base64Decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    move-object v3, v4

    .line 97
    .end local v0    # "key":Ljavax/crypto/SecretKey;
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "pbeCipher":Ljavax/crypto/Cipher;
    .end local v4    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 69
    move-object v3, p0

    .line 72
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    const-string v4, "PBEWithMD5AndDES"

    invoke-static {v4}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 73
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v5, Lcom/roblox/client/ConfigEncryption;->pw:[C

    invoke-direct {v4, v5}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v1, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 74
    .local v0, "key":Ljavax/crypto/SecretKey;
    const-string v4, "PBEWithMD5AndDES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 75
    .local v2, "pbeCipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    sget-object v6, Lcom/roblox/client/ConfigEncryption;->sal:[B

    const/16 v7, 0x14

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-virtual {v2, v4, v0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 76
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/roblox/client/ConfigEncryption;->base64Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 81
    .end local v0    # "key":Ljavax/crypto/SecretKey;
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "pbeCipher":Ljavax/crypto/Cipher;
    :goto_0
    return-object v3

    .line 78
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static xors()J
    .locals 7

    .prologue
    .line 22
    sget-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    sget-wide v4, Lcom/roblox/client/ConfigEncryption;->x:J

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    .line 23
    sget-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    sget-wide v4, Lcom/roblox/client/ConfigEncryption;->x:J

    const/4 v6, 0x5

    shr-long/2addr v4, v6

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    .line 24
    sget-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    sget-wide v4, Lcom/roblox/client/ConfigEncryption;->x:J

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    .line 26
    sget-wide v0, Lcom/roblox/client/ConfigEncryption;->x:J

    .line 27
    .local v0, "t":J
    sget-wide v2, Lcom/roblox/client/ConfigEncryption;->y:J

    sput-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    .line 28
    sget-wide v2, Lcom/roblox/client/ConfigEncryption;->z:J

    sput-wide v2, Lcom/roblox/client/ConfigEncryption;->y:J

    .line 29
    sget-wide v2, Lcom/roblox/client/ConfigEncryption;->x:J

    xor-long/2addr v2, v0

    sget-wide v4, Lcom/roblox/client/ConfigEncryption;->y:J

    xor-long/2addr v2, v4

    sput-wide v2, Lcom/roblox/client/ConfigEncryption;->z:J

    .line 30
    sget-wide v2, Lcom/roblox/client/ConfigEncryption;->z:J

    return-wide v2
.end method

.method private static xorspw()[C
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/roblox/client/ConfigEncryption;->xorssal()[B

    move-result-object v1

    invoke-static {v1}, Lcom/roblox/client/ConfigEncryption;->base64Encode([B)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method private static xorssal()[B
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 35
    const/16 v3, 0xd

    .line 36
    .local v3, "t":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    .line 38
    invoke-static {}, Lcom/roblox/client/ConfigEncryption;->xors()J

    goto :goto_0

    .line 41
    :cond_0
    const/16 v2, 0x8

    .line 42
    .local v2, "sz":I
    new-array v1, v6, [B

    .line 43
    .local v1, "s":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 45
    invoke-static {}, Lcom/roblox/client/ConfigEncryption;->xors()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_1
    return-object v1
.end method
