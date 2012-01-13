.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field private static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field private static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field private static final OPTION_ENABLE_FACELOCK:Ljava/lang/String; = "enable_facelock"

.field private static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 165
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 170
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_90

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/system/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "gesture.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "password.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 176
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_91

    move v2, v3

    :goto_6b
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-lez v5, :cond_93

    :goto_7f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    const/16 v1, 0x388

    .line 180
    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    .line 181
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 183
    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_90
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_91
    move v2, v4

    .line 176
    goto :goto_6b

    :cond_93
    move v3, v4

    .line 177
    goto :goto_7f
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 516
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 517
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 518
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 519
    const/4 v0, 0x1

    .line 517
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 521
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 525
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 526
    const/high16 v4, 0x5

    .line 534
    :goto_1f
    return v4

    .line 528
    :cond_20
    if-eqz v1, :cond_25

    .line 529
    const/high16 v4, 0x4

    goto :goto_1f

    .line 531
    :cond_25
    if-eqz v0, :cond_2a

    .line 532
    const/high16 v4, 0x2

    goto :goto_1f

    .line 534
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private finishBiometricWeak()V
    .registers 4

    .prologue
    .line 1078
    const-string v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1082
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1083
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1086
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .registers 5
    .parameter "secureSettingKey"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 986
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 766
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 767
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_22

    .line 769
    :try_start_c
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 770
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 771
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_22} :catch_27

    .line 777
    :cond_22
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 772
    :catch_27
    move-exception v0

    .line 774
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "secureSettingKey"

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 747
    const/4 v1, 0x0

    .line 761
    :goto_3
    return-object v1

    .line 750
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 751
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 752
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 753
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 754
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 752
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 757
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 758
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 759
    .local v1, hash:[B
    goto :goto_3

    .line 760
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 761
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 726
    const-string v4, ""

    .line 735
    :goto_4
    return-object v4

    .line 728
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 730
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 731
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 732
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 733
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 735
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 993
    return-void

    .line 991
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1001
    return-void
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1009
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 711
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 712
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 713
    aget-byte v0, v1, v2

    .line 714
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 716
    .end local v0           #b:B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "ary"

    .prologue
    .line 805
    const-string v0, "0123456789ABCDEF"

    .line 806
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 807
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 811
    :cond_43
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .registers 8
    .parameter "password"

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 540
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_c

    .line 556
    :goto_b
    return-void

    .line 544
    :cond_c
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 545
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_1d

    .line 546
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 550
    :cond_1d
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 552
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_21
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_b

    .line 553
    :catch_25
    move-exception v1

    .line 554
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"

    .prologue
    const/4 v5, 0x1

    .line 272
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 274
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 275
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 276
    if-gtz v1, :cond_1e

    .line 284
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_1d
    return v5

    .line 280
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_25} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_29

    move-result v5

    goto :goto_1d

    .line 281
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_27
    move-exception v0

    .line 282
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_1d

    .line 283
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v2

    .line 284
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_1d
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 9
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 296
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 297
    .local v2, passwordHashString:Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, passwordHistory:Ljava/lang/String;
    if-nez v3, :cond_13

    .line 312
    :cond_12
    :goto_12
    return v5

    .line 302
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 303
    .local v1, passwordHashLength:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 304
    .local v4, passwordHistoryLength:I
    if-eqz v4, :cond_12

    .line 307
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 309
    .local v0, neededPasswordHistoryLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2c

    .line 310
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 312
    :cond_2c
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_12
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x1

    .line 247
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 249
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 250
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 251
    if-gtz v1, :cond_1e

    .line 259
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_1d
    return v5

    .line 255
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_1e
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_25} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_29

    move-result v5

    goto :goto_1d

    .line 256
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_27
    move-exception v0

    .line 257
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_1d

    .line 258
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v2

    .line 259
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_1d
.end method

