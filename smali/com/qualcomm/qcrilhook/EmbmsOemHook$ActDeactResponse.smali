.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActDeactResponse"
.end annotation


# instance fields
.field public actCode:S

.field public actTmgi:[B

.field public deactCode:S

.field public deactTmgi:[B

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 9
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2118
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2112
    iput-short v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actCode:S

    .line 2113
    iput-short v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactCode:S

    .line 2114
    iput v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->traceId:I

    .line 2115
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actTmgi:[B

    .line 2116
    iput-object v7, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactTmgi:[B

    .line 2119
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->status:I

    .line 2121
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2122
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v5

    .line 2123
    .local v5, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    invoke-static {v6}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v2

    .line 2124
    .local v2, "length":I
    const/4 v4, 0x0

    .line 2125
    .local v4, "tmgiLength":B
    const/4 v3, 0x0

    .line 2127
    .local v3, "tmgi":[B
    sparse-switch v5, :sswitch_data_0

    .line 2163
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TmgiResponse: Unexpected Type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2129
    :sswitch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 2130
    new-array v3, v4, [B

    .line 2131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_0

    .line 2132
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v3, v0

    .line 2131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2134
    :cond_0
    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actTmgi:[B

    .line 2135
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Act tmgi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actTmgi:[B

    invoke-static {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2138
    .end local v0    # "i":I
    :sswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 2139
    new-array v3, v4, [B

    .line 2140
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v4, :cond_1

    .line 2141
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v3, v0

    .line 2140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2143
    :cond_1
    iput-object v3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactTmgi:[B

    .line 2144
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deact tmgi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactTmgi:[B

    invoke-static {v8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2147
    .end local v0    # "i":I
    :sswitch_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 2148
    .local v1, "id":B
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2151
    .end local v1    # "id":B
    :sswitch_3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    iput-short v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actCode:S

    .line 2152
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Act code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->actCode:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2155
    :sswitch_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    iput-short v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactCode:S

    .line 2156
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deact code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->deactCode:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2159
    :sswitch_5
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->traceId:I

    .line 2160
    # getter for: Lcom/qualcomm/qcrilhook/EmbmsOemHook;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "traceId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactResponse;->traceId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2167
    .end local v2    # "length":I
    .end local v3    # "tmgi":[B
    .end local v4    # "tmgiLength":B
    .end local v5    # "type":I
    :cond_2
    return-void

    .line 2127
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x10 -> :sswitch_2
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method
