.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Imsp_presence_info_struct"
.end annotation


# instance fields
.field mContact_uri:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

.field mService_capabilities:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;

.field mService_descriptions:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 1
    .param p1, "contact_uri"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "ver"    # Ljava/lang/String;
    .param p4, "service_id"    # Ljava/lang/String;
    .param p5, "is_audio_supported"    # I
    .param p6, "audio_capability"    # I
    .param p7, "is_video_supported"    # I
    .param p8, "video_capability"    # I

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 388
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mContact_uri:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    .line 389
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;

    invoke-direct {v0, p2, p3, p4}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_descriptions:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;

    .line 393
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;

    invoke-direct {v0, p5, p6, p7, p8}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;-><init>(IIII)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_capabilities:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;

    .line 399
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mContact_uri:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_descriptions:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_capabilities:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->getSize()I

    move-result v0

    .line 405
    .local v0, "size":I
    invoke-static {v0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 407
    .local v1, "tempBuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mContact_uri:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->getSize()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mContact_uri:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 410
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_descriptions:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 411
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_capabilities:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 413
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 426
    const-string v0, "[mContact_uri_%s], [mService_descriptions=%s], [mService_capabilities=%s] "

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mContact_uri:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_descriptions:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_description_struct;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_info_struct;->mService_capabilities:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Publish$Imsp_presence_service_capabilities_struct;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
