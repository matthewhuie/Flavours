.class final Lcom/google/common/util/concurrent/Executors$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$terminationTimeout:J

.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$1;->val$service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 124
    iget-object v0, p0, Lcom/google/common/util/concurrent/Executors$1;->val$service:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/Executors$1;->val$terminationTimeout:J

    iget-object v3, p0, Lcom/google/common/util/concurrent/Executors$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 128
    :goto_e
    return-void

    .line 125
    :catch_f
    move-exception v0

    goto :goto_e
.end method
