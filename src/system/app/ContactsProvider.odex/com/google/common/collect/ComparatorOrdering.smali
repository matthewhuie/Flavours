.class final Lcom/google/common/collect/ComparatorOrdering;
.super Lcom/google/common/collect/Ordering;
.source "ComparatorOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/common/collect/ComparatorOrdering;,"Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    .local p1, a:Ljava/lang/Object;,"TT;"
    .local p2, b:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 55
    .local p0, this:Lcom/google/common/collect/ComparatorOrdering;,"Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    if-ne p1, p0, :cond_4

    .line 56
    const/4 v1, 0x1

    .line 62
    :goto_3
    return v1

    .line 58
    :cond_4
    instance-of v1, p1, Lcom/google/common/collect/ComparatorOrdering;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/google/common/collect/ComparatorOrdering;

    .line 60
    .local v0, that:Lcom/google/common/collect/ComparatorOrdering;,"Lcom/google/common/collect/ComparatorOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    iget-object v2, v0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 62
    .end local v0           #that:Lcom/google/common/collect/ComparatorOrdering;,"Lcom/google/common/collect/ComparatorOrdering<*>;"
    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/collect/ComparatorOrdering;,"Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/collect/ComparatorOrdering;,"Lcom/google/common/collect/ComparatorOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
