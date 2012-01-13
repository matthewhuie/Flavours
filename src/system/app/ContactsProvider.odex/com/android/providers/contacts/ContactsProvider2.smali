.class public Lcom/android/providers/contacts/ContactsProvider2;
.super Lcom/android/providers/contacts/AbstractContactsProvider;
.source "ContactsProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupByDisplayNameQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;,
        Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;,
        Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;,
        Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;
    }
.end annotation


# static fields
.field private static final DISTINCT_DATA_PROHIBITING_COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROJECTION_GROUP_ID:[Ljava/lang/String;

.field private static final SOCIAL_STREAM_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERBOSE_LOGGING:Z

.field private static final sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsProjectionWithSnippetMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sCountProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataSipLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDataUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDistinctDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sDistinctDataSipLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sGroupsSummaryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sGroupsSummaryProjectionMapWithGroupCountPerAccount:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sRawEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sSipLookupColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sSnippetColumns:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStatusUpdatesProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStreamItemPhotosProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStreamItemsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStrequentFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStrequentPhoneOnlyFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStrequentPhoneOnlyStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sStrequentStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

.field private static final sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountUpdateListenerRegistered:Z

.field private mAccountWritability:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveDb:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final mAggregator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

.field private mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

.field private mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

.field private mContactTransactionContext:Lcom/android/providers/contacts/TransactionContext;

.field private mContactsAccountCount:I

.field private mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDataRowHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/DataRowHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mDbHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryCacheValid:Z

.field private mEstimatedStorageRequirement:J

.field private mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private mGroupIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInProfileMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPhotoCleanup:J

.field private mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

.field private mMaxDisplayPhotoDim:I

.field private mMaxThumbnailPhotoDim:I

.field private mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mOkToOpenAccess:Z

.field private final mPhotoStore:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/PhotoStore;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

.field private mPreAuthorizedUriDuration:J

.field private mPreAuthorizedUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileAggregator:Lcom/android/providers/contacts/ContactAggregator;

.field private mProfileDataRowHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/DataRowHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

.field private mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;

.field private mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

.field private mProfileTransactionContext:Lcom/android/providers/contacts/TransactionContext;

.field private mProviderStatus:I

.field private mProviderStatusUpdateNeeded:Z

.field private mRandom:Ljava/security/SecureRandom;

.field private volatile mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSyncToNetwork:Z

.field private final mTransactionContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/TransactionContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransactionHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;

.field private mVisibleTouched:Z

.field private volatile mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

.field private sIsPhone:Z

.field private sIsPhoneInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x5208

    const/16 v7, 0x7d7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 181
    const-string v0, "ContactsProvider"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    .line 229
    new-instance v0, Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    .line 366
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    .line 368
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    const/16 v1, 0x7d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    const/16 v1, 0x1b58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "presence_data_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    const/16 v1, 0x5209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stream_item_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    const/16 v1, 0x520b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stream_item_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x3ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x7d8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x5209

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x520a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x520b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x520c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->SOCIAL_STREAM_URIS:Ljava/util/List;

    .line 417
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "groups._id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->PROJECTION_GROUP_ID:[Ljava/lang/String;

    .line 539
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v5

    const-string v1, "name_raw_contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type_and_data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "name_verified"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->DISTINCT_DATA_PROHIBITING_COLUMNS:[Ljava/lang/String;

    .line 553
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_source"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "in_visible_group"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "lookup"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name_style"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_file_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_thumb_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 575
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 592
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "snippet"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sSnippetColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 596
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type_and_data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_verified"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 607
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_restricted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 614
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data7"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data8"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data9"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data10"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data11"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data12"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data13"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data14"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_primary"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_super_primary"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 642
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_presence"

    const-string v2, "agg_presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_chat_capability"

    const-string v2, "agg_presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status"

    const-string v2, "contacts_status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_ts"

    const-string v2, "contacts_status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_res_package"

    const-string v2, "contacts_status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_label"

    const-string v2, "contacts_status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_status_icon"

    const-string v2, "contacts_status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 659
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mode"

    const-string v2, "presence.mode"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "chat_capability"

    const-string v2, "presence.chat_capability"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status"

    const-string v2, "status_updates.status"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_ts"

    const-string v2, "status_updates.status_ts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_res_package"

    const-string v2, "status_updates.status_res_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_label"

    const-string v2, "status_updates.status_label"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_icon"

    const-string v2, "status_updates.status_icon"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 670
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sCountProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 675
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 685
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sSnippetColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 691
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 696
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-string v2, "SUM(data_usage_stat.times_used)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 706
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data1"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data2"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data3"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentPhoneOnlyStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 721
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_used_sort"

    const-string v2, "data_usage_stat.times_used"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_user_profile"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentPhoneOnlyFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 732
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_display_name"

    const-string v2, "display_name || \'.vcf\'"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_size"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 739
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name_source"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "phonetic_name_style"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_key_alt"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 762
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 775
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactSyncColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 792
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "label"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "normalized_number"

    const-string v2, "NULL"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sSipLookupColumns:Lcom/android/providers/contacts/ProjectionMap;

    .line 800
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 814
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sSipLookupColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataSipLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 820
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "MIN(_id)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactPresenceColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 831
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sSipLookupColumns:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataSipLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 837
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "contacts_view._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "lookup"

    const-string v2, "contacts_view.lookup"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "display_name"

    const-string v2, "contacts_view.display_name"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    const-string v2, "contacts_view.last_time_contacted"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "times_contacted"

    const-string v2, "contacts_view.times_contacted"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "starred"

    const-string v2, "contacts_view.starred"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "in_visible_group"

    const-string v2, "contacts_view.in_visible_group"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_id"

    const-string v2, "contacts_view.photo_id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    const-string v2, "contacts_view.photo_uri"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_thumb_uri"

    const-string v2, "contacts_view.photo_thumb_uri"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_ringtone"

    const-string v2, "contacts_view.custom_ringtone"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "has_phone_number"

    const-string v2, "contacts_view.has_phone_number"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    const-string v2, "contacts_view.send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "number"

    const-string v2, "data1"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "data2"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "label"

    const-string v2, "data3"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "normalized_number"

    const-string v2, "data4"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 858
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type_and_data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "dirty"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "title_res"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "system_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "auto_add"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 891
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_count"

    const-string v2, "ifnull(group_member_count, 0)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(contacts._id) FROM contacts INNER JOIN raw_contacts ON (raw_contacts.contact_id=contacts._id) INNER JOIN data ON (data.data1=groups._id AND data.raw_contact_id=raw_contacts._id AND data.mimetype_id=(SELECT _id FROM mimetypes WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\')) WHERE has_phone_number)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 902
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->addAll(Lcom/android/providers/contacts/ProjectionMap;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "group_count_per_account"

    const-string v2, "(SELECT COUNT(*) FROM view_groups WHERE (account_name=groups.account_name AND account_type=groups.account_type AND deleted=0 AND favorites=0 AND auto_add=0) GROUP BY account_name, account_type)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMapWithGroupCountPerAccount:Lcom/android/providers/contacts/ProjectionMap;

    .line 922
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "agg_exceptions._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 930
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "ungrouped_visible"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "should_sync"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "any_unsynced"

    const-string v2, "(CASE WHEN MIN(should_sync,(SELECT (CASE WHEN MIN(should_sync) IS NULL THEN 1 ELSE MIN(should_sync) END) FROM groups WHERE groups.account_name=settings.account_name AND groups.account_type=settings.account_type AND ((groups.data_set IS NULL AND settings.data_set IS NULL) OR (groups.data_set=settings.data_set))))=0 THEN 1 ELSE 0 END)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_count"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0))"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "summ_phones"

    const-string v2, "(SELECT COUNT(*) FROM (SELECT 1 FROM settings LEFT OUTER JOIN raw_contacts ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id) WHERE has_phone_number GROUP BY settings.account_name,settings.account_type,contact_id HAVING COUNT(data.data1) == 0))"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 973
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "presence_raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "presence_data_id"

    const-string v2, "data._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "im_account"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "im_handle"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "protocol"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "custom_protocol"

    const-string v2, "(CASE WHEN custom_protocol=\'\' THEN NULL ELSE custom_protocol END)"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "chat_capability"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_ts"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_icon"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "status_label"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStatusUpdatesProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 995
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "contact_lookup"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_source_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStreamItemsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 1016
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "stream_item_photos._id"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "raw_contact_source_id"

    const-string v2, "raw_contacts.sourceid"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "sort_index"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_file_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photo_uri"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'||\'/\'||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "photo_file_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "filesize"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync1"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync3"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "stream_item_photo_sync4"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStreamItemPhotosProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 1035
    invoke-static {}, Lcom/android/providers/contacts/ProjectionMap;->builder()Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "typeResourceId"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "authority"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "accountType"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "exportSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "shortcutSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "photoSupport"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->build()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 1054
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1084
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    .line 1085
    const-string v1, "com.android.contacts"

    const-string v2, "contacts"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1086
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1087
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/data"

    const/16 v3, 0x3ec

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1088
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/entities"

    const/16 v3, 0x3fb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1089
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/suggestions"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1091
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/suggestions/*"

    const/16 v3, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1093
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/photo"

    const/16 v3, 0x3f1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1094
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/display_photo"

    const/16 v3, 0x3f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1096
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#/stream_items"

    const/16 v3, 0x3fe

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1098
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/filter"

    const/16 v3, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1099
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/filter/*"

    const/16 v3, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1100
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*"

    const/16 v3, 0x3ea

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1101
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/data"

    const/16 v3, 0x3f9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1102
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/photo"

    const/16 v3, 0x3f2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1104
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#"

    const/16 v3, 0x3eb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1105
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/data"

    const/16 v3, 0x3fa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1107
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/photo"

    const/16 v3, 0x3f3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1109
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/display_photo"

    const/16 v3, 0x3f5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1111
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/display_photo"

    const/16 v3, 0x3f6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1113
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/entities"

    const/16 v3, 0x3fc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/entities"

    const/16 v3, 0x3fd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1117
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/stream_items"

    const/16 v3, 0x3ff

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1119
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/lookup/*/#/stream_items"

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1121
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/as_vcard/*"

    const/16 v3, 0x3f7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1122
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/as_multi_vcard/*"

    const/16 v3, 0x3f8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1124
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/strequent/"

    const/16 v3, 0x3ee

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1125
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/strequent/filter/*"

    const/16 v3, 0x3ef

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1127
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/group/*"

    const/16 v3, 0x3f0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1128
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/frequent"

    const/16 v3, 0x401

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1130
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts"

    const/16 v3, 0x7d2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1131
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#"

    const/16 v3, 0x7d3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1132
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/data"

    const/16 v3, 0x7d4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1133
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/display_photo"

    const/16 v3, 0x7d6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1135
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/entity"

    const/16 v3, 0x7d5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1136
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/stream_items"

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1138
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contacts/#/stream_items/#"

    const/16 v3, 0x7d8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1141
    const-string v1, "com.android.contacts"

    const-string v2, "raw_contact_entities"

    const/16 v3, 0x3a99

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1143
    const-string v1, "com.android.contacts"

    const-string v2, "data"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1144
    const-string v1, "com.android.contacts"

    const-string v2, "data/#"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1145
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones"

    const/16 v3, 0xbba

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1146
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/#"

    const/16 v3, 0xbbb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1147
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/filter"

    const/16 v3, 0xbbc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1148
    const-string v1, "com.android.contacts"

    const-string v2, "data/phones/filter/*"

    const/16 v3, 0xbbc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1149
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails"

    const/16 v3, 0xbbd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1150
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/#"

    const/16 v3, 0xbbe

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1151
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/lookup"

    const/16 v3, 0xbbf

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1152
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/lookup/*"

    const/16 v3, 0xbbf

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1153
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/filter"

    const/16 v3, 0xbc0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1154
    const-string v1, "com.android.contacts"

    const-string v2, "data/emails/filter/*"

    const/16 v3, 0xbc0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1155
    const-string v1, "com.android.contacts"

    const-string v2, "data/postals"

    const/16 v3, 0xbc1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1156
    const-string v1, "com.android.contacts"

    const-string v2, "data/postals/#"

    const/16 v3, 0xbc2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1158
    const-string v1, "com.android.contacts"

    const-string v2, "data/usagefeedback/*"

    const/16 v3, 0x4e21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1160
    const-string v1, "com.android.contacts"

    const-string v2, "groups"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1161
    const-string v1, "com.android.contacts"

    const-string v2, "groups/#"

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1162
    const-string v1, "com.android.contacts"

    const-string v2, "groups_summary"

    const/16 v3, 0x2713

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1164
    const-string v1, "com.android.contacts"

    const-string v2, "syncstate"

    const/16 v3, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1165
    const-string v1, "com.android.contacts"

    const-string v2, "syncstate/#"

    const/16 v3, 0x2af9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1167
    const-string v1, "com.android.contacts"

    const-string v2, "profile/syncstate"

    const/16 v3, 0x2afa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1169
    const-string v1, "com.android.contacts"

    const-string v2, "profile/syncstate/#"

    const/16 v3, 0x2afb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1173
    const-string v1, "com.android.contacts"

    const-string v2, "phone_lookup/*"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1174
    const-string v1, "com.android.contacts"

    const-string v2, "aggregation_exceptions"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1176
    const-string v1, "com.android.contacts"

    const-string v2, "aggregation_exceptions/*"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1179
    const-string v1, "com.android.contacts"

    const-string v2, "settings"

    const/16 v3, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1181
    const-string v1, "com.android.contacts"

    const-string v2, "status_updates"

    const/16 v3, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1182
    const-string v1, "com.android.contacts"

    const-string v2, "status_updates/#"

    const/16 v3, 0x1b59

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1184
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_query"

    const/16 v3, 0x2ee1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1186
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_query/*"

    const/16 v3, 0x2ee1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1188
    const-string v1, "com.android.contacts"

    const-string v2, "search_suggest_shortcut/*"

    const/16 v3, 0x2ee2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1191
    const-string v1, "com.android.contacts"

    const-string v2, "provider_status"

    const/16 v3, 0x3e81

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1193
    const-string v1, "com.android.contacts"

    const-string v2, "directories"

    const/16 v3, 0x4269

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1194
    const-string v1, "com.android.contacts"

    const-string v2, "directories/#"

    const/16 v3, 0x426a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1196
    const-string v1, "com.android.contacts"

    const-string v2, "complete_name"

    const/16 v3, 0x4650

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1198
    const-string v1, "com.android.contacts"

    const-string v2, "profile"

    const/16 v3, 0x4a38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1199
    const-string v1, "com.android.contacts"

    const-string v2, "profile/entities"

    const/16 v3, 0x4a39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1200
    const-string v1, "com.android.contacts"

    const-string v2, "profile/data"

    const/16 v3, 0x4a3a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1201
    const-string v1, "com.android.contacts"

    const-string v2, "profile/data/#"

    const/16 v3, 0x4a3b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1202
    const-string v1, "com.android.contacts"

    const-string v2, "profile/photo"

    const/16 v3, 0x4a43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1203
    const-string v1, "com.android.contacts"

    const-string v2, "profile/display_photo"

    const/16 v3, 0x4a44

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1204
    const-string v1, "com.android.contacts"

    const-string v2, "profile/as_vcard"

    const/16 v3, 0x4a3c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1205
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts"

    const/16 v3, 0x4a3d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1206
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts/#"

    const/16 v3, 0x4a3e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1208
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts/#/data"

    const/16 v3, 0x4a3f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1210
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contacts/#/entity"

    const/16 v3, 0x4a40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1212
    const-string v1, "com.android.contacts"

    const-string v2, "profile/status_updates"

    const/16 v3, 0x4a41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1214
    const-string v1, "com.android.contacts"

    const-string v2, "profile/raw_contact_entities"

    const/16 v3, 0x4a42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1217
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items"

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1218
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/photo"

    const/16 v3, 0x5209

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1219
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/#"

    const/16 v3, 0x520a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1220
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/#/photo"

    const/16 v3, 0x520b

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1221
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items/#/photo/#"

    const/16 v3, 0x520c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1223
    const-string v1, "com.android.contacts"

    const-string v2, "stream_items_limit"

    const/16 v3, 0x520d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1225
    const-string v1, "com.android.contacts"

    const-string v2, "display_photo/#"

    const/16 v3, 0x55f0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1226
    const-string v1, "com.android.contacts"

    const-string v2, "photo_dimensions"

    const/16 v3, 0x55f1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1229
    const-string v1, "call"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const-string v1, "long_text"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    const-string v1, "short_text"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataUsageTypeMap:Ljava/util/Map;

    .line 1235
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;-><init>()V

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    .line 1070
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    .line 1071
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    .line 1072
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    .line 1246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    .line 1247
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    .line 1264
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    .line 1300
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    .line 1306
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionHolder:Ljava/lang/ThreadLocal;

    .line 1310
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInProfileMode:Ljava/lang/ThreadLocal;

    .line 1318
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    .line 1325
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    .line 1331
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPhotoStore:Ljava/lang/ThreadLocal;

    .line 1338
    new-instance v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/TransactionContext;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    .line 1339
    new-instance v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/TransactionContext;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    .line 1340
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    .line 1347
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUris:Ljava/util/Map;

    .line 1350
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRandom:Ljava/security/SecureRandom;

    .line 1357
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    .line 1358
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    .line 1360
    iput v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 1362
    iput-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    .line 1366
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mOkToOpenAccess:Z

    .line 1368
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 1378
    iput-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLastPhotoCleanup:J

    .line 7560
    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/contacts/ContactsProvider2;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxDisplayPhotoDim:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/providers/contacts/ContactsProvider2;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxThumbnailPhotoDim:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/lang/ThreadLocal;
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/CommonNicknameCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    return-object v0
.end method

.method private addAutoAddMembership(J)V
    .registers 6
    .parameter "rawContactId"

    .prologue
    .line 2631
    const-string v1, "raw_contacts._id=? AND groups.account_name=raw_contacts.account_name AND groups.account_type=raw_contacts.account_type AND (groups.data_set=raw_contacts.data_set OR groups.data_set IS NULL AND raw_contacts.data_set IS NULL) AND auto_add != 0"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->findGroupByRawContactId(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    .line 2633
    .local v0, groupId:Ljava/lang/Long;
    if-eqz v0, :cond_f

    .line 2634
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertDataGroupMembership(JJ)V

    .line 2636
    :cond_f
    return-void
.end method

.method private addDeferredSnippetingExtra(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 4887
    instance-of v2, p1, Landroid/database/AbstractCursor;

    if-eqz v2, :cond_1e

    .line 4888
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4889
    .local v1, oldExtras:Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4890
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_12

    .line 4891
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4893
    :cond_12
    const-string v2, "deferred_snippeting"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v2, p1

    .line 4894
    check-cast v2, Landroid/database/AbstractCursor;

    invoke-virtual {v2, v0}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    .line 4896
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #oldExtras:Landroid/os/Bundle;
    :cond_1e
    return-object p1
.end method

.method private addSnippetExtrasToCursor(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4850
    const-string v0, "snippet"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_c

    .line 4883
    :cond_b
    :goto_b
    return-object p2

    .line 4855
    :cond_c
    const/4 v0, 0x0

    .line 4856
    const-string v1, "snippet_args"

    invoke-static {p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4858
    if-eqz v1, :cond_1b

    .line 4859
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4862
    :cond_1b
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 4863
    if-eqz v0, :cond_63

    array-length v2, v0

    if-lez v2, :cond_63

    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 4865
    :goto_27
    if-eqz v0, :cond_66

    array-length v2, v0

    if-le v2, v3, :cond_66

    aget-object v2, v0, v3

    .line 4867
    :goto_2e
    if-eqz v0, :cond_69

    array-length v2, v0

    if-le v2, v4, :cond_69

    aget-object v2, v0, v4

    .line 4869
    :goto_35
    if-eqz v0, :cond_3f

    array-length v2, v0

    if-le v2, v5, :cond_3f

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4873
    :cond_3f
    instance-of v0, p2, Landroid/database/AbstractCursor;

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->deferredSnippetingRequested(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4874
    invoke-interface {p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4875
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4876
    if-eqz v0, :cond_57

    .line 4877
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4879
    :cond_57
    const-string v0, "deferred_snippeting_query"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 4881
    check-cast v0, Landroid/database/AbstractCursor;

    invoke-virtual {v0, v2}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_b

    .line 4863
    :cond_63
    const-string v2, "["

    goto :goto_27

    .line 4865
    :cond_66
    const-string v2, "]"

    goto :goto_2e

    .line 4867
    :cond_69
    const-string v2, "..."

    goto :goto_35
.end method

.method private appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 6848
    const-string v0, "account_name"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6849
    const-string v0, "account_type"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6850
    const-string v0, "data_set"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6852
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v0, v4

    .line 6853
    if-eqz v0, :cond_31

    .line 6855
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v0, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6861
    :cond_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_84

    const/4 v0, 0x1

    .line 6862
    :goto_38
    if-eqz v0, :cond_a2

    .line 6863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6867
    if-nez v3, :cond_86

    .line 6868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6873
    :goto_80
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 6877
    :goto_83
    return-void

    .line 6861
    :cond_84
    const/4 v0, 0x0

    goto :goto_38

    .line 6870
    :cond_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    .line 6875
    :cond_a2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_83
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 6880
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6881
    const-string v0, "account_type"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6882
    const-string v0, "data_set"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6884
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v0, v4

    .line 6885
    if-eqz v0, :cond_31

    .line 6887
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6893
    :cond_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8f

    const/4 v0, 0x1

    .line 6894
    :goto_38
    if-eqz v0, :cond_8e

    .line 6895
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "account_type"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6899
    if-nez v3, :cond_91

    .line 6900
    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6905
    :goto_77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 6906
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6907
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6908
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6910
    :cond_8a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6912
    :cond_8e
    return-object p2

    .line 6893
    :cond_8f
    const/4 v0, 0x0

    goto :goto_38

    .line 6902
    :cond_91
    const-string v1, " AND data_set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77
.end method

.method private appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6820
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_presence"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contact_chat_capability"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 6822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN agg_presence ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "agg_presence.presence_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6826
    :cond_43
    return-void
.end method

.method private appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6785
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "contact_status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contact_status_res_package"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "contact_status_icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "contact_status_label"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "contact_status_ts"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 6791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN status_updates contacts_status_updates ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts_status_updates.status_update_data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6796
    :cond_52
    return-void
.end method

.method private appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6830
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "chat_capability"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 6831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN presence ON (presence_data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6834
    :cond_37
    return-void
.end method

.method private appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6800
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "status"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "status_res_package"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "status_icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "status_label"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "status_ts"

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 6806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN status_updates ON (status_updates.status_update_data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6810
    :cond_46
    return-void
.end method

.method private appendDataUsageStatJoin(Ljava/lang/StringBuilder;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " LEFT OUTER JOIN data_usage_stat ON (data_usage_stat.data_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_usage_stat.usage_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6816
    return-void
.end method

.method private appendIds(Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .registers 8
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2331
    .local p2, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2332
    .local v1, id:J
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2335
    .end local v1           #id:J
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2336
    return-void
.end method

.method private appendLocalDirectorySelectionIfNeeded(Landroid/database/sqlite/SQLiteQueryBuilder;J)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 6837
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_d

    .line 6838
    const-string v1, "_id IN default_directory"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 6844
    :goto_c
    return v0

    .line 6840
    :cond_d
    const-wide/16 v1, 0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_19

    .line 6841
    const-string v1, "_id NOT IN default_directory"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 6844
    :cond_19
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "projection"
    .parameter "arg"

    .prologue
    const/4 v3, 0x0

    .line 7670
    if-nez p1, :cond_5

    .line 7671
    const/4 v1, 0x0

    .line 7677
    :goto_4
    return-object v1

    .line 7673
    :cond_5
    array-length v0, p1

    .line 7674
    .local v0, length:I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 7675
    .local v1, newProjection:[Ljava/lang/String;
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7676
    aput-object p2, v1, v0

    goto :goto_4
.end method

.method private appendSearchIndexJoin(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 6480
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->snippetNeeded([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 6482
    const-string v0, "snippet_args"

    invoke-static {p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6484
    if-eqz v0, :cond_5a

    .line 6485
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 6488
    :goto_1a
    if-eqz v0, :cond_42

    array-length v1, v0

    if-lez v1, :cond_42

    aget-object v4, v0, v9

    .line 6490
    :goto_21
    if-eqz v0, :cond_45

    array-length v1, v0

    if-le v1, v3, :cond_45

    aget-object v5, v0, v3

    .line 6492
    :goto_28
    if-eqz v0, :cond_48

    array-length v1, v0

    if-le v1, v2, :cond_48

    aget-object v6, v0, v2

    .line 6494
    :goto_2f
    if-eqz v0, :cond_4b

    array-length v1, v0

    if-le v1, v7, :cond_4b

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_3a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v8, p5

    .line 6497
    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 6503
    :goto_41
    return-void

    .line 6488
    :cond_42
    const-string v4, "["

    goto :goto_21

    .line 6490
    :cond_45
    const-string v5, "]"

    goto :goto_28

    .line 6492
    :cond_48
    const-string v6, "..."

    goto :goto_2f

    .line 6494
    :cond_4b
    const/16 v7, -0xa

    goto :goto_3a

    :cond_4e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, v9

    move-object v5, v4

    move-object v6, v4

    move v7, v9

    move v8, v9

    .line 6501
    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_41

    :cond_5a
    move-object v0, v4

    goto :goto_1a
.end method

.method private appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6657
    const-string v0, "snippet(search_index,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6658
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6659
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6660
    invoke-static {p1, p3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6661
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6662
    invoke-static {p1, p4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6665
    const-string v0, ",1,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6666
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6667
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6668
    return-void
.end method

.method private buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .parameter

    .prologue
    .line 7347
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 7349
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 7351
    const-string v1, "contactAssetFile"

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    array-length v0, v0

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    .line 7356
    :goto_13
    return-object v0

    .line 7354
    :catch_14
    move-exception v0

    .line 7355
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem writing stream into an ParcelFileDescriptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7356
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private bundleLetterCountExtras(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6042
    instance-of v1, p1, Landroid/database/AbstractCursor;

    if-nez v1, :cond_c

    .line 6043
    const-string v1, "ContactsProvider"

    const-string v2, "Unable to bundle extras.  Cursor is not AbstractCursor."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6134
    :goto_b
    return-object p1

    .line 6051
    :cond_c
    const-string v1, ""

    .line 6052
    if-eqz p6, :cond_11b

    .line 6053
    const/16 v2, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 6054
    const/4 v2, -0x1

    if-eq v3, v2, :cond_2a

    .line 6055
    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6056
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 p6, v2

    .line 6064
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6065
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 6066
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SUBSTR(%1$s,1,1)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p6, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6068
    const-string v5, "letter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "letter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6072
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 6073
    const-string p7, "*"

    .line 6083
    :cond_6a
    const-string v5, "title"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GET_PHONEBOOK_INDEX("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "title"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6086
    const-string v2, "count"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "COUNT("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6088
    invoke-virtual {p3, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6090
    sget-object v3, Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "letter COLLATE PHONEBOOK"

    const/4 v7, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "letter COLLATE PHONEBOOK"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p3

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 6095
    :try_start_e9
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 6096
    new-array v5, v8, [Ljava/lang/String;

    .line 6097
    new-array v4, v8, [I

    .line 6098
    const/4 v3, 0x0

    .line 6099
    const/4 v2, 0x0

    .line 6104
    const/4 v1, 0x0

    move v6, v1

    move-object v1, v2

    :goto_f6
    if-ge v6, v8, :cond_128

    .line 6105
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 6106
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6107
    const/4 v9, 0x2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 6108
    if-eqz v3, :cond_10d

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11f

    .line 6109
    :cond_10d
    aput-object v2, v5, v3

    .line 6110
    aput v9, v4, v3
    :try_end_111
    .catchall {:try_start_e9 .. :try_end_111} :catchall_153

    .line 6111
    add-int/lit8 v1, v3, 0x1

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    .line 6104
    :goto_116
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    goto :goto_f6

    .line 6061
    :cond_11b
    const-string p6, "sort_key"

    goto/16 :goto_2a

    .line 6113
    :cond_11f
    add-int/lit8 v2, v3, -0x1

    :try_start_121
    aget v10, v4, v2

    add-int/2addr v9, v10

    aput v9, v4, v2

    move v2, v3

    goto :goto_116

    .line 6117
    :cond_128
    if-ge v3, v8, :cond_158

    .line 6118
    new-array v2, v3, [Ljava/lang/String;

    .line 6119
    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6122
    new-array v1, v3, [I

    .line 6123
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6127
    :goto_138
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 6128
    const-string v4, "address_book_index_titles"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6129
    const-string v2, "address_book_index_counts"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 6131
    move-object v0, p1

    check-cast v0, Landroid/database/AbstractCursor;

    move-object v1, v0

    invoke-virtual {v1, v3}, Landroid/database/AbstractCursor;->setExtras(Landroid/os/Bundle;)V
    :try_end_14e
    .catchall {:try_start_121 .. :try_end_14e} :catchall_153

    .line 6134
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    :catchall_153
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_158
    move-object v1, v4

    move-object v2, v5

    goto :goto_138
.end method

.method private changeLocaleInBackground()V
    .registers 4

    .prologue
    .line 1679
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1680
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1681
    .local v1, profileDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1682
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1684
    :try_start_12
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initForDefaultLocale()V

    .line 1685
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1686
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_25

    .line 1688
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1689
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1692
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateLocaleInBackground()V

    .line 1693
    return-void

    .line 1688
    :catchall_25
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1689
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private cleanUpOldStreamItems(JJ)J
    .registers 19
    .parameter "rawContactId"
    .parameter "insertedStreamItemId"

    .prologue
    .line 2992
    move-wide/from16 v9, p3

    .line 2993
    .local v9, postCleanupInsertedStreamId:J
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "raw_contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp DESC, _id DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2997
    .local v8, c:Landroid/database/Cursor;
    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_54

    move-result v11

    .line 2998
    .local v11, streamItemCount:I
    const/4 v0, 0x5

    if-gt v11, v0, :cond_33

    .line 3014
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3016
    .end local p3
    :goto_32
    return-wide p3

    .line 3002
    .restart local p3
    :cond_33
    :try_start_33
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 3003
    :goto_36
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_59

    .line 3004
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3005
    .local v12, streamItemId:J
    cmp-long v0, p3, v12

    if-nez v0, :cond_48

    .line 3007
    const-wide/16 v9, 0x0

    .line 3009
    :cond_48
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItem(J)I

    .line 3010
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_54

    goto :goto_36

    .line 3014
    .end local v11           #streamItemCount:I
    .end local v12           #streamItemId:J
    :catchall_54
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v11       #streamItemCount:I
    :cond_59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-wide/from16 p3, v9

    .line 3016
    goto :goto_32
.end method

.method private completeName(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 7612
    if-nez p2, :cond_9

    .line 7613
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    .line 7616
    :cond_9
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7617
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;

    .line 7620
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const-string v5, "data4"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "data2"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "data5"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "data3"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "data6"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "phonetic_name"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "data9"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "data8"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "data7"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, p1, v3}, Lcom/android/providers/contacts/ContactsProvider2;->copyQueryParamsToContentValues(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 7633
    invoke-virtual {v0, v2, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 7635
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 7636
    array-length v0, p2

    new-array v4, v0, [Ljava/lang/Object;

    move v0, v1

    .line 7637
    :goto_5c
    array-length v1, p2

    if-ge v0, v1, :cond_6a

    .line 7638
    aget-object v1, p2, v0

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v0

    .line 7637
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 7640
    :cond_6a
    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 7641
    return-object v3
.end method

.method private varargs copyQueryParamsToContentValues(Landroid/content/ContentValues;Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 9
    .parameter "values"
    .parameter "uri"
    .parameter "columns"

    .prologue
    .line 7645
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 7646
    .local v1, column:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7647
    .local v4, param:Ljava/lang/String;
    if-eqz v4, :cond_10

    .line 7648
    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7645
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7651
    .end local v1           #column:Ljava/lang/String;
    .end local v4           #param:Ljava/lang/String;
    :cond_13
    return-void
.end method

.method private deferredSnippetingRequested(Landroid/net/Uri;)Z
    .registers 4
    .parameter

    .prologue
    .line 8004
    const-string v0, "deferred_snippeting"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8006
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private deleteContact(JZ)I
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3702
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 3703
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3707
    :goto_25
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3708
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3709
    invoke-direct {p0, v2, v3, p3}, Lcom/android/providers/contacts/ContactsProvider2;->markRawContactAsDeleted(JZ)I
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_34

    goto :goto_25

    .line 3712
    :catchall_34
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3715
    iput-boolean v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 3717
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 16
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 3023
    const/4 v7, 0x0

    .line 3027
    .local v7, count:I
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->inProfileMode()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3030
    .local v1, dataUri:Landroid/net/Uri;
    :goto_f
    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3033
    .local v6, c:Landroid/database/Cursor;
    :cond_19
    :goto_19
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 3034
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3035
    .local v9, rawContactId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3036
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v11

    .line 3037
    .local v11, rowHandler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v11, v0, v2, v6}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    add-int/2addr v7, v0

    .line 3038
    if-nez p3, :cond_19

    .line 3039
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v9, v10}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V
    :try_end_4f
    .catchall {:try_start_19 .. :try_end_4f} :catchall_50

    goto :goto_19

    .line 3043
    .end local v8           #mimeType:Ljava/lang/String;
    .end local v9           #rawContactId:J
    .end local v11           #rowHandler:Lcom/android/providers/contacts/DataRowHandler;
    :catchall_50
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3027
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_55
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_f

    .line 3043
    .restart local v1       #dataUri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_58
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3046
    return v7
.end method

.method private deleteDataGroupMembership(JJ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 2675
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2679
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const-string v3, "mimetype_id=? AND data1=? AND raw_contact_id=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2680
    return-void
.end method

.method private deleteSettings(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3696
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3697
    .local v0, count:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3698
    return v0
.end method

.method private deleteStatusUpdates(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3772
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1c

    .line 3773
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting data from status_updates for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    :cond_1c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "status_updates"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3777
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteStreamItem(J)I
    .registers 9
    .parameter

    .prologue
    .line 3799
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItemPhotos(J)I

    .line 3800
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteStreamItemPhotos(J)I
    .registers 9
    .parameter "streamItemId"

    .prologue
    .line 3817
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_item_photos"

    const-string v2, "stream_item_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private deleteStreamItemPhotos(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3808
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 3809
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccountForStreamItemPhotos(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 3812
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "stream_item_photos"

    invoke-virtual {v1, v2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3784
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 3785
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccountForStreamItems(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3789
    .local v4, streamItemIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3790
    .local v2, streamItemId:J
    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItem(J)I

    goto :goto_c

    .line 3793
    .end local v2           #streamItemId:J
    :cond_20
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3794
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    return v5
.end method

.method private enforceModifyingAccount(Landroid/accounts/Account;J)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2892
    const-string v3, "raw_contacts._id=? AND raw_contacts.account_name=? AND raw_contacts.account_type=?"

    .line 2895
    const-string v6, "raw_contacts._id=? AND raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL"

    .line 2899
    if-eqz p1, :cond_5a

    .line 2900
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "raw_contacts._id"

    aput-object v4, v2, v7

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 2911
    :goto_36
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7b

    .line 2912
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller account does not match raw contact ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_55
    .catchall {:try_start_36 .. :try_end_55} :catchall_55

    .line 2916
    :catchall_55
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2905
    :cond_5a
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "raw_contacts._id"

    aput-object v3, v2, v7

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    move-object v3, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_36

    .line 2916
    :cond_7b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2918
    return-void
.end method

.method private enforceModifyingAccountForStreamItemPhotos(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .parameter "account"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2961
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2962
    .local v9, streamItemPhotoIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2963
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItemPhotos(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 2964
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2968
    .local v8, c:Landroid/database/Cursor;
    :goto_2a
    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2969
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2972
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccount(Landroid/accounts/Account;J)V
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_45

    goto :goto_2a

    .line 2975
    :catchall_45
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2977
    return-object v9
.end method

.method private enforceModifyingAccountForStreamItems(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .parameter "account"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2931
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 2932
    .local v9, streamItemIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2933
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 2934
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v6

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2938
    .local v8, c:Landroid/database/Cursor;
    :goto_2a
    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2939
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2942
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccount(Landroid/accounts/Account;J)V
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_45

    goto :goto_2a

    .line 2945
    :catchall_45
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2947
    return-object v9
.end method

.method private enforceSocialStreamReadPermission(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 2863
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->SOCIAL_STREAM_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->isValidPreAuthorizedUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2865
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_SOCIAL_STREAM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2868
    :cond_22
    return-void
.end method

.method private enforceSocialStreamWritePermission(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 2876
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->SOCIAL_STREAM_URIS:Ljava/util/List;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2877
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SOCIAL_STREAM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    :cond_1c
    return-void
.end method

.method private findGroupByRawContactId(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 13
    .parameter "selection"
    .parameter "rawContactId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2639
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups,raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->PROJECTION_GROUP_ID:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2644
    .local v8, c:Landroid/database/Cursor;
    :try_start_1e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2645
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_35

    move-result-object v5

    .line 2649
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_30
    return-object v5

    :cond_31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_30

    :catchall_35
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findValidAccountsWithDataSets(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/android/providers/contacts/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4754
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4755
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT DISTINCT account_name,account_type,data_set FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4760
    :cond_25
    :goto_25
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 4761
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 4762
    new-instance v0, Lcom/android/providers/contacts/AccountWithDataSet;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_51

    goto :goto_25

    .line 4767
    :catchall_51
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_56
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4769
    return-object v1
.end method

.method private flushTransactionalChanges()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2286
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_c

    .line 2287
    const-string v0, "ContactsProvider"

    const-string v1, "flushTransactionChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getInsertedRawContactIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2291
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2292
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J

    goto :goto_1c

    .line 2296
    :cond_5b
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getDirtyRawContactIds()Ljava/util/Set;

    move-result-object v0

    .line 2297
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_96

    .line 2298
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2299
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "UPDATE raw_contacts SET dirty=1 WHERE _id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendIds(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 2301
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2305
    :cond_96
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getUpdatedRawContactIds()Ljava/util/Set;

    move-result-object v0

    .line 2306
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d1

    .line 2307
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2308
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v2, "UPDATE raw_contacts SET version = version + 1 WHERE _id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendIds(Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 2310
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2315
    :cond_d1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->getUpdatedSyncStates()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2316
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2317
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v5

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v1, v3, v4, v0}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_e1

    .line 2318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to update sync state, does it still exist?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2323
    :cond_11d
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    .line 2324
    return-void
.end method

.method private getAccountPromotionSortOrder(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 7978
    const-string v0, "name_for_primary_account"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7980
    const-string v1, "type_for_primary_account"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7984
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 7985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7986
    const-string v3, "(CASE WHEN account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7987
    invoke-static {v2, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7988
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 7989
    const-string v0, " AND account_type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7990
    invoke-static {v2, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7992
    :cond_2d
    const-string v0, " THEN 0 ELSE 1 END)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7993
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7995
    :goto_36
    return-object v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method

.method private getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 4900
    move-object v0, p1

    .line 4901
    .local v0, c:Landroid/database/Cursor;
    instance-of v1, v0, Landroid/database/CrossProcessCursor;

    if-eqz v1, :cond_8

    .line 4902
    check-cast v0, Landroid/database/CrossProcessCursor;

    .line 4906
    .end local v0           #c:Landroid/database/Cursor;
    :goto_7
    return-object v0

    .line 4903
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_8
    instance-of v1, v0, Landroid/database/CursorWindow;

    if-eqz v1, :cond_17

    .line 4904
    check-cast v0, Landroid/database/CursorWrapper;

    .end local v0           #c:Landroid/database/Cursor;
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object v0

    goto :goto_7

    .line 4906
    .restart local v0       #c:Landroid/database/Cursor;
    :cond_17
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private getDirectoryAuthority(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
    .registers 14
    .parameter "directoryId"

    .prologue
    .line 4942
    iget-object v11, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    monitor-enter v11

    .line 4943
    :try_start_3
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    if-nez v1, :cond_5f

    .line 4944
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4945
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4946
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "directories"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_56

    move-result-object v8

    .line 4950
    .local v8, cursor:Landroid/database/Cursor;
    :goto_25
    :try_start_25
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 4951
    new-instance v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;-><init>(Lcom/android/providers/contacts/ContactsProvider2$1;)V

    .line 4952
    .local v10, info:Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4953
    .local v9, id:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->authority:Ljava/lang/String;

    .line 4954
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountName:Ljava/lang/String;

    .line 4955
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 4956
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_51

    goto :goto_25

    .line 4959
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #info:Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;
    :catchall_51
    move-exception v1

    :try_start_52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 4965
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_56
    move-exception v1

    monitor-exit v11
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_56

    throw v1

    .line 4959
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_59
    :try_start_59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4961
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    .line 4964
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_5f
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    monitor-exit v11
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_56

    return-object v1
.end method

.method private getLimit(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6923
    const-string v1, "limit"

    invoke-static {p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6924
    if-nez v1, :cond_a

    .line 6937
    :goto_9
    return-object v0

    .line 6929
    :cond_a
    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 6930
    if-gez v2, :cond_43

    .line 6931
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid limit parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_9

    .line 6935
    :catch_29
    move-exception v2

    .line 6936
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid limit parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 6934
    :cond_43
    :try_start_43
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_46} :catch_29

    move-result-object v0

    goto :goto_9
.end method

.method private getMostReferencedContactId(Ljava/util/ArrayList;)J
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 6385
    .local p1, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6387
    const-wide/16 v0, -0x1

    .line 6388
    .local v0, bestContactId:J
    const/4 v2, 0x0

    .line 6390
    .local v2, bestRefCount:I
    const-wide/16 v3, -0x1

    .line 6391
    .local v3, contactId:J
    const/4 v5, 0x0

    .line 6393
    .local v5, count:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 6394
    .local v8, segmentCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_e
    if-ge v6, v8, :cond_31

    .line 6395
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6396
    .local v7, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    iget-wide v9, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_26

    .line 6397
    iget-wide v9, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    cmp-long v9, v9, v3

    if-nez v9, :cond_29

    .line 6398
    add-int/lit8 v5, v5, 0x1

    .line 6394
    :cond_26
    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 6400
    :cond_29
    if-le v5, v2, :cond_2d

    .line 6401
    move-wide v0, v3

    .line 6402
    move v2, v5

    .line 6404
    :cond_2d
    iget-wide v3, v7, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J

    .line 6405
    const/4 v5, 0x1

    goto :goto_26

    .line 6409
    .end local v7           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_31
    if-le v5, v2, :cond_34

    .line 6412
    .end local v3           #contactId:J
    :goto_33
    return-wide v3

    .restart local v3       #contactId:J
    :cond_34
    move-wide v3, v0

    goto :goto_33
.end method

.method static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "uri"
    .parameter "parameter"

    .prologue
    const/16 v11, 0x26

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 7760
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 7761
    .local v4, query:Ljava/lang/String;
    if-nez v4, :cond_b

    .line 7806
    :cond_a
    :goto_a
    return-object v7

    .line 7765
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 7766
    .local v5, queryLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 7769
    .local v2, parameterLength:I
    const/4 v1, 0x0

    .line 7771
    .local v1, index:I
    :cond_14
    :goto_14
    invoke-virtual {v4, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 7772
    if-eq v1, v10, :cond_a

    .line 7778
    if-lez v1, :cond_2a

    .line 7779
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 7780
    .local v3, prevChar:C
    const/16 v8, 0x3f

    if-eq v3, v8, :cond_2a

    if-eq v3, v11, :cond_2a

    .line 7782
    add-int/2addr v1, v2

    .line 7783
    goto :goto_14

    .line 7787
    .end local v3           #prevChar:C
    :cond_2a
    add-int/2addr v1, v2

    .line 7789
    if-eq v5, v1, :cond_a

    .line 7793
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_14

    .line 7794
    add-int/lit8 v1, v1, 0x1

    .line 7799
    invoke-virtual {v4, v11, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 7800
    .local v0, ampIndex:I
    if-ne v0, v10, :cond_46

    .line 7801
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 7806
    .local v6, value:Ljava/lang/String;
    :goto_41
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    .line 7803
    .end local v6           #value:Ljava/lang/String;
    :cond_46
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #value:Ljava/lang/String;
    goto :goto_41
.end method

.method private getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3438
    if-eqz p3, :cond_9

    :try_start_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_a

    .line 3451
    :cond_9
    :goto_9
    return-object v0

    .line 3441
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 3442
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 3443
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 3444
    const-string v3, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") is of type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_5c} :catch_5d

    goto :goto_9

    .line 3450
    :catch_5d
    move-exception v1

    goto :goto_9

    :cond_5f
    move-object v0, v1

    .line 3449
    goto :goto_9
.end method

.method private getSettableColumnsForPresenceTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 5
    .parameter "values"

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4160
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "mode"

    const-string v2, "mode"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4162
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "chat_capability"

    const-string v2, "chat_capability"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4164
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private getSettableColumnsForStatusUpdatesTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 5
    .parameter "values"

    .prologue
    .line 4144
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4145
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status"

    const-string v2, "status"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4147
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_ts"

    const-string v2, "status_ts"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4149
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_res_package"

    const-string v2, "status_res_package"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4151
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_label"

    const-string v2, "status_label"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4153
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "status_icon"

    const-string v2, "status_icon"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4155
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4137
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "status_update_data_id IN (SELECT Distinct presence_data_id FROM status_updates LEFT OUTER JOIN presence ON status_update_data_id = presence_data_id WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4138
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4139
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4140
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDataUsageFeedback(Landroid/net/Uri;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 7877
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7878
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 7879
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7881
    array-length v7, v4

    move v0, v6

    :goto_22
    if-ge v0, v7, :cond_30

    aget-object v8, v4, v0

    .line 7882
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7881
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 7885
    :cond_30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 7886
    const-string v0, "ContactsProvider"

    const-string v1, "Method for data usage feedback isn\'t specified. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v6

    .line 7893
    :goto_3e
    array-length v0, v4

    new-array v0, v0, [Ljava/lang/String;

    .line 7894
    const-string v1, "?"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7896
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "view_data"

    new-array v2, v2, [Ljava/lang/String;

    const-string v7, "contact_id"

    aput-object v7, v2, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7901
    :goto_7b
    :try_start_7b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 7902
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 7903
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7904
    const-string v0, "last_time_contacted"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7905
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "contacts"

    const-string v4, "_id=?"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7907
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7908
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c8
    .catchall {:try_start_7b .. :try_end_c8} :catchall_c9

    goto :goto_7b

    .line 7911
    :catchall_c9
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 7889
    :cond_ce
    invoke-virtual {p0, v3, v1, v9, v10}, Lcom/android/providers/contacts/ContactsProvider2;->updateDataUsageStat(Ljava/util/List;Ljava/lang/String;J)I

    move-result v0

    if-lez v0, :cond_d8

    move v0, v2

    :goto_d5
    move v8, v0

    goto/16 :goto_3e

    :cond_d8
    move v0, v6

    goto :goto_d5

    .line 7911
    :cond_da
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7914
    return v8
.end method

.method private hasColumn([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "projection"
    .parameter "column"

    .prologue
    const/4 v1, 0x1

    .line 4975
    if-nez p1, :cond_4

    .line 4982
    :cond_3
    :goto_3
    return v1

    .line 4979
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_13

    .line 4980
    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4979
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4982
    :cond_13
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private importLegacyContactsInBackground()V
    .registers 4

    .prologue
    .line 1889
    const-string v0, "ContactsProvider"

    const-string v1, "Importing legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1892
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1893
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1894
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1896
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLegacyContactImporter()Lcom/android/providers/contacts/LegacyContactImporter;

    move-result-object v0

    .line 1897
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContacts(Lcom/android/providers/contacts/LegacyContactImporter;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1898
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportSuccess()V

    .line 1902
    :goto_3a
    return-void

    .line 1900
    :cond_3b
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->onLegacyContactImportFailure()V

    goto :goto_3a
.end method

.method private inProfileMode()Z
    .registers 3

    .prologue
    .line 1871
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInProfileMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1872
    .local v0, profileMode:Ljava/lang/Boolean;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private initDataRowHandlers(Ljava/util/Map;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/DataRowHandler;",
            ">;",
            "Lcom/android/providers/contacts/ContactsDatabaseHelper;",
            "Lcom/android/providers/contacts/ContactAggregator;",
            "Lcom/android/providers/contacts/PhotoStore;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1498
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1499
    const-string v0, "vnd.android.cursor.item/email_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForEmail;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForEmail;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    const-string v0, "vnd.android.cursor.item/im"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForIm;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForIm;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    const-string v0, "vnd.android.cursor.item/organization"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForOrganization;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string v0, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    const-string v0, "vnd.android.cursor.item/nickname"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForNickname;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForNickname;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string v6, "vnd.android.cursor.item/name"

    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-direct {v2, v1, p2, p3, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PostalSplitter;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    const-string v0, "vnd.android.cursor.item/group_membership"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-direct {v2, v1, p2, p3, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/util/HashMap;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    const-string v0, "vnd.android.cursor.item/photo"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForPhoto;

    invoke-direct {v2, v1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    const-string v0, "vnd.android.cursor.item/note"

    new-instance v2, Lcom/android/providers/contacts/DataRowHandlerForNote;

    invoke-direct {v2, v1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForNote;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    return-void
.end method

.method private initForDefaultLocale()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1463
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 1464
    new-instance v0, Lcom/android/providers/contacts/LegacyApiSupport;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, v6, v1, p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    .line 1466
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    .line 1467
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 1468
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 1469
    new-instance v0, Lcom/android/providers/contacts/PostalSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/PostalSplitter;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPostalSplitter:Lcom/android/providers/contacts/PostalSplitter;

    .line 1470
    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 1471
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactLocaleUtils;->setLocale(Ljava/util/Locale;)V

    .line 1472
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->createPhotoPriorityResolver(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 1474
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const-string v1, "sync.contacts.aggregate"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1475
    new-instance v0, Lcom/android/providers/contacts/ProfileAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->createPhotoPriorityResolver(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ProfileAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 1477
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const-string v1, "sync.contacts.aggregate"

    invoke-static {v1, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1478
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/SearchIndexManager;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

    .line 1480
    new-instance v0, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/PhotoStore;-><init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 1481
    new-instance v0, Lcom/android/providers/contacts/PhotoStore;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "profile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/PhotoStore;-><init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 1484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    .line 1485
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->initDataRowHandlers(Ljava/util/Map;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V

    .line 1487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileDataRowHandlers:Ljava/util/HashMap;

    .line 1488
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileDataRowHandlers:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->initDataRowHandlers(Ljava/util/Map;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V

    .line 1492
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 1493
    return-void
.end method

.method private initialize()Z
    .registers 7

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 1399
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1402
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1403
    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxDisplayPhotoDim:I

    .line 1405
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxThumbnailPhotoDim:I

    .line 1408
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 1409
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1412
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "contacts"

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setDbHelperToSerializeOn(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V

    .line 1414
    new-instance v0, Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ContactDirectoryManager;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    .line 1415
    new-instance v0, Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/GlobalSearchSupport;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 1418
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1419
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1421
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsProviderWorker"

    invoke-direct {v0, v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 1423
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1424
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$1;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/contacts/ContactsProvider2$1;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    .line 1432
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getProfileProvider()Lcom/android/providers/contacts/ProfileProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    .line 1433
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ProfileProvider;->setDbHelperToSerializeOn(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V

    .line 1434
    new-instance v0, Landroid/content/pm/ProviderInfo;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo;-><init>()V

    .line 1435
    const-string v1, "android.permission.READ_PROFILE"

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 1436
    const-string v1, "android.permission.WRITE_PROFILE"

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 1437
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/providers/contacts/ProfileProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 1438
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProfileProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ProfileDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    .line 1441
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contacts_preauth_uri_expiration"

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUriDuration:J

    .line 1446
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1447
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1448
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1449
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1450
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1451
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1452
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1453
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1454
    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 1456
    return v4
.end method

.method private insertContact(Landroid/content/ContentValues;)J
    .registers 4
    .parameter

    .prologue
    .line 2584
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Aggregate contacts are created automatically"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertData(Landroid/content/ContentValues;Z)J
    .registers 15
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 2689
    const-wide/16 v6, 0x0

    .line 2690
    .local v6, id:J
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2691
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2693
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2696
    .local v3, rawContactId:J
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2697
    .local v9, packageName:Ljava/lang/String;
    if-eqz v9, :cond_39

    .line 2698
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v5, "package_id"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2700
    :cond_39
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2703
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2704
    .local v8, mimeType:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 2705
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mimetype is required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2708
    :cond_56
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v5, "mimetype_id"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2709
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2711
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 2712
    .local v0, rowHandler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v6

    .line 2713
    if-nez p2, :cond_9b

    .line 2714
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v1, v3, v4}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V

    .line 2716
    :cond_9b
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v1, v3, v4}, Lcom/android/providers/contacts/TransactionContext;->rawContactUpdated(J)V

    .line 2717
    return-wide v6
.end method

.method private insertDataGroupMembership(JJ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 2666
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2667
    const-string v0, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2668
    const-string v0, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2669
    const-string v2, "mimetype_id"

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2671
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2672
    return-void
.end method

.method private insertGroup(Landroid/net/Uri;Landroid/content/ContentValues;Z)J
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3090
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 3092
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccountWithDataSet(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v2

    .line 3095
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3096
    if-eqz v1, :cond_31

    .line 3097
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "package_id"

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3099
    :cond_31
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "res_package"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3101
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_c7

    const/4 v0, 0x1

    move v1, v0

    .line 3105
    :goto_56
    if-nez p3, :cond_64

    .line 3106
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3109
    :cond_64
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    const-string v4, "title"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 3111
    if-nez p3, :cond_106

    if-eqz v1, :cond_106

    .line 3115
    if-nez v2, :cond_cd

    .line 3116
    const-string v3, "account_name IS NULL AND account_type IS NULL AND data_set IS NULL"

    .line 3119
    const/4 v4, 0x0

    .line 3138
    :goto_7f
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "starred"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3142
    :cond_9d
    :goto_9d
    :try_start_9d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 3143
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9d

    .line 3144
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3145
    invoke-direct {p0, v2, v3, v8, v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertDataGroupMembership(JJ)V

    .line 3146
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V
    :try_end_c1
    .catchall {:try_start_9d .. :try_end_c1} :catchall_c2

    goto :goto_9d

    .line 3150
    :catchall_c2
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3101
    :cond_c7
    const/4 v0, 0x0

    move v1, v0

    goto :goto_56

    :cond_ca
    const/4 v0, 0x0

    move v1, v0

    goto :goto_56

    .line 3120
    :cond_cd
    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e7

    .line 3121
    const-string v3, "account_name=? AND account_type=? AND data_set IS NULL"

    .line 3124
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_7f

    .line 3129
    :cond_e7
    const-string v3, "account_name=? AND account_type=? AND data_set=?"

    .line 3132
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto/16 :goto_7f

    .line 3150
    :cond_103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3154
    :cond_106
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "group_visible"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 3155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 3158
    :cond_113
    return-wide v8
.end method

.method private insertRawContact(Landroid/net/Uri;Landroid/content/ContentValues;Z)J
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2596
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2597
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2598
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 2600
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccountWithDataSet(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v4

    .line 2602
    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "deleted"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 2604
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2607
    :cond_3b
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const-string v5, "contact_id"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2610
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2611
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 2613
    :goto_64
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/providers/contacts/ContactAggregator;->markNewForAggregation(JI)V

    .line 2616
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v5, v6, v4}, Lcom/android/providers/contacts/TransactionContext;->rawContactInserted(JLcom/android/providers/contacts/AccountWithDataSet;)V

    .line 2618
    if-nez p3, :cond_9b

    .line 2619
    invoke-direct {p0, v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->addAutoAddMembership(J)V

    .line 2620
    const-string v0, "starred"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2621
    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v7, v9

    if-eqz v1, :cond_9b

    .line 2622
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_98

    move v2, v3

    :cond_98
    invoke-direct {p0, v5, v6, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V

    .line 2626
    :cond_9b
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 2627
    return-wide v5

    :cond_9e
    move v1, v2

    goto :goto_64
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .parameter "selectionArgs"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7658
    if-nez p1, :cond_9

    .line 7659
    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v3

    .line 7665
    :goto_8
    return-object v1

    .line 7661
    :cond_9
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 7662
    .local v0, newLength:I
    new-array v1, v0, [Ljava/lang/String;

    .line 7663
    .local v1, newSelectionArgs:[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 7664
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8
.end method

.method private insertSettings(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 3165
    const-string v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3166
    const-string v0, "account_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3167
    const-string v0, "data_set"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3168
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3169
    if-eqz v8, :cond_21

    .line 3170
    const-string v1, "account_name"

    invoke-virtual {v0, v1, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3172
    :cond_21
    if-eqz v9, :cond_28

    .line 3173
    const-string v1, "account_type"

    invoke-virtual {v0, v1, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3175
    :cond_28
    if-eqz v10, :cond_2f

    .line 3176
    const-string v1, "data_set"

    invoke-virtual {v0, v1, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3178
    :cond_2f
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v3

    .line 3180
    :try_start_3d
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_95

    .line 3184
    if-eqz v8, :cond_b1

    if-eqz v9, :cond_b1

    .line 3185
    const-string v0, "account_name=? AND account_type=?"

    .line 3186
    if-nez v10, :cond_70

    .line 3187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3188
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v2, v1

    const/4 v1, 0x1

    aput-object v9, v2, v1

    .line 3194
    :goto_67
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateSettings(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_3d .. :try_end_6a} :catchall_90

    move-result v0

    int-to-long v0, v0

    .line 3197
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3207
    :cond_6f
    :goto_6f
    return-wide v0

    .line 3190
    :cond_70
    :try_start_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND data_set=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3191
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v2, v1

    const/4 v1, 0x1

    aput-object v9, v2, v1

    const/4 v1, 0x2

    aput-object v10, v2, v1
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_90

    goto :goto_67

    .line 3197
    :catchall_90
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_95
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3201
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 3203
    const-string v2, "ungrouped_visible"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 3204
    iput-boolean v11, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    goto :goto_6f

    :cond_b1
    move-object v0, v2

    goto :goto_67
.end method

.method private insertStreamItem(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 2732
    .line 2733
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2734
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2736
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2739
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 2740
    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccount(Landroid/accounts/Account;J)V

    .line 2743
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2744
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2747
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "stream_items"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 2748
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_47

    .line 2750
    const-wide/16 v0, 0x0

    .line 2758
    :goto_46
    return-wide v0

    .line 2756
    :cond_47
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->cleanUpOldStreamItems(JJ)J

    move-result-wide v0

    goto :goto_46
.end method

.method private insertStreamItemPhoto(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 2771
    .line 2772
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 2773
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 2775
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "stream_item_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2776
    cmp-long v4, v2, v0

    if-eqz v4, :cond_51

    .line 2777
    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->lookupRawContactIdForStreamId(J)J

    move-result-wide v2

    .line 2780
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v4

    .line 2781
    invoke-direct {p0, v4, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccount(Landroid/accounts/Account;J)V

    .line 2785
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2786
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2789
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->processStreamItemPhoto(Landroid/content/ContentValues;Z)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2791
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_item_photos"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2794
    :cond_51
    return-wide v0
.end method

.method private isSingleWordQuery(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 8014
    const-string v1, "[^\\w@]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private lookupContactIdByDisplayNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 6324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6325
    const-string v0, "normalized_name IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 6326
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 6327
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6328
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-eq v2, v9, :cond_23

    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, v10, :cond_2d

    .line 6330
    :cond_23
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6331
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6326
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 6334
    :cond_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6335
    const-string v0, ") AND name_type=2 AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6338
    const-string v1, "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByDisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6341
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 6342
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6344
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6345
    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6347
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v8

    .line 6348
    :goto_69
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    .line 6349
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6350
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-eq v5, v9, :cond_7d

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v5, v10, :cond_96

    :cond_7d
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v3, v5, :cond_96

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 6354
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_90
    .catchall {:try_start_4f .. :try_end_90} :catchall_91

    goto :goto_4f

    .line 6360
    :catchall_91
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6348
    :cond_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_69

    .line 6360
    :cond_9a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6363
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupContactIdByRawContactIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 6267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6268
    const-string v0, "_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 6269
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 6270
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6271
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, v9, :cond_28

    .line 6272
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6273
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6269
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 6276
    :cond_2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6277
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6279
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupByRawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6282
    :cond_4a
    :goto_4a
    :try_start_4a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 6283
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6285
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6286
    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6288
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v8

    .line 6289
    :goto_64
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 6290
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6291
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v5, v9, :cond_8d

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v3, v5, :cond_8d

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->rawContactId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 6294
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_87
    .catchall {:try_start_4a .. :try_end_87} :catchall_88

    goto :goto_4a

    .line 6300
    :catchall_88
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6289
    :cond_8d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_64

    .line 6300
    :cond_91
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6303
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupContactIdBySourceIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 6210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6211
    const-string v0, "sourceid IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v8

    .line 6212
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 6213
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6214
    iget v2, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-nez v2, :cond_27

    .line 6215
    iget-object v0, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6216
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6212
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 6219
    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6220
    const-string v0, ") AND contact_id NOT NULL"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6222
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2$LookupBySourceIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6225
    :cond_49
    :goto_49
    :try_start_49
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 6226
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6228
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6229
    invoke-static {v0, v1}, Lcom/android/providers/contacts/ContactLookupKey;->getAccountHashCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 6231
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v8

    .line 6232
    :goto_63
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 6233
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6234
    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-nez v5, :cond_8c

    iget v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->accountHashCode:I

    if-ne v3, v5, :cond_8c

    iget-object v5, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->key:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 6237
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->contactId:J
    :try_end_86
    .catchall {:try_start_49 .. :try_end_86} :catchall_87

    goto :goto_49

    .line 6243
    :catchall_87
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6232
    :cond_8c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_63

    .line 6243
    :cond_90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6246
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getMostReferencedContactId(Ljava/util/ArrayList;)J

    move-result-wide v0

    return-wide v0
.end method

.method private lookupKeyContainsType(Ljava/util/ArrayList;I)Z
    .registers 6
    .parameter
    .parameter "lookupType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 6367
    .local p1, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 6368
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    .line 6369
    .local v1, segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    iget v2, v1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->lookupType:I

    if-ne v2, p2, :cond_13

    .line 6370
    const/4 v2, 0x1

    .line 6374
    .end local v1           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :goto_12
    return v2

    .line 6367
    .restart local v1       #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6374
    .end local v1           #segment:Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private lookupRawContactIdForStreamId(J)J
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2842
    const-wide/16 v8, -0x1

    .line 2843
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v7

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2848
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2849
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_34

    move-result-wide v0

    .line 2852
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2854
    return-wide v0

    .line 2852
    :catchall_34
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    move-wide v0, v8

    goto :goto_30
.end method

.method private lookupSingleContactId(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6179
    const-string v1, "contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v8, "1"

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6182
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 6183
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_2b

    move-result-wide v0

    .line 6188
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_24
    return-wide v0

    .line 6185
    :cond_25
    const-wide/16 v0, -0x1

    .line 6188
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_24

    :catchall_2b
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .parameter "fd"

    .prologue
    .line 7361
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .parameter "fd"
    .parameter "length"

    .prologue
    .line 7365
    if-eqz p1, :cond_c

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private mapsToProfileDb(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 2008
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->mapsToProfile(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private mapsToProfileDbWithInsertedValues(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 2023
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDb(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2036
    :cond_7
    :goto_7
    return v4

    .line 2026
    :cond_8
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v5, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 2027
    .local v3, match:I
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2028
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->INSERT_URI_ID_VALUE_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2029
    .local v2, idField:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2030
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2031
    .local v0, id:J
    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v5

    if-nez v5, :cond_7

    .line 2036
    .end local v0           #id:J
    .end local v2           #idField:Ljava/lang/String;
    :cond_3a
    const/4 v4, 0x0

    goto :goto_7
.end method

.method private markRawContactAsDeleted(JZ)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3823
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3825
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3826
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "deleted"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3827
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3828
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "aggregation_needed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3829
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3830
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3831
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContact(JLandroid/content/ContentValues;Z)I

    move-result v0

    return v0
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .registers 10
    .parameter "query"
    .parameter "index"
    .parameter "value"
    .parameter "ignoreCase"

    .prologue
    const/4 v4, 0x0

    .line 7751
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, length:I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 7752
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_21

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_22

    :cond_21
    const/4 v4, 0x1

    :cond_22
    return v4
.end method

.method private onLegacyContactImportFailure()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1923
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1924
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1928
    new-instance v2, Landroid/app/Notification;

    const v3, 0x1080078

    const v4, 0x7f040004

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1931
    const v3, 0x7f040005

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040006

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.contacts.action.LIST_DEFAULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1935
    iget v1, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x22

    iput v1, v2, Landroid/app/Notification;->flags:I

    .line 1937
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1939
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1940
    const-string v0, "ContactsProvider"

    const-string v1, "Failed to import legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mOkToOpenAccess:Z

    .line 1944
    return-void
.end method

.method private onLegacyContactImportSuccess()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1908
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1910
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1913
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "contacts_imported_v1"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1916
    const-string v0, "ContactsProvider"

    const-string v1, "Completed import of legacy contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    return-void
.end method

.method private openDisplayPhotoForRead(J)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 7221
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPhotoStore:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->get(J)Lcom/android/providers/contacts/PhotoStore$Entry;

    move-result-object v0

    .line 7222
    if-eqz v0, :cond_29

    .line 7224
    :try_start_10
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_22} :catch_24

    move-result-object v0

    return-object v0

    .line 7228
    :catch_24
    move-exception v0

    .line 7229
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 7230
    throw v0

    .line 7233
    :cond_29
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 7234
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No photo file found for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private openDisplayPhotoForWrite(JJLandroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7256
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 7257
    new-instance v0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;

    const/4 v1, 0x0

    aget-object v6, v8, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;-><init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;Lcom/android/providers/contacts/ContactsProvider2$1;)V

    .line 7258
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 7259
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x1

    aget-object v1, v8, v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    .line 7262
    :goto_24
    return-object v0

    .line 7260
    :catch_25
    move-exception v0

    .line 7261
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create temp image file in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7262
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private openPhotoAssetFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 7196
    const-string v0, "r"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 7197
    new-instance v1, Ljava/io/FileNotFoundException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7201
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT data15 FROM view_data WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7205
    :try_start_46
    invoke-static {p1, v0, p5}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_46 .. :try_end_4d} :catch_4f

    move-result-object v0

    return-object v0

    .line 7207
    :catch_4f
    move-exception v0

    .line 7209
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private outputRawContactsAsVCard(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 7375
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7376
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    .line 7377
    const-string v1, "nophoto"

    invoke-virtual {p1, v1, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 7379
    const/high16 v1, 0x80

    or-int/2addr v0, v1

    move v1, v0

    .line 7381
    :goto_14
    new-instance v0, Lcom/android/vcard/VCardComposer;

    invoke-direct {v0, v3, v1, v4}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    .line 7385
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDb(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 7389
    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->preAuthorizeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 7394
    :goto_25
    :try_start_25
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_d5
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_fc

    .line 7395
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    :try_start_33
    invoke-virtual/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 7396
    const-string v1, "ContactsProvider"

    const-string v2, "Failed to init VCardComposer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_f9
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_40} :catch_74

    .line 7406
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7407
    if-eqz v6, :cond_48

    .line 7409
    :try_start_45
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4c

    .line 7415
    :cond_48
    :goto_48
    return-void

    .line 7391
    :cond_49
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_25

    .line 7410
    :catch_4c
    move-exception v0

    .line 7411
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 7400
    :cond_66
    :goto_66
    :try_start_66
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b1

    .line 7401
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_f9
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_73} :catch_74

    goto :goto_66

    .line 7403
    :catch_74
    move-exception v1

    move-object v2, v6

    .line 7404
    :goto_76
    :try_start_76
    const-string v3, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_76 .. :try_end_8e} :catchall_d5

    .line 7406
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7407
    if-eqz v2, :cond_48

    .line 7409
    :try_start_93
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_48

    .line 7410
    :catch_97
    move-exception v0

    .line 7411
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 7406
    :cond_b1
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7407
    if-eqz v6, :cond_48

    .line 7409
    :try_start_b6
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_48

    .line 7410
    :catch_ba
    move-exception v0

    .line 7411
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_48

    .line 7406
    :catchall_d5
    move-exception v1

    :goto_d6
    invoke-virtual {v0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 7407
    if-eqz v2, :cond_de

    .line 7409
    :try_start_db
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    .line 7412
    :cond_de
    :goto_de
    throw v1

    .line 7410
    :catch_df
    move-exception v0

    .line 7411
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException during closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 7406
    :catchall_f9
    move-exception v1

    move-object v2, v6

    goto :goto_d6

    .line 7403
    :catch_fc
    move-exception v1

    goto/16 :goto_76

    :cond_ff
    move v1, v0

    goto/16 :goto_14
.end method

.method private preAuthorizeUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"

    .prologue
    .line 2166
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 2167
    .local v3, token:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "perm_token"

    invoke-virtual {v4, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2170
    .local v0, authUri:Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUriDuration:J

    add-long v1, v4, v6

    .line 2171
    .local v1, expiration:J
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUris:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    return-object v0
.end method

.method private processStreamItemPhoto(Landroid/content/ContentValues;Z)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2809
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2832
    :cond_a
    :goto_a
    return p2

    .line 2812
    :cond_b
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 2813
    if-eqz v3, :cond_a

    .line 2819
    :try_start_13
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPhotoStore:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore;

    new-instance v4, Lcom/android/providers/contacts/PhotoProcessor;

    iget v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxDisplayPhotoDim:I

    iget v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxThumbnailPhotoDim:I

    const/4 v7, 0x1

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BIIZ)V

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;Z)J

    move-result-wide v3

    .line 2821
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_40

    .line 2822
    const-string v0, "photo_file_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2823
    const-string v0, "photo"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move p2, v1

    .line 2824
    goto :goto_a

    .line 2827
    :cond_40
    const-string v0, "ContactsProvider"

    const-string v1, "Could not process stream item photo for insert"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_47} :catch_49

    move p2, v2

    .line 2828
    goto :goto_a

    .line 2830
    :catch_49
    move-exception v0

    .line 2831
    const-string v1, "ContactsProvider"

    const-string v3, "Could not process stream item photo for insert"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p2, v2

    .line 2832
    goto :goto_a
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5958
    if-eqz p3, :cond_16

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const-string v0, "_count"

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 5960
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sCountProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5962
    :cond_16
    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object v7, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5964
    if-eqz v0, :cond_34

    .line 5965
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 5967
    :cond_34
    return-object v0
.end method

.method private queryProviderStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "projection"

    .prologue
    .line 5974
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 5975
    .local v0, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 5976
    .local v2, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    array-length v3, p2

    if-ge v1, v3, :cond_37

    .line 5977
    const-string v3, "status"

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 5978
    iget v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 5976
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 5979
    :cond_23
    const-string v3, "data1"

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5980
    iget-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_20

    .line 5983
    :cond_37
    return-object v0
.end method

.method private queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5997
    if-nez p6, :cond_4d

    .line 5998
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 6003
    :goto_5
    const/4 v1, 0x0

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 6004
    const/4 v1, 0x1

    invoke-static/range {p14 .. p14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 6005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 6006
    invoke-direct/range {v1 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6008
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_5f

    .line 6013
    :goto_4c
    return-object v1

    .line 6000
    :cond_4d
    move-object/from16 v0, p6

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 6001
    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object/from16 v0, p6

    array-length v3, v0

    move-object/from16 v0, p6

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 6012
    :cond_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6013
    const/4 v1, 0x0

    goto :goto_4c
.end method

.method private rawContactIsLocal(J)Z
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3754
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v9

    const-string v3, "account_type"

    aput-object v3, v2, v8

    const-string v3, "data_set"

    aput-object v3, v2, v4

    const-string v3, "_id=?"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3763
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_4f

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v8

    .line 3765
    :goto_49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_4d
    move v0, v9

    .line 3763
    goto :goto_49

    .line 3765
    :catchall_4f
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7733
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 7734
    if-nez v2, :cond_9

    .line 7745
    :cond_8
    :goto_8
    return p2

    .line 7738
    :cond_9
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 7739
    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 7743
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 7745
    const-string v4, "=0"

    invoke-static {v2, v3, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "=false"

    invoke-static {v2, v3, v4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_27

    :goto_25
    move p2, v0

    goto :goto_8

    :cond_27
    move v0, v1

    goto :goto_25
.end method

.method private resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2507
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2508
    const-string v0, "account_type"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2509
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v0, v4

    .line 2511
    const-string v4, "account_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2512
    const-string v4, "account_type"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2513
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    .line 2516
    if-nez v0, :cond_30

    if-eqz v7, :cond_44

    .line 2518
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Must specify both or neither of ACCOUNT_NAME and ACCOUNT_TYPE"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2524
    :cond_44
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_78

    move v0, v1

    .line 2525
    :goto_4b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7a

    move v7, v1

    .line 2527
    :goto_52
    if-eqz v7, :cond_a2

    if-eqz v0, :cond_a2

    .line 2529
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2531
    :goto_62
    if-nez v1, :cond_7e

    .line 2532
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "When both specified, ACCOUNT_NAME and ACCOUNT_TYPE must match"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_78
    move v0, v2

    .line 2524
    goto :goto_4b

    :cond_7a
    move v7, v2

    .line 2525
    goto :goto_52

    :cond_7c
    move v1, v2

    .line 2529
    goto :goto_62

    :cond_7e
    move-object v0, v3

    move-object v1, v5

    .line 2547
    :goto_80
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 2550
    :cond_98
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v1, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    .line 2553
    :cond_9f
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccount:Landroid/accounts/Account;

    :goto_a1
    return-object v0

    .line 2535
    :cond_a2
    if-eqz v0, :cond_b1

    .line 2537
    const-string v0, "account_name"

    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    const-string v0, "account_type"

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v1, v5

    goto :goto_80

    .line 2539
    :cond_b1
    if-eqz v7, :cond_b6

    move-object v0, v4

    move-object v1, v6

    .line 2541
    goto :goto_80

    .line 2543
    :cond_b6
    const/4 v0, 0x0

    goto :goto_a1
.end method

.method private resolveAccountWithDataSet(Landroid/net/Uri;Landroid/content/ContentValues;)Lcom/android/providers/contacts/AccountWithDataSet;
    .registers 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2563
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 2564
    .local v0, account:Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 2565
    .local v1, accountWithDataSet:Lcom/android/providers/contacts/AccountWithDataSet;
    if-eqz v0, :cond_1e

    .line 2566
    const-string v3, "data_set"

    invoke-static {p1, v3}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2567
    .local v2, dataSet:Ljava/lang/String;
    if-nez v2, :cond_1f

    .line 2568
    const-string v3, "data_set"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2572
    :goto_15
    new-instance v1, Lcom/android/providers/contacts/AccountWithDataSet;

    .end local v1           #accountWithDataSet:Lcom/android/providers/contacts/AccountWithDataSet;
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    .end local v2           #dataSet:Ljava/lang/String;
    .restart local v1       #accountWithDataSet:Lcom/android/providers/contacts/AccountWithDataSet;
    :cond_1e
    return-object v1

    .line 2570
    .restart local v2       #dataSet:Ljava/lang/String;
    :cond_1f
    const-string v3, "data_set"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private static sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 6652
    const-string v0, "\'"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 6738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6739
    const-string v1, "view_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6740
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6741
    const-string v1, "data._id"

    invoke-direct {p0, v0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6742
    const-string v1, "data._id"

    invoke-direct {p0, v0, p2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6744
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6745
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStatusUpdatesProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6746
    return-void
.end method

.method private setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 5
    .parameter "qb"
    .parameter "uri"
    .parameter "projection"

    .prologue
    .line 6418
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 6419
    return-void
.end method

.method private setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6429
    if-eqz p4, :cond_11

    .line 6430
    const-string v1, "view_data_usage_stat AS data_usage_stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6431
    const-string v1, " INNER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6434
    :cond_11
    const-string v1, "view_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6437
    if-eqz p4, :cond_45

    .line 6438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ON ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_usage_stat.times_used > 0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id=view_contacts._id"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6445
    :cond_45
    const-string v1, "_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6446
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6448
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6449
    return-void
.end method

.method private setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6459
    const-string v0, "view_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6461
    if-eqz p4, :cond_46

    .line 6462
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 6465
    :goto_10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-wide/16 v2, -0x1

    cmp-long v0, p5, v2

    if-eqz v0, :cond_3e

    const-wide/16 v2, 0x0

    cmp-long v0, p5, v2

    if-eqz v0, :cond_3e

    .line 6466
    :cond_22
    const-string v0, " JOIN (SELECT NULL AS snippet WHERE 0)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6470
    :goto_27
    const-string v0, "_id"

    invoke-direct {p0, v1, p3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6471
    const-string v0, "status_update_id"

    invoke-direct {p0, v1, p3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6473
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionWithSnippetMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6474
    return-void

    :cond_3e
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p7

    .line 6468
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_27

    :cond_46
    move-object v4, p4

    goto :goto_10
.end method

.method private setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V
    .registers 12
    .parameter "qb"
    .parameter "uri"
    .parameter "projection"
    .parameter "distinct"

    .prologue
    .line 6686
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 6687
    return-void
.end method

.method private setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V
    .registers 13
    .parameter "qb"
    .parameter "uri"
    .parameter "projection"
    .parameter "distinct"
    .parameter "usageType"

    .prologue
    .line 6700
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 6701
    return-void
.end method

.method private setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZ)V
    .registers 13
    .parameter "qb"
    .parameter "uri"
    .parameter "projection"
    .parameter "distinct"
    .parameter "addSipLookupColumns"

    .prologue
    .line 6691
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V

    .line 6692
    return-void
.end method

.method private setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZLjava/lang/Integer;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6706
    const-string v1, "view_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6707
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6709
    const-string v1, "contact_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6710
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6711
    const-string v1, "data._id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6712
    const-string v1, "data._id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6714
    if-eqz p6, :cond_2e

    .line 6715
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "data._id"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataUsageStatJoin(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 6718
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6720
    if-nez p4, :cond_47

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->DISTINCT_DATA_PROHIBITING_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    :cond_47
    const/4 v0, 0x1

    .line 6722
    :goto_48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 6725
    if-eqz p5, :cond_5d

    .line 6726
    if-eqz v0, :cond_5a

    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataSipLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    .line 6732
    :goto_51
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6733
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 6734
    return-void

    .line 6720
    :cond_58
    const/4 v0, 0x0

    goto :goto_48

    .line 6726
    :cond_5a
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataSipLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_51

    .line 6729
    :cond_5d
    if-eqz v0, :cond_62

    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDistinctDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_51

    :cond_62
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_51
.end method

.method private setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6770
    const-string v1, "view_entities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6771
    const-string v1, " data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6773
    const-string v1, "contact_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6774
    const-string v1, "status_update_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6775
    const-string v1, "data_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6776
    const-string v1, "data_id"

    invoke-direct {p0, v0, p3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendDataStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 6778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6779
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6780
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 6781
    return-void
.end method

.method private setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .registers 5
    .parameter "qb"
    .parameter "uri"

    .prologue
    .line 6671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6672
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "view_raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6674
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6675
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 6676
    return-void
.end method

.method private setTablesAndProjectionMapForRawEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .registers 4
    .parameter "qb"
    .parameter "uri"

    .prologue
    .line 6679
    const-string v0, "view_raw_entities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6680
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sRawEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6681
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 6682
    return-void
.end method

.method private setTablesAndProjectionMapForStreamItemPhotos(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .registers 3
    .parameter "qb"

    .prologue
    .line 6754
    const-string v0, "photo_files JOIN stream_item_photos ON (stream_item_photos.photo_file_id=photo_files._id) JOIN stream_items ON (stream_item_photos.stream_item_id=stream_items._id) JOIN raw_contacts ON (stream_items.raw_contact_id=raw_contacts._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6764
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStreamItemPhotosProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6765
    return-void
.end method

.method private setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .registers 3
    .parameter "qb"

    .prologue
    .line 6749
    const-string v0, "view_stream_items"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6750
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sStreamItemsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 6751
    return-void
.end method

.method private snippetNeeded([Ljava/lang/String;)Z
    .registers 6
    .parameter "projection"

    .prologue
    .line 8022
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "snippet"

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private statusUpdateToHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "status"

    .prologue
    .line 3433
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAggregationException(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4479
    const-string v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 4480
    const-string v0, "raw_contact_id1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    .line 4481
    const-string v0, "raw_contact_id2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    .line 4485
    cmp-long v4, v2, v0

    if-gez v4, :cond_8b

    move-wide v4, v2

    move-wide v2, v0

    .line 4493
    :goto_28
    if-nez v6, :cond_8d

    .line 4494
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 4495
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 4496
    const-string v0, "agg_exceptions"

    const-string v1, "raw_contact_id1=? AND raw_contact_id2=?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs2:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4508
    :goto_43
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->invalidateAggregationExceptionCache()V

    .line 4509
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v4, v5, v8, v7}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 4511
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v2, v3, v8, v7}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 4514
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, p1, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4515
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4519
    return v7

    :cond_8b
    move-wide v4, v0

    .line 4490
    goto :goto_28

    .line 4500
    :cond_8d
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 4501
    const-string v1, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4502
    const-string v1, "raw_contact_id1"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4503
    const-string v1, "raw_contact_id2"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4504
    const-string v1, "agg_exceptions"

    const-string v6, "_id"

    invoke-virtual {p1, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_43
.end method

.method private updateContactOptions(JLandroid/content/ContentValues;Z)I
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4412
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4413
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4415
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4417
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4419
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4421
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v2, "starred"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4425
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_3f

    move v0, v8

    .line 4475
    :goto_3e
    return v0

    .line 4429
    :cond_3f
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4431
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4434
    :cond_54
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 4435
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "contact_id=? AND raw_contact_is_read_only=0"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4438
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    if-nez p4, :cond_c1

    .line 4439
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "view_raw_contacts"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4443
    :goto_95
    :try_start_95
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 4444
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4445
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "starred"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_bc

    move v0, v9

    :goto_b3
    invoke-direct {p0, v2, v3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_b7

    goto :goto_95

    .line 4449
    :catchall_b7
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_bc
    move v0, v8

    .line 4445
    goto :goto_b3

    .line 4449
    :cond_be
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4455
    :cond_c1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4456
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "custom_ringtone"

    const-string v2, "custom_ringtone"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4458
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "send_to_voicemail"

    const-string v2, "send_to_voicemail"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4460
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "last_time_contacted"

    const-string v2, "last_time_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4462
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "times_contacted"

    const-string v2, "times_contacted"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4464
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "starred"

    const-string v2, "starred"

    invoke-static {v0, v1, p3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 4467
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contacts"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4470
    const-string v0, "last_time_contacted"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_135

    const-string v0, "times_contacted"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_135

    .line 4472
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE _id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4473
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE raw_contacts SET times_contacted= CASE WHEN times_contacted IS NULL THEN 1 ELSE  (times_contacted + 1) END WHERE contact_id=?"

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_135
    move v0, v1

    .line 4475
    goto/16 :goto_3e
.end method

.method private updateContactOptions(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 18
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 4392
    const/4 v11, 0x0

    .line 4393
    .local v11, count:I
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "view_contacts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4396
    .local v12, cursor:Landroid/database/Cursor;
    :goto_1d
    :try_start_1d
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 4397
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4399
    .local v9, contactId:J
    move/from16 v0, p4

    invoke-direct {p0, v9, v10, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;Z)I
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_34

    .line 4400
    add-int/lit8 v11, v11, 0x1

    .line 4401
    goto :goto_1d

    .line 4403
    .end local v9           #contactId:J
    :cond_30
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 4406
    return v11

    .line 4403
    :catchall_34
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateContactsAccountCount([Landroid/accounts/Account;)V
    .registers 8
    .parameter "accounts"

    .prologue
    .line 4727
    const/4 v2, 0x0

    .line 4728
    .local v2, count:I
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_4
    if-ge v3, v4, :cond_13

    aget-object v0, v1, v3

    .line 4729
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->isContactsAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4730
    add-int/lit8 v2, v2, 0x1

    .line 4728
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4733
    .end local v0           #account:Landroid/accounts/Account;
    :cond_13
    iput v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsAccountCount:I

    .line 4734
    return-void
.end method

.method private updateData(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4375
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 4387
    :goto_7
    return v6

    .line 4379
    :cond_8
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4380
    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 4381
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    .line 4384
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4385
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 4387
    :cond_35
    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_38
    move v6, v0

    goto :goto_7

    :cond_3a
    move v0, v6

    goto :goto_38
.end method

.method private updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 18
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 4339
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 4340
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 4341
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4342
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4343
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4345
    const-string v1, "res_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4346
    .local v11, packageName:Ljava/lang/String;
    if-eqz v11, :cond_45

    .line 4347
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v2, "res_package"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4348
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v3, "package_id"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4351
    :cond_45
    if-nez p5, :cond_4d

    .line 4352
    const-string v1, "is_read_only=0"

    invoke-static {p3, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4356
    :cond_4d
    const/4 v10, 0x0

    .line 4360
    .local v10, count:I
    sget-object v3, Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v9

    .line 4364
    .local v9, c:Landroid/database/Cursor;
    :goto_5c
    :try_start_5c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 4365
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    move/from16 v0, p5

    invoke-direct {p0, v1, v9, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/content/ContentValues;Landroid/database/Cursor;Z)I
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_70

    move-result v1

    add-int/2addr v10, v1

    goto :goto_5c

    .line 4368
    :cond_6c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4371
    return v10

    .line 4368
    :catchall_70
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateFavoritesMembership(JZ)V
    .registers 7
    .parameter "rawContactId"
    .parameter "isStarred"

    .prologue
    .line 2654
    const-string v1, "raw_contacts._id=? AND groups.account_name=raw_contacts.account_name AND groups.account_type=raw_contacts.account_type AND (groups.data_set=raw_contacts.data_set OR groups.data_set IS NULL AND raw_contacts.data_set IS NULL) AND favorites != 0"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->findGroupByRawContactId(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    .line 2656
    .local v0, groupId:Ljava/lang/Long;
    if-eqz v0, :cond_11

    .line 2657
    if-eqz p3, :cond_12

    .line 2658
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertDataGroupMembership(JJ)V

    .line 2663
    :cond_11
    :goto_11
    return-void

    .line 2660
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->deleteDataGroupMembership(JJ)V

    goto :goto_11
.end method

.method private updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4170
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4173
    if-nez p5, :cond_24

    const-string v0, "dirty"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 4174
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    .line 4175
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 4176
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 4177
    const-string v1, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object p2, v0

    .line 4182
    :cond_24
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 4184
    const-string v0, "group_visible"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4185
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 4191
    :cond_3c
    const-string v0, "should_sync"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "should_sync"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9b

    .line 4193
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "account_name"

    aput-object v3, v2, v6

    const-string v3, "account_type"

    aput-object v3, v2, v4

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4199
    :cond_6d
    :try_start_6d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 4200
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4201
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 4203
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    const-string v0, "com.android.contacts"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v3, v0, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_98
    .catchall {:try_start_6d .. :try_end_98} :catchall_9c

    .line 4210
    :cond_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4213
    :cond_9b
    return v8

    .line 4210
    :catchall_9c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateProviderStatus()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 1704
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eq v0, v7, :cond_c

    .line 1726
    :goto_b
    return-void

    .line 1711
    :cond_c
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsAccountCount:I

    if-nez v0, :cond_3c

    .line 1712
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "contacts"

    invoke-static {v0, v1, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 1714
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "contacts"

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1718
    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_38

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-gtz v0, :cond_38

    .line 1719
    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    goto :goto_b

    .line 1721
    :cond_38
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    goto :goto_b

    .line 1724
    :cond_3c
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    goto :goto_b
.end method

.method private updateRawContact(JLandroid/content/ContentValues;Z)I
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4256
    const-string v2, "_id = ?"

    .line 4257
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4258
    const-string v2, "deleted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15a

    const-string v2, "deleted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_15a

    const/4 v2, 0x1

    move v14, v2

    .line 4260
    :goto_25
    const/4 v13, 0x0

    .line 4261
    const/4 v12, 0x0

    .line 4262
    const/4 v11, 0x0

    .line 4263
    const/4 v10, 0x0

    .line 4264
    if-eqz v14, :cond_1a0

    .line 4265
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "raw_contacts"

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "_id = ?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4268
    :try_start_42
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 4269
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 4270
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4271
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4272
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_42 .. :try_end_5b} :catchall_15e

    move-result-object v2

    .line 4275
    :goto_5c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4277
    const-string v6, "aggregation_mode"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v10, v2

    move-object v11, v3

    .line 4281
    :goto_6d
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "raw_contacts"

    const-string v6, "_id = ?"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 4282
    if-eqz v6, :cond_159

    .line 4283
    const-string v2, "aggregation_mode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 4284
    const-string v2, "aggregation_mode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4288
    if-eqz v3, :cond_a9

    .line 4289
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    const/4 v7, 0x0

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3, v7}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    .line 4292
    :cond_a9
    const-string v2, "starred"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 4293
    if-nez p4, :cond_cd

    .line 4294
    const-string v2, "starred"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_163

    const/4 v2, 0x1

    :goto_c8
    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V

    .line 4297
    :cond_cd
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateStarred(J)V

    .line 4313
    :cond_da
    :goto_da
    if-nez p4, :cond_e9

    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 4314
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->addAutoAddMembership(J)V

    .line 4317
    :cond_e9
    const-string v2, "sourceid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 4318
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4320
    :cond_108
    const-string v2, "name_verified"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 4324
    const-string v2, "name_verified"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_12d

    .line 4325
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->resetNameVerifiedForOtherRawContacts(J)V

    .line 4327
    :cond_12d
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 4329
    :cond_142
    if-eqz v14, :cond_159

    const/4 v2, 0x1

    if-ne v5, v2, :cond_159

    .line 4330
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    new-instance v3, Lcom/android/providers/contacts/AccountWithDataSet;

    invoke-direct {v3, v11, v4, v10}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/providers/contacts/TransactionContext;->rawContactInserted(JLcom/android/providers/contacts/AccountWithDataSet;)V

    .line 4334
    :cond_159
    return v6

    .line 4258
    :cond_15a
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_25

    .line 4275
    :catchall_15e
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    .line 4294
    :cond_163
    const/4 v2, 0x0

    goto/16 :goto_c8

    .line 4303
    :cond_166
    if-nez p4, :cond_da

    const-string v2, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 4304
    const-wide/16 v7, 0x0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT starred FROM raw_contacts WHERE _id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    invoke-static {v2, v3, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v7, v2

    if-eqz v2, :cond_198

    const/4 v2, 0x1

    .line 4307
    :goto_191
    move-wide/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateFavoritesMembership(JZ)V

    goto/16 :goto_da

    .line 4304
    :cond_198
    const/4 v2, 0x0

    goto :goto_191

    :cond_19a
    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move v5, v13

    goto/16 :goto_5c

    :cond_1a0
    move-object v4, v12

    move v5, v13

    goto/16 :goto_6d
.end method

.method private updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 18
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 4227
    const-string v1, "contact_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "contact_id should not be included in content values. Contact IDs are assigned automatically"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4232
    :cond_10
    if-nez p4, :cond_18

    .line 4233
    const-string v1, "raw_contact_is_read_only=0"

    invoke-static {p2, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4237
    :cond_18
    const/4 v9, 0x0

    .line 4238
    .local v9, count:I
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "view_raw_contacts"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4242
    .local v10, cursor:Landroid/database/Cursor;
    :goto_35
    :try_start_35
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4243
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 4244
    .local v11, rawContactId:J
    move/from16 v0, p4

    invoke-direct {p0, v11, v12, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContact(JLandroid/content/ContentValues;Z)I
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_4c

    .line 4245
    add-int/lit8 v9, v9, 0x1

    .line 4246
    goto :goto_35

    .line 4248
    .end local v11           #rawContactId:J
    :cond_48
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4251
    return v9

    .line 4248
    :catchall_4c
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateSearchIndexInTransaction()V
    .registers 4

    .prologue
    .line 2277
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v2}, Lcom/android/providers/contacts/TransactionContext;->getStaleSearchIndexContactIds()Ljava/util/Set;

    move-result-object v0

    .line 2278
    .local v0, staleContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v2}, Lcom/android/providers/contacts/TransactionContext;->getStaleSearchIndexRawContactIds()Ljava/util/Set;

    move-result-object v1

    .line 2279
    .local v1, staleRawContacts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 2280
    :cond_24
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/SearchIndexManager;->updateIndexForRawContacts(Ljava/util/Set;Ljava/util/Set;)V

    .line 2281
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v2}, Lcom/android/providers/contacts/TransactionContext;->clearSearchIndexUpdates()V

    .line 2283
    :cond_34
    return-void
.end method

.method private updateSettings(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 4218
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4219
    .local v0, count:I
    const-string v1, "ungrouped_visible"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 4220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 4222
    :cond_19
    return v0
.end method

.method private updateStatusUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 4072
    const/4 v1, 0x0

    .line 4073
    .local v1, updateCount:I
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getSettableColumnsForStatusUpdatesTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 4074
    .local v0, settableValues:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 4075
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "status_updates"

    invoke-direct {p0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->getWhereClauseForStatusUpdatesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4082
    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->getSettableColumnsForPresenceTable(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 4083
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 4084
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "presence"

    invoke-virtual {v2, v3, v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 4089
    :cond_35
    return v1
.end method

.method private updateStreamItemPhotos(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4112
    const-string v0, "stream_item_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4115
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 4116
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccountForStreamItemPhotos(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 4120
    const-string v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4121
    const-string v0, "account_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4124
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->processStreamItemPhoto(Landroid/content/ContentValues;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4126
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_item_photos"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4129
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private updateStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4095
    const-string v0, "raw_contact_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4098
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->resolveAccount(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/accounts/Account;

    move-result-object v0

    .line 4099
    invoke-direct {p0, v0, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->enforceModifyingAccountForStreamItems(Landroid/accounts/Account;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 4102
    const-string v0, "account_name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4103
    const-string v0, "account_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4106
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private waitForAccess(Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .parameter "latch"

    .prologue
    .line 1983
    if-nez p1, :cond_b

    .line 1990
    :goto_2
    return-void

    .line 1991
    :catch_3
    move-exception v0

    .line 1992
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1989
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_3

    goto :goto_2
.end method


# virtual methods
.method public appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 7579
    const-string v0, "(SELECT DISTINCT contact_id FROM raw_contacts JOIN name_lookup ON(raw_contacts._id=raw_contact_id) WHERE normalized_name GLOB \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7586
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7587
    const-string v0, "*\' AND name_type IN(2,4,3))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7589
    return-void
.end method

.method public appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6508
    const/4 v6, 0x0

    .line 6509
    const/4 v5, 0x0

    .line 6510
    const/4 v4, 0x0

    .line 6511
    const/4 v3, 0x0

    .line 6512
    const/4 v2, 0x0

    .line 6516
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->isSingleWordQuery(Ljava/lang/String;)Z

    move-result v12

    .line 6518
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_c0

    .line 6519
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6520
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bd

    const/4 v1, 0x1

    :goto_25
    move-object v7, v2

    move-object v8, v3

    move v9, v4

    move-object v10, v5

    move v11, v1

    .line 6530
    :goto_2a
    const-string v1, "snippet_contact_id"

    .line 6531
    const-string v1, " JOIN (SELECT contact_id AS snippet_contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6532
    if-eqz p3, :cond_90

    .line 6533
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6534
    if-eqz v11, :cond_ef

    .line 6535
    const-string v1, "ifnull("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6536
    move-object/from16 v0, p4

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6537
    const-string v1, "||(SELECT MIN(data1)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6538
    const-string v1, " FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6539
    const-string v1, " WHERE  search_index.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6540
    const-string v1, "=contact_id AND data1 LIKE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6542
    const-string v1, ")||"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6543
    move-object/from16 v0, p5

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6544
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6547
    if-eqz v12, :cond_e1

    if-eqz p8, :cond_e1

    .line 6548
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6552
    :goto_86
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6607
    :goto_8b
    const-string v1, " AS snippet"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6610
    :cond_90
    const-string v1, " FROM search_index"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6611
    const-string v1, " WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6612
    const-string v1, "search_index MATCH \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6613
    if-eqz v11, :cond_1ea

    .line 6619
    if-nez v10, :cond_1e4

    const-string v1, ""

    .line 6621
    :goto_a5
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6622
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6623
    const-string v1, "*\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6647
    :goto_b2
    const-string v1, "\' AND snippet_contact_id IN default_directory)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6648
    const-string v1, " ON (_id=snippet_contact_id)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6649
    return-void

    .line 6520
    :cond_bd
    const/4 v1, 0x0

    goto/16 :goto_25

    .line 6522
    :cond_c0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    .line 6523
    if-eqz v4, :cond_252

    .line 6524
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6525
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v8, v2

    move v9, v4

    move-object v10, v5

    move v11, v6

    goto/16 :goto_2a

    :cond_e1
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 6550
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_86

    .line 6553
    :cond_ef
    if-eqz v9, :cond_166

    .line 6554
    const-string v1, "ifnull("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6555
    move-object/from16 v0, p4

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6556
    const-string v1, "||(SELECT MIN(data1)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6557
    const-string v1, " FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN phone_lookup"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6559
    const-string v1, " ON data._id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6560
    const-string v1, "=phone_lookup.data_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6561
    const-string v1, " WHERE  search_index.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6562
    const-string v1, "=contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6563
    const-string v1, " AND normalized_number LIKE \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6564
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6565
    const-string v1, "%\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6566
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_139

    .line 6567
    const-string v1, " OR normalized_number LIKE \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6568
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6569
    const-string v1, "%\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6571
    :cond_139
    const-string v1, ")||"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6572
    move-object/from16 v0, p5

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6573
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6576
    if-eqz v12, :cond_158

    if-eqz p8, :cond_158

    .line 6577
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6581
    :goto_151
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8b

    :cond_158
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 6579
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_151

    .line 6583
    :cond_166
    invoke-static {p2}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6584
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1dd

    .line 6586
    if-eqz v12, :cond_17b

    if-eqz p8, :cond_17b

    .line 6587
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8b

    .line 6589
    :cond_17b
    const-string v2, "(CASE WHEN EXISTS (SELECT 1 FROM "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6590
    const-string v2, "raw_contacts AS rc INNER JOIN "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6591
    const-string v2, "name_lookup AS nl ON (rc._id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6592
    const-string v2, "=nl.raw_contact_id"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6593
    const-string v2, ") WHERE nl.normalized_name"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GLOB \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6595
    const-string v1, "nl.name_type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6596
    const-string v1, "2 AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6597
    const-string v1, "search_index.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6598
    const-string v1, "=rc.contact_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6599
    const-string v1, ") THEN NULL ELSE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 6600
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->appendSnippetFunction(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 6601
    const-string v1, " END)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8b

    .line 6604
    :cond_1dd
    const-string v1, "NULL"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8b

    .line 6619
    :cond_1e4
    invoke-static {v10}, Lcom/android/providers/contacts/ContactsProvider2;->sanitizeMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a5

    .line 6624
    :cond_1ea
    if-eqz v9, :cond_247

    .line 6626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OR tokens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6629
    if-eqz v7, :cond_244

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_244

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OR tokens:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6635
    :goto_226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6639
    invoke-static {v1}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->getDigitsQueryBuilder(Ljava/lang/String;)Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/providers/contacts/SearchIndexManager;->getFtsMatchQuery(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    .line 6629
    :cond_244
    const-string v1, ""

    goto :goto_226

    .line 6643
    :cond_247
    sget-object v1, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->SCOPED_NAME_NORMALIZING:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    invoke-static {p2, v1}, Lcom/android/providers/contacts/SearchIndexManager;->getFtsMatchQuery(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b2

    :cond_252
    move-object v7, v2

    move-object v8, v3

    move v9, v4

    move-object v10, v5

    move v11, v6

    goto/16 :goto_2a
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 2227
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 2228
    invoke-super {p0, p1}, Lcom/android/providers/contacts/AbstractContactsProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 2234
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 2140
    const-string v0, "authorize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2141
    const-string v0, "uri_to_authorize"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2145
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->enforceSocialStreamReadPermission(Landroid/net/Uri;)V

    .line 2146
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDb(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2147
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/ProfileProvider;->enforceReadPermission(Landroid/net/Uri;)V

    .line 2151
    :cond_23
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->preAuthorizeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2153
    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2156
    :goto_31
    return-object v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method protected cleanupPhotoStore()V
    .registers 20

    .prologue
    .line 1730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v5

    .line 1737
    const-string v3, "view_data"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "data14"

    aput-object v8, v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimetype_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data14"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NOT NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1740
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 1741
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 1743
    :goto_69
    :try_start_69
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1744
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1745
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1746
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1747
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v11, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8b
    .catchall {:try_start_69 .. :try_end_8b} :catchall_8c

    goto :goto_69

    .line 1750
    :catchall_8c
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_91
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1754
    const-string v3, "stream_item_photos JOIN stream_items ON stream_item_id=stream_items._id JOIN raw_contacts ON raw_contact_id=raw_contacts._id"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "stream_item_photos._id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "stream_item_photos.stream_item_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "photo_file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "account_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1766
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 1767
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 1768
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 1770
    :goto_c7
    :try_start_c7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_120

    .line 1771
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1772
    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1773
    const/4 v8, 0x2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1774
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1775
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1776
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1777
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    new-instance v6, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11a
    .catchall {:try_start_c7 .. :try_end_11a} :catchall_11b

    goto :goto_c7

    .line 1783
    :catchall_11b
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_120
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mPhotoStore:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v3, v10}, Lcom/android/providers/contacts/PhotoStore;->cleanup(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1791
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b5

    .line 1793
    :try_start_137
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 1794
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_140
    :goto_140
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1795
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_180

    .line 1796
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1797
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1798
    const-string v6, "data14"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1799
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    .line 1802
    :cond_180
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 1805
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1806
    const-string v5, "stream_item_photos"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1a9
    .catchall {:try_start_137 .. :try_end_1a9} :catchall_1bd
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_1a9} :catch_1aa

    goto :goto_140

    .line 1811
    :catch_1aa
    move-exception v3

    .line 1813
    :try_start_1ab
    const-string v4, "ContactsProvider"

    const-string v5, "Failed to clean up outdated photo references"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b2
    .catchall {:try_start_1ab .. :try_end_1b2} :catchall_1bd

    .line 1815
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1818
    :cond_1b5
    :goto_1b5
    return-void

    .line 1810
    :cond_1b6
    :try_start_1b6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b9
    .catchall {:try_start_1b6 .. :try_end_1b9} :catchall_1bd
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1b9} :catch_1aa

    .line 1815
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1b5

    :catchall_1bd
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method createPhotoPriorityResolver(Landroid/content/Context;)Lcom/android/providers/contacts/PhotoPriorityResolver;
    .registers 3
    .parameter "context"

    .prologue
    .line 1528
    new-instance v0, Lcom/android/providers/contacts/PhotoPriorityResolver;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/PhotoPriorityResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 2118
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->enforceSocialStreamWritePermission(Landroid/net/Uri;)V

    .line 2120
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDb(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2121
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 2122
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ProfileProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2125
    :goto_17
    return v0

    .line 2124
    :cond_18
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 2125
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_17
.end method

.method public deleteData(J[Ljava/lang/String;)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3056
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 3057
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3061
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_54

    move-result v0

    if-nez v0, :cond_23

    .line 3081
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v6

    :goto_22
    return v0

    .line 3065
    :cond_23
    const/4 v0, 0x1

    :try_start_24
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v0, v6

    .line 3067
    :goto_29
    array-length v3, p3

    if-ge v0, v3, :cond_35

    .line 3068
    aget-object v3, p3, v0

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_59

    move v6, v7

    .line 3074
    :cond_35
    if-nez v6, :cond_5c

    .line 3075
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data type mismatch: expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catchall {:try_start_24 .. :try_end_54} :catchall_54

    .line 3081
    :catchall_54
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3067
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 3078
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v3

    .line 3079
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_54

    move-result v0

    .line 3081
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_22
.end method

.method public deleteGroup(Landroid/net/Uri;JZ)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3673
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mGroupIdCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3674
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    .line 3676
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3681
    if-eqz p4, :cond_72

    .line 3682
    :try_start_4d
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_b6

    move-result v0

    .line 3691
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    :goto_71
    return v0

    .line 3684
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 3685
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3686
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v1, "dirty"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3687
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_72 .. :try_end_b2} :catchall_b6

    move-result v0

    .line 3691
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    goto :goto_71

    :catchall_b6
    move-exception v0

    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    throw v0
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3457
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_1c

    .line 3458
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    :cond_1c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 3463
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3466
    :cond_2f
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 3467
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v9

    .line 3469
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3470
    sparse-switch v0, :sswitch_data_3c0

    .line 3666
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3667
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_4b
    return v0

    .line 3473
    :sswitch_4c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_4b

    .line 3477
    :sswitch_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_a3

    const-string v0, ""

    :goto_82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3480
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, v1, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_4b

    .line 3477
    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    .line 3485
    :sswitch_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_f6

    const-string v0, ""

    :goto_da
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3488
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, v1, p3}, Lcom/android/common/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3485
    :cond_f6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_da

    .line 3494
    :sswitch_110
    const/4 v0, 0x0

    goto/16 :goto_4b

    .line 3498
    :sswitch_113
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3499
    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(JZ)I

    move-result v0

    goto/16 :goto_4b

    .line 3503
    :sswitch_11d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3504
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3505
    const/4 v2, 0x3

    if-ge v1, v2, :cond_13c

    .line 3506
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3509
    :cond_13c
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3510
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3511
    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(JZ)I

    move-result v0

    goto/16 :goto_4b

    .line 3516
    :sswitch_155
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3517
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3518
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3519
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 3520
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 3522
    if-nez p3, :cond_1a7

    .line 3523
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 3528
    :goto_172
    const/4 v1, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 3529
    const/4 v1, 0x1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 3530
    const-string v0, "_id=? AND lookup=?"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3531
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3534
    :try_start_197
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1b3

    .line 3536
    invoke-direct {p0, v10, v11, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteContact(JZ)I
    :try_end_1a1
    .catchall {:try_start_197 .. :try_end_1a1} :catchall_1b9

    move-result v0

    .line 3543
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4b

    .line 3525
    :cond_1a7
    array-length v1, p3

    add-int/lit8 v1, v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 3526
    const/4 v1, 0x0

    const/4 v3, 0x2

    array-length v4, p3

    invoke-static {p3, v1, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_172

    .line 3540
    :cond_1b3
    const/4 v0, 0x0

    .line 3543
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4b

    :catchall_1b9
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3549
    :sswitch_1be
    const/4 v8, 0x0

    .line 3550
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move v6, v8

    .line 3554
    :goto_1e3
    :try_start_1e3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 3555
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3556
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object v0, p0

    move v5, v9

    .line 3557
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I
    :try_end_1f8
    .catchall {:try_start_1e3 .. :try_end_1f8} :catchall_201

    move-result v0

    add-int/2addr v6, v0

    .line 3559
    goto :goto_1e3

    .line 3561
    :cond_1fb
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 3563
    goto/16 :goto_4b

    .line 3561
    :catchall_201
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3568
    :sswitch_206
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3569
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v3

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v0

    goto/16 :goto_4b

    .line 3575
    :sswitch_21e
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_230

    const/4 v0, 0x1

    :goto_223
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3576
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_4b

    .line 3575
    :cond_230
    const/4 v0, 0x0

    goto :goto_223

    .line 3585
    :sswitch_232
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3586
    iget-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_251

    const/4 v0, 0x1

    :goto_23b
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3587
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 3588
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    goto/16 :goto_4b

    .line 3586
    :cond_251
    const/4 v0, 0x0

    goto :goto_23b

    .line 3592
    :sswitch_253
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_265

    const/4 v0, 0x1

    :goto_258
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3593
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v0

    goto/16 :goto_4b

    .line 3592
    :cond_265
    const/4 v0, 0x0

    goto :goto_258

    .line 3597
    :sswitch_267
    const/4 v8, 0x0

    .line 3598
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v1, v8

    .line 3601
    :goto_287
    :try_start_287
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_298

    .line 3602
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, p1, v3, v4, v9}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I
    :try_end_295
    .catchall {:try_start_287 .. :try_end_295} :catchall_2a8

    move-result v0

    add-int/2addr v1, v0

    goto :goto_287

    .line 3605
    :cond_298
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3607
    if-lez v1, :cond_2a5

    .line 3608
    iget-boolean v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_2ad

    const/4 v0, 0x1

    :goto_2a2
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    :cond_2a5
    move v0, v1

    .line 3610
    goto/16 :goto_4b

    .line 3605
    :catchall_2a8
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 3608
    :cond_2ad
    const/4 v0, 0x0

    goto :goto_2a2

    .line 3614
    :sswitch_2af
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_2c1

    const/4 v0, 0x1

    :goto_2b4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3615
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteSettings(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3614
    :cond_2c1
    const/4 v0, 0x0

    goto :goto_2b4

    .line 3620
    :sswitch_2c3
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStatusUpdates(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3624
    :sswitch_2c9
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_2dc

    const/4 v0, 0x1

    :goto_2ce
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3625
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3624
    :cond_2dc
    const/4 v0, 0x0

    goto :goto_2ce

    .line 3629
    :sswitch_2de
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_2fd

    const/4 v0, 0x1

    :goto_2e3
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3630
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3629
    :cond_2fd
    const/4 v0, 0x0

    goto :goto_2e3

    .line 3636
    :sswitch_2ff
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_32c

    const/4 v0, 0x1

    :goto_304
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3637
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3638
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 3639
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "raw_contact_id=? AND _id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3636
    :cond_32c
    const/4 v0, 0x0

    goto :goto_304

    .line 3646
    :sswitch_32e
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_36d

    const/4 v0, 0x1

    :goto_333
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3647
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream_item_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_36f

    const-string v0, ""

    :goto_35a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3651
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItemPhotos(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3646
    :cond_36d
    const/4 v0, 0x0

    goto :goto_333

    .line 3648
    :cond_36f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35a

    .line 3656
    :sswitch_389
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v9, :cond_3bd

    const/4 v0, 0x1

    :goto_38e
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 3657
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3658
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3659
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "stream_item_photos._id=? AND stream_item_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItemPhotos(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4b

    .line 3656
    :cond_3bd
    const/4 v0, 0x0

    goto :goto_38e

    .line 3470
    nop

    :sswitch_data_3c0
    .sparse-switch
        0x3e8 -> :sswitch_110
        0x3e9 -> :sswitch_113
        0x3ea -> :sswitch_11d
        0x3eb -> :sswitch_155
        0x7d2 -> :sswitch_1be
        0x7d3 -> :sswitch_206
        0x7d8 -> :sswitch_2ff
        0xbb8 -> :sswitch_21e
        0xbb9 -> :sswitch_232
        0xbbb -> :sswitch_232
        0xbbe -> :sswitch_232
        0xbc2 -> :sswitch_232
        0x1b58 -> :sswitch_2c3
        0x2328 -> :sswitch_2af
        0x2710 -> :sswitch_267
        0x2711 -> :sswitch_253
        0x2af8 -> :sswitch_4c
        0x2af9 -> :sswitch_65
        0x2afa -> :sswitch_4c
        0x2afb -> :sswitch_bd
        0x4a3a -> :sswitch_21e
        0x4a3b -> :sswitch_232
        0x4a3d -> :sswitch_1be
        0x4a3e -> :sswitch_206
        0x4a41 -> :sswitch_2c3
        0x5208 -> :sswitch_2c9
        0x520a -> :sswitch_2de
        0x520b -> :sswitch_32e
        0x520c -> :sswitch_389
    .end sparse-switch
.end method

.method public deleteRawContact(JJZ)I
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3721
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->invalidateAggregationExceptionCache()V

    .line 3722
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 3725
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "stream_items"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "raw_contact_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3730
    :goto_30
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3731
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteStreamItem(J)I
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3f

    goto :goto_30

    .line 3734
    :catchall_3f
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3737
    if-nez p5, :cond_4f

    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->rawContactIsLocal(J)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 3738
    :cond_4f
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "presence"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presence_raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3740
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "raw_contacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3742
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    move v0, v2

    .line 3746
    :goto_a4
    return v0

    .line 3745
    :cond_a5
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->removeContactIfSingleton(J)V

    .line 3746
    invoke-direct {p0, p1, p2, p5}, Lcom/android/providers/contacts/ContactsProvider2;->markRawContactAsDeleted(JZ)I

    move-result v0

    goto :goto_a4
.end method

.method public getContactDirectoryManagerForTest()Lcom/android/providers/contacts/ContactDirectoryManager;
    .registers 2

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    return-object v0
.end method

.method public getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;
    .registers 6
    .parameter "mimeType"

    .prologue
    .line 2357
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->inProfileMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2358
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandlerForProfile(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 2366
    :cond_a
    :goto_a
    return-object v0

    .line 2360
    :cond_b
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandler;

    .line 2361
    .local v0, handler:Lcom/android/providers/contacts/DataRowHandler;
    if-nez v0, :cond_a

    .line 2362
    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;

    .end local v0           #handler:Lcom/android/providers/contacts/DataRowHandler;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 2364
    .restart local v0       #handler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public getDataRowHandlerForProfile(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;
    .registers 6
    .parameter "mimeType"

    .prologue
    .line 2370
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/DataRowHandler;

    .line 2371
    .local v0, handler:Lcom/android/providers/contacts/DataRowHandler;
    if-nez v0, :cond_1c

    .line 2372
    new-instance v0, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;

    .end local v0           #handler:Lcom/android/providers/contacts/DataRowHandler;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 2374
    .restart local v0       #handler:Lcom/android/providers/contacts/DataRowHandler;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileDataRowHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    :cond_1c
    return-object v0
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 3
    .parameter "x0"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 1822
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultAccount()Landroid/accounts/Account;
    .registers 4

    .prologue
    .line 7681
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 7683
    :try_start_8
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 7684
    if-eqz v0, :cond_1f

    array-length v1, v0

    if-lez v1, :cond_1f

    .line 7685
    const/4 v1, 0x0

    aget-object v0, v0, v1
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_16} :catch_17

    .line 7690
    :goto_16
    return-object v0

    .line 7687
    :catch_17
    move-exception v0

    .line 7688
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot determine the default account for contacts compatibility"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7690
    :cond_1f
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getDefaultProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 7506
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 7507
    .local v0, match:I
    sparse-switch v0, :sswitch_data_4a

    .line 7556
    const/4 v1, 0x0

    :goto_a
    return-object v1

    .line 7514
    :sswitch_b
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7518
    :sswitch_12
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sEntityProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7523
    :sswitch_19
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7529
    :sswitch_20
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7539
    :sswitch_27
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7542
    :sswitch_2e
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7546
    :sswitch_35
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7549
    :sswitch_3c
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7553
    :sswitch_43
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ProjectionMap;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 7507
    :sswitch_data_4a
    .sparse-switch
        0x3e8 -> :sswitch_b
        0x3e9 -> :sswitch_b
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_b
        0x3f7 -> :sswitch_19
        0x3f8 -> :sswitch_19
        0x3fb -> :sswitch_12
        0x7d2 -> :sswitch_20
        0x7d3 -> :sswitch_20
        0xbb9 -> :sswitch_27
        0xbba -> :sswitch_27
        0xbbb -> :sswitch_27
        0xbbd -> :sswitch_27
        0xbbe -> :sswitch_27
        0xbc1 -> :sswitch_27
        0xbc2 -> :sswitch_27
        0xfa0 -> :sswitch_2e
        0x1770 -> :sswitch_35
        0x1771 -> :sswitch_35
        0x1f40 -> :sswitch_b
        0x2328 -> :sswitch_3c
        0x4269 -> :sswitch_43
        0x426a -> :sswitch_43
        0x4a38 -> :sswitch_b
        0x4a39 -> :sswitch_12
        0x4a3a -> :sswitch_27
        0x4a3c -> :sswitch_19
        0x4a3d -> :sswitch_20
        0x4a3e -> :sswitch_20
    .end sparse-switch
.end method

.method protected getLegacyContactImporter()Lcom/android/providers/contacts/LegacyContactImporter;
    .registers 3

    .prologue
    .line 1882
    new-instance v0, Lcom/android/providers/contacts/LegacyContactImporter;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/providers/contacts/LegacyContactImporter;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V

    return-object v0
.end method

.method protected getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 1867
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method getMaxThumbnailPhotoDim()I
    .registers 2

    .prologue
    .line 1849
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxThumbnailPhotoDim:I

    return v0
.end method

.method getNameLookupBuilder()Lcom/android/providers/contacts/NameLookupBuilder;
    .registers 2

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    return-object v0
.end method

.method getNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .registers 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method getPhotoStore()Lcom/android/providers/contacts/PhotoStore;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method getProfilePhotoStore()Lcom/android/providers/contacts/PhotoStore;
    .registers 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;

    return-object v0
.end method

.method public getProfileProvider()Lcom/android/providers/contacts/ProfileProvider;
    .registers 2

    .prologue
    .line 1831
    new-instance v0, Lcom/android/providers/contacts/ProfileProvider;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/ProfileProvider;-><init>(Lcom/android/providers/contacts/ContactsProvider2;)V

    return-object v0
.end method

.method protected getTransactionHolder()Ljava/lang/ThreadLocal;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionHolder:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 7420
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 7422
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 7423
    sparse-switch v0, :sswitch_data_94

    .line 7501
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    .line 7425
    :sswitch_15
    const-string v0, "vnd.android.cursor.dir/contact"

    goto :goto_14

    .line 7430
    :sswitch_18
    const-string v0, "vnd.android.cursor.item/contact"

    goto :goto_14

    .line 7434
    :sswitch_1b
    const-string v0, "text/x-vcard"

    goto :goto_14

    .line 7443
    :sswitch_1e
    const-string v0, "image/jpeg"

    goto :goto_14

    .line 7446
    :sswitch_21
    const-string v0, "vnd.android.cursor.dir/raw_contact"

    goto :goto_14

    .line 7449
    :sswitch_24
    const-string v0, "vnd.android.cursor.item/raw_contact"

    goto :goto_14

    .line 7452
    :sswitch_27
    const-string v0, "vnd.android.cursor.dir/data"

    goto :goto_14

    .line 7454
    :sswitch_2a
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 7455
    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7456
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getDataMimeType(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 7458
    :cond_3b
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataMimeType(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 7461
    :sswitch_42
    const-string v0, "vnd.android.cursor.dir/phone_v2"

    goto :goto_14

    .line 7463
    :sswitch_45
    const-string v0, "vnd.android.cursor.item/phone_v2"

    goto :goto_14

    .line 7465
    :sswitch_48
    const-string v0, "vnd.android.cursor.dir/phone_lookup"

    goto :goto_14

    .line 7467
    :sswitch_4b
    const-string v0, "vnd.android.cursor.dir/email_v2"

    goto :goto_14

    .line 7469
    :sswitch_4e
    const-string v0, "vnd.android.cursor.item/email_v2"

    goto :goto_14

    .line 7471
    :sswitch_51
    const-string v0, "vnd.android.cursor.dir/postal-address_v2"

    goto :goto_14

    .line 7473
    :sswitch_54
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    goto :goto_14

    .line 7475
    :sswitch_57
    const-string v0, "vnd.android.cursor.dir/aggregation_exception"

    goto :goto_14

    .line 7477
    :sswitch_5a
    const-string v0, "vnd.android.cursor.item/aggregation_exception"

    goto :goto_14

    .line 7479
    :sswitch_5d
    const-string v0, "vnd.android.cursor.dir/setting"

    goto :goto_14

    .line 7481
    :sswitch_60
    const-string v0, "vnd.android.cursor.dir/contact"

    goto :goto_14

    .line 7483
    :sswitch_63
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_14

    .line 7485
    :sswitch_66
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_14

    .line 7487
    :sswitch_69
    const-string v0, "vnd.android.cursor.dir/contact_directories"

    goto :goto_14

    .line 7489
    :sswitch_6c
    const-string v0, "vnd.android.cursor.item/contact_directory"

    goto :goto_14

    .line 7491
    :sswitch_6f
    const-string v0, "vnd.android.cursor.dir/stream_item"

    goto :goto_14

    .line 7493
    :sswitch_72
    const-string v0, "vnd.android.cursor.item/stream_item"

    goto :goto_14

    .line 7495
    :sswitch_75
    const-string v0, "vnd.android.cursor.dir/stream_item_photo"

    goto :goto_14

    .line 7497
    :sswitch_78
    const-string v0, "vnd.android.cursor.item/stream_item_photo"

    goto :goto_14

    .line 7499
    :sswitch_7b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported for write-only URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7423
    :sswitch_data_94
    .sparse-switch
        0x3e8 -> :sswitch_15
        0x3e9 -> :sswitch_18
        0x3ea -> :sswitch_18
        0x3eb -> :sswitch_18
        0x3f1 -> :sswitch_1e
        0x3f2 -> :sswitch_1e
        0x3f3 -> :sswitch_1e
        0x3f4 -> :sswitch_1e
        0x3f5 -> :sswitch_1e
        0x3f6 -> :sswitch_1e
        0x3f7 -> :sswitch_1b
        0x3f8 -> :sswitch_1b
        0x7d2 -> :sswitch_21
        0x7d3 -> :sswitch_24
        0x7d6 -> :sswitch_1e
        0xbb8 -> :sswitch_27
        0xbb9 -> :sswitch_2a
        0xbba -> :sswitch_42
        0xbbb -> :sswitch_45
        0xbbd -> :sswitch_4b
        0xbbe -> :sswitch_4e
        0xbc1 -> :sswitch_51
        0xbc2 -> :sswitch_54
        0xfa0 -> :sswitch_48
        0x1770 -> :sswitch_57
        0x1771 -> :sswitch_5a
        0x1f40 -> :sswitch_60
        0x2328 -> :sswitch_5d
        0x2ee1 -> :sswitch_63
        0x2ee2 -> :sswitch_66
        0x4269 -> :sswitch_69
        0x426a -> :sswitch_6c
        0x4a38 -> :sswitch_18
        0x4a3a -> :sswitch_27
        0x4a3c -> :sswitch_1b
        0x4a3d -> :sswitch_21
        0x4a3e -> :sswitch_24
        0x5208 -> :sswitch_6f
        0x5209 -> :sswitch_7b
        0x520a -> :sswitch_72
        0x520b -> :sswitch_75
        0x520c -> :sswitch_78
        0x55f0 -> :sswitch_1e
    .end sparse-switch
.end method

.method importLegacyContacts(Lcom/android/providers/contacts/LegacyContactImporter;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1948
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v1

    .line 1949
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V

    .line 1951
    :try_start_c
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->importContacts()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1954
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/ContactAggregator;->setEnabled(Z)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_17} :catch_19

    .line 1955
    const/4 v0, 0x1

    .line 1961
    :goto_18
    return v0

    .line 1957
    :catch_19
    move-exception v1

    .line 1958
    const-string v2, "ContactsProvider"

    const-string v3, "Legacy contact import failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1960
    :cond_21
    invoke-virtual {p1}, Lcom/android/providers/contacts/LegacyContactImporter;->getEstimatedStorageRequirement()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mEstimatedStorageRequirement:J

    goto :goto_18
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 2071
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->enforceSocialStreamWritePermission(Landroid/net/Uri;)V

    .line 2073
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDbWithInsertedValues(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2074
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 2075
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ProfileProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2078
    :goto_17
    return-object v0

    .line 2077
    :cond_18
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 2078
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_17
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2381
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_2a

    .line 2382
    const-string v0, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertInTransaction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_2a
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 2387
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2390
    :cond_3d
    const-string v0, "caller_is_syncadapter"

    invoke-static {p1, v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v7

    .line 2393
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2396
    sparse-switch v0, :sswitch_data_14e

    .line 2480
    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2481
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2488
    :goto_54
    return-object v0

    .line 2399
    :sswitch_55
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2}, Lcom/android/common/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2484
    :goto_6d
    cmp-long v2, v0, v3

    if-gez v2, :cond_147

    .line 2485
    const/4 v0, 0x0

    goto :goto_54

    .line 2403
    :sswitch_73
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertContact(Landroid/content/ContentValues;)J

    move-wide v0, v3

    .line 2404
    goto :goto_6d

    .line 2408
    :sswitch_78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The profile contact is created automatically"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2414
    :sswitch_80
    invoke-direct {p0, p1, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->insertRawContact(Landroid/net/Uri;Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2415
    iget-boolean v8, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_8e

    move v0, v1

    :goto_89
    or-int/2addr v0, v8

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2416
    goto :goto_6d

    :cond_8e
    move v0, v2

    .line 2415
    goto :goto_89

    .line 2421
    :sswitch_90
    const/16 v5, 0x7d4

    if-ne v0, v5, :cond_b1

    move v0, v1

    .line 2422
    :goto_95
    const-string v5, "raw_contact_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    invoke-direct {p0, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2424
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_b3

    :goto_ac
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2425
    goto :goto_6d

    .line 2421
    :cond_b1
    const/4 v0, 0x2

    goto :goto_95

    :cond_b3
    move v1, v2

    .line 2424
    goto :goto_ac

    .line 2429
    :sswitch_b5
    const-string v5, "raw_contact_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertStreamItem(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2431
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_d1

    :goto_cc
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2432
    goto :goto_6d

    :cond_d1
    move v1, v2

    .line 2431
    goto :goto_cc

    .line 2437
    :sswitch_d3
    invoke-direct {p0, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->insertData(Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2438
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_e0

    :goto_db
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2439
    goto :goto_6d

    :cond_e0
    move v1, v2

    .line 2438
    goto :goto_db

    .line 2443
    :sswitch_e2
    invoke-direct {p0, p1, p2, v7}, Lcom/android/providers/contacts/ContactsProvider2;->insertGroup(Landroid/net/Uri;Landroid/content/ContentValues;Z)J

    move-result-wide v5

    .line 2444
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_f0

    :goto_ea
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2445
    goto/16 :goto_6d

    :cond_f0
    move v1, v2

    .line 2444
    goto :goto_ea

    .line 2449
    :sswitch_f2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertSettings(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2450
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_100

    :goto_fa
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2451
    goto/16 :goto_6d

    :cond_100
    move v1, v2

    .line 2450
    goto :goto_fa

    .line 2456
    :sswitch_102
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertStatusUpdate(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_6d

    .line 2461
    :sswitch_108
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertStreamItem(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2462
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_116

    :goto_110
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2463
    goto/16 :goto_6d

    :cond_116
    move v1, v2

    .line 2462
    goto :goto_110

    .line 2467
    :sswitch_118
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertStreamItemPhoto(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2468
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_126

    :goto_120
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2469
    goto/16 :goto_6d

    :cond_126
    move v1, v2

    .line 2468
    goto :goto_120

    .line 2473
    :sswitch_128
    const-string v5, "stream_item_id"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertStreamItemPhoto(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 2475
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v7, :cond_145

    :goto_13f
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move-wide v0, v5

    .line 2476
    goto/16 :goto_6d

    :cond_145
    move v1, v2

    .line 2475
    goto :goto_13f

    .line 2488
    :cond_147
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_54

    .line 2396
    nop

    :sswitch_data_14e
    .sparse-switch
        0x3e8 -> :sswitch_73
        0x7d2 -> :sswitch_80
        0x7d4 -> :sswitch_90
        0x7d7 -> :sswitch_b5
        0xbb8 -> :sswitch_d3
        0x1b58 -> :sswitch_102
        0x2328 -> :sswitch_f2
        0x2710 -> :sswitch_e2
        0x2af8 -> :sswitch_55
        0x2afa -> :sswitch_55
        0x4a38 -> :sswitch_78
        0x4a3a -> :sswitch_d3
        0x4a3d -> :sswitch_80
        0x4a3f -> :sswitch_90
        0x4a41 -> :sswitch_102
        0x5208 -> :sswitch_108
        0x5209 -> :sswitch_118
        0x520b -> :sswitch_128
    .end sparse-switch
.end method

.method public insertStatusUpdate(Landroid/content/ContentValues;)J
    .registers 21
    .parameter

    .prologue
    .line 3214
    const-string v2, "im_handle"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3215
    const-string v2, "protocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 3216
    const/4 v2, 0x0

    .line 3218
    if-eqz v13, :cond_3e0

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3e0

    .line 3219
    const-string v2, "custom_protocol"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3220
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3221
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CUSTOM_PROTOCOL is required when PROTOCOL=PROTOCOL_CUSTOM"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    move-object v10, v2

    .line 3228
    :goto_31
    const-string v2, "presence_data_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3233
    if-eqz v2, :cond_1f0

    .line 3236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v4, "data._id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3291
    :cond_5e
    :goto_5e
    const/4 v11, 0x0

    .line 3293
    :try_start_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2$DataContactsQuery;->PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/providers/contacts/ContactsProvider2;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) DESC, raw_contact_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_2e7

    move-result-object v4

    .line 3296
    :try_start_89
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2de

    .line 3297
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3298
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 3299
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3300
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3301
    const/4 v2, 0x5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_ab
    .catchall {:try_start_89 .. :try_end_ab} :catchall_3dc

    move-result-wide v17

    .line 3307
    if-eqz v4, :cond_b1

    .line 3308
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3312
    :cond_b1
    const-string v2, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 3313
    if-nez v10, :cond_bf

    .line 3316
    const-string v10, ""

    .line 3319
    :cond_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 3320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "presence_data_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "presence_raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "presence_contact_id"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "protocol"

    invoke-virtual {v2, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "custom_protocol"

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "im_handle"

    invoke-virtual {v2, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    const-string v2, "im_account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 3327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "im_account"

    const-string v5, "im_account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    :cond_11f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "mode"

    const-string v5, "mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    const-string v4, "chat_capability"

    const-string v5, "chat_capability"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "presence"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3339
    :cond_155
    const-string v2, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    .line 3340
    const-string v2, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3341
    const-string v2, "status_res_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3342
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3343
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_189

    .line 3344
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3346
    :try_start_185
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_188
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_185 .. :try_end_188} :catch_2ef

    move-result-object v2

    .line 3352
    :cond_189
    :goto_189
    const-string v4, "status_label"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 3354
    if-eqz v9, :cond_199

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1a7

    :cond_199
    if-eqz v13, :cond_1a7

    .line 3355
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3357
    :cond_1a7
    const-string v4, "string"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v9}, Lcom/android/providers/contacts/ContactsProvider2;->getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    .line 3359
    const-string v4, "status_icon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 3362
    const-string v4, "drawable"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v8}, Lcom/android/providers/contacts/ContactsProvider2;->getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v12

    .line 3364
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30a

    .line 3365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteStatusUpdate(J)V

    .line 3424
    :cond_1d6
    :goto_1d6
    const-wide/16 v4, -0x1

    cmp-long v2, v17, v4

    if-eqz v2, :cond_1eb

    .line 3425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactAggregator;

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLastStatusUpdateId(J)V

    .line 3428
    :cond_1eb
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_1ef
    :goto_1ef
    return-wide v2

    .line 3241
    :cond_1f0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f8

    if-nez v13, :cond_200

    .line 3242
    :cond_1f8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "PROTOCOL and IM_HANDLE are required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3246
    :cond_200
    const/4 v2, 0x5

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2a5

    const/4 v2, 0x1

    move v3, v2

    .line 3248
    :goto_209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForIm()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 3249
    if-eqz v3, :cond_2a9

    .line 3250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 3258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v5, "mimetype_id IN (?,?) AND data1=? AND ((mimetype_id=? AND data5=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3266
    if-eqz v10, :cond_271

    .line 3267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v4, " AND data6=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3270
    :cond_271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v4, ") OR (mimetype_id=?))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3285
    :cond_281
    :goto_281
    const-string v2, "presence_data_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 3286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " AND data._id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    const-string v3, "presence_data_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    .line 3246
    :cond_2a5
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_209

    .line 3273
    :cond_2a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v3, "mimetype_id=? AND data5=? AND data1=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3279
    if-eqz v10, :cond_281

    .line 3280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSb:Ljava/lang/StringBuilder;

    const-string v3, " AND data6=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_281

    .line 3304
    :cond_2de
    const-wide/16 v2, -0x1

    .line 3307
    if-eqz v4, :cond_1ef

    .line 3308
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1ef

    .line 3307
    :catchall_2e7
    move-exception v2

    move-object v3, v11

    :goto_2e9
    if-eqz v3, :cond_2ee

    .line 3308
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2ee
    throw v2

    .line 3347
    :catch_2ef
    move-exception v4

    .line 3348
    const-string v4, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contact status update resource package not found: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_189

    .line 3367
    :cond_30a
    const-string v2, "status_ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    .line 3368
    if-eqz v13, :cond_3bc

    .line 3369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v2 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 3380
    :goto_325
    const-wide/16 v4, -0x1

    cmp-long v2, v14, v4

    if-eqz v2, :cond_1d6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d6

    .line 3381
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3382
    const-string v4, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3384
    const-string v4, "text"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/contacts/ContactsProvider2;->statusUpdateToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    const-string v4, "comments"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    const-string v4, "res_package"

    invoke-virtual {v2, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    const-string v4, "icon"

    invoke-virtual {v2, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    const-string v4, "label"

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    const-string v6, "timestamp"

    if-nez v13, :cond_3cc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_368
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3398
    if-eqz v16, :cond_37f

    if-eqz v11, :cond_37f

    .line 3399
    const-string v4, "account_name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    const-string v4, "account_type"

    invoke-virtual {v2, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    :cond_37f
    sget-object v5, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    .line 3405
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const-string v7, "raw_contact_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v4

    .line 3410
    :try_start_39e
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3d1

    .line 3411
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3412
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b7
    .catchall {:try_start_39e .. :try_end_3b7} :catchall_3d7

    .line 3418
    :goto_3b7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1d6

    .line 3372
    :cond_3bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_325

    .line 3389
    :cond_3cc
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_368

    .line 3415
    :cond_3d1
    :try_start_3d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3d6
    .catchall {:try_start_3d1 .. :try_end_3d6} :catchall_3d7

    goto :goto_3b7

    .line 3418
    :catchall_3d7
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3307
    :catchall_3dc
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2e9

    :cond_3e0
    move-object v10, v2

    goto/16 :goto_31
.end method

.method protected isAggregationUpgradeNeeded()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 7810
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactAggregator;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 7816
    :cond_9
    :goto_9
    return v0

    .line 7814
    :cond_a
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "aggregation_v2"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7816
    const/4 v2, 0x2

    if-ge v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected isContactsAccount(Landroid/accounts/Account;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 4737
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 4739
    :try_start_5
    const-string v2, "com.android.contacts"

    invoke-interface {v1, p1, v2}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_f

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    .line 4742
    :cond_e
    :goto_e
    return v0

    .line 4740
    :catch_f
    move-exception v1

    .line 4741
    const-string v2, "ContactsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot obtain sync flag for account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method protected isLegacyContactImportNeeded()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1876
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts_imported_v1"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1878
    if-ge v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isPhone()Z
    .registers 3

    .prologue
    .line 7868
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhoneInitialized:Z

    if-nez v0, :cond_16

    .line 7869
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhone:Z

    .line 7870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhoneInitialized:Z

    .line 7872
    :cond_16
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->sIsPhone:Z

    return v0
.end method

.method public isPhoneNumber(Ljava/lang/String;)Z
    .registers 7
    .parameter "filter"

    .prologue
    .line 7592
    const/4 v0, 0x0

    .line 7593
    .local v0, atLeastOneDigit:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 7594
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v3, :cond_41

    .line 7595
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 7596
    .local v1, c:C
    const/16 v4, 0x30

    if-lt v1, v4, :cond_18

    const/16 v4, 0x39

    if-gt v1, v4, :cond_18

    .line 7597
    const/4 v0, 0x1

    .line 7594
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 7598
    :cond_18
    const/16 v4, 0x2a

    if-eq v1, v4, :cond_15

    const/16 v4, 0x23

    if-eq v1, v4, :cond_15

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_15

    const/16 v4, 0x4e

    if-eq v1, v4, :cond_15

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_15

    const/16 v4, 0x3b

    if-eq v1, v4, :cond_15

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_15

    const/16 v4, 0x28

    if-eq v1, v4, :cond_15

    const/16 v4, 0x29

    if-eq v1, v4, :cond_15

    const/16 v4, 0x20

    if-eq v1, v4, :cond_15

    .line 7600
    const/4 v0, 0x0

    .line 7603
    .end local v0           #atLeastOneDigit:Z
    .end local v1           #c:C
    :cond_41
    return v0
.end method

.method public isValidPreAuthorizedUri(Landroid/net/Uri;)Z
    .registers 10
    .parameter "uri"

    .prologue
    .line 2184
    const-string v6, "perm_token"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5a

    .line 2186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2187
    .local v3, now:J
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 2188
    .local v1, expiredUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUris:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 2189
    .local v5, preAuthUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUris:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_1a

    .line 2190
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2193
    .end local v5           #preAuthUri:Landroid/net/Uri;
    :cond_3a
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 2194
    .local v0, expiredUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUris:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 2198
    .end local v0           #expiredUri:Landroid/net/Uri;
    :cond_50
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPreAuthorizedUris:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 2200
    const/4 v6, 0x1

    .line 2203
    .end local v1           #expiredUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #now:J
    :goto_59
    return v6

    :cond_5a
    const/4 v6, 0x0

    goto :goto_59
.end method

.method protected isWritableAccountWithDataSet(Ljava/lang/String;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 7697
    if-nez p1, :cond_5

    .line 7698
    const/4 v0, 0x1

    .line 7725
    :goto_4
    return v0

    .line 7701
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 7702
    if-eqz v0, :cond_14

    .line 7703
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    .line 7706
    :cond_14
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 7709
    :try_start_18
    invoke-interface {v1}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_1e
    if-ge v1, v4, :cond_3c

    aget-object v5, v3, v1

    .line 7710
    const-string v6, "com.android.contacts"

    iget-object v7, v5, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    iget-object v6, v5, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 7712
    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3b} :catch_4f

    move-result-object v0

    .line 7720
    :cond_3c
    :goto_3c
    if-nez v0, :cond_42

    .line 7721
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 7724
    :cond_42
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7725
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    .line 7709
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 7716
    :catch_4f
    move-exception v1

    .line 7717
    const-string v1, "ContactsProvider"

    const-string v3, "Could not acquire sync adapter types"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 13
    .parameter "db"
    .parameter "lookupKey"

    .prologue
    const-wide/16 v8, -0x1

    .line 6145
    new-instance v5, Lcom/android/providers/contacts/ContactLookupKey;

    invoke-direct {v5}, Lcom/android/providers/contacts/ContactLookupKey;-><init>()V

    .line 6146
    .local v5, key:Lcom/android/providers/contacts/ContactLookupKey;
    invoke-virtual {v5, p2}, Lcom/android/providers/contacts/ContactLookupKey;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 6148
    .local v6, segments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;>;"
    const-wide/16 v0, -0x1

    .line 6149
    .local v0, contactId:J
    const/4 v7, 0x3

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 6151
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupSingleContactId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    .line 6154
    :cond_18
    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 6155
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdBySourceIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 6156
    cmp-long v7, v0, v8

    if-eqz v7, :cond_29

    move-wide v2, v0

    .line 6175
    .end local v0           #contactId:J
    .local v2, contactId:J
    :goto_28
    return-wide v2

    .line 6161
    .end local v2           #contactId:J
    .restart local v0       #contactId:J
    :cond_29
    const/4 v7, 0x2

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v4

    .line 6163
    .local v4, hasRawContactIds:Z
    if-eqz v4, :cond_3a

    .line 6164
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByRawContactIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 6165
    cmp-long v7, v0, v8

    if-eqz v7, :cond_3a

    move-wide v2, v0

    .line 6166
    .end local v0           #contactId:J
    .restart local v2       #contactId:J
    goto :goto_28

    .line 6170
    .end local v2           #contactId:J
    .restart local v0       #contactId:J
    :cond_3a
    if-nez v4, :cond_43

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->lookupKeyContainsType(Ljava/util/ArrayList;I)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 6172
    :cond_43
    invoke-direct {p0, p1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByDisplayNames(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)J

    move-result-wide v0

    :cond_47
    move-wide v2, v0

    .line 6175
    .end local v0           #contactId:J
    .restart local v2       #contactId:J
    goto :goto_28
.end method

.method public matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .registers 7
    .parameter "cursor"

    .prologue
    .line 4911
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 4912
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 4913
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 4914
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4915
    :goto_13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 4916
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v3, :cond_25

    .line 4917
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 4916
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 4919
    :cond_25
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_13

    .line 4921
    .end local v1           #i:I
    :cond_29
    return-object v2
.end method

.method protected notifyChange()V
    .registers 2

    .prologue
    .line 2340
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 2342
    return-void
.end method

.method protected notifyChange(Z)V
    .registers 5
    .parameter "syncToNetwork"

    .prologue
    .line 2345
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2347
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 3
    .parameter "accounts"

    .prologue
    .line 4523
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 4524
    return-void
.end method

.method public onBegin()V
    .registers 3

    .prologue
    .line 2239
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_b

    .line 2240
    const-string v0, "ContactsProvider"

    const-string v1, "onBeginTransaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_b
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->inProfileMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2243
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->clearPendingAggregations()V

    .line 2244
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    .line 2249
    :goto_1b
    return-void

    .line 2246
    :cond_1c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator;->clearPendingAggregations()V

    .line 2247
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Lcom/android/providers/contacts/TransactionContext;->clear()V

    goto :goto_1b
.end method

.method public onCommit()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2253
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_c

    .line 2254
    const-string v0, "ContactsProvider"

    const-string v1, "beforeTransactionCommit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_c
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 2257
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2258
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    if-eqz v0, :cond_3b

    .line 2259
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mVisibleTouched:Z

    .line 2260
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 2263
    :cond_3b
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInTransaction()V

    .line 2265
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    if-eqz v0, :cond_47

    .line 2266
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateProviderStatus()V

    .line 2267
    iput-boolean v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatusUpdateNeeded:Z

    .line 2269
    :cond_47
    return-void
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 1382
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1383
    const-string v1, "ContactsPerf"

    const-string v2, "ContactsProvider2.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_10
    invoke-super {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->onCreate()Z

    .line 1387
    :try_start_13
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initialize()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_40
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_16} :catch_27

    move-result v1

    .line 1392
    const-string v2, "ContactsPerf"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1393
    const-string v2, "ContactsPerf"

    const-string v3, "ContactsProvider2.onCreate finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return v1

    .line 1388
    :catch_27
    move-exception v0

    .line 1389
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_28
    const-string v1, "ContactsProvider"

    const-string v2, "Cannot start provider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_40

    .line 1390
    const/4 v1, 0x0

    .line 1392
    const-string v2, "ContactsPerf"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1393
    const-string v2, "ContactsPerf"

    const-string v3, "ContactsProvider2.onCreate finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1392
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_40
    move-exception v1

    const-string v2, "ContactsPerf"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1393
    const-string v2, "ContactsPerf"

    const-string v3, "ContactsProvider2.onCreate finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    throw v1
.end method

.method public onLocaleChanged()V
    .registers 3

    .prologue
    .line 1634
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    .line 1640
    :goto_9
    return-void

    .line 1639
    :cond_a
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    goto :goto_9
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 4747
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(ILjava/lang/Object;)V

    .line 4748
    return-void
.end method

.method public onRollback()V
    .registers 1

    .prologue
    .line 2274
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6943
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6944
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 6948
    :goto_d
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDb(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6949
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 6950
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ProfileProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 6953
    :goto_1c
    return-object v0

    .line 6946
    :cond_1d
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_d

    .line 6952
    :cond_23
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 6953
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->openAssetFileLocal(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_1c
.end method

.method public openAssetFileLocal(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 21
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_23

    .line 6962
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 6963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 6969
    :cond_23
    :goto_23
    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 6970
    sparse-switch v2, :sswitch_data_462

    .line 7188
    new-instance v3, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "File does not exist"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6965
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_23

    .line 6972
    :sswitch_56
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 6973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "_id=photo_id AND contact_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 7184
    :goto_85
    return-object v2

    .line 6980
    :sswitch_86
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 6981
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Display photos retrieved by contact ID can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6984
    :cond_98
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 6985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "contacts"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "photo_file_id"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 6990
    :try_start_ce
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 6991
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 6992
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->openDisplayPhotoForRead(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_de
    .catchall {:try_start_ce .. :try_end_de} :catchall_ed

    move-result-object v2

    .line 6998
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_85

    .line 6995
    :cond_e3
    :try_start_e3
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_ed

    .line 6998
    :catchall_ed
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7003
    :sswitch_f2
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_104

    .line 7004
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Display photos retrieved by contact ID can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7007
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "contacts"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "photo_file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 7010
    :try_start_121
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_137

    .line 7011
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7012
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->openDisplayPhotoForRead(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_131
    .catchall {:try_start_121 .. :try_end_131} :catchall_141

    move-result-object v2

    .line 7018
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_85

    .line 7015
    :cond_137
    :try_start_137
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_141
    .catchall {:try_start_137 .. :try_end_141} :catchall_141

    .line 7018
    :catchall_141
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7026
    :sswitch_146
    const-string v3, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_158

    .line 7027
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Photos retrieved by contact lookup key can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7030
    :cond_158
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 7031
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 7032
    const/4 v5, 0x4

    if-ge v4, v5, :cond_17b

    .line 7033
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7037
    :cond_17b
    const/16 v5, 0x3f6

    if-eq v2, v5, :cond_183

    const/16 v5, 0x3f5

    if-ne v2, v5, :cond_1eb

    :cond_183
    const/4 v2, 0x1

    move/from16 v17, v2

    .line 7039
    :goto_186
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 7040
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "photo_id"

    aput-object v5, v6, v2

    const/4 v2, 0x1

    const-string v5, "photo_file_id"

    aput-object v5, v6, v2

    .line 7041
    const/4 v2, 0x5

    if-ne v4, v2, :cond_223

    .line 7042
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 7043
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 7044
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 7045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    const-string v15, "lookup"

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v16}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7048
    if-eqz v8, :cond_223

    .line 7050
    :try_start_1d1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7051
    if-eqz v17, :cond_1ef

    .line 7052
    const-string v2, "photo_file_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 7054
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->openDisplayPhotoForRead(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_1e5
    .catchall {:try_start_1d1 .. :try_end_1e5} :catchall_21e

    move-result-object v2

    .line 7061
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_85

    .line 7037
    :cond_1eb
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_186

    .line 7056
    :cond_1ef
    :try_start_1ef
    const-string v2, "photo_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_218
    .catchall {:try_start_1ef .. :try_end_218} :catchall_21e

    move-result-object v2

    .line 7061
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_85

    :catchall_21e
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7066
    :cond_223
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 7067
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 7068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 7069
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7072
    :try_start_25e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7073
    if-eqz v17, :cond_278

    .line 7074
    const-string v2, "photo_file_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 7075
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->openDisplayPhotoForRead(J)Landroid/content/res/AssetFileDescriptor;
    :try_end_272
    .catchall {:try_start_25e .. :try_end_272} :catchall_2a7

    move-result-object v2

    .line 7082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_85

    .line 7077
    :cond_278
    :try_start_278
    const-string v2, "photo_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2a1
    .catchall {:try_start_278 .. :try_end_2a1} :catchall_2a7

    move-result-object v2

    .line 7082
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_85

    :catchall_2a7
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7087
    :sswitch_2ac
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 7088
    const-string v2, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_340

    const/4 v2, 0x1

    move v10, v2

    .line 7091
    :goto_2c7
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 7092
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "data14"

    aput-object v5, v4, v3

    .line 7093
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 7094
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    .line 7095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "raw_contact_id=? AND mimetype_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v9

    const/4 v9, 0x1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "is_primary DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 7099
    const-wide/16 v5, 0x0

    .line 7100
    const-wide/16 v2, 0x0

    .line 7102
    :try_start_31a
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_32e

    .line 7103
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7104
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 7105
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_32d
    .catchall {:try_start_31a .. :try_end_32d} :catchall_343

    move-result-wide v2

    .line 7108
    :cond_32e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 7114
    if-eqz v10, :cond_348

    move-object/from16 v2, p0

    move-wide v3, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 7115
    invoke-direct/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsProvider2;->openDisplayPhotoForWrite(JJLandroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_85

    .line 7088
    :cond_340
    const/4 v2, 0x0

    move v10, v2

    goto :goto_2c7

    .line 7108
    :catchall_343
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    .line 7117
    :cond_348
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->openDisplayPhotoForRead(J)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_85

    .line 7122
    :sswitch_350
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 7123
    const-string v4, "r"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_366

    .line 7124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Display photos retrieved by key can only be read."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7127
    :cond_366
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->openDisplayPhotoForRead(J)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_85

    .line 7131
    :sswitch_36e
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v6

    .line 7133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id=? AND mimetype_id="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->openPhotoAssetFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_85

    .line 7142
    :sswitch_3c0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7143
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->outputRawContactsAsVCard(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7144
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_85

    .line 7151
    :sswitch_3d6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7152
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->outputRawContactsAsVCard(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7153
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_85

    .line 7157
    :sswitch_3ec
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7158
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 7160
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 7161
    const/4 v3, 0x0

    .line 7165
    array-length v8, v5

    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_409
    if-ge v3, v8, :cond_433

    aget-object v9, v5, v3

    .line 7166
    if-nez v4, :cond_42d

    .line 7167
    const-string v2, "("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7172
    :goto_414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 7173
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7174
    add-int/lit8 v4, v4, 0x1

    .line 7165
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_409

    .line 7169
    :cond_42d
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_414

    .line 7176
    :cond_433
    const/16 v2, 0x29

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7182
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7183
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v2, v4}, Lcom/android/providers/contacts/ContactsProvider2;->outputRawContactsAsVCard(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 7184
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto/16 :goto_85

    .line 6970
    :sswitch_data_462
    .sparse-switch
        0x3f1 -> :sswitch_56
        0x3f2 -> :sswitch_146
        0x3f3 -> :sswitch_146
        0x3f4 -> :sswitch_86
        0x3f5 -> :sswitch_146
        0x3f6 -> :sswitch_146
        0x3f7 -> :sswitch_3d6
        0x3f8 -> :sswitch_3ec
        0x7d6 -> :sswitch_2ac
        0xbb9 -> :sswitch_36e
        0x4a3c -> :sswitch_3c0
        0x4a44 -> :sswitch_f2
        0x55f0 -> :sswitch_350
    .end sparse-switch
.end method

.method protected performBackgroundTask(ILjava/lang/Object;)V
    .registers 12
    .parameter "task"
    .parameter "arg"

    .prologue
    const/4 v7, 0x0

    .line 1540
    packed-switch p1, :pswitch_data_9a

    .line 1631
    .end local p2
    :cond_4
    :goto_4
    return-void

    .line 1542
    .restart local p2
    :pswitch_5
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->initForDefaultLocale()V

    .line 1543
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1544
    iput-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_4

    .line 1549
    :pswitch_10
    iget-boolean v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mOkToOpenAccess:Z

    if-eqz v5, :cond_4

    .line 1550
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1551
    iput-object v7, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    goto :goto_4

    .line 1557
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->isLegacyContactImportNeeded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1558
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->importLegacyContactsInBackground()V

    goto :goto_4

    .line 1564
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1565
    .local v2, context:Landroid/content/Context;
    iget-boolean v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountUpdateListenerRegistered:Z

    if-nez v5, :cond_39

    .line 1566
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v7, v6}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1567
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountUpdateListenerRegistered:Z

    .line 1571
    :cond_39
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 1572
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 1573
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateAccountsInBackground([Landroid/accounts/Account;)Z

    move-result v1

    .line 1574
    .local v1, accountsChanged:Z
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 1575
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateAccountsInBackground([Landroid/accounts/Account;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 1577
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactsAccountCount([Landroid/accounts/Account;)V

    .line 1578
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->updateDirectoriesInBackground(Z)V

    goto :goto_4

    .line 1583
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #accountsChanged:Z
    .end local v2           #context:Landroid/content/Context;
    :pswitch_57
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateLocaleInBackground()V

    goto :goto_4

    .line 1588
    :pswitch_5b
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->changeLocaleInBackground()V

    goto :goto_4

    .line 1593
    :pswitch_5f
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->isAggregationUpgradeNeeded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1594
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->upgradeAggregationAlgorithmInBackground()V

    goto :goto_4

    .line 1600
    :pswitch_69
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInBackground()V

    goto :goto_4

    .line 1605
    :pswitch_6d
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateProviderStatus()V

    goto :goto_4

    .line 1610
    :pswitch_71
    if-eqz p2, :cond_4

    .line 1611
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Lcom/android/providers/contacts/ContactDirectoryManager;->onPackageChanged(Ljava/lang/String;)V

    goto :goto_4

    .line 1618
    .restart local p2
    :pswitch_7b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1619
    .local v3, now:J
    iget-wide v5, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLastPhotoCleanup:J

    sub-long v5, v3, v5

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 1620
    iput-wide v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLastPhotoCleanup:J

    .line 1623
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 1624
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->cleanupPhotoStore()V

    .line 1625
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 1626
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->cleanupPhotoStore()V

    goto/16 :goto_4

    .line 1540
    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_10
        :pswitch_1c
        :pswitch_26
        :pswitch_57
        :pswitch_5f
        :pswitch_69
        :pswitch_6d
        :pswitch_71
        :pswitch_5b
        :pswitch_7b
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4776
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mReadAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 4779
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->enforceSocialStreamReadPermission(Landroid/net/Uri;)V

    .line 4782
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDb(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4783
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 4784
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ProfileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4843
    :goto_1d
    return-object v0

    .line 4788
    :cond_1e
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 4789
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4790
    const-string v0, "directory"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4791
    if-nez v0, :cond_45

    .line 4792
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->addSnippetExtrasToCursor(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 4794
    :cond_45
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 4795
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->addSnippetExtrasToCursor(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 4798
    :cond_5e
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 4799
    const-wide/16 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->addSnippetExtrasToCursor(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1d

    .line 4804
    :cond_77
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDirectoryAuthority(Ljava/lang/String;)Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;

    move-result-object v0

    .line 4805
    if-nez v0, :cond_97

    .line 4806
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid directory ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 4807
    goto :goto_1d

    .line 4810
    :cond_97
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 4811
    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4812
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4813
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4814
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountName:Ljava/lang/String;

    if-eqz v2, :cond_b8

    .line 4815
    const-string v2, "account_name"

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4817
    :cond_b8
    iget-object v2, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    if-eqz v2, :cond_c3

    .line 4818
    const-string v2, "account_type"

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4821
    :cond_c3
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 4822
    if-eqz v0, :cond_ce

    .line 4823
    const-string v2, "limit"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 4826
    :cond_ce
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 4828
    if-nez p2, :cond_102

    .line 4829
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->getDefaultProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    .line 4832
    :goto_d8
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4835
    if-nez v0, :cond_ec

    move-object v0, v6

    .line 4836
    goto/16 :goto_1d

    .line 4839
    :cond_ec
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object v1

    .line 4840
    if-eqz v1, :cond_f8

    .line 4841
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->addSnippetExtrasToCursor(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1d

    .line 4843
    :cond_f8
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->addSnippetExtrasToCursor(Landroid/net/Uri;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_1d

    :cond_102
    move-object v2, p2

    goto :goto_d8
.end method

.method protected queryLocal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;
    .registers 31
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4987
    sget-boolean v4, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v4, :cond_1e

    .line 4988
    const-string v4, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4992
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_37

    .line 4993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4996
    :cond_37
    new-instance v21, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v21 .. v21}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4997
    const/4 v12, 0x0

    .line 4998
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->getLimit(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 4999
    const/16 v20, 0x0

    .line 5002
    const/16 v19, 0x0

    .line 5004
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 5005
    sparse-switch v22, :sswitch_data_12ae

    .line 5936
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5952
    :cond_62
    :goto_62
    return-object v4

    .line 5008
    :sswitch_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/common/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_62

    .line 5012
    :sswitch_88
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5013
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->appendLocalDirectorySelectionIfNeeded(Landroid/database/sqlite/SQLiteQueryBuilder;J)Z

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5940
    :goto_a6
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 5942
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v5, p0

    move-object/from16 v7, v21

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v13}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5945
    const-string v5, "address_book_index_extras"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_128f

    .line 5946
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v5, p0

    move-object/from16 v8, v21

    move-object v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/android/providers/contacts/ContactsProvider2;->bundleLetterCountExtras(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5949
    :goto_de
    if-eqz v14, :cond_62

    .line 5950
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->addDeferredSnippetingExtra(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_62

    .line 5018
    :sswitch_e8
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 5019
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5020
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5021
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5022
    goto :goto_a6

    .line 5027
    :sswitch_115
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5028
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5029
    const/4 v6, 0x3

    if-ge v5, v6, :cond_138

    .line 5030
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5034
    :cond_138
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5035
    const/4 v6, 0x4

    if-ne v5, v6, :cond_17b

    .line 5036
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5037
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5038
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "_id"

    const-string v17, "lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5043
    if-nez v4, :cond_62

    .line 5048
    :cond_17b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5051
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5052
    goto/16 :goto_a6

    .line 5059
    :sswitch_1b7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5060
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5061
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1da

    .line 5062
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5065
    :cond_1da
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5066
    const/4 v6, 0x5

    if-ne v5, v6, :cond_236

    .line 5067
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5068
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5069
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5070
    const/16 v4, 0x3f2

    move/from16 v0, v22

    if-eq v0, v4, :cond_20a

    const/16 v4, 0x3f3

    move/from16 v0, v22

    if-ne v0, v4, :cond_211

    .line 5071
    :cond_20a
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5073
    :cond_211
    const-string v4, " AND "

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5074
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "contact_id"

    const-string v17, "lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5077
    if-nez v4, :cond_62

    .line 5084
    :cond_236
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    .line 5086
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5088
    const/16 v4, 0x3f2

    move/from16 v0, v22

    if-eq v0, v4, :cond_26c

    const/16 v4, 0x3f3

    move/from16 v0, v22

    if-ne v0, v4, :cond_273

    .line 5089
    :cond_26c
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5091
    :cond_273
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5092
    goto/16 :goto_a6

    .line 5096
    :sswitch_286
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5097
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5098
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5099
    const-string v4, "contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5100
    goto/16 :goto_a6

    .line 5105
    :sswitch_2bb
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5106
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5107
    const/4 v6, 0x4

    if-ge v5, v6, :cond_2de

    .line 5108
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5111
    :cond_2de
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5112
    const/4 v6, 0x5

    if-ne v5, v6, :cond_31d

    .line 5113
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5114
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5115
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "contact_id"

    const-string v17, "contact_lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5120
    if-nez v4, :cond_62

    .line 5125
    :cond_31d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    .line 5127
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5128
    const-string v4, "contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5129
    goto/16 :goto_a6

    .line 5133
    :sswitch_355
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    .line 5135
    const-string v6, "view_contacts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5136
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5137
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5139
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5140
    goto/16 :goto_a6

    .line 5144
    :sswitch_3a1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5145
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT \'vcards_\' || ? || \'.vcf\' AS _display_name, NULL AS _size"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_62

    .line 5154
    :sswitch_3cd
    const-string v8, ""

    .line 5155
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->deferredSnippetingRequested(Landroid/net/Uri;)Z

    move-result v11

    .line 5156
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3e2

    .line 5157
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    :cond_3e2
    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v9, p6

    .line 5159
    invoke-direct/range {v4 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContactsWithSnippet(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 5162
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/contacts/ContactsProvider2;->isSingleWordQuery(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40f

    if-eqz v11, :cond_40f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->snippetNeeded([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40f

    const/4 v4, 0x1

    :goto_404
    move v14, v4

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v4, v19

    .line 5164
    goto/16 :goto_a6

    .line 5162
    :cond_40f
    const/4 v4, 0x0

    goto :goto_404

    .line 5175
    :sswitch_411
    const-string v4, "strequent_phone_only"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v11

    .line 5177
    const/16 v4, 0x3ef

    move/from16 v0, v22

    if-ne v0, v4, :cond_44f

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_44f

    .line 5178
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 5179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5180
    const-string v6, "_id IN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5181
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5182
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5185
    :cond_44f
    const/4 v5, 0x0

    .line 5186
    if-eqz p2, :cond_45c

    .line 5187
    const-string v4, "times_used_sort"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->appendProjectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5191
    :cond_45c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5192
    if-eqz v11, :cond_5a9

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentPhoneOnlyStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    :goto_46c
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5195
    if-eqz v11, :cond_487

    .line 5196
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v4, v6

    const/4 v6, 0x1

    const-string v7, "has_phone_number=1"

    aput-object v7, v4, v6

    invoke-static {v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5199
    :cond_487
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 5200
    const-string v6, "starred=1"

    const-string v7, "_id"

    const/4 v8, 0x0

    const-string v9, "display_name COLLATE LOCALIZED ASC"

    const/4 v10, 0x0

    move-object/from16 v4, v21

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5205
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5206
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 5211
    if-eqz v11, :cond_5ad

    .line 5212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5223
    const-string v7, "data_usage_stat INNER JOIN view_data data ON (data_usage_stat.data_id=data._id AND data_usage_stat.usage_type=0)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5229
    const-string v7, "contact_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v7}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5230
    const-string v7, "status_update_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v7}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5233
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5234
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentPhoneOnlyFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5235
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v7

    .line 5237
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v9, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v6, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v9

    .line 5239
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p3, v6, v11

    const/4 v11, 0x1

    const-string v13, "starred=0 OR starred IS NULL"

    aput-object v13, v6, v11

    const/4 v11, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mimetype_id IN ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v6}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5244
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "times_used_sort DESC"

    const-string v10, "25"

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5259
    :goto_531
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5263
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v5, v7, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5274
    const/4 v4, 0x0

    .line 5275
    if-eqz p4, :cond_12aa

    .line 5276
    move-object/from16 v0, p4

    array-length v5, v0

    .line 5277
    mul-int/lit8 v4, v5, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 5278
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5279
    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v7, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v4

    .line 5282
    :goto_58a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5283
    if-eqz v4, :cond_62

    .line 5284
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_62

    .line 5192
    :cond_5a9
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    goto/16 :goto_46c

    .line 5248
    :cond_5ad
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5249
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5250
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    const-string v8, "(starred =0 OR starred IS NULL)"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5253
    const/4 v6, 0x0

    const-string v7, "_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "25"

    invoke-virtual/range {v4 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_531

    .line 5291
    :sswitch_5db
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5292
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5293
    const-string v12, "_id"

    .line 5294
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_617

    .line 5295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "times_used DESC,display_name COLLATE LOCALIZED ASC, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_a6

    .line 5297
    :cond_617
    const-string p5, "times_used DESC,display_name COLLATE LOCALIZED ASC"

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5299
    goto/16 :goto_a6

    .line 5303
    :sswitch_625
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5304
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1292

    .line 5305
    const-string v4, "_id IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype_id=? AND data1=(SELECT groups._id FROM groups WHERE title=?)))"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 5308
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5309
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5310
    goto/16 :goto_a6

    .line 5315
    :sswitch_674
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5316
    goto/16 :goto_a6

    .line 5320
    :sswitch_68b
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5321
    goto/16 :goto_a6

    .line 5325
    :sswitch_6a2
    const-string v4, "view_contacts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5326
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5327
    goto/16 :goto_a6

    .line 5331
    :sswitch_6bc
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5332
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5333
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5334
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5335
    goto/16 :goto_a6

    .line 5339
    :sswitch_6f6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5340
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5341
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5342
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5343
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5344
    goto/16 :goto_a6

    .line 5348
    :sswitch_737
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5349
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5350
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5351
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5352
    goto/16 :goto_a6

    .line 5357
    :sswitch_770
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5358
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 5359
    const/4 v6, 0x4

    if-ge v5, v6, :cond_793

    .line 5360
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "Missing a lookup key"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5363
    :cond_793
    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5364
    const/4 v6, 0x5

    if-ne v5, v6, :cond_7db

    .line 5365
    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 5366
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5367
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5368
    const-string v4, " AND "

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "contact_id"

    const-string v17, "lookup"

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v4 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->queryWithContactIdAndLookupKey(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 5374
    if-nez v4, :cond_62

    .line 5379
    :cond_7db
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5382
    const-string v4, " AND contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5383
    goto/16 :goto_a6

    .line 5387
    :sswitch_817
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5388
    goto/16 :goto_a6

    .line 5392
    :sswitch_82a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5393
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5394
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5395
    goto/16 :goto_a6

    .line 5399
    :sswitch_850
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "max_items"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 5400
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_62

    .line 5405
    :sswitch_86e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItemPhotos(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5406
    goto/16 :goto_a6

    .line 5410
    :sswitch_881
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItemPhotos(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5411
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5412
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5413
    const-string v4, "stream_item_photos.stream_item_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5414
    goto/16 :goto_a6

    .line 5418
    :sswitch_8ae
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItemPhotos(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5419
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5420
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5421
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5422
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5423
    const-string v4, "stream_item_photos.stream_item_id=? AND stream_item_photos._id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5425
    goto/16 :goto_a6

    .line 5429
    :sswitch_8ec
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_max_dim"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "thumbnail_max_dim"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 5432
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxDisplayPhotoDim:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->mMaxThumbnailPhotoDim:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_62

    .line 5437
    :sswitch_91d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForPhone()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5441
    const-string v4, "remove_duplicate_entries"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    .line 5443
    if-eqz v4, :cond_1292

    .line 5444
    const-string v12, "contact_id, data1"

    .line 5453
    const-string v4, "DISTINCT contact_id||\',\'||data1"

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_a6

    .line 5460
    :sswitch_968
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5461
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForPhone()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5464
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5465
    goto/16 :goto_a6

    .line 5469
    :sswitch_9b9
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5470
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sDataUsageTypeMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5471
    if-nez v4, :cond_12a7

    .line 5472
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5474
    :goto_9d0
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 5475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForPhone()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5477
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_a68

    .line 5478
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .line 5479
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 5480
    const-string v4, " AND ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5482
    const/4 v5, 0x0

    .line 5483
    const/4 v4, 0x0

    .line 5484
    sget-object v8, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->UNSCOPED_NORMALIZING:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    invoke-static {v6, v8}, Lcom/android/providers/contacts/SearchIndexManager;->getFtsMatchQuery(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v8

    .line 5486
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a38

    .line 5487
    const-string v4, "raw_contact_id IN (SELECT raw_contacts._id FROM search_index JOIN raw_contacts ON (search_index.contact_id=raw_contacts.contact_id) WHERE name MATCH \'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5494
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5495
    const-string v4, "\')"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5496
    const/4 v4, 0x1

    .line 5497
    const/4 v5, 0x1

    .line 5500
    :cond_a38
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5501
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a57

    .line 5502
    if-eqz v4, :cond_a49

    .line 5503
    const-string v4, " OR "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5505
    :cond_a49
    const-string v4, "_id IN (SELECT DISTINCT data_id FROM phone_lookup WHERE normalized_number LIKE \'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5509
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5510
    const-string v4, "%\')"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5511
    const/4 v5, 0x1

    .line 5514
    :cond_a57
    if-nez v5, :cond_a5e

    .line 5517
    const-string v4, "0"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5519
    :cond_a5e
    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5520
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5522
    :cond_a68
    const-string v12, "(CASE WHEN data4 IS NOT NULL THEN data4 ELSE data1 END), contact_id"

    .line 5525
    if-nez p5, :cond_1292

    .line 5526
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->getAccountPromotionSortOrder(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 5527
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a9a

    .line 5528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_a8f
    move/from16 v14, v20

    move-object v11, v4

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v4, v19

    .line 5532
    goto/16 :goto_a6

    .line 5530
    :cond_a9a
    const-string v4, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    goto :goto_a8f

    .line 5537
    :sswitch_a9d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5541
    const-string v4, "remove_duplicate_entries"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    .line 5543
    if-eqz v4, :cond_1292

    .line 5544
    const-string v12, "contact_id, data1"

    .line 5547
    const-string v4, "DISTINCT contact_id||\',\'||data1"

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_a6

    .line 5554
    :sswitch_ae8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5555
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5559
    goto/16 :goto_a6

    .line 5563
    :sswitch_b44
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5566
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_ba2

    .line 5567
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 5568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5569
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5570
    const-string v4, " AND UPPER(data1)=UPPER(?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5573
    :cond_ba2
    if-nez p5, :cond_1292

    .line 5574
    const-string p5, "(contact_id IN default_directory) DESC"

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_a6

    .line 5581
    :sswitch_bb2
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5582
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->sDataUsageTypeMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5583
    if-nez v4, :cond_12a4

    .line 5584
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5586
    :goto_bc9
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 5587
    const/4 v4, 0x0

    .line 5589
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_12a1

    .line 5590
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 5591
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_129e

    .line 5592
    const/4 v4, 0x0

    move-object v5, v4

    .line 5596
    :goto_bed
    if-nez v5, :cond_c28

    .line 5598
    const-string v4, " AND 0"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5630
    :goto_bf6
    const-string v12, "data1,contact_id"

    .line 5631
    if-nez p5, :cond_1292

    .line 5632
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactsProvider2;->getAccountPromotionSortOrder(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 5633
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ca0

    .line 5634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_c1d
    move/from16 v14, v20

    move-object v11, v4

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    move-object/from16 v4, v19

    .line 5638
    goto/16 :goto_a6

    .line 5600
    :cond_c28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5601
    const-string v4, " AND _id IN ("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5602
    const-string v4, "SELECT _id FROM data WHERE mimetype_id="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5607
    const-string v4, " AND data1 LIKE "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 5609
    const-string v4, "@"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c94

    .line 5610
    const-string v4, " UNION SELECT _id FROM data WHERE +mimetype_id="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForEmail()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5615
    const-string v4, " AND raw_contact_id IN (SELECT raw_contacts._id FROM search_index JOIN raw_contacts ON (search_index.contact_id=raw_contacts.contact_id) WHERE name MATCH \'"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5622
    sget-object v4, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->UNSCOPED_NORMALIZING:Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;

    invoke-static {v5, v4}, Lcom/android/providers/contacts/SearchIndexManager;->getFtsMatchQuery(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 5624
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5625
    const-string v4, "\')"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5627
    :cond_c94
    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5628
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_bf6

    .line 5636
    :cond_ca0
    const-string v4, "starred DESC, in_visible_group DESC, (CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 1  ELSE 2 END), times_used DESC, display_name, contact_id, is_super_primary DESC, is_primary DESC"

    goto/16 :goto_c1d

    .line 5643
    :sswitch_ca4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredPostal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5647
    const-string v4, "remove_duplicate_entries"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    .line 5649
    if-eqz v4, :cond_1292

    .line 5650
    const-string v12, "contact_id, data1"

    .line 5653
    const-string v4, "DISTINCT contact_id||\',\'||data1"

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_a6

    .line 5660
    :sswitch_cef
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5661
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredPostal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 5664
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5665
    goto/16 :goto_a6

    .line 5670
    :sswitch_d40
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5671
    goto/16 :goto_a6

    .line 5676
    :sswitch_d55
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 5677
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5678
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5679
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5680
    goto/16 :goto_a6

    .line 5685
    :sswitch_d81
    const/16 v4, 0x7d4

    move/from16 v0, v22

    if-ne v0, v4, :cond_dc1

    const/4 v4, 0x1

    .line 5686
    :goto_d88
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5687
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5688
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5689
    const-string v4, " AND raw_contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5690
    goto/16 :goto_a6

    .line 5685
    :cond_dc1
    const/4 v4, 0x2

    goto :goto_d88

    .line 5694
    :sswitch_dc3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5695
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5696
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5697
    const-string v4, "raw_contact_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5698
    goto/16 :goto_a6

    .line 5702
    :sswitch_df8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 5703
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 5704
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForStreamItems(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 5705
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5706
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5707
    const-string v4, "raw_contact_id=? AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5709
    goto/16 :goto_a6

    .line 5713
    :sswitch_e46
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5714
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5715
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5716
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5717
    goto/16 :goto_a6

    .line 5722
    :sswitch_e7d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5723
    goto/16 :goto_a6

    .line 5728
    :sswitch_e95
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5729
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5730
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5731
    goto/16 :goto_a6

    .line 5735
    :sswitch_ec0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 5736
    const-string v4, " AND _id=photo_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5737
    goto/16 :goto_a6

    .line 5742
    :sswitch_edf
    const/16 p3, 0x0

    .line 5743
    const/16 p4, 0x0

    .line 5744
    const-string v4, "sip"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f3d

    .line 5745
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ef6

    .line 5748
    const-string p5, "display_name ASC"

    .line 5751
    :cond_ef6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_f39

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 5753
    :goto_f0a
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, v21

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZZ)V

    .line 5754
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v5, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildSipContactQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5756
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5757
    goto/16 :goto_a6

    .line 5751
    :cond_f39
    const-string v4, ""

    move-object v10, v4

    goto :goto_f0a

    .line 5758
    :cond_f3d
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f45

    .line 5761
    const-string p5, " length(lookup.normalized_number) DESC"

    .line 5764
    :cond_f45
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_f8d

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 5766
    :goto_f55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5768
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5772
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sPhoneLookupProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5774
    goto/16 :goto_a6

    .line 5764
    :cond_f8d
    const-string v4, ""

    move-object v5, v4

    goto :goto_f55

    .line 5778
    :sswitch_f91
    const-string v4, "view_groups"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5779
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5780
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5781
    goto/16 :goto_a6

    .line 5785
    :sswitch_fb4
    const-string v4, "view_groups"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5786
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5787
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5788
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5789
    goto/16 :goto_a6

    .line 5793
    :sswitch_fe1
    const-string v4, "return_group_count_per_account"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    .line 5796
    const-string v4, "view_groups AS groups"

    .line 5797
    const-string v6, "summ_count"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/android/providers/contacts/ContactsProvider2;->hasColumn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_100b

    .line 5798
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " LEFT OUTER JOIN (SELECT data.data1 AS member_count_group_id, COUNT(data.raw_contact_id) AS group_member_count FROM data WHERE data.mimetype_id = (SELECT _id FROM mimetypes WHERE mimetypes.mimetype = \'vnd.android.cursor.item/group_membership\')GROUP BY member_count_group_id) AS member_count_table ON (groups._id = member_count_table.member_count_group_id)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5800
    :cond_100b
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5801
    if-eqz v5, :cond_1030

    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMapWithGroupCountPerAccount:Lcom/android/providers/contacts/ProjectionMap;

    :goto_1014
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5804
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5805
    const-string v12, "groups._id"

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5806
    goto/16 :goto_a6

    .line 5801
    :cond_1030
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sGroupsSummaryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    goto :goto_1014

    .line 5810
    :sswitch_1033
    const-string v4, "agg_exceptions"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5811
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sAggregationExceptionsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5812
    goto/16 :goto_a6

    .line 5816
    :sswitch_104d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 5817
    const/4 v10, 0x0

    .line 5818
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1074

    .line 5819
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v10, v4

    .line 5822
    :cond_1074
    if-eqz v13, :cond_10b9

    .line 5823
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 5828
    :goto_107a
    const/4 v11, 0x0

    .line 5829
    const-string v4, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5830
    if-eqz v4, :cond_10cd

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10cd

    .line 5831
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5832
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1098
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5833
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 5834
    const/4 v5, -0x1

    if-ne v12, v5, :cond_10bb

    new-instance v5, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    const-string v12, "name"

    invoke-direct {v5, v12, v4}, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    :goto_10b5
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1098

    .line 5825
    :cond_10b9
    const/4 v9, 0x5

    goto :goto_107a

    .line 5834
    :cond_10bb
    new-instance v5, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v13, v4}, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_10b5

    .line 5844
    :cond_10cd
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;)V

    .line 5846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactAggregator;

    move-object/from16 v5, v21

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/providers/contacts/ContactAggregator;->queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_62

    .line 5851
    :sswitch_10ec
    const-string v4, "settings"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5852
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sSettingsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5853
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 5859
    if-eqz p2, :cond_1140

    move-object/from16 v0, p2

    array-length v4, v0

    if-eqz v4, :cond_1140

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "summ_count"

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1140

    .line 5861
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5863
    :cond_1140
    if-eqz p2, :cond_1292

    move-object/from16 v0, p2

    array-length v4, v0

    if-eqz v4, :cond_1292

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "summ_phones"

    aput-object v8, v6, v7

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1292

    .line 5866
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_a6

    .line 5874
    :sswitch_1175
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5875
    goto/16 :goto_a6

    .line 5879
    :sswitch_118a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTableAndProjectionMapForStatusUpdates(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 5880
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5881
    const-string v4, "data._id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5882
    goto/16 :goto_a6

    .line 5886
    :sswitch_11b2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v4, v0, v1, v13}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_62

    .line 5891
    :sswitch_11ca
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 5892
    const-string v4, "suggest_intent_extra_data"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5894
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactsProvider2;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p2

    invoke-virtual {v7, v4, v0, v5, v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_62

    .line 5900
    :sswitch_11ec
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5901
    goto/16 :goto_a6

    .line 5905
    :sswitch_1201
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5906
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForRawEntities(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    .line 5907
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5908
    const-string v4, " AND _id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5909
    goto/16 :goto_a6

    .line 5913
    :sswitch_1238
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->queryProviderStatus(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_62

    .line 5917
    :sswitch_123e
    const-string v4, "directories"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5918
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5919
    goto/16 :goto_a6

    .line 5923
    :sswitch_1258
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 5924
    const-string v6, "directories"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 5925
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->sDirectoryProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 5926
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 5927
    const-string v4, "_id=?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    .line 5928
    goto/16 :goto_a6

    .line 5932
    :sswitch_1289
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/contacts/ContactsProvider2;->completeName(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_62

    :cond_128f
    move-object v4, v6

    goto/16 :goto_de

    :cond_1292
    move-object/from16 v4, v19

    move/from16 v14, v20

    move-object/from16 v11, p5

    move-object/from16 v10, p4

    move-object/from16 v9, p3

    goto/16 :goto_a6

    :cond_129e
    move-object v5, v4

    goto/16 :goto_bed

    :cond_12a1
    move-object v5, v4

    goto/16 :goto_bed

    :cond_12a4
    move-object v9, v4

    goto/16 :goto_bc9

    :cond_12a7
    move-object v9, v4

    goto/16 :goto_9d0

    :cond_12aa
    move-object v5, v4

    goto/16 :goto_58a

    .line 5005
    nop

    :sswitch_data_12ae
    .sparse-switch
        0x3e8 -> :sswitch_88
        0x3e9 -> :sswitch_e8
        0x3ea -> :sswitch_115
        0x3eb -> :sswitch_115
        0x3ec -> :sswitch_6bc
        0x3ed -> :sswitch_3cd
        0x3ee -> :sswitch_411
        0x3ef -> :sswitch_411
        0x3f0 -> :sswitch_625
        0x3f1 -> :sswitch_6f6
        0x3f2 -> :sswitch_1b7
        0x3f3 -> :sswitch_1b7
        0x3f7 -> :sswitch_355
        0x3f8 -> :sswitch_3a1
        0x3f9 -> :sswitch_1b7
        0x3fa -> :sswitch_1b7
        0x3fb -> :sswitch_737
        0x3fc -> :sswitch_770
        0x3fd -> :sswitch_770
        0x3fe -> :sswitch_286
        0x3ff -> :sswitch_2bb
        0x400 -> :sswitch_2bb
        0x401 -> :sswitch_5db
        0x7d2 -> :sswitch_d40
        0x7d3 -> :sswitch_d55
        0x7d4 -> :sswitch_d81
        0x7d5 -> :sswitch_1201
        0x7d7 -> :sswitch_dc3
        0x7d8 -> :sswitch_df8
        0xbb8 -> :sswitch_e7d
        0xbb9 -> :sswitch_e95
        0xbba -> :sswitch_91d
        0xbbb -> :sswitch_968
        0xbbc -> :sswitch_9b9
        0xbbd -> :sswitch_a9d
        0xbbe -> :sswitch_ae8
        0xbbf -> :sswitch_b44
        0xbc0 -> :sswitch_bb2
        0xbc1 -> :sswitch_ca4
        0xbc2 -> :sswitch_cef
        0xfa0 -> :sswitch_edf
        0x1770 -> :sswitch_1033
        0x1b58 -> :sswitch_1175
        0x1b59 -> :sswitch_118a
        0x1f40 -> :sswitch_104d
        0x2328 -> :sswitch_10ec
        0x2710 -> :sswitch_f91
        0x2711 -> :sswitch_fb4
        0x2713 -> :sswitch_fe1
        0x2af8 -> :sswitch_63
        0x2afa -> :sswitch_63
        0x2ee1 -> :sswitch_11b2
        0x2ee2 -> :sswitch_11ca
        0x3a99 -> :sswitch_11ec
        0x3e81 -> :sswitch_1238
        0x4269 -> :sswitch_123e
        0x426a -> :sswitch_1258
        0x4650 -> :sswitch_1289
        0x4a38 -> :sswitch_674
        0x4a39 -> :sswitch_68b
        0x4a3a -> :sswitch_e7d
        0x4a3b -> :sswitch_e95
        0x4a3c -> :sswitch_6a2
        0x4a3d -> :sswitch_d40
        0x4a3e -> :sswitch_d55
        0x4a3f -> :sswitch_d81
        0x4a40 -> :sswitch_e46
        0x4a41 -> :sswitch_1175
        0x4a42 -> :sswitch_11ec
        0x4a43 -> :sswitch_ec0
        0x5208 -> :sswitch_817
        0x5209 -> :sswitch_86e
        0x520a -> :sswitch_82a
        0x520b -> :sswitch_881
        0x520c -> :sswitch_8ae
        0x520d -> :sswitch_850
        0x55f1 -> :sswitch_8ec
    .end sparse-switch
.end method

.method public resetDirectoryCache()V
    .registers 3

    .prologue
    .line 4969
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 4970
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDirectoryCacheValid:Z

    .line 4971
    monitor-exit v1

    .line 4972
    return-void

    .line 4971
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method protected scheduleBackgroundTask(I)V
    .registers 3
    .parameter "task"

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1533
    return-void
.end method

.method protected scheduleBackgroundTask(ILjava/lang/Object;)V
    .registers 5
    .parameter "task"
    .parameter "arg"

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1537
    return-void
.end method

.method protected setProviderStatus(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 2350
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-eq v0, p1, :cond_15

    .line 2351
    iput p1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 2352
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2354
    :cond_15
    return-void
.end method

.method substituteDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2135
    return-void
.end method

.method protected switchToContactMode()V
    .registers 3

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2057
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2058
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2059
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPhotoStore:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2060
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInProfileMode:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2063
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2064
    return-void
.end method

.method protected switchToProfileMode()V
    .registers 3

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2045
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileTransactionContext:Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2046
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2047
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mPhotoStore:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2048
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mInProfileMode:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2049
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 2084
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_24

    .line 2088
    sget-object v3, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v3, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2089
    .local v0, match:I
    const/16 v3, 0x3e81

    if-ne v0, v3, :cond_24

    .line 2090
    const-string v3, "status"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2091
    .local v1, newStatus:Ljava/lang/Integer;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_22

    .line 2092
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/ContactsProvider2;->scheduleBackgroundTask(I)V

    .line 2109
    .end local v0           #match:I
    .end local v1           #newStatus:Ljava/lang/Integer;
    :goto_21
    return v2

    .line 2095
    .restart local v0       #match:I
    .restart local v1       #newStatus:Ljava/lang/Integer;
    :cond_22
    const/4 v2, 0x0

    goto :goto_21

    .line 2099
    .end local v0           #match:I
    .end local v1           #newStatus:Ljava/lang/Integer;
    :cond_24
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V

    .line 2102
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->enforceSocialStreamWritePermission(Landroid/net/Uri;)V

    .line 2104
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->mapsToProfileDb(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2105
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToProfileMode()V

    .line 2106
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileProvider:Lcom/android/providers/contacts/ProfileProvider;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/providers/contacts/ProfileProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_21

    .line 2108
    :cond_3c
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 2109
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_21
.end method

.method protected updateAccountsInBackground([Landroid/accounts/Account;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 4528
    .line 4529
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 4530
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 4531
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4537
    :try_start_16
    const-string v0, "accounts"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsProvider2;->findValidAccountsWithDataSets(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 4541
    array-length v6, p1

    move v2, v1

    :goto_1e
    if-ge v2, v6, :cond_55

    aget-object v0, p1, v2

    .line 4542
    new-instance v7, Lcom/android/providers/contacts/AccountWithDataSet;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v0, v9}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c7

    .line 4548
    const-string v0, "INSERT INTO accounts (account_name, account_type, data_set) VALUES (?, ?, ?)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x1

    invoke-virtual {v7}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x2

    invoke-virtual {v7}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    invoke-virtual {v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 4541
    :goto_50
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1e

    .line 4561
    :cond_55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4563
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 4564
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_62
    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4565
    new-instance v7, Landroid/accounts/Account;

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_62

    .line 4568
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catchall {:try_start_16 .. :try_end_84} :catchall_85

    goto :goto_62

    .line 4714
    :catchall_85
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 4572
    :cond_8a
    :try_start_8a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c5

    .line 4574
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_94
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fe

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4575
    const-string v1, "ContactsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing data for removed account "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 4580
    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d7

    move-object v2, v4

    .line 4587
    :goto_d0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND data_set"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f2

    const-string v1, " IS NULL"

    :goto_e3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND data_set"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f6

    const-string v1, " IS NULL"

    :goto_fe
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4591
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND data_set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1fa

    const-string v0, " IS NULL"

    :goto_119
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DELETE FROM groups WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4599
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM presence WHERE presence_raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4607
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM stream_item_photos WHERE stream_item_id IN (SELECT _id FROM stream_items WHERE raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM stream_items WHERE raw_contact_id IN (SELECT _id FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4628
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4633
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM settings WHERE account_name = ? AND account_type = ?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM accounts WHERE account_name=? AND account_type=?"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4643
    const-string v0, "DELETE FROM directories WHERE accountName=? AND accountType=?"

    invoke-virtual {v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4647
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->resetDirectoryCache()V

    goto/16 :goto_94

    .line 4580
    :cond_1d7
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    move-object v2, v1

    goto/16 :goto_d0

    .line 4587
    :cond_1f2
    const-string v1, " = ?"

    goto/16 :goto_e3

    .line 4589
    :cond_1f6
    const-string v1, " = ?"

    goto/16 :goto_fe

    .line 4591
    :cond_1fa
    const-string v0, " = ?"

    goto/16 :goto_119

    .line 4653
    :cond_1fe
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 4654
    const-string v1, "SELECT _id FROM contacts WHERE (name_raw_contact_id NOT NULL AND name_raw_contact_id NOT IN (SELECT _id FROM raw_contacts)) OR (photo_id NOT NULL AND photo_id NOT IN (SELECT _id FROM data))"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_208
    .catchall {:try_start_8a .. :try_end_208} :catchall_85

    move-result-object v1

    .line 4665
    :goto_209
    :try_start_209
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_221

    .line 4666
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_21b
    .catchall {:try_start_209 .. :try_end_21b} :catchall_21c

    goto :goto_209

    .line 4669
    :catchall_21c
    move-exception v0

    :try_start_21d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4672
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_228
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4673
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactAggregator;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_228

    .line 4675
    :cond_24c
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 4680
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->inProfileMode()Z

    move-result v0

    if-nez v0, :cond_260

    .line 4681
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInTransaction()V

    :cond_260
    move v0, v3

    .line 4688
    :goto_261
    const-string v1, "accounts"

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->findValidAccountsWithDataSets(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 4689
    const-string v2, "raw_contacts"

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsProvider2;->findValidAccountsWithDataSets(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 4691
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4694
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_275
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/AccountWithDataSet;

    .line 4698
    const-string v1, "INSERT INTO accounts (account_name, account_type, data_set) VALUES (?, ?, ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v5, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    goto :goto_275

    .line 4708
    :cond_2a0
    if-eqz v1, :cond_2b1

    .line 4710
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 4712
    :cond_2b1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b4
    .catchall {:try_start_21d .. :try_end_2b4} :catchall_85

    .line 4714
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4716
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAccountWritability:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4718
    if-eqz v1, :cond_2c4

    .line 4719
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactsAccountCount([Landroid/accounts/Account;)V

    .line 4720
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateProviderStatus()V

    .line 4723
    :cond_2c4
    return v1

    :cond_2c5
    move v0, v1

    goto :goto_261

    :cond_2c7
    move v0, v1

    goto/16 :goto_50
.end method

.method updateDataUsageStat(Ljava/util/List;Ljava/lang/String;J)I
    .registers 20
    .parameter
    .parameter "type"
    .parameter "currentTimeMillis"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "J)I"
        }
    .end annotation

    .prologue
    .line 7925
    .local p1, dataIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sDataUsageTypeMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 7926
    .local v12, typeInt:I
    const-string v14, "data_id =? AND usage_type =?"

    .line 7928
    .local v14, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "stat_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "times_used"

    aput-object v2, v3, v1

    .line 7930
    .local v3, columns:[Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 7931
    .local v13, values:Landroid/content/ContentValues;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 7932
    .local v10, dataId:Ljava/lang/Long;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 7933
    .local v5, args:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 7935
    :try_start_4e
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data_usage_stat"

    const-string v4, "data_id =? AND usage_type =?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_60
    .catchall {:try_start_4e .. :try_end_60} :catchall_ca

    move-result-object v9

    .line 7938
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_61
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d8

    .line 7939
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 7940
    const-string v1, "ContactsProvider"

    const-string v2, "moveToFirst() failed while getAccount() returned non-zero."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7958
    :goto_74
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7f
    .catchall {:try_start_61 .. :try_end_7f} :catchall_c5

    .line 7960
    :try_start_7f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_ca

    .line 7963
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_26

    .line 7943
    :cond_8e
    :try_start_8e
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 7944
    const-string v1, "times_used"

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7945
    const-string v1, "last_time_used"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7946
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data_usage_stat"

    const-string v4, "stat_id =?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v2, v13, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_8e .. :try_end_c4} :catchall_c5

    goto :goto_74

    .line 7960
    :catchall_c5
    move-exception v1

    :try_start_c6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_ca

    .line 7963
    .end local v9           #cursor:Landroid/database/Cursor;
    :catchall_ca
    move-exception v1

    move-object v2, v1

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 7951
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_d8
    :try_start_d8
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 7952
    const-string v1, "data_id"

    invoke-virtual {v13, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7953
    const-string v1, "usage_type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7954
    const-string v1, "times_used"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7955
    const-string v1, "last_time_used"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7956
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "data_usage_stat"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_10a
    .catchall {:try_start_d8 .. :try_end_10a} :catchall_c5

    goto/16 :goto_74

    .line 7967
    .end local v5           #args:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #dataId:Ljava/lang/Long;
    :cond_10c
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method protected updateDirectoriesInBackground(Z)V
    .registers 3
    .parameter "rescan"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanAllPackages(Z)V

    .line 1701
    return-void
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3837
    sget-boolean v0, Lcom/android/providers/contacts/ContactsProvider2;->VERBOSE_LOGGING:Z

    if-eqz v0, :cond_20

    .line 3838
    const-string v0, "ContactsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInTransaction: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :cond_20
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    .line 3843
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3848
    :cond_33
    sget-object v0, Lcom/android/providers/contacts/ContactsProvider2;->sUriMatcher:Lcom/android/providers/contacts/ProfileAwareUriMatcher;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ProfileAwareUriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 3849
    const/16 v1, 0x2af9

    if-ne v0, v1, :cond_55

    if-nez p3, :cond_55

    .line 3850
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 3851
    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 3852
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/TransactionContext;->syncStateUpdated(JLjava/lang/Object;)V

    .line 4065
    :cond_54
    :goto_54
    return v6

    .line 3855
    :cond_55
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->flushTransactionalChanges()V

    .line 3856
    const-string v1, "caller_is_syncadapter"

    invoke-static {p1, v1, v7}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v5

    .line 3858
    sparse-switch v0, :sswitch_data_360

    .line 4060
    iput-boolean v6, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    .line 4061
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mLegacyApiSupport:Lcom/android/providers/contacts/LegacyApiSupport;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_54

    .line 3861
    :sswitch_6a
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_54

    .line 3865
    :sswitch_87
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_c9

    const-string v0, ""

    :goto_a8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3869
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, p2, v1, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_54

    .line 3866
    :cond_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a8

    .line 3874
    :sswitch_e3
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_120

    const-string v0, ""

    :goto_104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3878
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, p2, v1, p4}, Lcom/android/common/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 3875
    :cond_120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_104

    .line 3884
    :sswitch_13a
    invoke-direct {p0, p2, p3, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_54

    .line 3889
    :sswitch_140
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;Z)I

    move-result v6

    goto/16 :goto_54

    .line 3895
    :sswitch_14a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 3896
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3897
    if-ge v1, v4, :cond_168

    .line 3898
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "Missing a lookup key"

    invoke-virtual {v0, v2, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3901
    :cond_168
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3902
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3903
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateContactOptions(JLandroid/content/ContentValues;Z)I

    move-result v6

    goto/16 :goto_54

    .line 3909
    :sswitch_180
    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_1ba

    move v0, v6

    .line 3910
    :goto_185
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_1bc

    const-string v0, ""

    :goto_1a8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 3914
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_54

    :cond_1ba
    move v0, v2

    .line 3909
    goto :goto_185

    .line 3911
    :cond_1bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a8

    .line 3921
    :sswitch_1d0
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3923
    if-lez v0, :cond_35c

    .line 3924
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_1e8

    :goto_1e2
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move v6, v0

    goto/16 :goto_54

    :cond_1e8
    move v6, v7

    goto :goto_1e2

    :sswitch_1ea
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3933
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateData(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3934
    if-lez v0, :cond_35c

    .line 3935
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_1ff

    :goto_1f9
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move v6, v0

    goto/16 :goto_54

    :cond_1ff
    move v6, v7

    goto :goto_1f9

    .line 3942
    :sswitch_201
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3943
    invoke-direct {p0, p2, v0, p4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_54

    .line 3948
    :sswitch_20b
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3949
    if-eqz p3, :cond_238

    .line 3950
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=? AND("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_54

    .line 3955
    :cond_238
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 3956
    const-string v0, "_id=?"

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateRawContacts(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v6

    goto/16 :goto_54

    .line 3963
    :sswitch_24a
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3965
    if-lez v0, :cond_35c

    .line 3966
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_262

    :goto_25c
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move v6, v0

    goto/16 :goto_54

    :cond_262
    move v6, v7

    goto :goto_25c

    .line 3972
    :sswitch_264
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3973
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_29a

    const-string v0, ""

    :goto_27f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3976
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateGroups(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    .line 3978
    if-lez v0, :cond_35c

    .line 3979
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_2ae

    :goto_294
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move v6, v0

    goto/16 :goto_54

    .line 3974
    :cond_29a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27f

    :cond_2ae
    move v6, v7

    .line 3979
    goto :goto_294

    .line 3985
    :sswitch_2b0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/ContactsProvider2;->updateAggregationException(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v6

    goto/16 :goto_54

    .line 3990
    :sswitch_2be
    invoke-direct {p0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateSettings(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3992
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    if-nez v5, :cond_2d0

    :goto_2ca
    or-int/2addr v1, v6

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSyncToNetwork:Z

    move v6, v0

    .line 3993
    goto/16 :goto_54

    :cond_2d0
    move v6, v7

    .line 3992
    goto :goto_2ca

    .line 3998
    :sswitch_2d2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateStatusUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 4003
    :sswitch_2d8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 4008
    :sswitch_2de
    const-string v0, "_id=?"

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->updateStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 4014
    :sswitch_2ee
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4015
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 4016
    const-string v3, "raw_contact_id=? AND _id=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v7

    aput-object v1, v2, v6

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateStreamItems(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 4023
    :sswitch_30a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateStreamItemPhotos(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 4028
    :sswitch_310
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4029
    const-string v1, "stream_item_id=?"

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v7

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateStreamItemPhotos(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 4035
    :sswitch_326
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4036
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4037
    const-string v3, "stream_item_photos._id=? AND stream_item_photos.stream_item_id=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v7

    aput-object v0, v2, v6

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/providers/contacts/ContactsProvider2;->updateStreamItemPhotos(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_54

    .line 4045
    :sswitch_348
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactDirectoryManager:Lcom/android/providers/contacts/ContactDirectoryManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactDirectoryManager;->scanPackagesByUid(I)V

    goto/16 :goto_54

    .line 4051
    :sswitch_353
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->handleDataUsageFeedback(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_54

    move v6, v7

    .line 4056
    goto/16 :goto_54

    :cond_35c
    move v6, v0

    goto/16 :goto_54

    .line 3858
    nop

    :sswitch_data_360
    .sparse-switch
        0x3e8 -> :sswitch_13a
        0x3e9 -> :sswitch_140
        0x3ea -> :sswitch_14a
        0x3eb -> :sswitch_14a
        0x7d2 -> :sswitch_201
        0x7d3 -> :sswitch_20b
        0x7d4 -> :sswitch_180
        0x7d8 -> :sswitch_2ee
        0xbb8 -> :sswitch_1d0
        0xbb9 -> :sswitch_1ea
        0xbbb -> :sswitch_1ea
        0xbbe -> :sswitch_1ea
        0xbc2 -> :sswitch_1ea
        0x1770 -> :sswitch_2b0
        0x1b58 -> :sswitch_2d2
        0x2328 -> :sswitch_2be
        0x2710 -> :sswitch_24a
        0x2711 -> :sswitch_264
        0x2af8 -> :sswitch_6a
        0x2af9 -> :sswitch_87
        0x2afa -> :sswitch_6a
        0x2afb -> :sswitch_e3
        0x4269 -> :sswitch_348
        0x4a38 -> :sswitch_13a
        0x4a3a -> :sswitch_1d0
        0x4a3d -> :sswitch_201
        0x4a3f -> :sswitch_180
        0x4a41 -> :sswitch_2d2
        0x4e21 -> :sswitch_353
        0x5208 -> :sswitch_2d8
        0x5209 -> :sswitch_30a
        0x520a -> :sswitch_2de
        0x520b -> :sswitch_310
        0x520c -> :sswitch_326
    .end sparse-switch
.end method

.method protected updateLocaleInBackground()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 1652
    iget v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    if-ne v0, v4, :cond_6

    .line 1669
    :cond_5
    :goto_5
    return-void

    .line 1656
    :cond_6
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1657
    const-string v1, "locale"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1658
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2;->mCurrentLocale:Ljava/util/Locale;

    .line 1659
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1663
    iget v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 1664
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 1665
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1666
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v3, p0, v2}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V

    .line 1667
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1668
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    goto :goto_5
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 5
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 6378
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mAggregator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 6379
    return-void
.end method

.method protected updateSearchIndexInBackground()V
    .registers 2

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mSearchIndexManager:Lcom/android/providers/contacts/SearchIndexManager;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager;->updateIndex()V

    .line 1697
    return-void
.end method

.method protected upgradeAggregationAlgorithmInBackground()V
    .registers 15

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 7823
    const-string v0, "ContactsProvider"

    const-string v2, "Upgrading aggregation algorithm"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7825
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v11

    .line 7828
    :try_start_d
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsProvider2;->switchToContactMode()V

    .line 7829
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_db

    move-result-object v0

    .line 7830
    :try_start_16
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 7831
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 7832
    const/4 v1, 0x1

    const-string v2, "raw_contacts r1 JOIN raw_contacts r2"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "r1._id"

    aput-object v5, v3, v4

    const-string v4, "r1._id!=r2._id AND r1.contact_id=r2.contact_id AND r1.account_name=r2.account_name AND r1.account_type=r2.account_type AND r1.data_set=r2.data_set"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_de

    move-result-object v3

    move v2, v10

    .line 7842
    :goto_35
    :try_start_35
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 7843
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 7844
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_9f

    .line 7846
    add-int/lit8 v2, v2, 0x1

    .line 7847
    goto :goto_35

    .line 7849
    :cond_4a
    :try_start_4a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 7851
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-virtual {v3, v1, v0}, Lcom/android/providers/contacts/ContactAggregator;->aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7852
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;->updateSearchIndexInTransaction()V

    .line 7853
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 7854
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "aggregation_v2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_a4

    .line 7857
    if-eqz v0, :cond_71

    .line 7858
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7860
    :cond_71
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 7861
    const-string v3, "ContactsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aggregation algorithm upgraded for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " contacts, in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v11

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7864
    return-void

    .line 7849
    :catchall_9f
    move-exception v1

    :try_start_a0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_a4

    .line 7857
    :catchall_a4
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_a8
    if-eqz v1, :cond_ad

    .line 7858
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 7860
    :cond_ad
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 7861
    const-string v1, "ContactsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aggregation algorithm upgraded for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contacts, in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v3, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7863
    throw v0

    .line 7857
    :catchall_db
    move-exception v0

    move v2, v10

    goto :goto_a8

    :catchall_de
    move-exception v1

    move v2, v10

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_a8
.end method

.method wipeData()V
    .registers 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->wipeData()V

    .line 1969
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfileHelper:Lcom/android/providers/contacts/ProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProfileDatabaseHelper;->wipeData()V

    .line 1970
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/PhotoStore;->clear()V

    .line 1971
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0}, Lcom/android/providers/contacts/PhotoStore;->clear()V

    .line 1972
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/providers/contacts/ContactsProvider2;->mProviderStatus:I

    .line 1973
    return-void
.end method

.method protected yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    .registers 5
    .parameter

    .prologue
    .line 2213
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/ContactsTransaction;->removeDbForTag(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2214
    if-eqz v0, :cond_e

    .line 2215
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2220
    :cond_e
    const-string v0, "contacts"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/ContactsTransaction;->getDbForTag(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2221
    if-eqz v0, :cond_20

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
