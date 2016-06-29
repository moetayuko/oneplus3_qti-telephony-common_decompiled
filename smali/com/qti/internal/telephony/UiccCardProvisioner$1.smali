.class Lcom/qti/internal/telephony/UiccCardProvisioner$1;
.super Landroid/content/BroadcastReceiver;
.source "UiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/internal/telephony/UiccCardProvisioner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/UiccCardProvisioner;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/UiccCardProvisioner;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$1;->this$0:Lcom/qti/internal/telephony/UiccCardProvisioner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "phoneId":I
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$1;->this$0:Lcom/qti/internal/telephony/UiccCardProvisioner;

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

    # invokes: Lcom/qti/internal/telephony/UiccCardProvisioner;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/qti/internal/telephony/UiccCardProvisioner;->access$000(Lcom/qti/internal/telephony/UiccCardProvisioner;Ljava/lang/String;)V

    .line 163
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$1;->this$0:Lcom/qti/internal/telephony/UiccCardProvisioner;

    # invokes: Lcom/qti/internal/telephony/UiccCardProvisioner;->updateIccAvailability(I)V
    invoke-static {v2, v0}, Lcom/qti/internal/telephony/UiccCardProvisioner;->access$100(Lcom/qti/internal/telephony/UiccCardProvisioner;I)V

    .line 167
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 170
    :cond_0
    return-void
.end method
