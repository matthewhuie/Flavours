.class final Lcom/google/common/collect/LexicographicalOrdering;
.super Lcom/google/common/collect/Ordering;
.source "LexicographicalOrdering.java"

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
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elementOrder:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/common/collect/LexicographicalOrdering;,"Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    .local p1, leftIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    .local p2, rightIterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 41
    .local v0, left:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    .local v2, right:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_16

    .line 44
    const/4 v1, 0x1

    .line 54
    :goto_15
    return v1

    .line 46
    :cond_16
    iget-object v3, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 47
    .local v1, result:I
    if-eqz v1, :cond_8

    goto :goto_15

    .line 51
    .end local v1           #result:I
    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 52
    const/4 v1, -0x1

    goto :goto_15

    .line 54
    :cond_2f
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    .local p0, this:Lcom/google/common/collect/LexicographicalOrdering;,"Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1
    check-cast p2, Ljava/lang/Iterable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LexicographicalOrdering;->compare(Ljava/lang/Iterable;Ljava/lang/Iterable;)I

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
    .line 58
    .local p0, this:Lcom/google/common/collect/LexicographicalOrdering;,"Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    if-ne p1, p0, :cond_4

    .line 59
    const/4 v1, 0x1

    .line 65
    :goto_3
    return v1

    .line 61
    :cond_4
    instance-of v1, p1, Lcom/google/common/collect/LexicographicalOrdering;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/google/common/collect/LexicographicalOrdering;

    .line 63
    .local v0, that:Lcom/google/common/collect/LexicographicalOrdering;,"Lcom/google/common/collect/LexicographicalOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    iget-object v2, v0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 65
    .end local v0           #that:Lcom/google/common/collect/LexicographicalOrdering;,"Lcom/google/common/collect/LexicographicalOrdering<*>;"
    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LexicographicalOrdering;,"Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x7bb78cf5

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 73
    .local p0, this:Lcom/google/common/collect/LexicographicalOrdering;,"Lcom/google/common/collect/LexicographicalOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/collect/LexicographicalOrdering;->elementOrder:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lexicographical()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
