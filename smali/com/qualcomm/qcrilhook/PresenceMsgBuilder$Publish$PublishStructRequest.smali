.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublishStructRequest"
.end annotation


# static fields
.field public static final PUBLISH_PRESENCE_INFO_TYPE:S = 0x10s

.field public static final PUBLISH_STATUS_TYPE:S = 0x1s


# instance fields
.field mPresence_info:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;

.field mPublish_status:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 449
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 9
    .param p1, "publish_status"    # I
    .param p2, "contact_uri"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "ver"    # Ljava/lang/String;
    .param p5, "service_id"    # Ljava/lang/String;
    .param p6, "is_audio_supported"    # I
    .param p7, "audio_capability"    # I
    .param p8, "is_video_supported"    # I
    .param p9, "video_capability"    # I

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 461
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->mPublish_status:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 462
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->mPresence_info:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;

    .line 470
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .prologue
    .line 474
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->mPublish_status:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$PublishStructRequest;->mPresence_info:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x2

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x1s
        0x10s
    .end array-data
.end method
