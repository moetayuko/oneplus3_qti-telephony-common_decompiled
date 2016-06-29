.class public Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes;
.super Ljava/lang/Object;
.source "QmiPrimitiveTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiString;,
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;,
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;,
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiEnum;,
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;,
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiShort;,
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;,
        Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QmiPrimitiveTypes"

.field public static final SIZE_OF_BYTE:I = 0x1

.field public static final SIZE_OF_INT:I = 0x4

.field public static final SIZE_OF_LONG:I = 0x8

.field public static final SIZE_OF_SHORT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method
