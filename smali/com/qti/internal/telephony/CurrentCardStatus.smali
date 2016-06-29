.class Lcom/qti/internal/telephony/CurrentCardStatus;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# instance fields
.field public cardStatus:I

.field public iccId:Ljava/lang/String;

.field public isCDMACard:Z

.field public isCardReady:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "iccid"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 72
    iput-object p2, p0, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public isCDMACard()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    return v0
.end method
