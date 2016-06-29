.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnsolObject"
.end annotation


# instance fields
.field public obj:Ljava/lang/Object;

.field public phoneId:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public unsolId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/lang/Object;I)V
    .locals 0
    .param p2, "i"    # I
    .param p3, "o"    # Ljava/lang/Object;
    .param p4, "phone"    # I

    .prologue
    .line 968
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->unsolId:I

    .line 970
    iput-object p3, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->obj:Ljava/lang/Object;

    .line 971
    iput p4, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$UnsolObject;->phoneId:I

    .line 972
    return-void
.end method
