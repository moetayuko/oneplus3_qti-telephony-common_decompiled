.class Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiRadioCapabilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/QtiRadioCapabilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/QtiRadioCapabilityController;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x5

    const/4 v4, -0x1

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "action":Ljava/lang/String;
    const-string v1, "QtiRadioCapabilityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    iget-object v2, p0, Lcom/qti/internal/telephony/QtiRadioCapabilityController$1;->this$0:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
