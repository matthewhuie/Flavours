.class Lcom/android/settings/SettingsLicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$200(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity$3;->this$0:Lcom/android/settings/SettingsLicenseActivity;

    invoke-static {v0}, Lcom/android/settings/SettingsLicenseActivity;->access$300(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 207
    return-void
.end method
