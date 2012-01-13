.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .registers 2
    .parameter "bluetoothState"

    .prologue
    .line 465
    packed-switch p0, :pswitch_data_e

    .line 475
    const/4 v0, 0x4

    :goto_4
    return v0

    .line 467
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 469
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 471
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 473
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 465
    nop

    :pswitch_data_e
    .packed-switch 0xa
        :pswitch_5
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 422
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_15

    .line 423
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 424
    .local v0, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_e

    .line 425
    const/4 v1, 0x4

    .line 429
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :goto_d
    return v1

    .line 427
    .restart local v0       #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_e
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$802(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 429
    .end local v0           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_15
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_d
.end method

.method public getButtonId()I
    .registers 2

    .prologue
    .line 413
    const v0, 0x7f080161

    return v0
.end method

.method public getButtonImageId(Z)I
    .registers 3
    .parameter "on"

    .prologue
    .line 416
    if-eqz p1, :cond_6

    const v0, 0x7f02002c

    :goto_5
    return v0

    :cond_6
    const v0, 0x7f02002b

    goto :goto_5
.end method

.method public getIndicatorId()I
    .registers 2

    .prologue
    .line 414
    const v0, 0x7f080162

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 453
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 458
    :goto_c
    return-void

    .line 456
    :cond_d
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 457
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_c
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 434
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_e

    .line 435
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_d
    return-void

    .line 442
    :cond_e
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d
.end method