.method public clearLock(Z)V
    .registers 5
    .parameter "isFallback"

    .prologue
    const/4 v1, 0x0

    .line 401
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 402
    :cond_6
    const/high16 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 404
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 405
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 406
    const-string v0, "lockscreen.password_type_alternate"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 407
    return-void
.end method

.method deleteGallery()V
    .registers 5

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 452
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 454
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 457
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method public deleteTempGallery()V
    .registers 5

    .prologue
    .line 441
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 443
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 6

    .prologue
    .line 356
    const/4 v0, 0x0

    .line 359
    .local v0, activePasswordQuality:I
    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 361
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_46

    .line 394
    :cond_e
    :goto_e
    return v0

    .line 363
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 364
    const/high16 v0, 0x1

    goto :goto_e

    .line 368
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 369
    const v0, 0x8000

    goto :goto_e

    .line 373
    :sswitch_22
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 374
    const/high16 v0, 0x2

    goto :goto_e

    .line 378
    :sswitch_2b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 379
    const/high16 v0, 0x4

    goto :goto_e

    .line 383
    :sswitch_34
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 384
    const/high16 v0, 0x5

    goto :goto_e

    .line 388
    :sswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 389
    const/high16 v0, 0x6

    goto :goto_e

    .line 361
    :sswitch_data_46
    .sparse-switch
        0x8000 -> :sswitch_18
        0x10000 -> :sswitch_f
        0x20000 -> :sswitch_22
        0x40000 -> :sswitch_2b
        0x50000 -> :sswitch_34
        0x60000 -> :sswitch_3d
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 156
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 6

    .prologue
    const-wide/32 v3, 0x10000

    .line 682
    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 686
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_16

    .line 687
    const-string v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 691
    :cond_16
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 928
    const-string v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 929
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 930
    .local v2, now:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_17

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_18

    :cond_17
    move-wide v0, v4

    .line 933
    .end local v0           #deadline:J
    :cond_18
    return-wide v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 980
    :cond_11
    const/4 v0, 0x0

    .line 982
    .end local v0           #nextAlarm:Ljava/lang/String;
    :cond_12
    return-object v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .registers 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .registers 3

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .registers 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .registers 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public isBiometricWeakEverChosen()Z
    .registers 2

    .prologue
    .line 348
    const-string v0, "lockscreen.biometricweakeverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 852
    const-string v4, "enable_facelock"

    const-string v5, "lockscreen.options"

    invoke-direct {p0, v5}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 873
    :cond_10
    :goto_10
    return v2

    .line 857
    :cond_11
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 859
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_17
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1d} :catch_32

    .line 865
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_10

    move v2, v3

    .line 873
    goto :goto_10

    .line 860
    :catch_32
    move-exception v0

    .line 861
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_10
.end method

.method public isEmergencyCallCapable()Z
    .registers 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .registers 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 16

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 818
    const-string v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 819
    .local v3, mode:J
    const-string v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 820
    .local v1, backupMode:J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_2c

    cmp-long v8, v3, v11

    if-eqz v8, :cond_2c

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_2c

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_55

    :cond_2c
    move v5, v7

    .line 824
    .local v5, passwordEnabled:Z
    :goto_2d
    cmp-long v8, v1, v13

    if-eqz v8, :cond_43

    cmp-long v8, v1, v11

    if-eqz v8, :cond_43

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_43

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_57

    :cond_43
    move v0, v7

    .line 829
    .local v0, backupEnabled:Z
    :goto_44
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_59

    if-nez v5, :cond_54

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_59

    if-eqz v0, :cond_59

    :cond_54
    :goto_54
    return v7

    .end local v0           #backupEnabled:Z
    .end local v5           #passwordEnabled:Z
    :cond_55
    move v5, v6

    .line 820
    goto :goto_2d

    .restart local v5       #passwordEnabled:Z
    :cond_57
    move v0, v6

    .line 824
    goto :goto_44

    .restart local v0       #backupEnabled:Z
    :cond_59
    move v7, v6

    .line 829
    goto :goto_54
