.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.super Landroid/os/Handler;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;,
        Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;
    }
.end annotation


# static fields
.field private static final DEFAULT_PHONE:I = 0x0

.field private static final EMBMSHOOK_MSG_ID_ACTDEACT:S = 0x11s

.field private static final EMBMSHOOK_MSG_ID_ACTIVATE:S = 0x2s

.field private static final EMBMSHOOK_MSG_ID_CONTENT_DESCRIPTION:S = 0x1ds

.field private static final EMBMSHOOK_MSG_ID_DEACTIVATE:S = 0x3s

.field private static final EMBMSHOOK_MSG_ID_DELIVER_LOG_PACKET:S = 0x16s

.field private static final EMBMSHOOK_MSG_ID_DISABLE:S = 0x1s

.field private static final EMBMSHOOK_MSG_ID_ENABLE:S = 0x0s

.field private static final EMBMSHOOK_MSG_ID_GET_ACTIVE:S = 0x5s

.field private static final EMBMSHOOK_MSG_ID_GET_ACTIVE_LOG_PACKET_IDS:S = 0x15s

.field private static final EMBMSHOOK_MSG_ID_GET_AVAILABLE:S = 0x4s

.field private static final EMBMSHOOK_MSG_ID_GET_COVERAGE:S = 0x8s

.field private static final EMBMSHOOK_MSG_ID_GET_E911_STATE:S = 0x1bs

.field private static final EMBMSHOOK_MSG_ID_GET_EMBMS_STATUS:S = 0x21s

.field private static final EMBMSHOOK_MSG_ID_GET_INTERESTED_TMGI_LIST_RESP:S = 0x23s

.field private static final EMBMSHOOK_MSG_ID_GET_PLMN_LIST:S = 0x1fs

.field private static final EMBMSHOOK_MSG_ID_GET_SIB16_COVERAGE:S = 0x18s

.field private static final EMBMSHOOK_MSG_ID_GET_SIG_STRENGTH:S = 0x9s

.field private static final EMBMSHOOK_MSG_ID_GET_TIME:S = 0x1as

.field private static final EMBMSHOOK_MSG_ID_SET_TIME:S = 0x17s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_ACTIVE_TMGI_LIST:S = 0xcs

.field private static final EMBMSHOOK_MSG_ID_UNSOL_AVAILABLE_TMGI_LIST:S = 0xfs

.field private static final EMBMSHOOK_MSG_ID_UNSOL_CELL_ID:S = 0x12s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL:S = 0x1es

.field private static final EMBMSHOOK_MSG_ID_UNSOL_COVERAGE_STATE:S = 0xds

.field private static final EMBMSHOOK_MSG_ID_UNSOL_E911_STATE:S = 0x1cs

.field private static final EMBMSHOOK_MSG_ID_UNSOL_EMBMS_STATUS:S = 0x20s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_GET_INTERESTED_TMGI_LIST:S = 0x22s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_OOS_STATE:S = 0x10s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_RADIO_STATE:S = 0x13s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_SAI_LIST:S = 0x14s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_SIB16:S = 0x19s

.field private static final EMBMSHOOK_MSG_ID_UNSOL_STATE_CHANGE:S = 0xbs

.field private static final EMBMS_SERVICE_ID:S = 0x2s

.field private static final FAILURE:I = -0x1

.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final OEM_HOOK_RESPONSE:I = 0x1

.field private static final ONE_BYTE:S = 0x1s

.field private static final QCRILHOOK_READY_CALLBACK:I = 0x2

.field private static final SIZE_OF_EACH_PLMN_IN_BYTES:S = 0x6s

.field private static final SIZE_OF_TMGI:I = 0x6

.field private static final SUCCESS:I = 0x0

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_ACT_TMGI:B = 0x3t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_DEACT_TMGI:B = 0x4t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_EARFCN_LIST:B = 0x6t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_PRIORITY:B = 0x5t

.field private static final TLV_TYPE_ACTDEACTIVATE_REQ_SAI_LIST:B = 0x10t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_ACTTMGI:B = 0x11t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_ACT_CODE:B = 0x2t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_DEACTTMGI:B = 0x12t

.field private static final TLV_TYPE_ACTDEACTIVATE_RESP_DEACT_CODE:B = 0x3t

