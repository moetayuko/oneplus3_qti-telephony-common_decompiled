.class Lcom/qualcomm/qcrilhook/QcRilHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QcRilHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/QcRilHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qcrilhook/QcRilHook;


# direct methods
.method constructor <init>(Lcom/qualcomm/qcrilhook/QcRilHook;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "action":Ljava/lang/String;
    const-string v12, "com.qualcomm.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 144
    const/4 v11, 0x0

    .line 145
    .local v11, "response_id":I
    const-string v12, "QC_RIL_OEM_HOOK"

    const-string v13, "Received Broadcast Intent ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v12, "payload"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 149
    .local v7, "payload":[B
    const-string v12, "INSTANCE_ID"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, "instanceId":I
    if-eqz v7, :cond_0

    .line 153
    array-length v12, v7

    iget-object v13, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    # getter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I
    invoke-static {v13}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$000(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 154
    const-string v12, "QC_RIL_OEM_HOOK"

    const-string v13, "UNSOL_RESPONSE_OEM_HOOK_RAW incomplete header"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/qualcomm/qcrilhook/QcRilHook$1;->this$0:Lcom/qualcomm/qcrilhook/QcRilHook;

    # getter for: Lcom/qualcomm/qcrilhook/QcRilHook;->mHeaderSize:I
    invoke-static {v14}, Lcom/qualcomm/qcrilhook/QcRilHook;->access$000(Lcom/qualcomm/qcrilhook/QcRilHook;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes. Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v3    # "instanceId":I
    .end local v7    # "payload":[B
    .end local v11    # "response_id":I
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v3    # "instanceId":I
    .restart local v7    # "payload":[B
    .restart local v11    # "response_id":I
    :cond_1
    invoke-static {v7}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 160
    .local v10, "response":Ljava/nio/ByteBuffer;
    const-string v12, "QOEMHOOK"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-array v5, v12, [B

    .line 161
    .local v5, "oem_id_bytes":[B
    invoke-virtual {v10, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 162
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 163
    .local v6, "oem_id_str":Ljava/lang/String;
    const-string v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Oem ID in QCRILHOOK UNSOL RESP is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v12, "QOEMHOOK"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 165
    const-string v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect Oem ID in QCRILHOOK UNSOL RESP. Expected QOEMHOOK. Received "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    array-length v12, v7

    const-string v13, "QOEMHOOK"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v9, v12, v13

    .line 171
    .local v9, "remainingSize":I
    if-lez v9, :cond_0

    .line 172
    new-array v8, v9, [B

    .line 174
    .local v8, "remainingPayload":[B
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 175
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 176
    .local v4, "msg":Landroid/os/Message;
    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 183
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v12, v4, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 184
    .local v2, "ar":Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 189
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "instanceId":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "oem_id_bytes":[B
    .end local v6    # "oem_id_str":Ljava/lang/String;
    .end local v7    # "payload":[B
    .end local v8    # "remainingPayload":[B
    .end local v9    # "remainingSize":I
    .end local v10    # "response":Ljava/nio/ByteBuffer;
    .end local v11    # "response_id":I
    :cond_3
    const-string v12, "QC_RIL_OEM_HOOK"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received Unknown Intent: action = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
