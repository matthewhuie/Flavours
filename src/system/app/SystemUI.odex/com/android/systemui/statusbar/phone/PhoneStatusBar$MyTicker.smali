.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;
.super Lcom/android/systemui/statusbar/phone/Ticker;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "sb"

    .prologue
    .line 1689
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1690
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/Ticker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1691
    return-void
.end method


# virtual methods
.method public tickerDone()V
    .registers 5

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a0024

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a0026

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1709
    return-void
.end method

.method public tickerHalting()V
    .registers 5

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/high16 v2, 0x10a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a0001

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1717
    return-void
.end method

.method public tickerStarting()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a0028

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a0029

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1700
    return-void
.end method
