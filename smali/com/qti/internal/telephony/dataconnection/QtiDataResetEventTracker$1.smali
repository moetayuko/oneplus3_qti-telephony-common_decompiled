.class Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;
.super Landroid/os/Handler;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 62
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 63
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 64
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$000(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$000(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)I

    move-result v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAT CHANGED, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I
    invoke-static {v4}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$000(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$100(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->notifyResetEvent()V
    invoke-static {v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$200(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousRAT:I
    invoke-static {v3, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$002(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;I)I

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x42029
        :pswitch_0
    .end packed-switch
.end method
