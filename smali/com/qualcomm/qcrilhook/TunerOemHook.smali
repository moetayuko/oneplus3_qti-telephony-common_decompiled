.class public Lcom/qualcomm/qcrilhook/TunerOemHook;
.super Ljava/lang/Object;
.source "TunerOemHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;,
        Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;,
        Lcom/qualcomm/qcrilhook/TunerOemHook$TunerSolResponse;,
        Lcom/qualcomm/qcrilhook/TunerOemHook$TunerUnsolIndication;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field public static final QCRILHOOK_TUNER_RFRPE_GET_PROVISIONED_TABLE_REVISION_REQ:S = 0x22s

.field public static final QCRILHOOK_TUNER_RFRPE_GET_RFM_SCENARIO_REQ:S = 0x21s

.field public static final QCRILHOOK_TUNER_RFRPE_SET_RFM_SCENARIO_REQ:S = 0x20s

.field private static final TLV_TYPE_COMMON_REQ_SCENARIO_ID:B = 0x1t

.field private static final TLV_TYPE_GET_PROVISION_TABLE_OPTIONAL_TAG1:B = 0x10t

.field private static final TLV_TYPE_GET_PROVISION_TABLE_OPTIONAL_TAG2:B = 0x11t

.field private static final TUNER_SERVICE_ID:S = 0x4s

.field private static mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

.field private static mRefCount:I


# instance fields
.field mContext:Landroid/content/Context;

.field private mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "TunerOemHook"

    sput-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listenerLooper"    # Landroid/os/Looper;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->getInstance(Landroid/content/Context;Landroid/os/Looper;)Lcom/qualcomm/qcrilhook/QmiOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qcrilhook/TunerOemHook;[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/TunerOemHook;
    .param p1, "x1"    # [I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/TunerOemHook;->intArrayToQmiArray([I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/qualcomm/qcrilhook/TunerOemHook;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listenerHandler"    # Landroid/os/Handler;

    .prologue
    .line 78
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/qualcomm/qcrilhook/TunerOemHook;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qcrilhook/TunerOemHook;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    .line 83
    :goto_0
    sget v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    .line 84
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    return-object v0

    .line 81
    :cond_0
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;

    iput-object p0, v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private intArrayToQmiArray([I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 6
    .param p1, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    array-length v2, p1

    new-array v1, v2, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 255
    .local v1, "qmiIntArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 256
    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aget v3, p1, v0

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    aput-object v2, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    array-length v3, p1

    int-to-short v3, v3

    const-class v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-direct {v2, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;SLjava/lang/Class;)V

    return-object v2
.end method

.method public static receive(Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 156
    .local v3, "requestId":I
    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 157
    .local v6, "responseSize":I
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 158
    .local v8, "successStatus":I
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v1

    .line 160
    .local v1, "messageId":S
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;

    .line 163
    .local v5, "respType":Lcom/qualcomm/qcrilhook/QmiOemHookConstants$ResponseType;
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 164
    .local v2, "msg":Landroid/os/Message;
    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 166
    .local v4, "respByteBuf":Ljava/nio/ByteBuffer;
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive respByteBuf = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " responseSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " successStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " messageId= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 172
    .local v7, "returnObject":Ljava/lang/Integer;
    packed-switch v1, :pswitch_data_0

    .line 198
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Invalid request"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-object v7

    .line 175
    :pswitch_0
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response: QCRILHOOK_TUNER_RFRPE_SET_RFM_SCENARIO_REQ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :pswitch_1
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response: QCRILHOOK_TUNER_RFRPE_GET_RFM_SCENARIO_REQ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :pswitch_2
    sget-object v9, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response: QCRILHOOK_TUNER_RFRPE_GET_PROVISIONED_TABLE_REVISION_REQ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;

    invoke-direct {v0, v4}, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;-><init>(Ljava/nio/ByteBuffer;)V

    .line 194
    .local v0, "info":Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;
    iget v9, v0, Lcom/qualcomm/qcrilhook/TunerOemHook$ProvisionTable;->prv_tbl_rev:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 195
    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    .line 97
    sget v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dispose(): Unregistering service"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->dispose()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mInstance:Lcom/qualcomm/qcrilhook/TunerOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qcrilhook/TunerOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qcrilhook/TunerOemHook;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tuner_get_provisioned_table_revision()I
    .locals 5

    .prologue
    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x4

    const/16 v4, 0x22

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS)Ljava/util/HashMap;

    move-result-object v1

    .line 128
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/TunerOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 131
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :goto_0
    return v2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public tuner_send_proximity_updates([I)Ljava/lang/Integer;
    .locals 8
    .param p1, "proximityValues"    # [I

    .prologue
    .line 108
    new-instance v2, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;

    invoke-direct {v2, p0, p1}, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;-><init>(Lcom/qualcomm/qcrilhook/TunerOemHook;[I)V

    .line 110
    .local v2, "req":Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/TunerOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v4, 0x4

    const/16 v5, 0x20

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;->getTypes()[S

    move-result-object v6

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageSync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;)Ljava/util/HashMap;

    move-result-object v1

    .line 115
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/TunerOemHook;->receive(Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :goto_0
    return-object v3

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized unregisterOnReadyCb(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterOnReadyCb(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
