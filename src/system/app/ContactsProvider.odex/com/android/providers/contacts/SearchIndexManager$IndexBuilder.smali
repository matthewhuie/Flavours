.class public Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/SearchIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexBuilder"
.end annotation


# static fields
.field private static final PATTERN_HYPHEN:Ljava/util/regex/Pattern;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mSbContent:Ljava/lang/StringBuilder;

.field private mSbElementContent:Ljava/lang/StringBuilder;

.field private mSbName:Ljava/lang/StringBuilder;

.field private mSbTokens:Ljava/lang/StringBuilder;

.field private mUniqueElements:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 181
    const-string v0, "\\-"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->PATTERN_HYPHEN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    return-void
.end method

.method private appendNameInternal(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :cond_f
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    return-void
.end method


# virtual methods
.method public appendContent(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContent(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public appendContent(Ljava/lang/String;I)V
    .registers 5
    .parameter "value"
    .parameter "format"

    .prologue
    const/16 v1, 0x20

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    :goto_8
    return-void

    .line 142
    :cond_9
    packed-switch p2, :pswitch_data_60

    goto :goto_8

    .line 144
    :pswitch_d
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1a

    .line 145
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_1a
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 151
    :pswitch_20
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 155
    :pswitch_2c
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_39

    .line 156
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_39
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 162
    :pswitch_4b
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5a

    .line 163
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_5a
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 142
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_d
        :pswitch_2c
        :pswitch_20
        :pswitch_4b
    .end packed-switch
.end method

.method public appendContentFromColumn(Ljava/lang/String;)V
    .registers 3
    .parameter "columnName"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method public appendContentFromColumn(Ljava/lang/String;I)V
    .registers 4
    .parameter "columnName"
    .parameter "format"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContent(Ljava/lang/String;I)V

    .line 131
    return-void
.end method

.method public appendName(Ljava/lang/String;)V
    .registers 7
    .parameter "name"

    .prologue
    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 198
    :cond_6
    :goto_6
    return-void

    .line 187
    :cond_7
    const/16 v4, 0x2d

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_13

    .line 189
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendNameInternal(Ljava/lang/String;)V

    goto :goto_6

    .line 192
    :cond_13
    sget-object v4, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->PATTERN_HYPHEN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1b
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 193
    .local v3, namePart:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 194
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendNameInternal(Ljava/lang/String;)V

    .line 192
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public appendToken(Ljava/lang/String;)V
    .registers 4
    .parameter "token"

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    :goto_6
    return-void

    .line 175
    :cond_7
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :cond_16
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6
.end method

.method public commit()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 112
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 113
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 115
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2b

    .line 116
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_2b
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_35
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 123
    .end local v0           #content:Ljava/lang/String;
    :cond_3b
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4
    .parameter "columnName"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "columnName"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokens()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 81
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbElementContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mUniqueElements:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 84
    return-void
.end method

.method setCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mCursor:Landroid/database/Cursor;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Tokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->mSbTokens:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
