.class public final enum Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
.super Ljava/lang/Enum;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApCmd2ModemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

.field public static final enum AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1752
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string v1, "AP_2_MODEM_NV_BACKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1753
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string v1, "AP_2_MODEM_NV_RESTORE"

    invoke-direct {v0, v1, v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1754
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string v1, "AP_2_MODEM_NV_CHECK"

    invoke-direct {v0, v1, v4, v5}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1755
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string v1, "AP_2_MODEM_SET_ANTENNA"

    invoke-direct {v0, v1, v5, v6}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1756
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string v1, "AP_2_MODEM_GET_ANTENNA_POS"

    invoke-direct {v0, v1, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1757
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const-string v1, "AP_2_MODEM_MAX_CMD"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v7, v2}, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    .line 1751
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v1, 0x0

    sget-object v2, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_BACKUP:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_RESTORE:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_NV_CHECK:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_MAX_CMD:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1762
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1759
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    .line 1763
    iput p3, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    .line 1764
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1751
    const-class v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;
    .locals 1

    .prologue
    .line 1751
    sget-object v0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->$VALUES:[Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    invoke-virtual {v0}, [Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 1768
    iget v0, p0, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->value:I

    return v0
.end method
