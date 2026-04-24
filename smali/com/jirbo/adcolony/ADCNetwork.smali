.class Lcom/jirbo/adcolony/ADCNetwork;
.super Ljava/lang/Object;
.source "ADCNetwork.java"


# static fields
.field public static lowercase_hex_digits:Ljava/lang/String; = null

.field public static final timeout_seconds:I = 0x1e

.field public static uppercase_hex_digits:Ljava/lang/String;

.field public static url_encoding_map:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  x          xxxxxxx                          xxxx x                          xxxxx"

    sput-object v0, Lcom/jirbo/adcolony/ADCNetwork;->url_encoding_map:Ljava/lang/String;

    .line 30
    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/jirbo/adcolony/ADCNetwork;->uppercase_hex_digits:Ljava/lang/String;

    .line 31
    const-string v0, "0123456789abcdef"

    sput-object v0, Lcom/jirbo/adcolony/ADCNetwork;->lowercase_hex_digits:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static connected()Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_wifi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_mobile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hex_character_to_value(C)I
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 92
    sget-object v1, Lcom/jirbo/adcolony/ADCNetwork;->uppercase_hex_digits:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 93
    .local v0, "value":I
    if-ltz v0, :cond_0

    move v1, v0

    .line 98
    :goto_0
    return v1

    .line 95
    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/ADCNetwork;->lowercase_hex_digits:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 96
    if-ltz v0, :cond_1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_wifi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    .line 62
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/ADCNetwork;->using_mobile()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cell"

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "offline"

    goto :goto_0
.end method

.method public static url_decoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x30

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 105
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 107
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 108
    .local v1, "ch":C
    const/16 v7, 0x25

    if-ne v1, v7, :cond_2

    .line 110
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v2, :cond_0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 111
    .local v4, "left":C
    :goto_1
    add-int/lit8 v7, v3, 0x2

    if-ge v7, v2, :cond_1

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 112
    .local v5, "right":C
    :goto_2
    add-int/lit8 v3, v3, 0x2

    .line 114
    invoke-static {v4}, Lcom/jirbo/adcolony/ADCNetwork;->hex_character_to_value(C)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-static {v5}, Lcom/jirbo/adcolony/ADCNetwork;->hex_character_to_value(C)I

    move-result v8

    or-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .end local v4    # "left":C
    .end local v5    # "right":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 110
    goto :goto_1

    .restart local v4    # "left":C
    :cond_1
    move v5, v6

    .line 111
    goto :goto_2

    .line 118
    .end local v4    # "left":C
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 121
    .end local v1    # "ch":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static url_encoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xa

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 69
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 71
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 72
    .local v1, "ch":C
    const/16 v6, 0x80

    if-ge v1, v6, :cond_0

    sget-object v6, Lcom/jirbo/adcolony/ADCNetwork;->url_encoding_map:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v4, v6, 0xf

    .line 80
    .local v4, "left":I
    and-int/lit8 v5, v1, 0xf

    .line 81
    .local v5, "right":I
    if-ge v4, v8, :cond_1

    add-int/lit8 v6, v4, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    :goto_2
    if-ge v5, v8, :cond_2

    add-int/lit8 v6, v5, 0x30

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    :cond_1
    add-int/lit8 v6, v4, 0x41

    add-int/lit8 v6, v6, -0xa

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 84
    :cond_2
    add-int/lit8 v6, v5, 0x41

    add-int/lit8 v6, v6, -0xa

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    .end local v1    # "ch":C
    .end local v4    # "left":I
    .end local v5    # "right":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method static using_mobile()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 46
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 47
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v3

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 50
    .local v2, "type":I
    if-eqz v2, :cond_2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static using_wifi()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->activity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 37
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 39
    :goto_0
    return v3

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
