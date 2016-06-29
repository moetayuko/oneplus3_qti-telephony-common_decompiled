.class Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "PresenceMsgBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetEventReport"
.end annotation


# static fields
.field public static final EVENT_REPORT_MASK_TYPE:S = 0x1s


# instance fields
.field mask:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 635
    new-instance v0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;

    invoke-direct {v0, p1}, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;-><init>(I)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;->mask:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;

    .line 636
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .prologue
    .line 640
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$SetEventReport;->mask:Lcom/qualcomm/qcrilhook/PresenceMsgBuilder$EventReport$EventReportMaskStruct;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 647
    new-array v0, v2, [S

    const/4 v1, 0x0

    aput-short v2, v0, v1

    return-object v0
.end method
