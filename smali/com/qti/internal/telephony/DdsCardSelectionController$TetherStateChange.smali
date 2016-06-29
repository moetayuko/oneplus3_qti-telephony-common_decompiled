.class Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherStateChange"
.end annotation


# instance fields
.field active:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field available:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method constructor <init>(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "av":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "ac":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->available:Ljava/util/ArrayList;

    .line 296
    iput-object p3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->active:Ljava/util/ArrayList;

    .line 297
    return-void
.end method