.field private static final TLV_TYPE_ACTIVATE_REQ_EARFCN_LIST:B = 0x5t

.field private static final TLV_TYPE_ACTIVATE_REQ_PRIORITY:B = 0x4t

.field private static final TLV_TYPE_ACTIVATE_REQ_SAI_LIST:B = 0x10t

.field private static final TLV_TYPE_ACTIVATE_REQ_TMGI:B = 0x3t

.field private static final TLV_TYPE_ACTIVATE_RESP_TMGI:B = 0x11t

.field private static final TLV_TYPE_ACTIVELOGPACKETID_REQ_PACKET_ID_LIST:S = 0x2s

.field private static final TLV_TYPE_ACTIVELOGPACKETID_RESP_PACKET_ID_LIST:S = 0x2s

.field private static final TLV_TYPE_COMMON_REQ_CALL_ID:B = 0x2t

.field private static final TLV_TYPE_COMMON_REQ_TRACE_ID:B = 0x1t

.field private static final TLV_TYPE_COMMON_RESP_CALL_ID:B = 0x10t

.field private static final TLV_TYPE_COMMON_RESP_CODE:B = 0x2t

.field private static final TLV_TYPE_COMMON_RESP_TRACE_ID:B = 0x1t

.field private static final TLV_TYPE_CONTENT_DESCRIPTION_REQ_PARAMETER_ARRAY:B = 0x10t

.field private static final TLV_TYPE_CONTENT_DESCRIPTION_REQ_TMGI:B = 0x3t

.field private static final TLV_TYPE_DEACTIVATE_REQ_TMGI:B = 0x3t

.field private static final TLV_TYPE_DEACTIVATE_RESP_TMGI:B = 0x11t

.field private static final TLV_TYPE_DELIVERLOGPACKET_REQ_LOG_PACKET:S = 0x3s

.field private static final TLV_TYPE_DELIVERLOGPACKET_REQ_PACKET_ID:S = 0x2s

.field private static final TLV_TYPE_ENABLE_RESP_IFNAME:B = 0x11t

.field private static final TLV_TYPE_ENABLE_RESP_IF_INDEX:B = 0x12t

.field private static final TLV_TYPE_GET_ACTIVE_RESP_TMGI_ARRAY:B = 0x10t

.field private static final TLV_TYPE_GET_AVAILABLE_RESP_TMGI_ARRAY:B = 0x10t

.field private static final TLV_TYPE_GET_COVERAGE_STATE_RESP_STATE:B = 0x10t

.field private static final TLV_TYPE_GET_E911_RESP_STATE:S = 0x10s

.field private static final TLV_TYPE_GET_EMBMS_STATUS_RESP:S = 0x2s

.field private static final TLV_TYPE_GET_INTERESTED_TMGI_LIST_RESP_TMGI:B = 0x3t

.field private static final TLV_TYPE_GET_PLMN_LIST_RESP_PLMN_LIST:B = 0x2t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_ACTIVE_TMGI_LIST:B = 0x14t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_EXCESS_SNR:B = 0x12t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_MBSFN_AREA_ID:B = 0x10t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_NUMBER_OF_TMGI_PER_MBSFN:B = 0x13t

.field private static final TLV_TYPE_GET_SIG_STRENGTH_RESP_SNR:B = 0x11t

.field private static final TLV_TYPE_GET_TIME_RESP_DAY_LIGHT_SAVING:B = 0x10t

.field private static final TLV_TYPE_GET_TIME_RESP_LEAP_SECONDS:B = 0x11t

.field private static final TLV_TYPE_GET_TIME_RESP_LOCAL_TIME_OFFSET:B = 0x12t

.field private static final TLV_TYPE_GET_TIME_RESP_TIME_MSECONDS:B = 0x3t

.field private static final TLV_TYPE_SET_TIME_REQ_SNTP_SUCCESS:B = 0x1t

.field private static final TLV_TYPE_SET_TIME_REQ_TIME_MSECONDS:B = 0x10t

.field private static final TLV_TYPE_SET_TIME_REQ_TIME_STAMP:B = 0x11t

.field private static final TLV_TYPE_UNSOL_ACTIVE_IND_TMGI_ARRAY:S = 0x2s

.field private static final TLV_TYPE_UNSOL_AVAILABLE_IND_TMGI_ARRAY_OR_RESPONSE_CODE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_CELL_ID_IND_CID:S = 0x4s

