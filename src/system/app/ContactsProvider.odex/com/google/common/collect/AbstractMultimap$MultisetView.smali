.class Lcom/google/common/collect/AbstractMultimap$MultisetView;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1044
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->clear()V

    .line 1045
    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .registers 6
    .parameter "key"

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView;"
    const/4 v2, 0x0

    .line 1030
    :try_start_1
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v3}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1031
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_10

    .line 1035
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :goto_f
    return v2

    .line 1031
    .restart local v0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_10
    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_13} :catch_17

    move-result v2

    goto :goto_f

    .line 1032
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :catch_15
    move-exception v1

    .line 1033
    .local v1, e:Ljava/lang/NullPointerException;
    goto :goto_f

    .line 1034
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_17
    move-exception v1

    .line 1035
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_f
.end method

.method public elementSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 984
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->entrySet:Ljava/util/Set;

    .line 991
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TK;>;>;"
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TK;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultimap$MultisetView$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap$MultisetView;Lcom/google/common/collect/AbstractMultimap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->entrySet:Ljava/util/Set;

    :cond_c
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$MultisetKeyIterator;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 10
    .parameter "key"
    .parameter "occurrences"

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView;"
    const/4 v6, 0x0

    .line 951
    if-nez p2, :cond_8

    .line 952
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$MultisetView;->count(Ljava/lang/Object;)I

    move-result v6

    .line 980
    :cond_7
    :goto_7
    return v6

    .line 954
    :cond_8
    if-lez p2, :cond_29

    const/4 v5, 0x1

    :goto_b
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 958
    :try_start_e
    iget-object v5, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v5}, Lcom/google/common/collect/AbstractMultimap;->access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1a} :catch_2b
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_1a} :catch_2d

    .line 965
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_7

    .line 968
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 970
    .local v1, count:I
    if-lt p2, v1, :cond_2f

    .line 971
    iget-object v5, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v5, p1}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    move-result v6

    goto :goto_7

    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .end local v1           #count:I
    :cond_29
    move v5, v6

    .line 954
    goto :goto_b

    .line 959
    :catch_2b
    move-exception v2

    .line 960
    .local v2, e:Ljava/lang/NullPointerException;
    goto :goto_7

    .line 961
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_2d
    move-exception v2

    .line 962
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_7

    .line 974
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    .restart local v1       #count:I
    :cond_2f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 975
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_34
    if-ge v3, p2, :cond_3f

    .line 976
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 977
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 975
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 979
    :cond_3f
    iget-object v5, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v5, p2}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    move v6, v1

    .line 980
    goto :goto_7
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1040
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$MultisetView;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$MultisetView;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractMultimap;->access$200(Lcom/google/common/collect/AbstractMultimap;)I

    move-result v0

    return v0
.end method
