.class Lcom/android/settings/fuelgauge/PowerUsageDetail$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageDetail;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->this$0:Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 428
    return-void

    .line 427
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method
