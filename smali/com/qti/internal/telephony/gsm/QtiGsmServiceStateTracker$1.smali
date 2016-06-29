.class Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;->this$0:Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;->this$0:Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;

    const-string v2, "rac"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRac:I
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->access$002(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I

    .line 67
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;->this$0:Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;

    const-string v2, "rat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->mRat:I
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->access$102(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;I)I

    .line 68
    iget-object v1, p0, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker$1;->this$0:Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;

    # invokes: Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->enableBackgroundData()V
    invoke-static {v1}, Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;->access$200(Lcom/qti/internal/telephony/gsm/QtiGsmServiceStateTracker;)V

    .line 72
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
