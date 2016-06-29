.class Lcom/qti/internal/telephony/DdsCardSelectionController$4;
.super Landroid/content/BroadcastReceiver;
.source "DdsCardSelectionController.java"


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
    .line 248
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-object v2, v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 255
    .local v1, "mode":I
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$200()Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    :cond_0
    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->needRecoverSar:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v2, v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->notifyWifiHotAndIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V
    invoke-static {v2, v7, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$500(Lcom/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    .line 265
    :cond_1
    :goto_0
    # setter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->needRecoverSar:Z
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$402(Z)Z

    .line 288
    :cond_2
    :goto_1
    return-void

    .line 261
    :cond_3
    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->needRecoverSar:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->notifyOnlyIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V
    invoke-static {v2, v7, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$600(Lcom/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    goto :goto_0

    .line 267
    :cond_4
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$200()Z

    move-result v2

    if-nez v2, :cond_5

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$300()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 269
    :cond_5
    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    if-ne v1, v5, :cond_2

    .line 273
    :cond_6
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v2, v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v2, :cond_7

    .line 275
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->notifyWifiHotAndIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V
    invoke-static {v2, v5, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$500(Lcom/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    .line 281
    :goto_2
    # setter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->needRecoverSar:Z
    invoke-static {v5}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$402(Z)Z

    goto :goto_1

    .line 279
    :cond_7
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->notifyOnlyIncallingOnScreenStatus2Modem(ZLandroid/os/Message;)V
    invoke-static {v2, v5, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$600(Lcom/qti/internal/telephony/DdsCardSelectionController;ZLandroid/os/Message;)V

    goto :goto_2

    .line 286
    :cond_8
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v3, "skip this action"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$700(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    goto :goto_1
.end method
