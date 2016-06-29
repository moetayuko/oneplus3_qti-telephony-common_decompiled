.class public Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "TunerOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/TunerOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScenarioRequest"
.end annotation


# instance fields
.field public list:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/TunerOemHook;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/TunerOemHook;[I)V
    .locals 1
    .param p2, "list"    # [I

    .prologue
    .line 267
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;->this$0:Lcom/qualcomm/qcrilhook/TunerOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 268
    # invokes: Lcom/qualcomm/qcrilhook/TunerOemHook;->intArrayToQmiArray([I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    invoke-static {p1, p2}, Lcom/qualcomm/qcrilhook/TunerOemHook;->access$100(Lcom/qualcomm/qcrilhook/TunerOemHook;[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;->list:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 269
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .prologue
    .line 273
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/qcrilhook/TunerOemHook$ScenarioRequest;->list:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTypes()[S
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 278
    new-array v0, v2, [S

    const/4 v1, 0x0

    aput-short v2, v0, v1

    return-object v0
.end method
