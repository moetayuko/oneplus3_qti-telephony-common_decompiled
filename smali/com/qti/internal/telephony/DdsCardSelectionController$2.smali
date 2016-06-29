.class Lcom/qti/internal/telephony/DdsCardSelectionController$2;
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
    .line 205
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$2;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x17

    .line 208
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$2;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$2;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$2;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 210
    return-void
.end method
