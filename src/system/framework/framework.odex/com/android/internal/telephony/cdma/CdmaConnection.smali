.class public Lcom/android/internal/telephony/cdma/CdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaConnection$1;,
        Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isIncoming:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field parent:Lcom/android/internal/telephony/cdma/CdmaCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V
    .registers 7
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 77
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 78
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 123
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 125
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    .line 128
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 130
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    .line 132
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 133
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 134
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 136
    iput p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 138
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 140
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .registers 7
    .parameter "context"
    .parameter "cw"
    .parameter "ct"
    .parameter "parent"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 77
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 78
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 182
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 185
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    .line 187
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 188
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 189
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 190
    iget v0, p2, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    .line 194
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    .line 195
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 196
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 197
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaCallTracker;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .registers 8
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 77
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 78
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->createWakeLock(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection$MyHandler;-><init>(Lcom/android/internal/telephony/cdma/CdmaConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    .line 151
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->dialString:Ljava/lang/String;

    .line 152
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] CdmaConnection: dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 154
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] CdmaConnection:formated dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 157
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 163
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 164
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    .line 167
    if-eqz p4, :cond_90

    .line 168
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 171
    iget-object v0, p4, Lcom/android/internal/telephony/cdma/CdmaCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_91

    .line 172
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 177
    :cond_90
    :goto_90
    return-void

    .line 174
    :cond_91
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    goto :goto_90
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 809
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 811
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 804
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 805
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 806
    return-void
.end method

.method private doDisconnect()V
    .registers 5

    .prologue
    .line 603
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectTime:J

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    .line 607
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 204
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I
    .registers 7
    .parameter "phoneNumber"
    .parameter "currIndex"

    .prologue
    .line 835
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v3

    .line 836
    .local v3, wMatched:Z
    add-int/lit8 v1, p1, 0x1

    .line 837
    .local v1, index:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 838
    .local v2, length:I
    :goto_e
    if-ge v1, v2, :cond_27

    .line 839
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 841
    .local v0, cNext:C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 842
    const/4 v3, 0x1

    .line 846
    :cond_1b
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 854
    .end local v0           #cNext:C
    :cond_27
    if-ge v1, v2, :cond_3b

    add-int/lit8 v4, p1, 0x1

    if-le v1, v4, :cond_3b

    if-nez v3, :cond_3b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 856
    add-int/lit8 v1, p1, 0x1

    .line 858
    .end local v1           #index:I
    :cond_3b
    return v1

    .line 849
    .restart local v0       #cNext:C
    .restart local v1       #index:I
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    .line 850
    goto :goto_e
.end method

.method private static findPOrWCharToAppend(Ljava/lang/String;II)C
    .registers 6
    .parameter "phoneNumber"
    .parameter "currPwIndex"
    .parameter "nextNonPwCharIndex"

    .prologue
    .line 866
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 870
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v1, 0x2c

    .line 878
    .local v1, ret:C
    :goto_c
    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_12

    .line 879
    const/16 v1, 0x3b

    .line 881
    :cond_12
    return v1

    .line 870
    .end local v1           #ret:C
    :cond_13
    const/16 v1, 0x3b

    goto :goto_c
.end method

