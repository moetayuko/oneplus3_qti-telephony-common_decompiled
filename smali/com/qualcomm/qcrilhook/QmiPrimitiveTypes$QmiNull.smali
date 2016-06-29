.class public Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
.source "QmiPrimitiveTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QmiNull"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "val=null"

    return-object v0
.end method

.method public toTlv(S)[B
    .locals 1
    .param p1, "type"    # S

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
