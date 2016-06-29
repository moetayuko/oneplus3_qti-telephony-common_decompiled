.class Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;
.super Landroid/os/Handler;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method public constructor <init>(Lcom/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "loop"    # Landroid/os/Looper;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    .line 234
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 235
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 241
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 371
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not support this handle msg.what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    invoke-static {v7, v8, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$200(Lcom/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->handleSimAbsentforSelectMultiMode(I)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "oem EVENT_RADIO_NOT_AVAILABLE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 252
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 253
    .local v3, "phoneId":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$300(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qti/internal/telephony/CurrentCardStatus;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    goto :goto_0

    .line 256
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "phoneId":Ljava/lang/Integer;
    :pswitch_3
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "oem EVENT_GET_ICC_STATUS_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 258
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 259
    .local v2, "index":I
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    invoke-static {v6, v0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$400(Lcom/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 262
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "index":I
    :pswitch_4
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->handleTimeOut()V
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$500(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "oem EVENT_SET_GW_PERF_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 266
    const/16 v6, 0x12

    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 267
    .local v5, "response":Landroid/os/Message;
    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$600()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8, v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto :goto_0

    .line 270
    .end local v5    # "response":Landroid/os/Message;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 271
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 272
    .restart local v3    # "phoneId":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$700(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    const/16 v7, 0x11

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 275
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "phoneId":Ljava/lang/Integer;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 276
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/RadioCapability;

    .line 277
    .local v4, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 278
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "get phone radio capability fail,no need to change RadioCapability"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$800(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_1
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$900(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v7

    aput-object v4, v6, v7

    goto/16 :goto_0

    .line 286
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :pswitch_8
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "EVENT_PRI_PERF_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 287
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1000(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 291
    :pswitch_9
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "EVENT_TEST_CARD_DETECT recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 292
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 294
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1200(Lcom/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v6

    sget-object v7, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 296
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const/4 v7, 0x0

    # setter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1302(Lcom/qti/internal/telephony/DdsCardSelectionController;I)I

    .line 297
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 299
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "switch Antenna failed, retry it"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$800(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 300
    const/16 v6, 0x14

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 301
    const-wide/16 v6, 0x64

    invoke-virtual {p0, p1, v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 305
    :cond_2
    const/16 v6, 0x15

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 306
    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, p1, v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 311
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    const/16 v6, 0x13

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 312
    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, p1, v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 317
    :pswitch_a
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_ANTENNA_SWITCH_RETRY recv  retry_times "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1300(Lcom/qti/internal/telephony/DdsCardSelectionController;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 318
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1200(Lcom/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v6

    sget-object v7, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 320
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1300(Lcom/qti/internal/telephony/DdsCardSelectionController;)I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    .line 322
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "retry switch Antenna failed, again retry"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$800(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 323
    const/16 v6, 0x14

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 324
    const-wide/16 v6, 0x64

    invoke-virtual {p0, p1, v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # operator++ for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1308(Lcom/qti/internal/telephony/DdsCardSelectionController;)I

    goto/16 :goto_0

    .line 326
    :cond_5
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1300(Lcom/qti/internal/telephony/DdsCardSelectionController;)I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_4

    .line 328
    const/16 v6, 0x15

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 329
    const-wide/16 v6, 0x1f4

    invoke-virtual {p0, p1, v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 334
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "EVENT_GET_ANTENNA_POS recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 335
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1200(Lcom/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v6

    sget-object v7, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 337
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    .line 339
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "retry switch Antenna failed, again retry"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$800(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 340
    const/16 v6, 0x14

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 341
    const-wide/16 v6, 0x64

    invoke-virtual {p0, p1, v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 343
    :cond_6
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 345
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 346
    .local v1, "buf":[B
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current antenna pos status is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 347
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    if-eqz v6, :cond_0

    .line 349
    const/16 v6, 0x14

    invoke-virtual {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 350
    const-wide/16 v6, 0x64

    invoke-virtual {p0, p1, v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 356
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":[B
    :pswitch_c
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "EVENT_SIM_STATUS_CHANGE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 357
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->processSimStatusChange(I)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1400(Lcom/qti/internal/telephony/DdsCardSelectionController;I)V

    goto/16 :goto_0

    .line 361
    :pswitch_d
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "EVENT_MBN_ACTIVATED_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 362
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->processMbnActivatedDone()V
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1500(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 366
    :pswitch_e
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v7, "EVENT_SIM_LOADED_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 367
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->getPhoneMatchImei()V
    invoke-static {v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1600(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
