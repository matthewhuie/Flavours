.class Lcom/android/settings/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .registers 2
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$5;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$1000(Lcom/android/settings/CryptKeeper;)V

    .line 543
    return-void
.end method
