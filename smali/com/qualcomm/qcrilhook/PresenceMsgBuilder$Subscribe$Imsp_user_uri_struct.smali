.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Imsp_user_uri_struct"
.end annotation


# instance fields
.field imsp_user_uri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;",
            ">;"
        }
    .end annotation
.end field

.field imsp_user_uri_len:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field mCompleteLen:I

.field mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNum:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 61
    const/4 v3, 0x0

    iput v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri_len:Ljava/util/ArrayList;

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    .line 69
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mContactList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "len":I
    iget v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    .line 75
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri_len:Ljava/util/ArrayList;

    new-instance v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v4, v1}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    new-instance v4, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-direct {v4, v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v1    # "len":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mCompleteLen:I

    iget v1, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->getSize()I

    move-result v1

    .line 85
    .local v1, "size":I
    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 86
    .local v2, "tempBuf":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    if-ge v0, v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri_len:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 111
    const-string v1, ""

    .line 112
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->mNum:I

    if-ge v0, v2, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[Contact[%d]_%s]"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->imsp_user_uri:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v1
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
    .line 102
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$Subscribe$Imsp_user_uri_struct;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
