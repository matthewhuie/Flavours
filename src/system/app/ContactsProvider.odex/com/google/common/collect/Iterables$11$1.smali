.class Lcom/google/common/collect/Iterables$11$1;
.super Ljava/lang/Object;
.source "Iterables.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables$11;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Iterables$11;

.field final synthetic val$listIter:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Iterables$11;Ljava/util/ListIterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/google/common/collect/Iterables$11$1;->this$0:Lcom/google/common/collect/Iterables$11;

    iput-object p2, p0, Lcom/google/common/collect/Iterables$11$1;->val$listIter:Ljava/util/ListIterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11$1;->val$listIter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11$1;->val$listIter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/common/collect/Iterables$11$1;->val$listIter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 703
    return-void
.end method
