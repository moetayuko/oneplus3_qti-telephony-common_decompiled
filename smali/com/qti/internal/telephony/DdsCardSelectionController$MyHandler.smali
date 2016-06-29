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
    .line 320
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    .line 321
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 322
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 328
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 470
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not support this handle msg.what = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v8, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    invoke-static {v8, v9, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$800(Lcom/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->handleSimAbsentforSelectMultiMode(I)V

    goto :goto_0

    .line 337
    :pswitch_2
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "oem EVENT_RADIO_NOT_AVAILABLE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 338
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 339
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 340
    .local v3, "phoneId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$900(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qti/internal/telephony/CurrentCardStatus;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    goto :goto_0

    .line 343
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "phoneId":Ljava/lang/Integer;
    :pswitch_3
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "oem EVENT_GET_ICC_STATUS_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 344
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 345
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 346
    .local v2, "index":I
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    invoke-static {v7, v0, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1000(Lcom/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 349
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "index":I
    :pswitch_4
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->handleTimeOut()V
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1100(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto :goto_0

    .line 352
    :pswitch_5
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "oem EVENT_SET_GW_PERF_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 353
    const/16 v7, 0x12

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 354
    .local v5, "response":Landroid/os/Message;
    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1200()Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8, v9, v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto :goto_0

    .line 357
    .end local v5    # "response":Landroid/os/Message;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 358
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 359
    .restart local v3    # "phoneId":Ljava/lang/Integer;
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1300(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    const/16 v8, 0x11

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, -0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 362
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "phoneId":Ljava/lang/Integer;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 363
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/RadioCapability;

    .line 364
    .local v4, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 365
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "get phone radio capability fail,no need to change RadioCapability"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$700(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    :cond_1
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1400(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/RadioCapability;->getPhoneId()I

    move-result v8

    aput-object v4, v7, v8

    goto/16 :goto_0

    .line 373
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "rc":Lcom/android/internal/telephony/RadioCapability;
    :pswitch_8
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "EVENT_PRI_PERF_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 374
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1500(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 378
    :pswitch_9
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "EVENT_TEST_CARD_DETECT recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 379
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1600(Lcom/qti/internal/telephony/DdsCardSelectionController;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 381
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1700(Lcom/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v7

    sget-object v8, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 383
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v7, 0x0

    # setter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1802(I)I

    .line 384
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 386
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "switch Antenna failed, retry it"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$700(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 387
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 388
    const-wide/16 v8, 0x64

    invoke-virtual {p0, p1, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 392
    :cond_2
    const/16 v7, 0x15

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 393
    const-wide/16 v8, 0x1f4

    invoke-virtual {p0, p1, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 398
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_3
    const/16 v7, 0x13

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 399
    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, p1, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 404
    :pswitch_a
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_ANTENNA_SWITCH_RETRY recv  retry_times "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1800()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 405
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1700(Lcom/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v7

    sget-object v8, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_SET_ANTENNA:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 407
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_5

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1800()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    .line 409
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "retry switch Antenna failed, again retry"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$700(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 410
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 411
    const-wide/16 v8, 0x64

    invoke-virtual {p0, p1, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 418
    :cond_4
    :goto_1
    # operator++ for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1808()I

    goto/16 :goto_0

    .line 413
    :cond_5
    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1800()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_4

    .line 415
    const/16 v7, 0x15

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 416
    const-wide/16 v8, 0x1f4

    invoke-virtual {p0, p1, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 421
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "EVENT_GET_ANTENNA_POS recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 422
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1700(Lcom/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;

    move-result-object v7

    sget-object v8, Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;->AP_2_MODEM_GET_ANTENNA_POS:Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/qualcomm/qcrilhook/QcRilHook;->oemAPSendRequest2Modem(Lcom/qualcomm/qcrilhook/QcRilHook$ApCmd2ModemType;[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 424
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    .line 426
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "retry switch Antenna failed, again retry"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$700(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 427
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 428
    const-wide/16 v8, 0x64

    invoke-virtual {p0, p1, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 430
    :cond_6
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 432
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v1, v7

    check-cast v1, [B

    .line 433
    .local v1, "buf":[B
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current antenna pos status is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v9, v1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 434
    const/4 v7, 0x0

    aget-byte v7, v1, v7

    if-eqz v7, :cond_0

    .line 436
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 437
    const-wide/16 v8, 0x64

    invoke-virtual {p0, p1, v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 443
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "buf":[B
    :pswitch_c
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "EVENT_SIM_STATUS_CHANGE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 444
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget v8, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->processSimStatusChange(I)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$1900(Lcom/qti/internal/telephony/DdsCardSelectionController;I)V

    goto/16 :goto_0

    .line 448
    :pswitch_d
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "EVENT_MBN_ACTIVATED_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 449
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->processMbnActivatedDone()V
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$2000(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 453
    :pswitch_e
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "EVENT_SIM_LOADED_DONE recv "

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 454
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->getPhoneMatchImei()V
    invoke-static {v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$2100(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    goto/16 :goto_0

    .line 458
    :pswitch_f
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const-string v8, "OEM_EVENT_TETHER_STATE_CHANGE receive"

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 459
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;

    .line 460
    .local v6, "stateChange":Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-object v8, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-object v9, v6, Lcom/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v8, v9}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$2200(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    .line 461
    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$200()Z

    move-result v7

    if-nez v7, :cond_7

    # getter for: Lcom/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z
    invoke-static {}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$300()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_7
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v7, v7, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    iget-object v8, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v8, v8, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpenOld:Z

    if-eq v7, v8, :cond_0

    .line 463
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WiFi hotspot has change and notify modem. isWifiHotOpen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v9, v9, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 464
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-object v8, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    iget-boolean v8, v8, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    iput-boolean v8, v7, Lcom/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpenOld:Z

    .line 465
    iget-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;->this$0:Lcom/qti/internal/telephony/DdsCardSelectionController;

    const/4 v8, 0x0

    # invokes: Lcom/qti/internal/telephony/DdsCardSelectionController;->notifyOnlyWifiHotStatus2Modem(Landroid/os/Message;)V
    invoke-static {v7, v8}, Lcom/qti/internal/telephony/DdsCardSelectionController;->access$2300(Lcom/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 328
    nop

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
        :pswitch_f
    .end packed-switch
.end method