.end method

.method public isLockPatternEnabled()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 837
    const-string v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2b

    move v0, v1

    .line 841
    .local v0, backupEnabled:Z
    :goto_10
    const-string v3, "lock_pattern_autolock"

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_2d

    if-eqz v0, :cond_2d

    :cond_2a
    :goto_2a
    return v1

    .end local v0           #backupEnabled:Z
    :cond_2b
    move v0, v2

    .line 837
    goto :goto_10

    .restart local v0       #backupEnabled:Z
    :cond_2d
    move v1, v2

    .line 841
    goto :goto_2a
.end method

.method public isLockScreenDisabled()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isPatternEverChosen()Z
    .registers 2

    .prologue
    .line 338
    const-string v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 2

    .prologue
    .line 942
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .registers 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1012
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1013
    .local v2, mode:J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_43

    move v1, v4

    .line 1014
    .local v1, isPattern:Z
    :goto_f
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_45

    :cond_2b
    move v0, v4

    .line 1018
    .local v0, isPassword:Z
    :goto_2c
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_42

    :cond_3a
    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1020
    .local v4, secure:Z
    :cond_42
    :goto_42
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_43
    move v1, v5

    .line 1013
    goto :goto_f

    .restart local v1       #isPattern:Z
    :cond_45
    move v0, v5

    .line 1014
    goto :goto_2c

    .restart local v0       #isPassword:Z
    :cond_47
    move v4, v5

    .line 1018
    goto :goto_42
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 901
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 2

    .prologue
    .line 887
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 11
    .parameter "password"

    .prologue
    .line 788
    if-nez p1, :cond_4

    .line 789
    const/4 v2, 0x0

    .line 801
    :goto_3
    return-object v2

    .line 791
    :cond_4
    const/4 v0, 0x0

    .line 792
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 794
    .local v2, hashed:[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 795
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 796
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 797
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_3

    .line 798
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_51
    move-exception v1

    .line 799
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public reportFailedPasswordAttempt()V
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 232
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 236
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1066
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1068
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 1069
    const/4 v1, 0x1

    .line 1074
    :goto_14
    return v1

    .line 1071
    :catch_15
    move-exception v1

    .line 1074
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 4
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 567
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .registers 34
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"

    .prologue
    .line 579
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v23

    .line 582
    .local v23, hash:[B
    :try_start_4
    new-instance v29, Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v4, "rw"

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v29, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_76

    .line 585
    const-wide/16 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 589
    :goto_19
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 591
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v26

    .line 592
    .local v26, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_17c

    .line 594
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 597
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 599
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v21

    .line 600
    .local v21, computedQuality:I
    if-nez p3, :cond_9e

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 602
    const-string v3, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 608
    :goto_49
    if-eqz v21, :cond_132

    .line 609
    const/4 v5, 0x0

    .line 610
    .local v5, letters:I
    const/4 v6, 0x0

    .line 611
    .local v6, uppercase:I
    const/4 v7, 0x0

    .line 612
    .local v7, lowercase:I
    const/4 v8, 0x0

    .line 613
    .local v8, numbers:I
    const/4 v9, 0x0

    .line 614
    .local v9, symbols:I
    const/4 v10, 0x0

    .line 615
    .local v10, nonletter:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_53
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_101

    .line 616
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .line 617
    .local v20, c:C
    const/16 v3, 0x41

    move/from16 v0, v20

    if-lt v0, v3, :cond_d8

    const/16 v3, 0x5a

    move/from16 v0, v20

    if-gt v0, v3, :cond_d8

    .line 618
    add-int/lit8 v5, v5, 0x1

    .line 619
    add-int/lit8 v6, v6, 0x1

    .line 615
    :goto_73
    add-int/lit8 v24, v24, 0x1

    goto :goto_53

    .line 587
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v20           #c:C
    .end local v21           #computedQuality:I
    .end local v24           #i:I
    .end local v26           #keyStore:Landroid/security/KeyStore;
    :cond_76
    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_81} :catch_82
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_81} :catch_bc

    goto :goto_19

    .line 666
    .end local v29           #raf:Ljava/io/RandomAccessFile;
    :catch_82
    move-exception v22

    .line 668
    .local v22, fnfe:Ljava/io/FileNotFoundException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock pattern to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .end local v22           #fnfe:Ljava/io/FileNotFoundException;
    :goto_9d
    return-void

    .line 604
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v21       #computedQuality:I
    .restart local v26       #keyStore:Landroid/security/KeyStore;
    .restart local v29       #raf:Ljava/io/RandomAccessFile;
    :cond_9e
    :try_start_9e
    const-string v3, "lockscreen.password_type"

    const-wide/32 v11, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 605
    const-string v3, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V
    :try_end_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_bb} :catch_82
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_bb} :catch_bc

    goto :goto_49

    .line 669
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v21           #computedQuality:I
    .end local v26           #keyStore:Landroid/security/KeyStore;
    .end local v29           #raf:Ljava/io/RandomAccessFile;
    :catch_bc
    move-exception v25

    .line 671
    .local v25, ioe:Ljava/io/IOException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock pattern to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v11, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 620
    .end local v25           #ioe:Ljava/io/IOException;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #letters:I
    .restart local v6       #uppercase:I
    .restart local v7       #lowercase:I
    .restart local v8       #numbers:I
    .restart local v9       #symbols:I
    .restart local v10       #nonletter:I
    .restart local v20       #c:C
    .restart local v21       #computedQuality:I
    .restart local v24       #i:I
    .restart local v26       #keyStore:Landroid/security/KeyStore;
    .restart local v29       #raf:Ljava/io/RandomAccessFile;
    :cond_d8
    const/16 v3, 0x61

    move/from16 v0, v20

    if-lt v0, v3, :cond_e9

    const/16 v3, 0x7a

    move/from16 v0, v20

    if-gt v0, v3, :cond_e9

    .line 621
    add-int/lit8 v5, v5, 0x1

    .line 622
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .line 623
    :cond_e9
    const/16 v3, 0x30

    move/from16 v0, v20

    if-lt v0, v3, :cond_fb

    const/16 v3, 0x39

    move/from16 v0, v20

    if-gt v0, v3, :cond_fb

    .line 624
    add-int/lit8 v8, v8, 0x1

    .line 625
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_73

    .line 627
    :cond_fb
    add-int/lit8 v9, v9, 0x1

    .line 628
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_73

    .line 631
    .end local v20           #c:C
    :cond_101
    :try_start_101
    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 641
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v24           #i:I
    :goto_110
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 642
    .local v27, passwordHistory:Ljava/lang/String;
    if-nez v27, :cond_11f

    .line 643
    new-instance v27, Ljava/lang/String;

    .end local v27           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v27 .. v27}, Ljava/lang/String;-><init>()V

    .line 645
    .restart local v27       #passwordHistory:Ljava/lang/String;
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v28

    .line 646
    .local v28, passwordHistoryLength:I
    if-nez v28, :cond_143

    .line 647
    const-string v27, ""

    .line 656
    :goto_127
    const-string v3, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 635
    .end local v27           #passwordHistory:Ljava/lang/String;
    .end local v28           #passwordHistoryLength:I
    :cond_132
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto :goto_110

    .line 649
    .restart local v27       #passwordHistory:Ljava/lang/String;
    .restart local v28       #passwordHistoryLength:I
    :cond_143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 652
    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    mul-int v4, v4, v28

    add-int v4, v4, v28

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    goto :goto_127

    .line 660
    .end local v21           #computedQuality:I
    .end local v27           #passwordHistory:Ljava/lang/String;
    .end local v28           #passwordHistoryLength:I
    :cond_17c
    invoke-virtual/range {v26 .. v26}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_185

    .line 661
    invoke-virtual/range {v26 .. v26}, Landroid/security/KeyStore;->reset()Z

    .line 663
    :cond_185
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    invoke-virtual/range {v11 .. v19}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_195
    .catch Ljava/io/FileNotFoundException; {:try_start_101 .. :try_end_195} :catch_82
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_195} :catch_bc

    goto/16 :goto_9d
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 435
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .registers 17
    .parameter
    .parameter "isFallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v10

    .line 469
    .local v10, hash:[B
    :try_start_4
    new-instance v13, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v13, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .local v13, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_4c

    .line 472
    const-wide/16 v1, 0x0

    invoke-virtual {v13, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 476
    :goto_15
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 478
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v12

    .line 479
    .local v12, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_9e

    .line 480
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 481
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 482
    if-nez p2, :cond_6e

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 484
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 491
    :goto_3c
    const/high16 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 508
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #keyStore:Landroid/security/KeyStore;
    .end local v13           #raf:Ljava/io/RandomAccessFile;
    :goto_4b
    return-void

    .line 474
    .restart local v13       #raf:Ljava/io/RandomAccessFile;
    :cond_4c
    const/4 v1, 0x0

    array-length v2, v10

    invoke-virtual {v13, v10, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_51} :catch_82

    goto :goto_15

    .line 500
    .end local v13           #raf:Ljava/io/RandomAccessFile;
    :catch_52
    move-exception v9

    .line 503
    .local v9, fnfe:Ljava/io/FileNotFoundException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock pattern to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 486
    .end local v9           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #keyStore:Landroid/security/KeyStore;
    .restart local v13       #raf:Ljava/io/RandomAccessFile;
    :cond_6e
    :try_start_6e
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 487
    const-string v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 489
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_81} :catch_52
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_81} :catch_82

    goto :goto_3c

    .line 504
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #keyStore:Landroid/security/KeyStore;
    .end local v13           #raf:Ljava/io/RandomAccessFile;
    :catch_82
    move-exception v11

    .line 506
    .local v11, ioe:Ljava/io/IOException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock pattern to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 494
    .end local v11           #ioe:Ljava/io/IOException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #keyStore:Landroid/security/KeyStore;
    .restart local v13       #raf:Ljava/io/RandomAccessFile;
    :cond_9e
    :try_start_9e
    invoke-virtual {v12}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 495
    invoke-virtual {v12}, Landroid/security/KeyStore;->reset()Z

    .line 497
    :cond_a7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_b2} :catch_52
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_b2} :catch_82

    goto :goto_4b
