.class public abstract Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;
.source "BaseQmiTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/BaseQmiTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseQmiStructType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;-><init>()V

    return-void
.end method

.method public static parseData(Ljava/nio/ByteBuffer;I)[B
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .prologue
    .line 90
    new-array v0, p1, [B

    .line 91
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aput-byte v2, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.end method

.method public abstract getTypes()[S
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 99
    const-string v5, ""

    .line 100
    .local v5, "temp":Ljava/lang/String;
    const/4 v3, 0x1

    .line 101
    .local v3, "isFirstItem":Z
    invoke-virtual {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;->getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    move-result-object v0

    .local v0, "arr$":[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 102
    .local v1, "i":Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    if-eqz v3, :cond_0

    .line 103
    const/4 v3, 0x0

    .line 107
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 109
    .end local v1    # "i":Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    :cond_1
    return-object v5
.end method
