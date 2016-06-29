.class Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;
.super Ljava/lang/Object;
.source "QtiDctController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/internal/telephony/dataconnection/QtiDctController;->onConnectResponse(ILandroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/dataconnection/QtiDctController;I)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    iput p2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 460
    const-string v0, "Running retry connect/allow_data"

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$000(Ljava/lang/String;)V

    .line 462
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->val$phoneId:I

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getTopPriorityRequestPhoneId()I
    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$100(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$200(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v0

    iget v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->val$phoneId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->retryConnect()V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDctController$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDctController;->processRequests()V
    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->access$300(Lcom/qti/internal/telephony/dataconnection/QtiDctController;)V

    goto :goto_0
.end method
