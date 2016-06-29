.class public Lcom/qualcomm/qcrilhook/QmiOemHook;
.super Landroid/os/Handler;
.source "QmiOemHook.java"


# static fields
.field private static final DEFAULT_PHONE:I = 0x0

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final QMI_OEM_HOOK_UNSOL:I = 0x0

.field private static final RESERVED_SIZE:I = 0x8

.field private static final enableVLog:Z = true

.field private static mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

.field private static mIsServiceConnected:Z

.field private static mRefCount:I

.field private static sReadyCbRegistrantList:Landroid/os/RegistrantList;

.field public static serviceRegistrantsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Short;",
            "Landroid/os/Registrant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field mResponseResult:I

.field public respByteBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "QMI_OEMHOOK"

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    .line 37
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    .line 51
    sput v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 57
    sput-boolean v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    iput v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mResponseResult:I

    .line 62
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook$1;-><init>(Lcom/qualcomm/qcrilhook/QmiOemHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 83
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    iput v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mResponseResult:I

    .line 62
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook$1;-><init>(Lcom/qualcomm/qcrilhook/QmiOemHook;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 89
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/RegistrantList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method private createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .prologue
    const/4 v6, 0x0

    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, "tlvSize":I
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    aget-object v3, p4, v6

    if-nez v3, :cond_2

    .line 297
    :cond_0
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v4, "This message has no payload"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    add-int/lit8 v3, v2, 0xc

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 312
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 316
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 317
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPayload: serviceId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    aget-object v3, p4, v6

    if-eqz v3, :cond_3

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p4

    if-ge v1, v3, :cond_3

    .line 320
    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    .line 321
    aget-object v3, p4, v1

    aget-short v4, p3, v1

    invoke-virtual {v3, v4}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 322
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intermediate buf in QmiOemHook sendQmiMessage Sync or Async = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p4, v1

    aget-short v6, p3, v1

    invoke-virtual {v5, v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v3, p4

    if-ge v1, v3, :cond_1

    .line 301
    aget-object v3, p4, v1

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    .end local v1    # "i":I
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_3
    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Byte buf in QmiOemHook createPayload = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/QmiOemHook;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-class v1, Lcom/qualcomm/qcrilhook/QmiOemHook;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/QmiOemHook;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 99
    :cond_0
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 100
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qcrilhook/QmiOemHook;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 121
    const-class v1, Lcom/qualcomm/qcrilhook/QmiOemHook;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qcrilhook/QmiOemHook;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 125
    :cond_0
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 126
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isValidQmiMessage(Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Z
    .locals 3
    .param p0, "responseType"    # Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;
    .param p1, "requestId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    if-ne p0, v2, :cond_2

    .line 283
    const v2, 0x8044c

    if-ne p1, v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 283
    goto :goto_0

    .line 286
    :cond_2
    const v2, 0x80064

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;
    .locals 14
    .param p0, "payload"    # [B
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "responseType"    # Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/os/Message;",
            "Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive responseData = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " message="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " responseType= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 214
    .local v6, "respByteBuf":Ljava/nio/ByteBuffer;
    if-nez v6, :cond_1

    .line 215
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v12, "respByteBuf is null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v2, 0x0

    .line 278
    :cond_0
    :goto_0
    return-object v2

    .line 218
    :cond_1
    sget-object v11, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 220
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive respByteBuf after ByteBuffer.wrap(payload) = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-static {v13}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive respByteBuf = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 225
    .local v5, "requestId":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 226
    .local v7, "responseSize":I
    const/4 v9, -0x1

    .line 227
    .local v9, "serviceId":S
    const/4 v10, -0x1

    .line 229
    .local v10, "successStatus":I
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->isValidQmiMessage(Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 230
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v12, "requestId NOT in QMI OemHook range, No further processing"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x0

    goto :goto_0

    .line 234
    :cond_2
    if-lez v7, :cond_6

    .line 235
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 236
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 239
    .local v3, "messageId":S
    add-int/lit8 v8, v7, -0x4

    .line 240
    .local v8, "responseTlvSize":I
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    move-object/from16 v0, p2

    if-eq v0, v11, :cond_3

    .line 242
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    invoke-static {v11}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v10

    .line 244
    add-int/lit8 v8, v8, -0x2

    .line 247
    :cond_3
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive requestId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " responseSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " responseTlvSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " serviceId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " messageId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " successStatus = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " phoneId: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v2, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    move-object/from16 v0, p2

    if-eq v0, v11, :cond_4

    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_ASYNC_RESPONSE:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 265
    :cond_4
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v1, v11, v2, v12}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 266
    .local v1, "ar":Landroid/os/AsyncResult;
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Registrant;

    .line 267
    .local v4, "r":Landroid/os/Registrant;
    if-eqz v4, :cond_5

    .line 268
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Notifying registrant for responseType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v4, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 270
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 272
    :cond_5
    sget-object v11, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Did not find the registered serviceId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v3    # "messageId":S
    .end local v4    # "r":Landroid/os/Registrant;
    .end local v8    # "responseTlvSize":I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 169
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering Service for OnQcRilHookReadyCb =  h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/Registrant;

    invoke-direct {v2, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 173
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static registerService(SLandroid/os/Handler;I)V
    .locals 5
    .param p0, "serviceId"    # S
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 158
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering Service Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    new-instance v3, Landroid/os/Registrant;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterOnReadyCb(Landroid/os/Handler;)V
    .locals 2
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 183
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 184
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterService(I)V
    .locals 3
    .param p0, "serviceId"    # I

    .prologue
    .line 177
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 178
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->serviceRegistrantsMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private vLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "logString"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    .line 132
    sget v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    if-nez v0, :cond_0

    .line 133
    const-string v0, "dispose(): Unregistering QcRilHook and calling QcRilHook dispose"

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    .line 134
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/QcRilHook;->unregister(Landroid/os/Handler;)V

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mIsServiceConnected:Z

    .line 136
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QcRilHook;->dispose()V

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mInstance:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 138
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->sReadyCbRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 140
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose mRefCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 519
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 192
    :pswitch_0
    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v5, "QMI_OEM_HOOK_UNSOL received"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 195
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 196
    .local v1, "mesg":Landroid/os/Message;
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 197
    .local v3, "response":[B
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 198
    .local v2, "phoneId":I
    sget-object v4, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QMI_OEM_HOOK_UNSOL received phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v4, 0x0

    sget-object v5, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_UNSOL:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    invoke-static {v3, v4, v5, v2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendQmiMessage(I)[B
    .locals 2
    .param p1, "serviceHook"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    const/4 v0, 0x0

    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    invoke-direct {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessage(ISLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 3
    .param p1, "serviceHook"    # I
    .param p2, "type"    # S
    .param p3, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 452
    new-array v0, v1, [S

    aput-short p2, v0, v2

    new-array v1, v1, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessage(I[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B
    .locals 11
    .param p1, "serviceHook"    # I
    .param p2, "types"    # [S
    .param p3, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, "msgSize":I
    const/4 v0, 0x4

    .line 342
    .local v0, "HEADER_SIZE":I
    const/4 v3, 0x0

    .line 343
    .local v3, "modemId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 344
    aget-object v6, p3, v2

    invoke-virtual {v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    :cond_0
    add-int v6, v0, v4

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 353
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 354
    invoke-static {v4}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 356
    const/4 v2, 0x0

    :goto_1
    array-length v6, p3

    if-ge v2, v6, :cond_1

    .line 357
    aget-object v6, p3, v2

    invoke-virtual {v6}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->vLog(Ljava/lang/String;)V

    .line 358
    aget-object v6, p3, v2

    aget-short v7, p2, v2

    invoke-virtual {v6, v7}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toTlv(S)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    :cond_1
    iget-object v6, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v5

    .line 362
    .local v5, "result":Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 363
    sget-object v6, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v7, "sendQmiMessage() Failed : %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 366
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 368
    :cond_2
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    return-object v6
.end method

.method public sendQmiMessageAsync(SSLandroid/os/Message;)V
    .locals 1
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSLandroid/os/Message;I)V

    .line 510
    return-void
.end method

.method public sendQmiMessageAsync(SSLandroid/os/Message;I)V
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 514
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 515
    return-void
.end method

.method public sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;)V
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 476
    return-void
.end method

.method public sendQmiMessageAsync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .param p6, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 480
    sget-object v0, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQmiMessageAsync phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-array v3, v4, [S

    aput-short p3, v3, v5

    new-array v4, v4, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aput-object p4, v4, v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 486
    return-void
.end method

.method public sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;)V
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V

    .line 419
    return-void
.end method

.method public sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    .locals 4
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "msg"    # Landroid/os/Message;
    .param p6, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    sget-object v1, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendQmiMessageAsync phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v0, Lcom/qualcomm/qcrilhook/OemHookCallback;

    invoke-direct {v0, p5}, Lcom/qualcomm/qcrilhook/OemHookCallback;-><init>(Landroid/os/Message;)V

    .line 436
    .local v0, "qmiOemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v2, 0x80064

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p6}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 439
    return-void
.end method

.method public sendQmiMessageSync(SS)Ljava/util/HashMap;
    .locals 1
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;
    .locals 6
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSS",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SSSLcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;
    .locals 6
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "type"    # S
    .param p4, "qmiItem"    # Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SSS",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 466
    new-array v3, v1, [S

    aput-short p3, v3, v0

    new-array v4, v1, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aput-object p4, v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;
    .locals 6
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[S[",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;I)Ljava/util/HashMap;
    .locals 7
    .param p1, "serviceId"    # S
    .param p2, "messageId"    # S
    .param p3, "types"    # [S
    .param p4, "qmiItems"    # [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .param p5, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[S[",
            "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiOemHook;->mQcRilOemHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    const v3, 0x80064

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->createPayload(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4, p5}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v1

    .line 393
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 394
    sget-object v2, Lcom/qualcomm/qcrilhook/QmiOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v3, "sendQmiMessage() Failed : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 397
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 399
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 401
    .local v0, "responseData":[B
    const/4 v2, 0x0

    sget-object v3, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;->IS_SYNC_RESPONSE:Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    invoke-static {v0, v2, v3, p5}, Lcom/qualcomm/qcrilhook/QmiOemHook;->receive([BLandroid/os/Message;Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;I)Ljava/util/HashMap;

    move-result-object v2

    return-object v2
.end method
