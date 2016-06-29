.class public Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiPrimitiveTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;",
        ">",
        "Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;"
    }
.end annotation


# instance fields
.field private mArrayLength:S

.field private mNumOfElements:S

.field private mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private vLenSize:S


# direct methods
.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;S)V
    .locals 3
    .param p3, "valueSize"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/Class",
            "<TT;>;S)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;, "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<TT;>;"
    .local p1, "arr":[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;, "[TT;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 172
    const/4 v1, 0x0

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    .line 200
    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 201
    array-length v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    .line 202
    iput-short p3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;Ljava/lang/Class;SS)V
    .locals 3
    .param p3, "valueSize"    # S
    .param p4, "numOfElements"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/lang/Class",
            "<TT;>;SS)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;, "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<TT;>;"
    .local p1, "arr":[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;, "[TT;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 172
    const/4 v1, 0x0

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    .line 216
    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 217
    array-length v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    .line 218
    iput-short p3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    .line 219
    iput-short p4, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;SLjava/lang/Class;)V
    .locals 3
    .param p2, "maxArraySize"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;S",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;, "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<TT;>;"
    .local p1, "arr":[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;, "[TT;"
    .local p3, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 172
    const/4 v1, 0x0

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    .line 182
    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 183
    array-length v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    .line 184
    const/16 v1, 0xff

    if-le p2, v1, :cond_0

    .line 185
    const/4 v1, 0x2

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v1, 0x1

    iput-short v1, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/security/InvalidParameterException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSize()I
    .locals 3

    .prologue
    .line 226
    .local p0, "this":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;, "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<TT;>;"
    const/4 v0, 0x0

    .line 227
    .local v0, "actualArrayBytesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-ge v1, v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    add-int/2addr v2, v0

    return v2
.end method

.method public toByteArray()[B
    .locals 5

    .prologue
    .line 240
    .local p0, "this":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;, "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<TT;>;"
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->getSize()I

    move-result v3

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 244
    .local v2, "numberOfSets":S
    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    if-eqz v3, :cond_0

    .line 245
    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    iget-short v4, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mNumOfElements:S

    div-int/2addr v3, v4

    int-to-short v2, v3

    .line 249
    :goto_0
    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->vLenSize:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 250
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 254
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-short v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-ge v1, v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    .end local v1    # "i":I
    :cond_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->parseByte(S)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 258
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    .local p0, "this":Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;, "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray<TT;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v1, "s":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mArrayLength:S

    if-ge v0, v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;->mVal:[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
