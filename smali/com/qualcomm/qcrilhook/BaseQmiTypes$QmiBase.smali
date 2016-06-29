.class public abstract Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;
.super Ljava/lang/Object;
.source "BaseQmiTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/BaseQmiTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QmiBase"
.end annotation


# static fields
.field public static final QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final QMI_CHARSET:Ljava/lang/String; = "US-ASCII"

.field public static final TLV_LENGTH_SIZE:I = 0x2

.field public static final TLV_TYPE_SIZE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 38
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 40
    return-object v0
.end method

.method public static createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 44
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v1, Lcom/qualcomm/qcrilhook/BaseQmiTypes$QmiBase;->QMI_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    return-object v0
.end method


# virtual methods
.method public abstract toString()Ljava/lang/String;
.end method
