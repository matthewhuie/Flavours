.class Lcom/android/settings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 3
    .parameter "cfi"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$802(Lcom/android/settings/RadioInfo;Z)Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$900(Lcom/android/settings/RadioInfo;)V

    .line 172
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 3
    .parameter "location"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 160
    return-void
.end method

.method public onDataActivity(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)V

    .line 155
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$000(Lcom/android/settings/RadioInfo;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$100(Lcom/android/settings/RadioInfo;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    .line 150
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .registers 3
    .parameter "mwi"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$602(Lcom/android/settings/RadioInfo;Z)Z

    .line 165
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    .line 166
    return-void
.end method
