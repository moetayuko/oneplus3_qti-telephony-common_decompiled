.class Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;
.super Landroid/telephony/PhoneStateListener;
.source "QtiDataResetEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->startResetEventTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 105
    iput-object p1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 4
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataConnection onCellLocationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$100(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 110
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 111
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 113
    .local v0, "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$300(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$300(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # getter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$300(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    const-string v2, "DataConnection location updated"

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$100(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # invokes: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->notifyResetEvent()V
    invoke-static {v1}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$200(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;)V

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$2;->this$0:Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    # setter for: Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->mPreviousLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v1, v0}, Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->access$302(Lcom/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;

    .line 125
    .end local v0    # "currentLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    return-void
.end method
