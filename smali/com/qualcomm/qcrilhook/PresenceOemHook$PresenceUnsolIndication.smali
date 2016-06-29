.class public Lcom/qualcomm/qcrilhook/PresenceOemHook$PresenceUnsolIndication;
.super Ljava/lang/Object;
.source "PresenceOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/PresenceOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresenceUnsolIndication"
.end annotation


# instance fields
.field public obj:Ljava/lang/Object;

.field public oemHookMesgId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
