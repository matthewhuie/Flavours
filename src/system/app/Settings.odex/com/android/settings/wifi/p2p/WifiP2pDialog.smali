.class public Lcom/android/settings/wifi/p2p/WifiP2pDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceAddress:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWpsSetupIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5
    .parameter "context"
    .parameter "listener"
    .parameter "device"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    .line 59
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 61
    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 64
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 65
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 66
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 67
    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    packed-switch v1, :pswitch_data_4c

    .line 80
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 83
    :goto_22
    return-object v0

    .line 69
    :pswitch_23
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_22

    .line 72
    :pswitch_28
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 73
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f080175

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    goto :goto_22

    .line 77
    :pswitch_45
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_22

    .line 67
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_28
        :pswitch_45
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04007b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    .line 90
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f08019c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 92
    .local v1, mWpsSetup:Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setView(Landroid/view/View;)V

    .line 93
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setInverseBackgroundForced(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f0b0212

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setTitle(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f08019a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    .line 99
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f08019b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    .line 101
    const/4 v2, -0x1

    const v3, 0x7f0b01f8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const/4 v2, -0x2

    const v3, 0x7f0b01fb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_7b

    .line 106
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 111
    :cond_7b
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 113
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v2, 0x7f08019d

    .line 118
    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    .line 120
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_14
    return-void

    .line 123
    :cond_15
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
