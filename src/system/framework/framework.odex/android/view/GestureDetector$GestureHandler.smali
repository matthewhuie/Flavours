.class Landroid/view/GestureDetector$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Landroid/view/GestureDetector;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    .line 257
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 258
    return-void
.end method

.method constructor <init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter "handler"

    .prologue
    .line 260
    iput-object p1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    .line 261
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 262
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 283
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :pswitch_1e
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v1}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 285
    :cond_2d
    :goto_2d
    return-void

    .line 272
    :pswitch_2e
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->access$200(Landroid/view/GestureDetector;)V

    goto :goto_2d

    .line 277
    :pswitch_34
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->access$400(Landroid/view/GestureDetector;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 278
    iget-object v0, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v0}, Landroid/view/GestureDetector;->access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Landroid/view/GestureDetector$GestureHandler;->this$0:Landroid/view/GestureDetector;

    invoke-static {v1}, Landroid/view/GestureDetector;->access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_2d

    .line 266
    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method