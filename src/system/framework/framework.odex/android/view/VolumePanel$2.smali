.class Landroid/view/VolumePanel$2;
.super Landroid/app/Dialog;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    iput-object p1, p0, Landroid/view/VolumePanel$2;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/view/VolumePanel$2;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 215
    iget-object v0, p0, Landroid/view/VolumePanel$2;->this$0:Landroid/view/VolumePanel;

    invoke-static {v0}, Landroid/view/VolumePanel;->access$100(Landroid/view/VolumePanel;)V

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
