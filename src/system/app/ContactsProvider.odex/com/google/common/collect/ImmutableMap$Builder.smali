.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 166
    .local p0, this:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:Ljava/util/List;

    .line 166
    return-void
.end method

.method private static fromEntryList(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 205
    .local v1, size:I
    packed-switch v1, :pswitch_data_2c

    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 213
    .local v0, entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v2, v0}, Lcom/google/common/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    .end local v0           #entryArray:[Ljava/util/Map$Entry;,"[Ljava/util/Map$Entry<**>;"
    :goto_18
    return-object v2

    .line 207
    :pswitch_19
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    goto :goto_18

    .line 209
    :pswitch_1e
    new-instance v3, Lcom/google/common/collect/SingletonImmutableMap;

    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v3, v2}, Lcom/google/common/collect/SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    move-object v2, v3

    goto :goto_18

    .line 205
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->fromEntryList(Ljava/util/List;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method