.end method

.method public savedPasswordExists()Z
    .registers 2

    .prologue
    .line 328
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .registers 2

    .prologue
    .line 320
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 880
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 881
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .registers 5
    .parameter "disable"

    .prologue
    .line 416
    const-string v2, "lockscreen.disabled"

    if-eqz p1, :cond_a

    const-wide/16 v0, 0x1

    :goto_6
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 417
    return-void

    .line 416
    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_6
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 918
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 919
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 954
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 955
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 908
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 909
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 894
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 895
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .registers 9
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    const/4 v4, 0x0

    .line 1038
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz p3, :cond_1c

    .line 1039
    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1046
    const/4 v3, 0x2

    if-ne p2, v3, :cond_22

    .line 1048
    const v2, 0x10402e0

    .line 1049
    .local v2, textId:I
    const v1, 0x1080084

    .line 1050
    .local v1, phoneCallIcon:I
    invoke-virtual {p1, v1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1056
    .end local v1           #phoneCallIcon:I
    :goto_18
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1057
    .end local v2           #textId:I
    :goto_1b
    return-void

    .line 1041
    :cond_1c
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1b

    .line 1052
    :cond_22
    const v2, 0x10402df

    .line 1053
    .restart local v2       #textId:I
    const v0, 0x10802c0

    .line 1054
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_18
.end method

.method public usingBiometricWeak()Z
    .registers 5

    .prologue
    .line 698
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 700
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method
