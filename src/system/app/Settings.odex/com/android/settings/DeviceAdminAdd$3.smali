.class Lcom/android/settings/DeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 183
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-boolean v1, v1, Lcom/android/settings/DeviceAdminAdd;->mAdding:Z

    if-eqz v1, :cond_5f

    .line 185
    :try_start_7
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-boolean v3, v3, Lcom/android/settings/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_20} :catch_26

    .line 196
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 228
    :goto_25
    return-void

    .line 187
    :catch_26
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to activate admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 193
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v1, v4}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    goto :goto_20

    .line 201
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5f
    :try_start_5f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_66} :catch_7f

    .line 204
    :goto_66
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/android/settings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DeviceAdminAdd$3$1;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd$3;->this$0:Lcom/android/settings/DeviceAdminAdd;

    iget-object v4, v4, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/DeviceAdminAdd$3$1;-><init>(Lcom/android/settings/DeviceAdminAdd$3;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    goto :goto_25

    .line 202
    :catch_7f
    move-exception v1

    goto :goto_66
.end method
