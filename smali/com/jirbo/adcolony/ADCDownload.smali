.class Lcom/jirbo/adcolony/ADCDownload;
.super Lcom/jirbo/adcolony/ADCEvent;
.source "ADCDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCDownload$DefaultTrustManager;,
        Lcom/jirbo/adcolony/ADCDownload$Listener;
    }
.end annotation


# instance fields
.field controller:Lcom/jirbo/adcolony/ADCController;

.field data:Ljava/lang/String;

.field file:Ljava/io/File;

.field info:Ljava/lang/Object;

.field listener:Lcom/jirbo/adcolony/ADCDownload$Listener;

.field post_content_type:Ljava/lang/String;

.field post_data:Ljava/lang/String;

.field size:I

.field ssl_context:Ljavax/net/ssl/SSLContext;

.field success:Z

.field third_party_tracking:Z

.field url:Ljava/lang/String;

.field use_ssl:Z


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jirbo/adcolony/ADCDownload;-><init>(Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/jirbo/adcolony/ADCController;Ljava/lang/String;Lcom/jirbo/adcolony/ADCDownload$Listener;Ljava/lang/String;)V
    .locals 1
    .param p1, "controller"    # Lcom/jirbo/adcolony/ADCController;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/jirbo/adcolony/ADCDownload$Listener;
    .param p4, "filepath"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jirbo/adcolony/ADCEvent;-><init>(Lcom/jirbo/adcolony/ADCController;Z)V

    .line 42
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/jirbo/adcolony/ADCDownload;->listener:Lcom/jirbo/adcolony/ADCDownload$Listener;

    .line 44
    if-eqz p4, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->file:Ljava/io/File;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCDownload;->listener:Lcom/jirbo/adcolony/ADCDownload$Listener;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/ADCDownload$Listener;->on_download_finished(Lcom/jirbo/adcolony/ADCDownload;)V

    .line 365
    return-void
.end method

