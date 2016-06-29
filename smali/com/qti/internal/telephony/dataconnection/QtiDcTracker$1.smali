.class Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;
.super Landroid/os/Handler;
.source "QtiDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->access$000(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsDisposed:Z
    invoke-static {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->access$100(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    const-string v1, "Sim handler handleMessage: Ignore msgs since phone is inactive"

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->access$200(Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    const-string v1, "EVENT_3GPP_RECORDS_LOADED"

    invoke-virtual {v0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker$1;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-virtual {v0}, Lcom/qti/internal/telephony/dataconnection/QtiDcTracker;->setInitialAttachApn()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
