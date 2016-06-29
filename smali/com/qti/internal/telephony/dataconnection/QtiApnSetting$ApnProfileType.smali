.class public final enum Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
.super Ljava/lang/Enum;
.source "QtiApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/dataconnection/QtiApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApnProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_APN:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_CDMA:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_OMH:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    const-string v1, "PROFILE_TYPE_APN"

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    .line 51
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    const-string v1, "PROFILE_TYPE_CDMA"

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_CDMA:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    .line 52
    new-instance v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    const-string v1, "PROFILE_TYPE_OMH"

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_CDMA:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->$VALUES:[Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->id:I

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method

.method public static values()[Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->$VALUES:[Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    invoke-virtual {v0}, [Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;

    return-object v0
.end method


# virtual methods
.method public getid()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/qti/internal/telephony/dataconnection/QtiApnSetting$ApnProfileType;->id:I

    return v0
.end method
