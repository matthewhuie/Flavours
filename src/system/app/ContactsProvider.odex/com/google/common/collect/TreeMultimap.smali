.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedSetMultimap;
.source "TreeMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0, v0}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/Comparator",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    .local p1, keyComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    .local p2, valueComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TV;>;"
    if-nez p1, :cond_f

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedSetMultimap;-><init>(Ljava/util/Map;)V

    .line 127
    iput-object p1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 128
    iput-object p2, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    .line 129
    return-void

    .line 124
    :cond_f
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_7
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    .line 202
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultimap;->setMap(Ljava/util/Map;)V

    .line 203
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;)V

    .line 204
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 191
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 193
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 194
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Set;
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_9
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter "x0"

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public keyComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/google/common/collect/TreeMultimap;,"Lcom/google/common/collect/TreeMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    return-object v0
.end method