.method public run()V
    .locals 36

    .prologue
    .line 68
    const/16 v30, 0x1

    .local v30, "tries":I
    :goto_0
    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_9

    .line 72
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->post_content_type:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_b

    .line 74
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Performing POST"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 76
    const/16 v30, 0x3

    .line 79
    const/16 v25, 0x50

    .line 80
    .local v25, "port":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 81
    .local v22, "original_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 82
    .local v16, "host":Ljava/lang/String;
    const-string v24, ""

    .line 83
    .local v24, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string v32, "http://"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x7

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    .line 85
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x2f

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 86
    .local v17, "i":I
    const/16 v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 93
    :cond_1
    new-instance v28, Ljava/net/Socket;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v28, "socket":Ljava/net/Socket;
    const/16 v31, 0x7530

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 95
    new-instance v23, Ljava/io/PrintStream;

    invoke-virtual/range {v28 .. v28}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v23, "out":Ljava/io/PrintStream;
    invoke-virtual/range {v28 .. v28}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 98
    .local v20, "in":Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v4, "buffer":Ljava/lang/StringBuilder;
    const-string v31, "POST "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v31, " HTTP/1.1\r\n"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v31, "Host: "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v31, "\r\n"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v31, "Content-Type: "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->post_content_type:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v31, "\r\n"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v31, "Content-Length: "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->post_data:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v31, "\r\n\r\n"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->post_data:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v31, "\r\n\r\n"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 120
    .local v26, "post_request":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintStream;->flush()V

    .line 123
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Submitting POST:"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .restart local v4    # "buffer":Ljava/lang/StringBuilder;
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v6

    .local v6, "ch":I
    :goto_1
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v6, v0, :cond_2

    .line 128
    int-to-char v0, v6

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v31

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_3

    const-string v31, "\r\n\r\n"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x4

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v31

    if-ltz v31, :cond_3

    .line 136
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, "header":Ljava/lang/String;
    const/4 v9, -0x1

    .line 141
    .local v9, "content_length":I
    const-string v10, "Content-Length:"

    .line 142
    .local v10, "content_length_str":Ljava/lang/String;
    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 143
    .local v18, "i1":I
    if-ltz v18, :cond_8

    .line 145
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v31

    add-int v18, v18, v31

    .line 146
    const-string v31, "\r\n"

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v19

    .line 147
    .local v19, "i2":I
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 148
    .local v21, "length_str":Ljava/lang/String;
    :goto_2
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    const/16 v32, 0x20

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    const/16 v31, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    .line 126
    .end local v9    # "content_length":I
    .end local v10    # "content_length_str":Ljava/lang/String;
    .end local v15    # "header":Ljava/lang/String;
    .end local v18    # "i1":I
    .end local v19    # "i2":I
    .end local v21    # "length_str":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v6

    goto :goto_1

    .line 149
    .restart local v9    # "content_length":I
    .restart local v10    # "content_length_str":Ljava/lang/String;
    .restart local v15    # "header":Ljava/lang/String;
    .restart local v18    # "i1":I
    .restart local v19    # "i2":I
    .restart local v21    # "length_str":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    const/16 v32, 0x20

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 151
    const/16 v31, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    .line 153
    :cond_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 163
    .end local v19    # "i2":I
    .end local v21    # "length_str":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .restart local v4    # "buffer":Ljava/lang/StringBuilder;
    :cond_6
    :goto_5
    if-eqz v9, :cond_7

    .line 168
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 169
    const/16 v31, -0x1

    move/from16 v0, v31

    if-ne v6, v0, :cond_a

    .line 190
    :cond_7
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/net/Socket;->close()V

    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jirbo/adcolony/ADCDownload;->size:I

    .line 194
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "POST response ("

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    const-string v32, "):"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 195
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 197
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    .line 198
    invoke-static/range {p0 .. p0}, Lcom/jirbo/adcolony/ADC;->queue_event(Lcom/jirbo/adcolony/ADCEvent;)V

    .line 360
    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    .end local v6    # "ch":I
    .end local v9    # "content_length":I
    .end local v10    # "content_length_str":Ljava/lang/String;
    .end local v15    # "header":Ljava/lang/String;
    .end local v16    # "host":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "i1":I
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v22    # "original_url":Ljava/lang/String;
    .end local v23    # "out":Ljava/io/PrintStream;
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "port":I
    .end local v26    # "post_request":Ljava/lang/String;
    .end local v28    # "socket":Ljava/net/Socket;
    :goto_6
    return-void

    .line 157
    .restart local v4    # "buffer":Ljava/lang/StringBuilder;
    .restart local v6    # "ch":I
    .restart local v9    # "content_length":I
    .restart local v10    # "content_length_str":Ljava/lang/String;
    .restart local v15    # "header":Ljava/lang/String;
    .restart local v16    # "host":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "i1":I
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v22    # "original_url":Ljava/lang/String;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "port":I
    .restart local v26    # "post_request":Ljava/lang/String;
    .restart local v28    # "socket":Ljava/net/Socket;
    :cond_8
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Missing Content-Length in response header ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/ADC;->log_error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 340
    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    .end local v6    # "ch":I
    .end local v9    # "content_length":I
    .end local v10    # "content_length_str":Ljava/lang/String;
    .end local v15    # "header":Ljava/lang/String;
    .end local v16    # "host":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "i1":I
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v22    # "original_url":Ljava/lang/String;
    .end local v23    # "out":Ljava/io/PrintStream;
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "port":I
    .end local v26    # "post_request":Ljava/lang/String;
    .end local v28    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v13

    .line 342
    .local v13, "err":Ljava/io/IOException;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Download of "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " failed:\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/jirbo/adcolony/ADC;->log_debug(Ljava/lang/String;)V

    .line 345
    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 358
    .end local v13    # "err":Ljava/io/IOException;
    :cond_9
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    .line 359
    invoke-static/range {p0 .. p0}, Lcom/jirbo/adcolony/ADC;->queue_event(Lcom/jirbo/adcolony/ADCEvent;)V

    goto :goto_6

    .line 171
    .restart local v4    # "buffer":Ljava/lang/StringBuilder;
    .restart local v6    # "ch":I
    .restart local v9    # "content_length":I
    .restart local v10    # "content_length_str":Ljava/lang/String;
    .restart local v15    # "header":Ljava/lang/String;
    .restart local v16    # "host":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v18    # "i1":I
    .restart local v20    # "in":Ljava/io/InputStream;
    .restart local v22    # "original_url":Ljava/lang/String;
    .restart local v23    # "out":Ljava/io/PrintStream;
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "port":I
    .restart local v26    # "post_request":Ljava/lang/String;
    .restart local v28    # "socket":Ljava/net/Socket;
    :cond_a
    int-to-char v0, v6

    move/from16 v31, v0

    :try_start_3
    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    if-lez v9, :cond_6

    .line 174
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_6

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->available()I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v31

    if-lez v31, :cond_6

    const/4 v9, -0x1

    goto/16 :goto_5

    .line 178
    :catch_1
    move-exception v12

    .line 180
    .local v12, "e":Ljava/net/SocketTimeoutException;
    if-lez v9, :cond_7

    :try_start_4
    throw v12

    .line 204
    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    .end local v6    # "ch":I
    .end local v9    # "content_length":I
    .end local v10    # "content_length_str":Ljava/lang/String;
    .end local v12    # "e":Ljava/net/SocketTimeoutException;
    .end local v15    # "header":Ljava/lang/String;
    .end local v16    # "host":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "i1":I
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v22    # "original_url":Ljava/lang/String;
    .end local v23    # "out":Ljava/io/PrintStream;
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "port":I
    .end local v26    # "post_request":Ljava/lang/String;
    .end local v28    # "socket":Ljava/net/Socket;
    :cond_b
    const/16 v27, 0x0

    .line 205
    .local v27, "secure_connection":Ljavax/net/ssl/HttpsURLConnection;
    new-instance v31, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v31

    check-cast v31, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v31

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 206
    .local v8, "connection":Ljava/net/HttpURLConnection;
    const/16 v31, 0x7530

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCDownload;->third_party_tracking:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 209
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->file:Ljava/io/File;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->controller:Lcom/jirbo/adcolony/ADCController;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->controller:Lcom/jirbo/adcolony/ADCController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->controller:Lcom/jirbo/adcolony/ADCController;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCController;->storage:Lcom/jirbo/adcolony/ADCStorage;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/jirbo/adcolony/ADCStorage;->validate_storage_paths()V

    .line 213
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->file:Ljava/io/File;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    .line 214
    .local v14, "filepath":Ljava/lang/String;
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 215
    .local v23, "out":Ljava/io/OutputStream;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 217
    .restart local v20    # "in":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 218
    .restart local v9    # "content_length":I
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jirbo/adcolony/ADCDownload;->size:I

    .line 220
    const/16 v31, 0x400

    move/from16 v0, v31

    new-array v4, v0, [B

    .line 221
    .local v4, "buffer":[B
    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 222
    .local v11, "count":I
    :cond_e
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v11, v0, :cond_11

    .line 224
    if-lez v9, :cond_10

    .line 226
    if-le v11, v9, :cond_f

    move v11, v9

    .line 227
    :cond_f
    sub-int/2addr v9, v11

    .line 230
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jirbo/adcolony/ADCDownload;->size:I

    move/from16 v31, v0

    add-int v31, v31, v11

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jirbo/adcolony/ADCDownload;->size:I

    .line 231
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 232
    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 234
    if-nez v9, :cond_e

    .line 237
    :cond_11
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 238
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V

    .line 239
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V

    .line 241
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Downloaded "

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    const-string v32, " to "

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 335
    .end local v4    # "buffer":[B
    .end local v9    # "content_length":I
    .end local v14    # "filepath":Ljava/lang/String;
    .end local v23    # "out":Ljava/io/OutputStream;
    :goto_7
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    .line 336
    invoke-static/range {p0 .. p0}, Lcom/jirbo/adcolony/ADC;->queue_event(Lcom/jirbo/adcolony/ADCEvent;)V

    goto/16 :goto_6

    .line 245
    .end local v11    # "count":I
    .end local v20    # "in":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCDownload;->third_party_tracking:Z

    move/from16 v31, v0

    if-eqz v31, :cond_13

    .line 248
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 249
    .local v7, "code":I
    if-lez v7, :cond_13

    .line 251
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Got HTTP response "

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/jirbo/adcolony/ADCLog;->print(I)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    const-string v32, " - counting as completed submission for 3rd party tracking."

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 252
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Downloaded "

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 253
    const-string v31, ""

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    .line 254
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jirbo/adcolony/ADCDownload;->size:I

    .line 255
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCDownload;->success:Z

    .line 256
    invoke-static/range {p0 .. p0}, Lcom/jirbo/adcolony/ADC;->queue_event(Lcom/jirbo/adcolony/ADCEvent;)V

    goto/16 :goto_6

    .line 260
    .end local v7    # "code":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "https://"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_16

    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_16

    .line 262
    new-instance v31, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v31

    check-cast v31, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, v31

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v27, v0

    .line 263
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCDownload;->use_ssl:Z

    .line 264
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "ADCDownload - use ssl!"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 266
    new-instance v31, Lcom/jirbo/adcolony/ADCDownload$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ADCDownload$1;-><init>(Lcom/jirbo/adcolony/ADCDownload;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 278
    :try_start_5
    const-string v31, "SSL"

    invoke-static/range {v31 .. v31}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v29

    .line 279
    .local v29, "ssl_context":Ljavax/net/ssl/SSLContext;
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    new-instance v34, Lcom/jirbo/adcolony/ADCDownload$DefaultTrustManager;

    const/16 v35, 0x0

    invoke-direct/range {v34 .. v35}, Lcom/jirbo/adcolony/ADCDownload$DefaultTrustManager;-><init>(Lcom/jirbo/adcolony/ADCDownload$1;)V

    aput-object v34, v32, v33

    new-instance v33, Ljava/security/SecureRandom;

    invoke-direct/range {v33 .. v33}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 280
    invoke-static/range {v29 .. v29}, Ljavax/net/ssl/SSLContext;->setDefault(Ljavax/net/ssl/SSLContext;)V

    .line 281
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 293
    .end local v29    # "ssl_context":Ljavax/net/ssl/SSLContext;
    :goto_8
    :try_start_6
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "ADCDownload - before pause"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 296
    const-wide/16 v31, 0xbb8

    :try_start_7
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 302
    :goto_9
    :try_start_8
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "ADCDownload - getInputStream"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 303
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jirbo/adcolony/ADCDownload;->use_ssl:Z

    move/from16 v31, v0

    if-eqz v31, :cond_17

    invoke-virtual/range {v27 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 304
    .restart local v20    # "in":Ljava/io/InputStream;
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v4, "buffer":Ljava/lang/StringBuilder;
    const/16 v31, 0x400

    move/from16 v0, v31

    new-array v5, v0, [B

    .line 307
    .local v5, "bytes":[B
    const/16 v31, 0x0

    const/16 v32, 0x400

    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v11

    .line 310
    .restart local v11    # "count":I
    :goto_b
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v11, v0, :cond_14

    .line 312
    const/16 v17, -0x1

    .line 313
    .restart local v17    # "i":I
    :goto_c
    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    if-ge v0, v11, :cond_18

    .line 315
    :try_start_9
    aget-byte v31, v5, v17

    move/from16 v0, v31

    int-to-char v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_c

    .line 320
    :catch_2
    move-exception v12

    .line 322
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    :try_start_a
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->error:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Out of memory, disabling AdColony"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 323
    invoke-static {}, Lcom/jirbo/adcolony/AdColony;->disable()V

    .line 326
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    .end local v17    # "i":I
    :cond_14
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->data:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jirbo/adcolony/ADCDownload;->size:I

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v31, v0

    const-string v32, "androidads20"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sput-wide v31, Lcom/jirbo/adcolony/ADC;->last_config_ms:J

    .line 332
    :cond_15
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Downloaded "

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCDownload;->url:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    goto/16 :goto_7

    .line 283
    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "bytes":[B
    .end local v11    # "count":I
    .end local v20    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v12

    .line 285
    .local v12, "e":Ljava/lang/Exception;
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->dev:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "ADCDownload - SSL Failure"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 286
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 291
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_16
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jirbo/adcolony/ADCDownload;->use_ssl:Z

    goto/16 :goto_8

    .line 303
    :cond_17
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v20

    goto/16 :goto_a

    .line 317
    .restart local v4    # "buffer":Ljava/lang/StringBuilder;
    .restart local v5    # "bytes":[B
    .restart local v11    # "count":I
    .restart local v17    # "i":I
    .restart local v20    # "in":Ljava/io/InputStream;
    :cond_18
    const/16 v31, 0x0

    const/16 v32, 0x400

    :try_start_b
    move-object/from16 v0, v20

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    move-result v11

    .line 318
    goto/16 :goto_b

    .line 349
    .end local v4    # "buffer":Ljava/lang/StringBuilder;
    .end local v5    # "bytes":[B
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "count":I
    .end local v17    # "i":I
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v27    # "secure_connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v13    # "err":Ljava/io/IOException;
    :cond_19
    add-int/lit8 v31, v30, 0x1

    mul-int/lit8 v31, v31, 0xa

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    :try_start_c
    invoke-static/range {v31 .. v32}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5

    .line 355
    :goto_d
    sget-object v31, Lcom/jirbo/adcolony/ADCLog;->debug:Lcom/jirbo/adcolony/ADCLog;

    const-string v32, "Trying again ("

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(Ljava/lang/String;)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    add-int/lit8 v32, v30, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->print(I)Lcom/jirbo/adcolony/ADCLog;

    move-result-object v31

    const-string v32, "/3)"

    invoke-virtual/range {v31 .. v32}, Lcom/jirbo/adcolony/ADCLog;->println(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCLog;

    .line 68
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    .line 298
    .end local v13    # "err":Ljava/io/IOException;
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    .restart local v27    # "secure_connection":Ljavax/net/ssl/HttpsURLConnection;
    :catch_4
    move-exception v31

    goto/16 :goto_9

    .line 351
    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    .end local v27    # "secure_connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v13    # "err":Ljava/io/IOException;
    :catch_5
    move-exception v31

    goto :goto_d
.end method

.method public start()V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lcom/jirbo/adcolony/ADCThreadPool;->run(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method with_info(Ljava/lang/Object;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->info:Ljava/lang/Object;

    .line 50
    return-object p0
.end method

.method with_post_data(Ljava/lang/String;Ljava/lang/String;)Lcom/jirbo/adcolony/ADCDownload;
    .locals 0
    .param p1, "post_content_type"    # Ljava/lang/String;
    .param p2, "post_data"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCDownload;->post_content_type:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/jirbo/adcolony/ADCDownload;->post_data:Ljava/lang/String;

    .line 57
    return-object p0
.end method
