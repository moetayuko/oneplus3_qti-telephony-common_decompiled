.class Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;
.super Ljava/lang/Object;
.source "UiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/UiccCardProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UiccProvisionStatus"
.end annotation


# static fields
.field static final CARD_NOT_PRESENT:I = -0x2

.field static final INVALID_STATE:I = -0x1

.field static final NOT_PROVISIONED:I = 0x0

.field static final PROVISIONED:I = 0x1


# instance fields
.field private currentState:I

.field private userPreference:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    .line 100
    iput v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->currentState:I

    .line 101
    return-void
.end method


# virtual methods
.method equals(Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;)Z
    .locals 3
    .param p1, "provisionStatus"    # Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;

    .prologue
    .line 104
    const/4 v0, 0x1

    .line 106
    .local v0, "result":Z
    invoke-virtual {p1}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v1

    invoke-virtual {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v1

    invoke-virtual {p0}, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 110
    :cond_1
    return v0
.end method

.method getCurrentState()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->currentState:I

    return v0
.end method

.method getUserPreference()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    return v0
.end method

.method setCurrentState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->currentState:I

    .line 127
    return-void
.end method

.method setUserPreference(I)V
    .locals 0
    .param p1, "pref"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->userPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Current pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qti/internal/telephony/UiccCardProvisioner$UiccProvisionStatus;->currentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
