.class public Lcom/android/providers/contacts/CommonNicknameCache;
.super Ljava/lang/Object;
.source "CommonNicknameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupQuery;,
        Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupPreloadQuery;
    }
.end annotation


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mNicknameBloomFilter:Ljava/util/BitSet;

.field private mNicknameClusterCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameClusterCache:Ljava/util/HashMap;

    .line 44
    iput-object p1, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    return-void
.end method

.method private preloadNicknameBloomFilter()V
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    .line 71
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "nickname_lookup"

    sget-object v2, Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupPreloadQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 75
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_18
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 76
    .local v8, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1d
    if-ge v11, v8, :cond_35

    .line 77
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 78
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 79
    .local v12, normalizedName:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v10

    .line 80
    .local v10, hashCode:I
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    and-int/lit16 v1, v10, 0x1fff

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_39

    .line 76
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    .line 83
    .end local v10           #hashCode:I
    .end local v12           #normalizedName:Ljava/lang/String;
    :cond_35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 85
    return-void

    .line 83
    .end local v8           #count:I
    .end local v11           #i:I
    :catchall_39
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter "normalizedName"

    .prologue
    const/4 v5, 0x0

    .line 91
    iget-object v4, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    if-nez v4, :cond_8

    .line 92
    invoke-direct {p0}, Lcom/android/providers/contacts/CommonNicknameCache;->preloadNicknameBloomFilter()V

    .line 95
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 96
    .local v2, hashCode:I
    iget-object v4, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameBloomFilter:Ljava/util/BitSet;

    and-int/lit16 v6, v2, 0x1fff

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 119
    :goto_16
    return-object v5

    .line 101
    :cond_17
    const/4 v1, 0x0

    .line 102
    .local v1, clusters:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameClusterCache:Ljava/util/HashMap;

    monitor-enter v6

    .line 103
    :try_start_1b
    iget-object v4, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameClusterCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 104
    iget-object v4, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameClusterCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 105
    .local v3, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    if-nez v3, :cond_32

    .line 106
    monitor-exit v6

    goto :goto_16

    .line 110
    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :catchall_2f
    move-exception v4

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_2f

    throw v4

    .line 108
    .restart local v3       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 110
    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :cond_3a
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_2f

    .line 112
    if-nez v1, :cond_4d

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->loadNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 114
    if-nez v1, :cond_4f

    move-object v3, v5

    .line 115
    .restart local v3       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :goto_44
    iget-object v5, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameClusterCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 116
    :try_start_47
    iget-object v4, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mNicknameClusterCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_55

    .end local v3           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :cond_4d
    move-object v5, v1

    .line 119
    goto :goto_16

    .line 114
    :cond_4f
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    goto :goto_44

    .line 117
    .restart local v3       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :catchall_55
    move-exception v4

    :try_start_56
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v4
.end method

.method protected loadNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .parameter "normalizedName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 133
    const/4 v8, 0x0

    .line 134
    .local v8, clusters:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/CommonNicknameCache;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "nickname_lookup"

    sget-object v2, Lcom/android/providers/contacts/CommonNicknameCache$NicknameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 138
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_16
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 139
    .local v9, count:I
    if-lez v9, :cond_2e

    .line 140
    new-array v8, v9, [Ljava/lang/String;

    .line 141
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1f
    if-ge v11, v9, :cond_2e

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 143
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_32

    .line 141
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 147
    .end local v11           #i:I
    :cond_2e
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 149
    return-object v8

    .line 147
    .end local v9           #count:I
    :catchall_32
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method
