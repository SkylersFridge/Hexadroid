.class Lcom/jirbo/adcolony/ADCDataFile;
.super Ljava/lang/Object;
.source "ADCDataFile.java"


# static fields
.field static buffer:[B


# instance fields
.field filepath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/jirbo/adcolony/ADCDataFile;->buffer:[B

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jirbo/adcolony/ADC;->controller:Lcom/jirbo/adcolony/ADCController;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCStorage;->data_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDataFile;->filepath:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method create_reader()Lcom/jirbo/adcolony/ADCParseReader;
    .locals 4

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Lcom/jirbo/adcolony/ADCParseReader;

    new-instance v2, Lcom/jirbo/adcolony/ADCStreamReader;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCDataFile;->filepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/jirbo/adcolony/ADCStreamReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/jirbo/adcolony/ADCParseReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, "err":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method create_writer()Lcom/jirbo/adcolony/ADCStreamWriter;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/jirbo/adcolony/ADCStreamWriter;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDataFile;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ADCStreamWriter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method delete()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCDataFile;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 47
    return-void
.end method

.method save(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCDataFile;->create_writer()Lcom/jirbo/adcolony/ADCStreamWriter;

    move-result-object v2

    .line 36
    .local v2, "writer":Lcom/jirbo/adcolony/ADCStreamWriter;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 37
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/ADCStreamWriter;->write(C)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v2}, Lcom/jirbo/adcolony/ADCStreamWriter;->close()V

    .line 42
    return-void
.end method
