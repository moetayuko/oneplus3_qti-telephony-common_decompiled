.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Imsp_presence_service_capabilities_struct"
.end annotation


# instance fields
.field mAudio_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

.field mIs_audio_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field mIs_video_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field mVideo_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "is_audio_supported"    # I
    .param p2, "audio_capability"    # I
    .param p3, "is_video_supported"    # I
    .param p4, "video_capability"    # I

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 325
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_audio_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 326
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v2, p2

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mAudio_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 327
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_video_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 328
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v2, p4

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mVideo_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 330
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_audio_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mAudio_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_video_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mVideo_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->getSize()I

    move-result v0

    .line 336
    .local v0, "size":I
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 337
    .local v1, "tempBuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_audio_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 338
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mAudio_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 339
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_video_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 340
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mVideo_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 341
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 364
    const-string v0, "[mIs_audio_supported_%s], [mAudio_capability_%s], [mIs_video_supported_%s], [mVideo_capability_%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_audio_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mAudio_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mIs_video_supported:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->mVideo_capability:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTlv(S)[B
    .locals 2
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 357
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseShort(I)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 358
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 359
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
