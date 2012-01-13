.class Lcom/google/common/base/Predicates$InstanceOfPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceOfPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/common/base/Predicates$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$InstanceOfPredicate;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/google/common/base/Platform;->isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 391
    instance-of v2, p1, Lcom/google/common/base/Predicates$InstanceOfPredicate;

    if-eqz v2, :cond_f

    move-object v0, p1

    .line 392
    check-cast v0, Lcom/google/common/base/Predicates$InstanceOfPredicate;

    .line 393
    .local v0, that:Lcom/google/common/base/Predicates$InstanceOfPredicate;
    iget-object v2, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    .line 395
    .end local v0           #that:Lcom/google/common/base/Predicates$InstanceOfPredicate;
    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsInstanceOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$InstanceOfPredicate;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
