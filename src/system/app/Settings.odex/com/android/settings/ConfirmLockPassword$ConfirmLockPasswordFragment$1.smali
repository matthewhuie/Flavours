.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0350

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    return-void
.end method
