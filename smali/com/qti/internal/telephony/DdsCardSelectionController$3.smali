.class Lcom/qti/internal/telephony/DdsCardSelectionController$3;
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
    .line 228
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    const-string v2, "availableArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    .local v1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "activeArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 235
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x19

    new-instance v5, Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$3;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v5, v6, v1, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;-><init>(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method
