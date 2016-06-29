.class Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;
.super Ljava/lang/Object;
.source "PresenceMsgParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PresenceRichNotifyParser"
.end annotation


# instance fields
.field private c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

.field private listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

.field private parsedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private respByteBuf:Ljava/nio/ByteBuffer;

.field private totalBytes:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "respByteBuf"    # Ljava/nio/ByteBuffer;
    .param p2, "n"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    .line 94
    iput p2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->totalBytes:I

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseRichInfo()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private parseAudioCapability()V
    .locals 4

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    .line 308
    .local v0, "val":I
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->values()[Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mAudioCapabilities:Ljava/lang/String;

    .line 310
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing AudioCapabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v3, v3, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mAudioCapabilities:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method private parseByte()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v3, :cond_0

    .line 153
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    :goto_0
    return v1

    .line 157
    :cond_0
    new-array v0, v3, [B

    .line 158
    .local v0, "data":[B
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v0, v1

    .line 160
    aget-byte v1, v0, v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v1

    goto :goto_0
.end method

.method private parseContactUri()V
    .locals 5

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 262
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mContactUri:Ljava/lang/String;

    .line 265
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing Contact Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private parseDescription()V
    .locals 5

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 270
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mDescription:Ljava/lang/String;

    .line 273
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing Description = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private parseInteger()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    .line 117
    const/4 v0, 0x4

    .line 119
    .local v0, "INTEGER_LENGTH":I
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 120
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :goto_0
    return v3

    .line 124
    :cond_0
    new-array v1, v5, [B

    .line 126
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 127
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v1, v2

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    :cond_1
    aget-byte v3, v1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    goto :goto_0
.end method

.method private parseIsAudioSupported()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 299
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 301
    .local v0, "val":I
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsAudioSupported:Z

    .line 303
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing isAudioSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-boolean v3, v3, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsAudioSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 301
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseIsVideoSupported()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 322
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 324
    .local v0, "val":I
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVideoSupported:Z

    .line 326
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing isVideoSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-boolean v3, v3, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVideoSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 324
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseIsVolteContact()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 208
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 209
    .local v0, "val":I
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVolteContact:Z

    .line 211
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing IsVolteContact = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-boolean v3, v3, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mIsVolteContact:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 209
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseListContactUri()V
    .locals 5

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 165
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListContactUri:Ljava/lang/String;

    .line 168
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ListContactUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method private parseListFullState()V
    .locals 4

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 188
    .local v0, "b":I
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListFullState:Ljava/lang/String;

    .line 189
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing ListFullState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method private parseListInfo()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListContactUri()V

    .line 194
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListName()V

    .line 195
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListVersion()V

    .line 196
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListFullState()V

    .line 197
    return-void
.end method

.method private parseListName()V
    .locals 5

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 173
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListName:Ljava/lang/String;

    .line 176
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ListName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method private parseListVersion()V
    .locals 4

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    .line 181
    .local v0, "listVersion":I
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;->mListVersion:Ljava/lang/String;

    .line 182
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing ListVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method private parsePresenceInfo()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseContactUri()V

    .line 338
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseServiceDescriptions()V

    .line 339
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseServiceCapabilities()V

    .line 340
    return-void
.end method

.method private parsePresenceUserInfoWithTs()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsePresenceInfo()V

    .line 353
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseTimeStamp()V

    .line 354
    return-void
.end method

.method private parsePublishStatus()V
    .locals 4

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    .line 217
    .local v0, "val":I
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput v0, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mPublishStatus:I

    .line 218
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing PublishStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method private parseResouceInstance()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceId()V

    .line 255
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceState()V

    .line 256
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceReason()V

    .line 257
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceCid()V

    .line 258
    return-void
.end method

.method private parseResourceCid()V
    .locals 5

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseShort()I

    move-result v0

    .line 247
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceCid:Ljava/lang/String;

    .line 250
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ResourceCid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private parseResourceId()V
    .locals 5

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 223
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceId:Ljava/lang/String;

    .line 226
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ResourceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method private parseResourceReason()V
    .locals 5

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 239
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceReason:Ljava/lang/String;

    .line 242
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ResourceReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private parseResourceState()V
    .locals 5

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 231
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceState:Ljava/lang/String;

    .line 234
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ResourceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method private parseResourceUri()V
    .locals 5

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 201
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mResourceUri:Ljava/lang/String;

    .line 204
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ResourceUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method private parseRichInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsedContactList:Ljava/util/ArrayList;

    .line 382
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    .line 384
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseListInfo()V

    .line 385
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseUserListInfo()V

    .line 387
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private parseServiceCapabilities()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseIsAudioSupported()V

    .line 331
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseAudioCapability()V

    .line 332
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseIsVideoSupported()V

    .line 333
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseVideoCapability()V

    .line 334
    return-void
.end method

.method private parseServiceDescriptions()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseDescription()V

    .line 294
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseVersion()V

    .line 295
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseServiceid()V

    .line 296
    return-void
.end method

.method private parseServiceid()V
    .locals 5

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 286
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mServiceId:Ljava/lang/String;

    .line 289
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing ServiceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method private parseShort()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 134
    const/4 v0, 0x2

    .line 136
    .local v0, "SHORT_LENGTH":I
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 137
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    :goto_0
    return v3

    .line 141
    :cond_0
    new-array v1, v5, [B

    .line 143
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 144
    iget-object v4, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v1, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_1
    aget-byte v3, v1, v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v3

    goto :goto_0
.end method

.method private parseString(I)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 99
    move v0, p1

    .line 101
    .local v0, "STRING_LENGTH":I
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 102
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const-string v3, ""

    .line 112
    :goto_0
    return-object v3

    .line 106
    :cond_0
    new-array v1, v0, [B

    .line 108
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 109
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->respByteBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v1, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private parseTimeStamp()V
    .locals 5

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 344
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mTimeStamp:Ljava/lang/String;

    .line 348
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing timeStamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v4, v4, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method private parseUserListInfo()V
    .locals 5

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseUserListInfoLen()I

    move-result v1

    .line 363
    .local v1, "numOfContacts":I
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing numOfContacts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 366
    new-instance v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-direct {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    .line 367
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    iput-object v3, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->listHeaderInfo:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ListHeaderInfo;

    .line 369
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResourceUri()V

    .line 370
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseIsVolteContact()V

    .line 371
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsePublishStatus()V

    .line 372
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseResouceInstance()V

    .line 373
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsePresenceUserInfoWithTs()V

    .line 375
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parsedContactList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-void
.end method

.method private parseVersion()V
    .locals 5

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    .line 278
    .local v0, "len":I
    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iput-object v1, v2, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mVersion:Ljava/lang/String;

    .line 281
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing Version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private parseVideoCapability()V
    .locals 4

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseInteger()I

    move-result v0

    .line 316
    .local v0, "val":I
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->values()[Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$MediaCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mVideoCapabilities:Ljava/lang/String;

    .line 318
    # getter for: Lcom/qualcomm/qcrilhook/PresenceMsgParser;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/PresenceMsgParser;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsing VideoCapabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->c:Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;

    iget-object v3, v3, Lcom/qualcomm/qcrilhook/PresenceMsgParser$ContactInfo;->mVideoCapabilities:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method


# virtual methods
.method public parseUserListInfoLen()I
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgParser$PresenceRichNotifyParser;->parseByte()I

    move-result v0

    return v0
.end method