.method public static formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "phoneNumber"

    .prologue
    .line 902
    if-nez p0, :cond_4

    .line 903
    const/4 v6, 0x0

    .line 936
    :goto_3
    return-object v6

    .line 905
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 906
    .local v2, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    .local v5, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 910
    .local v1, currIndex:I
    :goto_e
    if-ge v1, v2, :cond_43

    .line 911
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 912
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isPause(C)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isWait(C)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 913
    :cond_20
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_37

    .line 915
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findNextPCharOrNonPOrNonWCharIndex(Ljava/lang/String;I)I

    move-result v3

    .line 917
    .local v3, nextIndex:I
    if-ge v3, v2, :cond_3a

    .line 918
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->findPOrWCharToAppend(Ljava/lang/String;II)C

    move-result v4

    .line 919
    .local v4, pC:C
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 923
    add-int/lit8 v6, v1, 0x1

    if-le v3, v6, :cond_37

    .line 924
    add-int/lit8 v1, v3, -0x1

    .line 934
    .end local v3           #nextIndex:I
    .end local v4           #pC:C
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 926
    .restart local v3       #nextIndex:I
    :cond_3a
    if-ne v3, v2, :cond_37

    .line 928
    add-int/lit8 v1, v2, -0x1

    goto :goto_37

    .line 932
    .end local v3           #nextIndex:I
    :cond_3f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 936
    .end local v0           #c:C
    :cond_43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method private isConnectingInOrOut()Z
    .registers 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private static isPause(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 823
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWait(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 827
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 940
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void
.end method

.method private onStartedHolding()V
    .registers 3

    .prologue
    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->holdingStartTime:J

    .line 612
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;
    .registers 5
    .parameter "state"

    .prologue
    .line 757
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 774
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 770
    :goto_28
    return-object v0

    .line 765
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_28

    .line 770
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    goto :goto_28

    .line 757
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method private processPostDialChar(C)Z
    .registers 7
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 620
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 621
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 638
    :goto_14
    return v0

    .line 622
    :cond_15
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_2d

    .line 623
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 628
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 630
    :cond_2d
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_37

    .line 631
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_14

    .line 632
    :cond_37
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_41

    .line 633
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_14

    .line 635
    :cond_41
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private releaseWakeLock()V
    .registers 3

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 815
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 816
    const-string/jumbo v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 819
    :cond_16
    monitor-exit v1

    .line 820
    return-void

    .line 819
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .registers 7
    .parameter "s"

    .prologue
    const/4 v2, 0x4

    .line 785
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_9

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_34

    .line 787
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 788
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 789
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    :goto_1a
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 794
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 795
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_31

    .line 800
    .end local v0           #msg:Landroid/os/Message;
    :goto_2a
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 801
    return-void

    .line 791
    :cond_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acquireWakeLock()V

    goto :goto_1a

    .line 795
    :catchall_31
    move-exception v1

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw v1

    .line 797
    :cond_34
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_2a
.end method


# virtual methods
.method public cancelPostDial()V
    .registers 2

    .prologue
    .line 371
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 372
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 6
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 214
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    if-nez v2, :cond_a

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_a

    .line 220
    :cond_9
    :goto_9
    return v1

    .line 219
    :cond_a
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_20
    const/4 v1, 0x0

    goto :goto_9
.end method

.method disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 6
    .parameter "causeCode"

    .prologue
    .line 391
    sparse-switch p1, :sswitch_data_6e

    .line 425
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 426
    .local v0, phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 427
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_42

    .line 428
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 438
    .end local v0           #phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1           #serviceState:I
    :goto_14
    return-object v2

    .line 393
    :sswitch_15
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 395
    :sswitch_18
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 397
    :sswitch_1b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 399
    :sswitch_1e
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 401
    :sswitch_21
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 403
    :sswitch_24
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 405
    :sswitch_27
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 407
    :sswitch_2a
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 409
    :sswitch_2d
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 411
    :sswitch_30
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 413
    :sswitch_33
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 415
    :sswitch_36
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 417
    :sswitch_39
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 419
    :sswitch_3c
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 421
    :sswitch_3f
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 429
    .restart local v0       #phone:Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v1       #serviceState:I
    :cond_42
    const/4 v2, 0x1

    if-eq v1, v2, :cond_48

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    .line 431
    :cond_48
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 432
    :cond_4b
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getNvState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v3, :cond_64

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_64

    .line 434
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 435
    :cond_64
    const/16 v2, 0x10

    if-ne p1, v2, :cond_6b

    .line 436
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 438
    :cond_6b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 391
    :sswitch_data_6e
    .sparse-switch
        0x11 -> :sswitch_15
        0x22 -> :sswitch_18
        0x44 -> :sswitch_1b
        0xf0 -> :sswitch_1e
        0xf1 -> :sswitch_21
        0x3e8 -> :sswitch_24
        0x3e9 -> :sswitch_27
        0x3ea -> :sswitch_2a
        0x3eb -> :sswitch_2d
        0x3ec -> :sswitch_30
        0x3ed -> :sswitch_33
        0x3ee -> :sswitch_36
        0x3ef -> :sswitch_39
        0x3f0 -> :sswitch_3c
        0x3f1 -> :sswitch_3f
    .end sparse-switch
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method

.method fakeHoldBeforeDial()V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_9

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 561
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 564
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 565
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 683
    const-string v0, "CDMA"

    const-string v1, "[CdmaConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 686
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method getCDMAIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 569
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    if-ltz v0, :cond_9

    .line 570
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 572
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CDMA connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    return v0
.end method

.method public getConnectTime()J
    .registers 3

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .registers 3

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .registers 3

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 257
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 262
    :goto_8
    return-wide v0

    .line 259
    :cond_9
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_17

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_8

    .line 262
    :cond_17
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    goto :goto_8
.end method

.method public getHoldDurationMillis()J
    .registers 5

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_b

    .line 269
    const-wide/16 v0, 0x0

    .line 271
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public getNumberPresentation()I
    .registers 2

    .prologue
    .line 945
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    return v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->dialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 642
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    if-gt v3, v4, :cond_1e

    .line 646
    :cond_1b
    const-string v1, ""

    .line 660
    :cond_1d
    :goto_1d
    return-object v1

    .line 649
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, subStr:Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 651
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 652
    .local v2, wIndex:I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 654
    .local v0, pIndex:I
    if-lez v2, :cond_3f

    if-lt v2, v0, :cond_3a

    if-gtz v0, :cond_3f

    .line 655
    :cond_3a
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 656
    :cond_3f
    if-lez v0, :cond_1d

    .line 657
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-eqz v0, :cond_7

    .line 285
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 287
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_6
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .registers 2

    .prologue
    .line 951
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_a

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 297
    return-void

    .line 295
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    return v0
.end method

.method onConnectedInOrOut()V
    .registers 4

    .prologue
    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    .line 582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTimeReal:J

    .line 583
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->duration:J

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 591
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->isIncoming:Z

    if-nez v0, :cond_31

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    .line 599
    :goto_30
    return-void

    .line 597
    :cond_31
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    goto :goto_30
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 453
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_19

    .line 454
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_19

    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 464
    :cond_19
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 465
    return-void
.end method

.method onHangupLocal()V
    .registers 2

    .prologue
    .line 381
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 382
    return-void
.end method

.method onLocalDisconnect()V
    .registers 2

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_10

    .line 471
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->doDisconnect()V

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v0, :cond_10

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 479
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 480
    return-void
.end method

.method onRemoteDisconnect(I)V
    .registers 3
    .parameter "causeCode"

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 446
    return-void
.end method

.method public proceedAfterWaitChar()V
    .registers 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_21

    .line 313
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_20
    return-void

    .line 318
    :cond_21
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_20
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .registers 6
    .parameter "str"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_21

    .line 325
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_20
    return-void

    .line 330
    :cond_21
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    .line 360
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processNextPostDialChar()V

    goto :goto_20
.end method

.method processNextPostDialChar()V
    .registers 10

    .prologue
    .line 689
    const/4 v1, 0x0

    .line 692
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_b

    .line 693
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 742
    :cond_a
    :goto_a
    return-void

    .line 698
    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_40

    .line 700
    :cond_19
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 703
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->releaseWakeLock()V

    .line 706
    const/4 v1, 0x0

    .line 725
    :cond_22
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 729
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_a

    .line 732
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 733
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 734
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 735
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 738
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 740
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    .line 710
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_40
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 712
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 714
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->processPostDialChar(C)Z

    move-result v2

    .line 716
    .local v2, isValid:Z
    if-nez v2, :cond_22

    .line 718
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 720
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public separate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->disconnected:Z

    if-nez v0, :cond_a

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->owner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->separate(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 305
    return-void

    .line 303
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 11
    .parameter "dc"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 488
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_e9

    move v4, v5

    .line 490
    .local v4, wasHolding:Z
    :goto_10
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v1

    .line 492
    .local v1, newParent:Lcom/android/internal/telephony/cdma/CdmaCall;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newParent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 494
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cdma/CdmaConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 495
    const-string/jumbo v7, "update: phone # changed!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 496
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->address:Ljava/lang/String;

    .line 497
    const/4 v0, 0x1

    .line 501
    :cond_4e
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 502
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 503
    const/4 v0, 0x1

    .line 504
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    .line 511
    :cond_63
    :goto_63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 512
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapNamePresentation:I

    .line 513
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->numberPresentation:I

    .line 515
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eq v1, v7, :cond_fd

    .line 516
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-eqz v5, :cond_90

    .line 517
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 519
    :cond_90
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 520
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 521
    const/4 v0, 0x1

    .line 530
    :goto_96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update, wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaConnection;->log(Ljava/lang/String;)V

    .line 537
    if-eqz v3, :cond_d9

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_d9

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    .line 541
    :cond_d9
    if-eqz v0, :cond_e8

    if-nez v4, :cond_e8

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_e8

    .line 543
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    .line 546
    :cond_e8
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/cdma/CdmaCall;
    .end local v4           #wasHolding:Z
    :cond_e9
    move v4, v6

    .line 488
    goto/16 :goto_10

    .line 506
    .restart local v1       #newParent:Lcom/android/internal/telephony/cdma/CdmaCall;
    .restart local v4       #wasHolding:Z
    :cond_ec
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 507
    const/4 v0, 0x1

    .line 508
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->cnapName:Ljava/lang/String;

    goto/16 :goto_63

    .line 524
    :cond_fd
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaCall;->update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 525
    .local v2, parentStateChange:Z
    if-nez v0, :cond_107

    if-eqz v2, :cond_109

    :cond_107
    move v0, v5

    :goto_108
    goto :goto_96

    :cond_109
    move v0, v6

    goto :goto_108
.end method

.method public updateParent(Lcom/android/internal/telephony/cdma/CdmaCall;Lcom/android/internal/telephony/cdma/CdmaCall;)V
    .registers 4
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 664
    if-eq p2, p1, :cond_e

    .line 665
    if-eqz p1, :cond_7

    .line 666
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V

    .line 668
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 669
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaConnection;->parent:Lcom/android/internal/telephony/cdma/CdmaCall;

    .line 671
    :cond_e
    return-void
.end method
