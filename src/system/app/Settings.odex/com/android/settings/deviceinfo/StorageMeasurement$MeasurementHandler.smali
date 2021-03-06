.class Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
    }
.end annotation


# instance fields
.field private volatile mBound:Z

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field private volatile mMeasured:Z

.field private mStatsObserver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    .line 242
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 243
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    .line 219
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    .line 227
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    .line 244
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 245
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V

    return-void
.end method

.method private measureApproximateStorage()V
    .registers 11

    .prologue
    .line 371
    new-instance v4, Landroid/os/StatFs;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    if-eqz v7, :cond_3a

    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    :goto_14
    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 374
    .local v2, blockSize:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v5, v7

    .line 375
    .local v5, totalBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 377
    .local v0, availableBlocks:J
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    mul-long v8, v5, v2

    invoke-static {v7, v8, v9}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 378
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    mul-long v8, v0, v2

    invoke-static {v7, v8, v9}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1002(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 380
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v7}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    .line 381
    return-void

    .line 371
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #totalBlocks:J
    :cond_3a
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_14
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .registers 18
    .parameter "imcs"

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    move-object v2, v11

    .line 385
    .local v2, context:Landroid/content/Context;
    :goto_11
    if-nez v2, :cond_16

    .line 481
    :cond_13
    :goto_13
    return-void

    .line 384
    .end local v2           #context:Landroid/content/Context;
    :cond_14
    const/4 v2, 0x0

    goto :goto_11

    .line 390
    .restart local v2       #context:Landroid/content/Context;
    :cond_16
    const/4 v6, 0x0

    .local v6, i:I
    :goto_17
    sget-object v11, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v11, v11

    if-ge v6, v11, :cond_67

    .line 391
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_58

    .line 392
    sget-object v11, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v11, v11, v6

    iget-object v4, v11, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mDirPaths:[Ljava/lang/String;

    .line 393
    .local v4, dirs:[Ljava/lang/String;
    array-length v8, v4

    .line 394
    .local v8, length:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J

    move-result-object v11

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v6

    .line 395
    const/4 v3, 0x0

    .local v3, d:I
    :goto_3a
    if-ge v3, v8, :cond_64

    .line 396
    aget-object v9, v4, v3

    .line 397
    .local v9, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J

    move-result-object v11

    aget-wide v12, v11, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    invoke-static {v14, v0, v9}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1400(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v12, v14

    aput-wide v12, v11, v6

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 401
    .end local v3           #d:I
    .end local v4           #dirs:[Ljava/lang/String;
    .end local v8           #length:I
    .end local v9           #path:Ljava/lang/String;
    :cond_58
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J

    move-result-object v11

    const-wide/16 v12, 0x0

    aput-wide v12, v11, v6

    .line 390
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 436
    :cond_67
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_fe

    .line 437
    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, downloadsPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    invoke-static {v12, v0, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1400(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 445
    .end local v5           #downloadsPath:Ljava/lang/String;
    :goto_8c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    .line 446
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 447
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1700(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V

    .line 452
    :cond_a8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 453
    .local v10, pm:Landroid/content/pm/PackageManager;
    if-eqz v10, :cond_13

    .line 457
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-nez v11, :cond_c2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v11

    if-eqz v11, :cond_108

    .line 458
    :cond_c2
    const/16 v11, 0x2200

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 465
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_c8
    if-eqz v1, :cond_118

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_118

    .line 467
    new-instance v11, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/settings/deviceinfo/StorageMeasurement$1;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    .line 468
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-static {v11}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->access$1900(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;)Ljava/util/List;

    move-result-object v12

    monitor-enter v12

    .line 469
    const/4 v6, 0x0

    :goto_e6
    :try_start_e6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_10d

    .line 470
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 471
    .local v7, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    iget-object v13, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->queuePackageMeasurementLocked(Ljava/lang/String;)V
    :try_end_fb
    .catchall {:try_start_e6 .. :try_end_fb} :catchall_115

    .line 469
    add-int/lit8 v6, v6, 0x1

    goto :goto_e6

    .line 441
    .end local v1           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_fe
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/16 v12, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    goto :goto_8c

    .line 462
    .restart local v10       #pm:Landroid/content/pm/PackageManager;
    :cond_108
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .restart local v1       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_c8

    .line 473
    :cond_10d
    :try_start_10d
    monitor-exit v12
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_115

    .line 475
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V

    goto/16 :goto_13

    .line 473
    :catchall_115
    move-exception v11

    :try_start_116
    monitor-exit v12
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v11

    .line 479
    :cond_118
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->onInternalMeasurementComplete()V

    goto/16 :goto_13
.end method

.method private onInternalMeasurementComplete()V
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 368
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 249
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_8c

    .line 304
    :cond_8
    :goto_8
    return-void

    .line 251
    :pswitch_9
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    if-eqz v3, :cond_13

    .line 252
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$200(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    goto :goto_8

    .line 256
    :cond_13
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 257
    .local v0, context:Landroid/content/Context;
    :cond_20
    if-eqz v0, :cond_8

    .line 261
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage()V

    .line 263
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 264
    :try_start_28
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3f

    .line 265
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 266
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    :goto_3a
    monitor-exit v4

    goto :goto_8

    :catchall_3c
    move-exception v3

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_3c

    throw v3

    .line 268
    :cond_3f
    :try_start_3f
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$300()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 269
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_3c

    goto :goto_3a

    .line 276
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #service:Landroid/content/Intent;
    :pswitch_53
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    .line 277
    .local v1, imcs:Lcom/android/internal/app/IMediaContainerService;
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_8

    .line 281
    .end local v1           #imcs:Lcom/android/internal/app/IMediaContainerService;
    :pswitch_5b
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 282
    :try_start_5e
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_7e

    .line 283
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_6f

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    .line 284
    .restart local v0       #context:Landroid/content/Context;
    :cond_6f
    if-nez v0, :cond_76

    .line 285
    monitor-exit v4

    goto :goto_8

    .line 291
    .end local v0           #context:Landroid/content/Context;
    :catchall_73
    move-exception v3

    monitor-exit v4
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_73

    throw v3

    .line 288
    .restart local v0       #context:Landroid/content/Context;
    :cond_76
    const/4 v3, 0x0

    :try_start_77
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    .line 289
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 291
    .end local v0           #context:Landroid/content/Context;
    :cond_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_73

    goto :goto_8

    .line 295
    :pswitch_80
    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    .line 296
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$200(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    goto :goto_8

    .line 300
    :pswitch_88
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mMeasured:Z

    goto/16 :goto_8

    .line 249
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_53
        :pswitch_5b
        :pswitch_80
        :pswitch_88
    .end packed-switch
.end method

.method public requestQueuedMeasurementsLocked(Landroid/content/pm/PackageManager;)V
    .registers 7
    .parameter "pm"

    .prologue
    .line 312
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;->getAppsList()[Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, appsList:[Ljava/lang/String;
    array-length v0, v1

    .line 314
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v0, :cond_14

    .line 315
    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mStatsObserver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$StatsObserver;

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 317
    :cond_14
    return-void
.end method
