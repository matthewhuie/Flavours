.class Lcom/google/common/collect/AbstractBiMap$KeySet;
.super Lcom/google/common/collect/ForwardingSet;
.source "AbstractBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractBiMap;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractBiMap;Lcom/google/common/collect/AbstractBiMap$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;-><init>(Lcom/google/common/collect/AbstractBiMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 170
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    .line 171
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 164
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 164
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v1}, Lcom/google/common/collect/AbstractBiMap;->access$200(Lcom/google/common/collect/AbstractBiMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 191
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/AbstractBiMap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractBiMap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractBiMap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 174
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractBiMap$KeySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 175
    const/4 v0, 0x0

    .line 178
    :goto_7
    return v0

    .line 177
    :cond_8
    iget-object v0, p0, Lcom/google/common/collect/AbstractBiMap$KeySet;->this$0:Lcom/google/common/collect/AbstractBiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$300(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    .local p1, keysToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lcom/google/common/collect/AbstractBiMap$KeySet;,"Lcom/google/common/collect/AbstractBiMap<TK;TV;>.KeySet;"
    .local p1, keysToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractBiMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
