.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;
.super Landroid/app/Dialog;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 234
    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 235
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 239
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    .line 240
    .local v0, down:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1e

    .line 247
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_13
    :goto_13
    return v1

    .line 239
    .end local v0           #down:Z
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 242
    .restart local v0       #down:Z
    :pswitch_16
    if-nez v0, :cond_13

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    goto :goto_13

    .line 240
    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_16
    .end packed-switch
.end method
