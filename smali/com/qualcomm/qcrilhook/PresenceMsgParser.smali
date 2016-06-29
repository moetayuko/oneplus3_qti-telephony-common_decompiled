.class public Lcom/qualcomm/qcrilhook/PresenceMsgParser;
.super Ljava/lang/Object;
.source "PresenceMsgParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;,
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;,
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;,
        Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "PresenceMsgParser"

    sput-object v0, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static parseEnablerState(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p0, "respByteBuf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 436
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    .line 437
    .local v1, "type":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    .line 438
    .local v0, "len":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v4

    long-to-int v2, v4

    .line 440
    .local v2, "val":I
    return v2
.end method

.method static parseEnablerStateInd(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p0, "respByteBuf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 486
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    .line 487
    .local v1, "tag":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    .line 489
    .local v0, "len":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v4

    long-to-int v2, v4

    .line 491
    .local v2, "val":I
    return v2
.end method

.method static parseGetEventReport(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "respByteBuf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 466
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    .line 468
    .local v1, "optionalTag":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    .line 470
    .local v0, "optionalLen":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v2, v3

    .line 473
    .local v2, "optionalVal":B
    return v2
.end method

.method static parseGetNotifyReq(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "respByteBuf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 457
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    .line 458
    .local v1, "optionalTag":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    .line 460
    .local v0, "optionalLen":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v2, v3

    .line 462
    .local v2, "optionalVal":B
    return v2
.end method

.method static parseNotifyUpdate(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;
    .locals 12
    .param p0, "respByteBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "responseSize"    # I
    .param p2, "successStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    const/4 v1, 0x1

    .line 397
    .local v1, "NOTIFY_DETAIL_TYPE":S
    const/16 v0, 0x10

    .line 398
    .local v0, "IMSP_SUBSCRIBE_CALLID_TYPE":S
    const/4 v2, 0x0

    .line 400
    .local v2, "callId":I
    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyUpdate(), Thread="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_0
    if-lez p1, :cond_1

    .line 403
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v8

    .line 404
    .local v8, "type":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v5

    .line 406
    .local v5, "length":I
    sparse-switch v8, :sswitch_data_0

    .line 428
    :goto_1
    add-int/lit8 v9, v5, 0x3

    sub-int/2addr p1, v9

    .line 431
    goto :goto_0

    .line 408
    :sswitch_0
    new-array v3, v5, [B

    .line 409
    .local v3, "data":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v5, :cond_0

    .line 410
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v3, v4

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 412
    :cond_0
    const/4 v9, 0x0

    aget-byte v9, v3, v9

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v2

    .line 413
    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 416
    .end local v3    # "data":[B
    .end local v4    # "i":I
    :sswitch_1
    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    const-string v10, "NOTIFY_DETAIL_TYPE"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v7, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;

    invoke-direct {v7, p0, v5}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 420
    .local v7, "parser":Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;
    # invokes: Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseRichInfo()Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->access$100(Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;)Ljava/util/ArrayList;

    move-result-object v6

    .line 421
    .local v6, "parsedContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;>;"
    sget-object v9, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parsed contact info "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v5    # "length":I
    .end local v6    # "parsedContactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;>;"
    .end local v7    # "parser":Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;
    .end local v8    # "type":S
    :goto_3
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_3

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static parseNotifyUpdateXML(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .param p0, "respByteBuf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 444
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v4

    int-to-byte v3, v4

    .line 445
    .local v3, "tag":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v4

    int-to-short v2, v4

    .line 447
    .local v2, "len":S
    new-array v0, v2, [B

    .line 449
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 450
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v0, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method static parsePublishTrigger(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p0, "respByteBuf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    int-to-byte v1, v3

    .line 478
    .local v1, "tag":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v3

    int-to-short v0, v3

    .line 480
    .local v0, "len":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(I)J

    move-result-wide v4

    long-to-int v2, v4

    .line 482
    .local v2, "val":I
    return v2
.end method
