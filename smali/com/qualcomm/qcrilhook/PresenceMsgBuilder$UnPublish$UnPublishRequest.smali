.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnPublishRequest"
.end annotation


# static fields
.field public static final UNPUBLISH_REQ_TYPE:S = 0x1s


# instance fields
.field noParam:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 525
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    invoke-direct {v0}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;->noParam:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    .line 526
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .prologue
    .line 530
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$UnPublish$UnPublishRequest;->noParam:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiNull;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 537
    new-array v0, v2, [S

    const/4 v1, 0x0

    aput-short v2, v0, v1

    return-object v0
.end method
