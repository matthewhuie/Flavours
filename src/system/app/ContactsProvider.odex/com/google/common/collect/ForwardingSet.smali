.class public abstract Lcom/google/common/collect/ForwardingSet;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ForwardingSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    .local p0, this:Lcom/google/common/collect/ForwardingSet;,"Lcom/google/common/collect/ForwardingSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/ForwardingSet;,"Lcom/google/common/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/ForwardingSet;,"Lcom/google/common/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 42
    .local p0, this:Lcom/google/common/collect/ForwardingSet;,"Lcom/google/common/collect/ForwardingSet<TE;>;"
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 46
    .local p0, this:Lcom/google/common/collect/ForwardingSet;,"Lcom/google/common/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
