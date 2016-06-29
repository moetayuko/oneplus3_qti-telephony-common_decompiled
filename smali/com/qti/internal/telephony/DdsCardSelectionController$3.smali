.class Lcom/qti/internal/telephony/DdsCardSelectionController$3;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"

# interfaces
.implements Lcom/qualcomm/qcrilhook/QcRilHookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQcRilHookDisconnected()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public onQcRilHookReady()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v1, "QcRilHook is ready"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const/4 v1, 0x1

    # setter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z
    invoke-static {v0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1102(Lcom/qti/internal/telephony/DdsCardSelectionController;Z)Z

    .line 382
    return-void
.end method
