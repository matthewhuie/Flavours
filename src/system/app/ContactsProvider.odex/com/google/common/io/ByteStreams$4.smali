.class final Lcom/google/common/io/ByteStreams$4;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$length:J

.field final synthetic val$offset:J

.field final synthetic val$supplier:Lcom/google/common/io/InputSupplier;


# virtual methods
.method public getInput()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$4;->val$supplier:Lcom/google/common/io/InputSupplier;

    invoke-interface {v2}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 804
    .local v1, in:Ljava/io/InputStream;
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$4;->val$offset:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_15

    .line 806
    :try_start_10
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$4;->val$offset:J

    invoke-static {v1, v2, v3}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1d

    .line 812
    :cond_15
    new-instance v2, Lcom/google/common/io/LimitInputStream;

    iget-wide v3, p0, Lcom/google/common/io/ByteStreams$4;->val$length:J

    invoke-direct {v2, v1, v3, v4}, Lcom/google/common/io/LimitInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v2

    .line 807
    :catch_1d
    move-exception v0

    .line 808
    .local v0, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 809
    throw v0
.end method

.method public bridge synthetic getInput()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$4;->getInput()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
