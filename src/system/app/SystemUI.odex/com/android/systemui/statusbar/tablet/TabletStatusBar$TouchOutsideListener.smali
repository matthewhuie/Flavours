.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchOutsideListener"
.end annotation


# instance fields
.field private mMsg:I

.field private mPanel:Lcom/android/systemui/statusbar/tablet/StatusBarPanel;

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V
    .registers 4
    .parameter
    .parameter "msg"
    .parameter "panel"

    .prologue
    .line 1895
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1896
    iput p2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mMsg:I

    .line 1897
    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/tablet/StatusBarPanel;

    .line 1898
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 1901
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1902
    .local v0, action:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1b

    if-nez v0, :cond_2f

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui/statusbar/tablet/StatusBarPanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/tablet/StatusBarPanel;->isInContentArea(II)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1905
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1906
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1907
    const/4 v1, 0x1

    .line 1909
    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method
