.class public abstract Lcom/google/common/util/concurrent/ForwardingFuture;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingFuture;,"Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 43
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingFuture;,"Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 36
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingFuture;,"Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingFuture;,"Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingFuture;,"Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 48
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingFuture;,"Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 53
    .local p0, this:Lcom/google/common/util/concurrent/ForwardingFuture;,"Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
