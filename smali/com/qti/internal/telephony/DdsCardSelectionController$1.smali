.class Lcom/qti/internal/telephony/DdsCardSelectionController$1;
.super Landroid/content/BroadcastReceiver;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/internal/telephony/DdsCardSelectionController;-><init>(Landroid/content/Context;Lcom/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
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
    .line 188
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$1;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 191
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$1;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   sim_state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 195
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$1;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$1;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x16

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$1;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$1;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