.field private static final TLV_TYPE_UNSOL_CELL_ID_IND_MCC:S = 0x2s

.field private static final TLV_TYPE_UNSOL_CELL_ID_IND_MNC:S = 0x3s

.field private static final TLV_TYPE_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL_CONTENT_CONTROL:S = 0x10s

.field private static final TLV_TYPE_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL_STATUS_CONTROL:S = 0x11s

.field private static final TLV_TYPE_UNSOL_CONTENT_DESC_PER_OBJ_CONTROL_TMGI:S = 0x2s

.field private static final TLV_TYPE_UNSOL_COVERAGE_IND_STATE_OR_RESPONSE_CODE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_E911_STATE_OR_RESPONSE_CODE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_EMBMS_STATUS:S = 0x1s

.field private static final TLV_TYPE_UNSOL_OOS_IND_STATE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_OOS_IND_TMGI_ARRAY:S = 0x3s

.field private static final TLV_TYPE_UNSOL_RADIO_STATE:S = 0x2s

.field private static final TLV_TYPE_UNSOL_SAI_IND_AVAILABLE_SAI_LIST:S = 0x4s

.field private static final TLV_TYPE_UNSOL_SAI_IND_CAMPED_SAI_LIST:S = 0x2s

.field private static final TLV_TYPE_UNSOL_SAI_IND_SAI_PER_GROUP_LIST:S = 0x3s

.field private static final TLV_TYPE_UNSOL_SIB16:S = 0x1s

.field private static final TLV_TYPE_UNSOL_STATE_IND_IF_INDEX:S = 0x3s

.field private static final TLV_TYPE_UNSOL_STATE_IND_IP_ADDRESS:S = 0x2s

.field private static final TLV_TYPE_UNSOL_STATE_IND_STATE:S = 0x1s

.field private static final TWO_BYTES:S = 0x2s

.field private static final UNSOL_BASE_QCRILHOOK:I = 0x1000

.field public static final UNSOL_TYPE_ACTIVE_TMGI_LIST:I = 0x2

.field public static final UNSOL_TYPE_AVAILABLE_TMGI_LIST:I = 0x4

.field public static final UNSOL_TYPE_BROADCAST_COVERAGE:I = 0x3

.field public static final UNSOL_TYPE_CELL_ID:I = 0x6

.field public static final UNSOL_TYPE_CONTENT_DESC_PER_OBJ_CONTROL:I = 0xb

.field public static final UNSOL_TYPE_E911_STATE:I = 0xa

.field public static final UNSOL_TYPE_EMBMSOEMHOOK_READY_CALLBACK:I = 0x1001

.field public static final UNSOL_TYPE_EMBMS_STATUS:I = 0xc

.field public static final UNSOL_TYPE_GET_INTERESTED_TMGI_LIST:I = 0xd

.field public static final UNSOL_TYPE_OOS_STATE:I = 0x5

.field public static final UNSOL_TYPE_RADIO_STATE:I = 0x7

.field public static final UNSOL_TYPE_SAI_LIST:I = 0x8

.field public static final UNSOL_TYPE_SIB16_COVERAGE:I = 0x9

.field public static final UNSOL_TYPE_STATE_CHANGE:I = 0x1

.field private static mRefCount:I

.field private static sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;


# instance fields
.field private mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

.field private mRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "EmbmsOemHook"

    sput-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    .line 244
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 245
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EmbmsOemHook ()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QmiOemHook;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/QmiOemHook;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 247
    const/4 v0, 0x1

    invoke-static {v2, p0, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerService(SLandroid/os/Handler;I)V

    .line 249
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->registerOnReadyCb(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    .line 251
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->parseTmgi(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p1, "x1"    # S
    .param p2, "x2"    # [B

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->byteArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p1, "x1"    # S
    .param p2, "x2"    # [I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->intArrayToQmiArray(S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p1, "x1"    # S
    .param p2, "x2"    # [I
    .param p3, "x3"    # S

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->intArrayToQmiArray(S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p1, "x1"    # S
    .param p2, "x2"    # [B

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->tmgiListArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->parseActiveTmgi(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 4
    .param p1, "vSize"    # S
    .param p2, "arr"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[B)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1642
    array-length v2, p2

    new-array v1, v2, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1643
    .local v1, "qmiByteArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1644
    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aget-byte v3, p2, v0

    invoke-direct {v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    aput-object v2, v1, v0

    .line 1643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1646
    :cond_0
    new-instance v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v2, v1, v3, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;S)V

    return-object v2
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 765
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 777
    :goto_0
    return-object v3

    .line 767
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 769
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 771
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 772
    .local v0, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 774
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 777
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    const-class v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {v0, p0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    .line 257
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Singleton Instance of Embms created."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    sget v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    .line 260
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleResponse(Ljava/util/HashMap;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/16 v13, 0x8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Short;

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v6

    .line 325
    .local v6, "msgId":S
    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 326
    .local v9, "responseSize":I
    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 327
    .local v12, "successStatus":I
    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 328
    .local v5, "msg":Landroid/os/Message;
    const/16 v13, 0x9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 329
    .local v7, "phoneId":I
    if-eqz v5, :cond_0

    .line 330
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 332
    :cond_0
    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 335
    .local v8, "respByteBuf":Ljava/nio/ByteBuffer;
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " responseSize="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " successStatus="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "phoneId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    packed-switch v6, :pswitch_data_0

    .line 510
    :pswitch_0
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "received unexpected msgId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 341
    :pswitch_1
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EnableResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 346
    :pswitch_2
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DisableResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 352
    :pswitch_3
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 357
    :pswitch_4
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 362
    :pswitch_5
    new-instance v3, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 363
    .local v3, "info":Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto :goto_0

    .line 372
    .end local v3    # "info":Lcom/qualcomm/qcrilhook/EmbmsOemHook$StateChangeInfo;
    :pswitch_6
    const/4 v13, 0x4

    if-ne v6, v13, :cond_1

    if-eqz v12, :cond_1

    .line 373
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error received in EMBMSHOOK_MSG_ID_GET_AVAILABLE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_1
    new-instance v4, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v6}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    .line 378
    .local v4, "list":Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto :goto_0

    .line 387
    .end local v4    # "list":Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;
    :pswitch_7
    const/4 v13, 0x5

    if-ne v6, v13, :cond_2

    if-eqz v12, :cond_2

    .line 388
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error received in EMBMSHOOK_MSG_ID_GET_ACTIVE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 392
    :cond_2
    new-instance v4, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v6}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    .line 393
    .restart local v4    # "list":Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 402
    .end local v4    # "list":Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiListIndication;
    :pswitch_8
    const/16 v13, 0x8

    if-ne v6, v13, :cond_3

    if-eqz v12, :cond_3

    .line 403
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error received in EMBMSHOOK_MSG_ID_GET_COVERAGE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 408
    :cond_3
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v8, v6}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    .line 409
    .local v1, "cs":Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 413
    .end local v1    # "cs":Lcom/qualcomm/qcrilhook/EmbmsOemHook$CoverageState;
    :pswitch_9
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SigStrengthResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 418
    :pswitch_a
    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 419
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 423
    :pswitch_b
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TimeResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 430
    :pswitch_c
    const/16 v13, 0x18

    if-ne v6, v13, :cond_4

    if-eqz v12, :cond_4

    .line 431
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error received in EMBMSHOOK_MSG_ID_GET_SIB16_COVERAGE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 436
    :cond_4
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 437
    .local v2, "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 441
    .end local v2    # "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$Sib16Coverage;
    :pswitch_d
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 442
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 447
    :pswitch_e
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " deliverLogPacket response successStatus="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    :pswitch_f
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " contentDescription response successStatus="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 456
    :pswitch_10
    new-instance v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V

    iput-object v13, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 463
    :pswitch_11
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v6}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;S)V

    .line 464
    .local v2, "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 468
    .end local v2    # "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$E911StateIndication;
    :pswitch_12
    new-instance v10, Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 469
    .local v10, "state":Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 473
    .end local v10    # "state":Lcom/qualcomm/qcrilhook/EmbmsOemHook$OosState;
    :pswitch_13
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 474
    .local v2, "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 478
    .end local v2    # "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$CellIdIndication;
    :pswitch_14
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 479
    .local v2, "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 483
    .end local v2    # "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$RadioStateIndication;
    :pswitch_15
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 484
    .local v2, "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 488
    .end local v2    # "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$SaiIndication;
    :pswitch_16
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 490
    .local v2, "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 495
    .end local v2    # "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescPerObjectControlIndication;
    :pswitch_17
    new-instance v11, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8, v6}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;I)V

    .line 496
    .local v11, "status":Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 500
    .end local v11    # "status":Lcom/qualcomm/qcrilhook/EmbmsOemHook$EmbmsStatus;
    :pswitch_18
    new-instance v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;Ljava/nio/ByteBuffer;)V

    .line 501
    .local v2, "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 506
    .end local v2    # "ind":Lcom/qualcomm/qcrilhook/EmbmsOemHook$RequestIndication;
    :pswitch_19
    sget-object v13, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " getInterestedTmgiListResponse ack successStatus="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_16
        :pswitch_10
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method private intArrayToQmiArray(S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 6
    .param p1, "vSize"    # S
    .param p2, "arr"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[I)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1683
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 1685
    .local v1, "length":I
    :goto_0
    new-array v2, v1, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1686
    .local v2, "qmiIntArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1687
    new-instance v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aget v4, p2, v0

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    aput-object v3, v2, v0

    .line 1686
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1683
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "qmiIntArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 1689
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "qmiIntArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;
    :cond_1
    new-instance v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-direct {v3, v2, v4, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;S)V

    return-object v3
.end method

.method private intArrayToQmiArray(S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 6
    .param p1, "vSize"    # S
    .param p2, "arr"    # [I
    .param p3, "numOfElements"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[IS)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1702
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 1704
    .local v1, "length":I
    :goto_0
    new-array v2, v1, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1705
    .local v2, "qmiIntArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1706
    new-instance v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aget v4, p2, v0

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    aput-object v3, v2, v0

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1702
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "qmiIntArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 1708
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "qmiIntArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;
    :cond_1
    new-instance v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-direct {v3, v2, v4, p1, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;SS)V

    return-object v3
.end method

.method private notifyUnsol(ILjava/lang/Object;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "payload"    # Ljava/lang/Object;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 519
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/lang/Object;I)V

    .line 520
    .local v1, "obj":Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 521
    .local v0, "ar":Landroid/os/AsyncResult;
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying registrants type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 523
    return-void
.end method

.method private parseActiveTmgi(Ljava/nio/ByteBuffer;)[B
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1043
    const/4 v1, 0x0

    .line 1044
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 1045
    .local v6, "totalTmgis":S
    mul-int/lit8 v7, v6, 0x6

    new-array v4, v7, [B

    .line 1047
    .local v4, "tmgi":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 1048
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 1049
    .local v5, "tmgiLength":B
    const/4 v3, 0x0

    .local v3, "j":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1050
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    aput-byte v7, v4, v2

    .line 1049
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 1047
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1053
    .end local v3    # "j":I
    .end local v5    # "tmgiLength":B
    :cond_1
    return-object v4
.end method

.method private parseTmgi(Ljava/nio/ByteBuffer;)[B
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1029
    const/4 v1, 0x0

    .line 1030
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 1031
    .local v6, "totalTmgis":B
    mul-int/lit8 v7, v6, 0x6

    new-array v4, v7, [B

    .line 1033
    .local v4, "tmgi":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 1034
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 1035
    .local v5, "tmgiLength":B
    const/4 v3, 0x0

    .local v3, "j":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 1036
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    aput-byte v7, v4, v2

    .line 1035
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 1033
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1039
    .end local v3    # "j":I
    .end local v5    # "tmgiLength":B
    :cond_1
    return-object v4
.end method

.method private tmgiListArrayToQmiArray(S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .locals 10
    .param p1, "vSize"    # S
    .param p2, "tmgiList"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S[B)",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1654
    if-nez p2, :cond_0

    const/4 v4, 0x0

    .line 1656
    .local v4, "length":I
    :goto_0
    div-int/lit8 v6, v4, 0x6

    .line 1657
    .local v6, "numOfTmgi":I
    mul-int/lit8 v8, v6, 0x1

    add-int/2addr v4, v8

    .line 1658
    new-array v7, v4, [Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1659
    .local v7, "qmiByteArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    const/4 v1, 0x0

    .line 1664
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    if-ge v0, v6, :cond_2

    .line 1665
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    new-instance v8, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    aput-object v8, v7, v2

    .line 1666
    mul-int/lit8 v3, v0, 0x6

    .local v3, "j":I
    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    :goto_2
    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v8, v8, 0x6

    if-ge v3, v8, :cond_1

    .line 1667
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    new-instance v8, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    aget-byte v9, p2, v3

    invoke-direct {v8, v9}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    aput-object v8, v7, v2

    .line 1666
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    .line 1654
    .end local v0    # "i":I
    .end local v2    # "index":I
    .end local v3    # "j":I
    .end local v4    # "length":I
    .end local v6    # "numOfTmgi":I
    .end local v7    # "qmiByteArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    :cond_0
    array-length v4, p2

    goto :goto_0

    .line 1664
    .restart local v0    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "j":I
    .restart local v4    # "length":I
    .restart local v6    # "numOfTmgi":I
    .restart local v7    # "qmiByteArray":[Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1674
    .end local v3    # "j":I
    :cond_2
    const/4 v5, 0x7

    .line 1675
    .local v5, "numOfElements":S
    new-instance v8, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const-class v9, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v8, v7, v9, p1, v5}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;-><init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;SS)V

    return-object v8
.end method


# virtual methods
.method public actDeactTmgi(IB[B[BI[I[ILandroid/os/Message;I)I
    .locals 11
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "actTmgi"    # [B
    .param p4, "deActTmgi"    # [B
    .param p5, "priority"    # I
    .param p6, "saiList"    # [I
    .param p7, "earfcnList"    # [I
    .param p8, "msg"    # Landroid/os/Message;
    .param p9, "phoneId"    # I

    .prologue
    .line 608
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actDeactTmgi called on PhoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B[BI[I[I)V

    .line 613
    .local v1, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x2

    const/16 v4, 0x11

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->getTypes()[S

    move-result-object v5

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v6

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 616
    :catch_0
    move-exception v10

    .line 617
    .local v10, "e":Ljava/io/IOException;
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v3, "IOException occurred during activate-deactivate !!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public activateTmgi(IB[BI[I[ILandroid/os/Message;I)I
    .locals 10
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "tmgi"    # [B
    .param p4, "priority"    # I
    .param p5, "saiList"    # [I
    .param p6, "earfcnList"    # [I
    .param p7, "msg"    # Landroid/os/Message;
    .param p8, "phoneId"    # I

    .prologue
    .line 569
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activateTmgi called on PhoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[BI[I[I)V

    .line 574
    .local v1, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->getTypes()[S

    move-result-object v5

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiActivateRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 577
    :catch_0
    move-exception v9

    .line 578
    .local v9, "e":Ljava/io/IOException;
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v3, "IOException occurred during activate !!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public contentDescription(IB[BI[I[ILandroid/os/Message;I)I
    .locals 18
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "tmgi"    # [B
    .param p4, "numberOfParameter"    # I
    .param p5, "parameterCode"    # [I
    .param p6, "parameterValue"    # [I
    .param p7, "msg"    # Landroid/os/Message;
    .param p8, "phoneId"    # I

    .prologue
    .line 880
    :try_start_0
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentDescription called on PhoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 882
    :cond_0
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentDescription: either parameterCode or parameterValue is nullparameterCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parameterValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v2, 0x0

    new-array v0, v2, [I

    move-object/from16 p5, v0

    .line 886
    const/4 v2, 0x0

    new-array v0, v2, [I

    move-object/from16 p6, v0

    .line 889
    :cond_1
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p6

    array-length v2, v0

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p5

    array-length v2, v0

    move-object/from16 v0, p6

    array-length v3, v0

    if-eq v2, v3, :cond_3

    .line 892
    :cond_2
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentDescription: Invalid input, numberOfParameter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parameterCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parameterValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/4 v2, -0x1

    .line 921
    :goto_0
    return v2

    .line 900
    :cond_3
    mul-int/lit8 v16, p4, 0x2

    .line 901
    .local v16, "parameterArraySize":I
    const/16 v17, 0x0

    .line 902
    .local v17, "pointer":I
    move/from16 v0, v16

    new-array v6, v0, [I

    .line 903
    .local v6, "parameterArray":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 904
    aget v2, p5, v17

    aput v2, v6, v15

    .line 905
    add-int/lit8 v2, v15, 0x1

    aget v3, p6, v17

    aput v3, v6, v2

    .line 906
    add-int/lit8 v17, v17, 0x1

    .line 903
    add-int/lit8 v15, v15, 0x2

    goto :goto_1

    .line 908
    :cond_4
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentDescription: parameterArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B[I)V

    .line 914
    .local v1, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v8, 0x2

    const/16 v9, 0x1d

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->getTypes()[S

    move-result-object v10

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v11

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v7 .. v13}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    const/4 v2, 0x0

    goto :goto_0

    .line 916
    .end local v1    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;
    .end local v6    # "parameterArray":[I
    .end local v15    # "i":I
    .end local v16    # "parameterArraySize":I
    .end local v17    # "pointer":I
    :catch_0
    move-exception v14

    .line 917
    .local v14, "e":Ljava/io/IOException;
    sget-object v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v3, "IOException occurred during contentDescription !!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public deactivateTmgi(IB[BLandroid/os/Message;I)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "tmgi"    # [B
    .param p4, "msg"    # Landroid/os/Message;
    .param p5, "phoneId"    # I

    .prologue
    .line 588
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateTmgi called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;

    invoke-direct {v8, p0, p1, p3, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I[BB)V

    .line 592
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$TmgiDeActivateRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 595
    :catch_0
    move-exception v7

    .line 596
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during deactivate !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public deliverLogPacket(II[BI)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "logPacketId"    # I
    .param p3, "logPacket"    # [B
    .param p4, "phoneId"    # I

    .prologue
    .line 744
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliverLogPacket called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;II[B)V

    .line 748
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x16

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$DeliverLogPacketRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 751
    :catch_0
    move-exception v7

    .line 752
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during deliver logPacket !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public disable(IBLandroid/os/Message;I)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .prologue
    .line 705
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;

    invoke-direct {v8, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB)V

    .line 708
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 711
    :catch_0
    move-exception v7

    .line 712
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during disable !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized dispose()V
    .locals 3

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    if-nez v0, :cond_0

    .line 270
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "dispose(): Unregistering receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterService(I)V

    .line 272
    invoke-static {p0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->unregisterOnReadyCb(Landroid/os/Handler;)V

    .line 273
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiOemHook;->dispose()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    .line 275
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->sInstance:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    .line 276
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :goto_0
    monitor-exit p0

    return-void

    .line 278
    :cond_0
    :try_start_1
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispose mRefCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enable(ILandroid/os/Message;I)I
    .locals 10
    .param p1, "traceId"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    const/4 v9, 0x0

    .line 552
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v8, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    .line 555
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 561
    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    :goto_0
    return v0

    .line 557
    :catch_0
    move-exception v7

    .line 558
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during enable !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getActiveLogPacketIDs(I[ILandroid/os/Message;I)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "supportedLogPacketIdList"    # [I
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "phoneId"    # I

    .prologue
    .line 724
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveLogPacketIDs called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;

    invoke-direct {v8, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I[I)V

    .line 729
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x15

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActiveLogPacketIDsRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 732
    :catch_0
    move-exception v7

    .line 733
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during activate log packet ID\'s !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getActiveTMGIList(IBI)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "phoneId"    # I

    .prologue
    .line 649
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveTMGIList called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;

    invoke-direct {v8, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB)V

    .line 653
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 656
    :catch_0
    move-exception v7

    .line 657
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getActiveTMGIList !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAvailableTMGIList(IBI)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "phoneId"    # I

    .prologue
    .line 629
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableTMGIList called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;

    invoke-direct {v8, p0, p1, p2}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB)V

    .line 633
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GenericRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 636
    :catch_0
    move-exception v7

    .line 637
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getAvailableTMGIList !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCoverageState(II)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 670
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCoverageState called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :try_start_0
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v8, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    .line 674
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    const/4 v0, 0x0

    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    :goto_0
    return v0

    .line 676
    :catch_0
    move-exception v7

    .line 677
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getActiveTMGIList !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getE911State(ILandroid/os/Message;I)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 859
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getE911State called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :try_start_0
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v8, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    .line 863
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x1b

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    const/4 v0, 0x0

    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    :goto_0
    return v0

    .line 865
    :catch_0
    move-exception v7

    .line 866
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getE911State !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEmbmsStatus(II)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 816
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmbmsStatus called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :try_start_0
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v8, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    .line 820
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x21

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    const/4 v5, 0x0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    const/4 v0, 0x0

    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    :goto_0
    return v0

    .line 822
    :catch_0
    move-exception v7

    .line 823
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getEmbmsStatus !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInterestedTMGIListResponse(IB[BILandroid/os/Message;)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "callId"    # B
    .param p3, "tmgiList"    # [B
    .param p4, "phoneId"    # I
    .param p5, "msg"    # Landroid/os/Message;

    .prologue
    .line 947
    :try_start_0
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B)V

    .line 950
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x23

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p5

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    const/4 v0, 0x0

    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetInterestedTmgiResponse;
    :goto_0
    return v0

    .line 953
    :catch_0
    move-exception v7

    .line 954
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getInterestedTMGIListResponse !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPLMNListRequest(ILandroid/os/Message;I)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 928
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPLMNListRequest called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :try_start_0
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v8, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    .line 932
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x1f

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    const/4 v0, 0x0

    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    :goto_0
    return v0

    .line 934
    :catch_0
    move-exception v7

    .line 935
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getPLMNListRequest !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSib16CoverageStatus(Landroid/os/Message;I)I
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "phoneId"    # I

    .prologue
    .line 801
    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSib16CoverageStatus called on PhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v2, 0x2

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SSLandroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IOException occurred during getSIB16 !!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSignalStrength(ILandroid/os/Message;I)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 688
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSignalStrength called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :try_start_0
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v8, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    .line 692
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x9

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    const/4 v0, 0x0

    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    :goto_0
    return v0

    .line 694
    :catch_0
    move-exception v7

    .line 695
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during enable !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTime(ILandroid/os/Message;I)I
    .locals 9
    .param p1, "traceId"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 784
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTime called on PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :try_start_0
    new-instance v8, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;

    invoke-direct {v8, p0, p1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;I)V

    .line 788
    .local v8, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v1, 0x2

    const/16 v2, 0x1a

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getTypes()[S

    move-result-object v3

    invoke-virtual {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v4

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    const/4 v0, 0x0

    .end local v8    # "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$BasicRequest;
    :goto_0
    return v0

    .line 790
    :catch_0
    move-exception v7

    .line 791
    .local v7, "e":Ljava/io/IOException;
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IOException occurred during getTime !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    sget-object v3, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 290
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 306
    sget-object v3, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected message received from QmiOemHook what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 293
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 294
    sget-object v3, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Hashmap async userobj is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0, v1}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->handleResponse(Ljava/util/HashMap;)V

    goto :goto_0

    .line 301
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :pswitch_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 303
    .local v2, "payload":Ljava/lang/Object;
    const/16 v3, 0x1001

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->notifyUnsol(ILjava/lang/Object;I)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerForNotifications(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 529
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 530
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 531
    :try_start_0
    sget-object v1, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Adding a registrant"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 533
    monitor-exit v2

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTime(ZJJLandroid/os/Message;I)I
    .locals 14
    .param p1, "sntpSuccess"    # Z
    .param p2, "timeMseconds"    # J
    .param p4, "timeStamp"    # J
    .param p6, "msg"    # Landroid/os/Message;
    .param p7, "phoneId"    # I

    .prologue
    .line 835
    sget-object v4, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTime called on PhoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v5, 0x0

    .line 837
    .local v5, "success":B
    if-eqz p1, :cond_0

    .line 838
    const/4 v5, 0x1

    .line 840
    :cond_0
    sget-object v4, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTime success = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " timeMseconds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " timeStamp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v3, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;

    move-object v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;-><init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;BJJ)V

    .line 844
    .local v3, "req":Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;
    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mQmiOemHook:Lcom/qualcomm/qcrilhook/QmiOemHook;

    const/4 v7, 0x2

    const/16 v8, 0x17

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->getTypes()[S

    move-result-object v9

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v10

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/qualcomm/qcrilhook/QmiOemHook;->sendQmiMessageAsync(SS[S[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 846
    :catch_0
    move-exception v2

    .line 847
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v6, "IOException occured during setTime !!!!!!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public unregisterForNotifications(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 541
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 542
    :try_start_0
    sget-object v0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Removing a registrant"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->mRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 544
    monitor-exit v1

    .line 545
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
